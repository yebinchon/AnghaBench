; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/vmcs/test_apps/mmalcam/extr_mmalcam.c_main.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/vmcs/test_apps/mmalcam/extr_mmalcam.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"mmalcam\00", align 1
@VCOS_LOG_CATEGORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"MMAL Camera Test App\0A\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@test_signal_handler = common dso_local global i32 0, align 4
@VIEWFINDER_LAYER = common dso_local global i32 0, align 4
@camcorder_behaviour = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@DEFAULT_VIDEO_FORMAT = common dso_local global i32 0, align 4
@DEFAULT_BIT_RATE = common dso_local global i32 0, align 4
@MMAL_PARAM_FOCUS_MAX = common dso_local global i32 0, align 4
@DEFAULT_CAM_NUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"mmalcam-init\00", align 1
@VCOS_SUCCESS = common dso_local global i64 0, align 8
@camcorder_thread = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"mmal camcorder\00", align 1
@test_mmal_camcorder = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Thread creation failure\00", align 1
@MMALCAM_INIT_SUCCESS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"Initialisation failed: %d\00", align 1
@sleepy_time = common dso_local global i64 0, align 8
@stop = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"Waiting for camcorder thread to terminate\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Render\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Encoder\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @VCOS_LOG_CATEGORY, align 4
  %10 = call i32 @vcos_log_register(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32, i32* @SIGINT, align 4
  %13 = load i32, i32* @test_signal_handler, align 4
  %14 = call i32 @signal(i32 %12, i32 %13)
  %15 = load i32, i32* @VIEWFINDER_LAYER, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @camcorder_behaviour, i32 0, i32 10), align 4
  %16 = load i32, i32* @DEFAULT_VIDEO_FORMAT, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @camcorder_behaviour, i32 0, i32 9), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @camcorder_behaviour, i32 0, i32 0), align 8
  %17 = load i32, i32* @DEFAULT_BIT_RATE, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @camcorder_behaviour, i32 0, i32 8), align 4
  %18 = load i32, i32* @MMAL_PARAM_FOCUS_MAX, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @camcorder_behaviour, i32 0, i32 7), align 8
  %19 = load i32, i32* @DEFAULT_CAM_NUM, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @camcorder_behaviour, i32 0, i32 6), align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call i64 @test_parse_cmdline(i32 %20, i8** %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 -1, i32* %8, align 4
  br label %56

25:                                               ; preds = %2
  %26 = call i64 @vcos_semaphore_create(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @camcorder_behaviour, i32 0, i32 2), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @VCOS_SUCCESS, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @vcos_assert(i32 %30)
  %32 = call i32 @vcos_thread_attr_init(i32* %6)
  %33 = load i32, i32* @test_mmal_camcorder, align 4
  %34 = call i64 @vcos_thread_create(i32* @camcorder_thread, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32* %6, i32 %33, %struct.TYPE_3__* @camcorder_behaviour)
  %35 = load i64, i64* @VCOS_SUCCESS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  store i32 -2, i32* %8, align 4
  br label %56

39:                                               ; preds = %25
  %40 = call i32 @vcos_semaphore_wait(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @camcorder_behaviour, i32 0, i32 2))
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @camcorder_behaviour, i32 0, i32 1), align 8
  %42 = load i64, i64* @MMALCAM_INIT_SUCCESS, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @camcorder_behaviour, i32 0, i32 1), align 8
  %46 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64 %45)
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @camcorder_behaviour, i32 0, i32 1), align 8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %8, align 4
  br label %56

49:                                               ; preds = %39
  %50 = load i64, i64* @sleepy_time, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i64, i64* @sleepy_time, align 8
  %54 = call i32 @sleep(i64 %53)
  store i32 1, i32* @stop, align 4
  br label %55

55:                                               ; preds = %52, %49
  br label %56

56:                                               ; preds = %55, %44, %37, %24
  %57 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  %58 = call i32 @vcos_thread_join(i32* @camcorder_thread, i32* null)
  %59 = call i32 @test_mmalcam_dump_stats(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @camcorder_behaviour, i32 0, i32 5))
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @camcorder_behaviour, i32 0, i32 4), align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = call i32 @test_mmalcam_dump_stats(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @camcorder_behaviour, i32 0, i32 3))
  br label %64

64:                                               ; preds = %62, %56
  %65 = call i32 @vcos_semaphore_delete(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @camcorder_behaviour, i32 0, i32 2))
  %66 = load i32, i32* %8, align 4
  ret i32 %66
}

declare dso_local i32 @vcos_log_register(i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i64 @test_parse_cmdline(i32, i8**) #1

declare dso_local i64 @vcos_semaphore_create(i32*, i8*, i32) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @vcos_thread_attr_init(i32*) #1

declare dso_local i64 @vcos_thread_create(i32*, i8*, i32*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @LOG_ERROR(i8*, ...) #1

declare dso_local i32 @vcos_semaphore_wait(i32*) #1

declare dso_local i32 @sleep(i64) #1

declare dso_local i32 @LOG_TRACE(i8*) #1

declare dso_local i32 @vcos_thread_join(i32*, i32*) #1

declare dso_local i32 @test_mmalcam_dump_stats(i8*, i32*) #1

declare dso_local i32 @vcos_semaphore_delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
