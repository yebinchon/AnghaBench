; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/vc/extr_mmal_vc_api_drm.c_mmal_vc_drm_get_lhs32.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/vc/extr_mmal_vc_api_drm.c_mmal_vc_drm_get_lhs32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MMAL_SUCCESS = common dso_local global i64 0, align 8
@MMAL_WORKER_DRM_GET_LHS32 = common dso_local global i32 0, align 4
@MMAL_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmal_vc_drm_get_lhs32(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 4, i64* %7, align 8
  %8 = call i64 (...) @mmal_vc_init()
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @MMAL_SUCCESS, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i64, i64* %4, align 8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %2, align 4
  br label %27

15:                                               ; preds = %1
  %16 = call i32 (...) @mmal_vc_get_client()
  %17 = load i32, i32* @MMAL_WORKER_DRM_GET_LHS32, align 4
  %18 = load i32, i32* @MMAL_FALSE, align 4
  %19 = call i64 @mmal_vc_sendwait_message(i32 %16, i32* %5, i32 4, i32 %17, %struct.TYPE_3__* %6, i64* %7, i32 %18)
  store i64 %19, i64* %4, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @memcpy(i8* %20, i32 %22, i32 32)
  %24 = call i32 (...) @mmal_vc_deinit()
  %25 = load i64, i64* %4, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %15, %12
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @mmal_vc_init(...) #1

declare dso_local i64 @mmal_vc_sendwait_message(i32, i32*, i32, i32, %struct.TYPE_3__*, i64*, i32) #1

declare dso_local i32 @mmal_vc_get_client(...) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @mmal_vc_deinit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
