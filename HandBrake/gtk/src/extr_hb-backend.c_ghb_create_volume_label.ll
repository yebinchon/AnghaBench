; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_create_volume_label.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_create_volume_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64*, i64, i32 }
%struct.TYPE_6__ = type { i32 }

@HB_DVD_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"No Title Found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ghb_create_volume_label(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_6__, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i8* null, i8** %3, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = icmp ne %struct.TYPE_5__* %5, null
  br i1 %6, label %7, label %75

7:                                                ; preds = %1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = icmp ne i64* %10, null
  br i1 %11, label %12, label %75

12:                                               ; preds = %7
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %75

19:                                               ; preds = %12
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @g_stat(i32 %22, %struct.TYPE_6__* %4)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %57

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @S_ISBLK(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i8* @get_file_label(i32 %33)
  store i8* %34, i8** %3, align 8
  br label %56

35:                                               ; preds = %25
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = call i8* @strdup(i64* %38)
  store i8* %39, i8** %3, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @HB_DVD_TYPE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @ghb_dvd_sanitize_volname(i8* %46)
  br label %48

48:                                               ; preds = %45, %35
  %49 = load i8*, i8** %3, align 8
  %50 = call i64 @uppers_and_unders(i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i8*, i8** %3, align 8
  %54 = call i32 @camel_convert(i8* %53)
  br label %55

55:                                               ; preds = %52, %48
  br label %56

56:                                               ; preds = %55, %30
  br label %57

57:                                               ; preds = %56, %19
  %58 = load i8*, i8** %3, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %74

60:                                               ; preds = %57
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = call i8* @strdup(i64* %63)
  store i8* %64, i8** %3, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @HB_DVD_TYPE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %60
  %71 = load i8*, i8** %3, align 8
  %72 = call i32 @ghb_dvd_sanitize_volname(i8* %71)
  br label %73

73:                                               ; preds = %70, %60
  br label %74

74:                                               ; preds = %73, %57
  br label %78

75:                                               ; preds = %12, %7, %1
  %76 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %77 = call i8* @g_strdup(i32 %76)
  store i8* %77, i8** %3, align 8
  br label %78

78:                                               ; preds = %75, %74
  %79 = load i8*, i8** %3, align 8
  ret i8* %79
}

declare dso_local i64 @g_stat(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @S_ISBLK(i32) #1

declare dso_local i8* @get_file_label(i32) #1

declare dso_local i8* @strdup(i64*) #1

declare dso_local i32 @ghb_dvd_sanitize_volname(i8*) #1

declare dso_local i64 @uppers_and_unders(i8*) #1

declare dso_local i32 @camel_convert(i8*) #1

declare dso_local i8* @g_strdup(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
