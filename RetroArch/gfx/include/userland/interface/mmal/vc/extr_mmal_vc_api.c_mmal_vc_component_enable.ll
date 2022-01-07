; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/vc/extr_mmal_vc_api.c_mmal_vc_component_enable.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/vc/extr_mmal_vc_api.c_mmal_vc_component_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32 }

@MMAL_WORKER_COMPONENT_ENABLE = common dso_local global i32 0, align 4
@MMAL_FALSE = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@MMAL_ENOSYS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"failed to enable component: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*)* @mmal_vc_component_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mmal_vc_component_enable(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__, align 8
  %6 = alloca %struct.TYPE_11__, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i64 8, i64* %7, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %9 = icmp ne %struct.TYPE_12__* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = icmp ne %struct.TYPE_9__* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = icmp ne %struct.TYPE_8__* %20, null
  br label %22

22:                                               ; preds = %15, %10, %1
  %23 = phi i1 [ false, %10 ], [ false, %1 ], [ %21, %15 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @vcos_assert(i32 %24)
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = call i32 (...) @mmal_vc_get_client()
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %36 = load i32, i32* @MMAL_WORKER_COMPONENT_ENABLE, align 4
  %37 = load i32, i32* @MMAL_FALSE, align 4
  %38 = call i64 @mmal_vc_sendwait_message(i32 %34, i32* %35, i32 8, i32 %36, %struct.TYPE_10__* %5, i64* %7, i32 %37)
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @MMAL_SUCCESS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %22
  %43 = load i64, i64* %7, align 8
  %44 = icmp eq i64 %43, 8
  %45 = zext i1 %44 to i32
  %46 = call i32 @vcos_assert(i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %4, align 8
  br label %49

49:                                               ; preds = %42, %22
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* @MMAL_SUCCESS, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = load i64, i64* %4, align 8
  %55 = load i64, i64* @MMAL_ENOSYS, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @mmal_status_to_string(i64 %58)
  %60 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i64, i64* %4, align 8
  store i64 %61, i64* %2, align 8
  br label %64

62:                                               ; preds = %53, %49
  %63 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %63, i64* %2, align 8
  br label %64

64:                                               ; preds = %62, %57
  %65 = load i64, i64* %2, align 8
  ret i64 %65
}

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i64 @mmal_vc_sendwait_message(i32, i32*, i32, i32, %struct.TYPE_10__*, i64*, i32) #1

declare dso_local i32 @mmal_vc_get_client(...) #1

declare dso_local i32 @LOG_ERROR(i8*, i32) #1

declare dso_local i32 @mmal_status_to_string(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
