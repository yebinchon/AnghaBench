; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_dispmanx.c_dispmanx_notify_func.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_dispmanx.c_dispmanx_notify_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32 (i64, i32)*, i32, i32 (i64, i32)*, i32*, i64*, i32, i32 }

@dispmanx_notify_available_event = common dso_local global i32 0, align 4
@VCOS_SUCCESS = common dso_local global i64 0, align 8
@dispmanx_client = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@VCHI_FLAGS_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @dispmanx_notify_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dispmanx_notify_func(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  br label %7

7:                                                ; preds = %1, %61
  %8 = call i64 @vcos_event_wait(i32* @dispmanx_notify_available_event)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @VCOS_SUCCESS, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dispmanx_client, i32 0, i32 8), align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %7
  br label %62

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %16, %60
  %18 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dispmanx_client, i32 0, i32 5), align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dispmanx_client, i32 0, i32 6), align 8
  %22 = load i32, i32* @VCHI_FLAGS_NONE, align 4
  %23 = call i64 @vchi_msg_dequeue(i32 %20, i64* %21, i32 8, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dispmanx_client, i32 0, i32 7), i32 %22)
  store i64 %23, i64* %3, align 8
  %24 = load i64, i64* %3, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %61

27:                                               ; preds = %17
  %28 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dispmanx_client, i32 0, i32 6), align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %27
  %34 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dispmanx_client, i32 0, i32 5), align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @vchi_service_release(i32 %36)
  %38 = load i32 (i64, i32)*, i32 (i64, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dispmanx_client, i32 0, i32 4), align 8
  %39 = icmp ne i32 (i64, i32)* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %33
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dispmanx_client, i32 0, i32 0), align 8
  %42 = load i64, i64* %5, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @vcos_assert(i32 %44)
  %46 = load i32 (i64, i32)*, i32 (i64, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dispmanx_client, i32 0, i32 4), align 8
  %47 = load i64, i64* %5, align 8
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dispmanx_client, i32 0, i32 3), align 8
  %49 = call i32 %46(i64 %47, i32 %48)
  br label %50

50:                                               ; preds = %40, %33
  br label %60

51:                                               ; preds = %27
  %52 = load i32 (i64, i32)*, i32 (i64, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dispmanx_client, i32 0, i32 2), align 8
  %53 = icmp ne i32 (i64, i32)* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i32 (i64, i32)*, i32 (i64, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dispmanx_client, i32 0, i32 2), align 8
  %56 = load i64, i64* %5, align 8
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dispmanx_client, i32 0, i32 1), align 8
  %58 = call i32 %55(i64 %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %51
  br label %60

60:                                               ; preds = %59, %50
  br label %17

61:                                               ; preds = %26
  br label %7

62:                                               ; preds = %15
  ret i8* null
}

declare dso_local i64 @vcos_event_wait(i32*) #1

declare dso_local i64 @vchi_msg_dequeue(i32, i64*, i32, i32*, i32) #1

declare dso_local i32 @vchi_service_release(i32) #1

declare dso_local i32 @vcos_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
