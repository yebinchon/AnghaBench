; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_devctl.c_BTM_BleSetChannels.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_devctl.c_BTM_BleSetChannels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_5__ = type { i32 (...)* }

@BTM_DEV_RESET = common dso_local global i32 0, align 4
@btm_cb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@BTM_NO_RESOURCES = common dso_local global i32 0, align 4
@BTU_TTYPE_BTM_ACL = common dso_local global i32 0, align 4
@BTM_DEV_REPLY_TIMEOUT = common dso_local global i32 0, align 4
@BTM_CMD_STARTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BTM_BleSetChannels(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = call %struct.TYPE_5__* (...) @controller_get_interface()
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32 (...)*, i32 (...)** %7, align 8
  %9 = call i32 (...) %8()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @BTM_DEV_RESET, align 4
  store i32 %12, i32* %3, align 4
  br label %30

13:                                               ; preds = %2
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 1), align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* @BTM_NO_RESOURCES, align 4
  store i32 %17, i32* %3, align 4
  br label %30

18:                                               ; preds = %13
  %19 = load i32*, i32** %5, align 8
  store i32* %19, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 1), align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @btsnd_hcic_ble_set_channels(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @BTM_NO_RESOURCES, align 4
  store i32 %24, i32* %3, align 4
  br label %30

25:                                               ; preds = %18
  %26 = load i32, i32* @BTU_TTYPE_BTM_ACL, align 4
  %27 = load i32, i32* @BTM_DEV_REPLY_TIMEOUT, align 4
  %28 = call i32 @btu_start_timer(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 0), i32 %26, i32 %27)
  %29 = load i32, i32* @BTM_CMD_STARTED, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %25, %23, %16, %11
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.TYPE_5__* @controller_get_interface(...) #1

declare dso_local i32 @btsnd_hcic_ble_set_channels(i32) #1

declare dso_local i32 @btu_start_timer(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
