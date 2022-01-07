; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_profile.c_ProfilePrint.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_profile.c_ProfilePrint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i8*, i32 }

@g_i_hwm = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"ProfilePrint: nothing to print.\0A\00", align 1
@g_init_time = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [71 x i8] c"Warning: nothing to show because timer ran for less than 1 clock-tick.\00", align 1
@g_tag = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [86 x i8] c"Warning: \22%s\22 started but not stopped. (Done now, but result may be over-expensive!)\0A\00", align 1
@CompareEntries = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"Profiler results (descending by percentage):\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"< calls: %2d, total ms: %3d, percentage: %3.1f%% > - \22%s\22\0A\00", align 1
@CLOCKS_PER_SEC = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProfilePrint() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i32, i32* @g_i_hwm, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32, i32* @stdout, align 4
  %7 = call i32 (i32, i8*, ...) @fprintf(i32 %6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %108

8:                                                ; preds = %0
  %9 = call i64 (...) @clock()
  %10 = load i64, i64* @g_init_time, align 8
  %11 = sub nsw i64 %9, %10
  store i64 %11, i64* %2, align 8
  %12 = load i64, i64* %2, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load i32, i32* @stdout, align 4
  %16 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14, %8
  store i32 0, i32* %1, align 4
  br label %18

18:                                               ; preds = %55, %17
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @g_i_hwm, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %58

22:                                               ; preds = %18
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_tag, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %22
  %31 = call i64 (...) @clock()
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_tag, align 8
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %31, %37
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_tag, align 8
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, %38
  store i64 %45, i64* %43, align 8
  %46 = load i32, i32* @stdout, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_tag, align 8
  %48 = load i32, i32* %1, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %30, %22
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %1, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %1, align 4
  br label %18

58:                                               ; preds = %18
  %59 = load i32, i32* @g_i_hwm, align 4
  %60 = load i32, i32* @CompareEntries, align 4
  %61 = call i32 @qsort(%struct.TYPE_3__** @g_tag, i32 %59, i32 4, i32 %60)
  %62 = load i32, i32* @stdout, align 4
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %64

64:                                               ; preds = %105, %58
  %65 = load i32, i32* %1, align 4
  %66 = load i32, i32* @g_i_hwm, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %108

68:                                               ; preds = %64
  %69 = load i32, i32* @stdout, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_tag, align 8
  %71 = load i32, i32* %1, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_tag, align 8
  %77 = load i32, i32* %1, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = sitofp i64 %81 to double
  %83 = load double, double* @CLOCKS_PER_SEC, align 8
  %84 = fdiv double %82, %83
  %85 = fmul double %84, 1.000000e+03
  %86 = fptosi double %85 to i32
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_tag, align 8
  %88 = load i32, i32* %1, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = sitofp i64 %92 to double
  %94 = load i64, i64* %2, align 8
  %95 = sitofp i64 %94 to double
  %96 = fdiv double %93, %95
  %97 = fmul double %96, 1.000000e+02
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_tag, align 8
  %99 = load i32, i32* %1, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 3
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 (i32, i8*, ...) @fprintf(i32 %69, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %75, i32 %86, double %97, i8* %103)
  br label %105

105:                                              ; preds = %68
  %106 = load i32, i32* %1, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %1, align 4
  br label %64

108:                                              ; preds = %5, %64
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @clock(...) #1

declare dso_local i32 @qsort(%struct.TYPE_3__**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
