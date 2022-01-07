; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/vc/extr_mmal_vc_api.c_mmal_vc_get_core_stats.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/vc/extr_mmal_vc_api.c_mmal_vc_get_core_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@MMAL_WORKER_GET_CORE_STATS_FOR_PORT = common dso_local global i32 0, align 4
@MMAL_FALSE = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mmal_vc_get_core_stats(i32* %0, i32* %1, i8* %2, i64 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_5__, align 4
  %20 = alloca %struct.TYPE_4__, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i64 12, i64* %22, align 8
  %23 = load i32, i32* %15, align 4
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %16, align 4
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %14, align 4
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 5
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %18, align 4
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 4
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %17, align 4
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 3
  store i32 %31, i32* %32, align 4
  %33 = call i32 (...) @mmal_vc_get_client()
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %35 = load i32, i32* @MMAL_WORKER_GET_CORE_STATS_FOR_PORT, align 4
  %36 = load i32, i32* @MMAL_FALSE, align 4
  %37 = call i64 @mmal_vc_sendwait_message(i32 %33, i32* %34, i32 24, i32 %35, %struct.TYPE_4__* %20, i64* %22, i32 %36)
  store i64 %37, i64* %21, align 8
  %38 = load i64, i64* %21, align 8
  %39 = load i64, i64* @MMAL_SUCCESS, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %9
  %42 = load i64, i64* %22, align 8
  %43 = icmp eq i64 %42, 12
  %44 = zext i1 %43 to i32
  %45 = call i32 @vcos_assert(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %10, align 8
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %11, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i8*, i8** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %13, align 8
  %56 = call i32 @strncpy(i8* %52, i32 %54, i64 %55)
  %57 = load i8*, i8** %12, align 8
  %58 = load i64, i64* %13, align 8
  %59 = sub i64 %58, 1
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  store i8 0, i8* %60, align 1
  br label %61

61:                                               ; preds = %41, %9
  %62 = load i64, i64* %21, align 8
  ret i64 %62
}

declare dso_local i64 @mmal_vc_sendwait_message(i32, i32*, i32, i32, %struct.TYPE_4__*, i64*, i32) #1

declare dso_local i32 @mmal_vc_get_client(...) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @strncpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
