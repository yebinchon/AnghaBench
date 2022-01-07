; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_working_status_string.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_working_status_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i64, i32, double, double, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"job %d of %d, \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HB_PASS_SUBTITLE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"pass %d (subtitle scan) of %d, \00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"pass %d of %d, \00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"Encoding: %s%s%.2f %% (%.2f fps, avg %.2f fps, ETA %02dh%02dm%02ds)\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Encoding: %s%s%.2f %% (ETA %02dh%02dm%02ds)\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Encoding: %s%s%.2f %%\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*, %struct.TYPE_6__*)* @working_status_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @working_status_string(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ghb_array_len(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ghb_find_queue_job(i32 %16, i32 %19, i32* null)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, 1
  %27 = load i32, i32* %8, align 4
  %28 = call i32* (i32, i32, i32, ...) @g_strdup_printf(i32 %24, i32 %26, i32 %27)
  store i32* %28, i32** %6, align 8
  br label %31

29:                                               ; preds = %2
  %30 = call i32* @g_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i32* %30, i32** %6, align 8
  br label %31

31:                                               ; preds = %29, %23
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %61

36:                                               ; preds = %31
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @HB_PASS_SUBTITLE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 8
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32* (i32, i32, i32, ...) @g_strdup_printf(i32 %43, i32 %46, i32 %49)
  store i32* %50, i32** %5, align 8
  br label %60

51:                                               ; preds = %36
  %52 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 8
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32* (i32, i32, i32, ...) @g_strdup_printf(i32 %52, i32 %55, i32 %58)
  store i32* %59, i32** %5, align 8
  br label %60

60:                                               ; preds = %51, %42
  br label %63

61:                                               ; preds = %31
  %62 = call i32* @g_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i32* %62, i32** %5, align 8
  br label %63

63:                                               ; preds = %61, %60
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp sgt i32 %66, -1
  br i1 %67, label %68, label %120

68:                                               ; preds = %63
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 3
  %71 = load double, double* %70, align 8
  %72 = fcmp ogt double %71, 0.000000e+00
  br i1 %72, label %73, label %99

73:                                               ; preds = %68
  %74 = call i32 @_(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0))
  %75 = load i32*, i32** %6, align 8
  %76 = ptrtoint i32* %75 to i32
  %77 = load i32*, i32** %5, align 8
  %78 = ptrtoint i32* %77 to i32
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 4
  %81 = load double, double* %80, align 8
  %82 = fmul double 1.000000e+02, %81
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 3
  %85 = load double, double* %84, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32* (i32, i32, i32, ...) @g_strdup_printf(i32 %74, i32 %76, i32 %78, double %82, double %85, i32 %88, i32 %91, i32 %94, i32 %97)
  store i32* %98, i32** %7, align 8
  br label %119

99:                                               ; preds = %68
  %100 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %101 = load i32*, i32** %6, align 8
  %102 = ptrtoint i32* %101 to i32
  %103 = load i32*, i32** %5, align 8
  %104 = ptrtoint i32* %103 to i32
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 4
  %107 = load double, double* %106, align 8
  %108 = fmul double 1.000000e+02, %107
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32* (i32, i32, i32, ...) @g_strdup_printf(i32 %100, i32 %102, i32 %104, double %108, i32 %111, i32 %114, i32 %117)
  store i32* %118, i32** %7, align 8
  br label %119

119:                                              ; preds = %99, %73
  br label %131

120:                                              ; preds = %63
  %121 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %122 = load i32*, i32** %6, align 8
  %123 = ptrtoint i32* %122 to i32
  %124 = load i32*, i32** %5, align 8
  %125 = ptrtoint i32* %124 to i32
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 4
  %128 = load double, double* %127, align 8
  %129 = fmul double 1.000000e+02, %128
  %130 = call i32* (i32, i32, i32, ...) @g_strdup_printf(i32 %121, i32 %123, i32 %125, double %129)
  store i32* %130, i32** %7, align 8
  br label %131

131:                                              ; preds = %120, %119
  %132 = load i32*, i32** %5, align 8
  %133 = call i32 @g_free(i32* %132)
  %134 = load i32*, i32** %6, align 8
  %135 = call i32 @g_free(i32* %134)
  %136 = load i32*, i32** %7, align 8
  ret i32* %136
}

declare dso_local i32 @ghb_array_len(i32) #1

declare dso_local i32 @ghb_find_queue_job(i32, i32, i32*) #1

declare dso_local i32* @g_strdup_printf(i32, i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @g_strdup(i8*) #1

declare dso_local i32 @g_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
