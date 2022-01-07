; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiTex.c_raspitex_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiTex.c_raspitex_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"RaspiTex\00", align 1
@VCOS_LOG_CATEGORY = common dso_local global i32 0, align 4
@VCOS_LOG_INFO = common dso_local global i32 0, align 4
@VCOS_LOG_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@VCOS_FUNCTION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"glcap_start_sem\00", align 1
@VCOS_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"glcap_completed_sem\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%s: failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @raspitex_init(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %6 = call i32 (...) @vcos_init()
  %7 = load i32, i32* @VCOS_LOG_CATEGORY, align 4
  %8 = call i32 @vcos_log_register(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @VCOS_LOG_CATEGORY, align 4
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @VCOS_LOG_INFO, align 4
  br label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @VCOS_LOG_WARN, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  %20 = call i32 @vcos_log_set_level(i32 %9, i32 %19)
  %21 = load i32, i32* @VCOS_FUNCTION, align 4
  %22 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = call i64 @vcos_semaphore_create(i32* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @VCOS_SUCCESS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %68

31:                                               ; preds = %18
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = call i64 @vcos_semaphore_create(i32* %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @VCOS_SUCCESS, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %68

40:                                               ; preds = %31
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %62 [
    i32 131, label %44
    i32 133, label %47
    i32 130, label %50
    i32 128, label %53
    i32 132, label %56
    i32 129, label %59
  ]

44:                                               ; preds = %40
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %46 = call i32 @square_open(%struct.TYPE_11__* %45)
  store i32 %46, i32* %5, align 4
  br label %63

47:                                               ; preds = %40
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %49 = call i32 @mirror_open(%struct.TYPE_11__* %48)
  store i32 %49, i32* %5, align 4
  br label %63

50:                                               ; preds = %40
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = call i32 @teapot_open(%struct.TYPE_11__* %51)
  store i32 %52, i32* %5, align 4
  br label %63

53:                                               ; preds = %40
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = call i32 @yuv_open(%struct.TYPE_11__* %54)
  store i32 %55, i32* %5, align 4
  br label %63

56:                                               ; preds = %40
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %58 = call i32 @sobel_open(%struct.TYPE_11__* %57)
  store i32 %58, i32* %5, align 4
  br label %63

59:                                               ; preds = %40
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %61 = call i32 @vcsm_square_open(%struct.TYPE_11__* %60)
  store i32 %61, i32* %5, align 4
  br label %63

62:                                               ; preds = %40
  store i32 -1, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %59, %56, %53, %50, %47, %44
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %68

67:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %71

68:                                               ; preds = %66, %39, %30
  %69 = load i32, i32* @VCOS_FUNCTION, align 4
  %70 = call i32 @vcos_log_error(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  store i32 -1, i32* %2, align 4
  br label %71

71:                                               ; preds = %68, %67
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @vcos_init(...) #1

declare dso_local i32 @vcos_log_register(i8*, i32) #1

declare dso_local i32 @vcos_log_set_level(i32, i32) #1

declare dso_local i32 @vcos_log_trace(i8*, i32) #1

declare dso_local i64 @vcos_semaphore_create(i32*, i8*, i32) #1

declare dso_local i32 @square_open(%struct.TYPE_11__*) #1

declare dso_local i32 @mirror_open(%struct.TYPE_11__*) #1

declare dso_local i32 @teapot_open(%struct.TYPE_11__*) #1

declare dso_local i32 @yuv_open(%struct.TYPE_11__*) #1

declare dso_local i32 @sobel_open(%struct.TYPE_11__*) #1

declare dso_local i32 @vcsm_square_open(%struct.TYPE_11__*) #1

declare dso_local i32 @vcos_log_error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
