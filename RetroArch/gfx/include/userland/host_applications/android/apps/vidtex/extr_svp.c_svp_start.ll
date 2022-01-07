; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/android/apps/vidtex/extr_svp.c_svp_start.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/android/apps/vidtex/extr_svp.c_svp_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__, i64, i32, i32, %struct.TYPE_9__, i32, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"Failed to create connection\00", align 1
@svp_bh_output_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to enable output port\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"svp-worker\00", align 1
@svp_worker = common dso_local global i32 0, align 4
@VCOS_SUCCESS = common dso_local global i64 0, align 8
@MMAL_SUCCESS = common dso_local global i32 0, align 4
@MMAL_ENOMEM = common dso_local global i32 0, align 4
@SVP_CREATED_THREAD = common dso_local global i32 0, align 4
@SVP_CAMERA_DURATION_MS = common dso_local global i32 0, align 4
@SVP_WATCHDOG_TIMEOUT_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svp_start(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = call i32 @svp_stop(%struct.TYPE_11__* %7)
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = call i32 @svp_reset_stop(%struct.TYPE_11__* %9)
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 8
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 8
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @mmal_connection_enable(i64 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @CHECK_STATUS(i32 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %15, %1
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @svp_bh_output_cb, align 4
  %28 = call i32 @svp_port_enable(%struct.TYPE_11__* %23, i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @CHECK_STATUS(i32 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 5
  %36 = load i32, i32* @svp_worker, align 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %38 = call i64 @vcos_thread_create(i32* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %36, %struct.TYPE_11__* %37)
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @VCOS_SUCCESS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %22
  %43 = load i32, i32* @MMAL_SUCCESS, align 4
  br label %46

44:                                               ; preds = %22
  %45 = load i32, i32* @MMAL_ENOMEM, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = call i32 @CHECK_STATUS(i32 %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @SVP_CREATED_THREAD, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %46
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %6, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = load i32, i32* %6, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %58
  %68 = load i32, i32* @SVP_CAMERA_DURATION_MS, align 4
  br label %71

69:                                               ; preds = %58
  %70 = load i32, i32* %6, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  %73 = call i32 @vcos_timer_set(i32* %64, i32 %72)
  br label %74

74:                                               ; preds = %71, %46
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* @SVP_WATCHDOG_TIMEOUT_MS, align 4
  %78 = call i32 @vcos_timer_set(i32* %76, i32 %77)
  store i32 0, i32* %2, align 4
  br label %80

79:                                               ; No predecessors!
  store i32 -1, i32* %2, align 4
  br label %80

80:                                               ; preds = %79, %74
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @svp_stop(%struct.TYPE_11__*) #1

declare dso_local i32 @svp_reset_stop(%struct.TYPE_11__*) #1

declare dso_local i32 @mmal_connection_enable(i64) #1

declare dso_local i32 @CHECK_STATUS(i32, i8*) #1

declare dso_local i32 @svp_port_enable(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i64 @vcos_thread_create(i32*, i8*, i32*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @vcos_timer_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
