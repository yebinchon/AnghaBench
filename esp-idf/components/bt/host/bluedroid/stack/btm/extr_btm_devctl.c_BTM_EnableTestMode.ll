; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_devctl.c_BTM_EnableTestMode.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_devctl.c_BTM_EnableTestMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32, i32*, i32*, i32*)* }
%struct.TYPE_3__ = type { i32 (i32*)* }

@.str = private unnamed_addr constant [24 x i8] c"BTM: BTM_EnableTestMode\00", align 1
@HCI_DO_AUTO_ACCEPT_CONNECT = common dso_local global i32 0, align 4
@HCI_FILTER_CONNECTION_SETUP = common dso_local global i32 0, align 4
@HCI_FILTER_COND_NEW_DEVICE = common dso_local global i32 0, align 4
@BTM_NO_RESOURCES = common dso_local global i32 0, align 4
@BTM_CONNECTABLE = common dso_local global i32 0, align 4
@BTM_DEFAULT_CONN_WINDOW = common dso_local global i32 0, align 4
@BTM_DEFAULT_CONN_INTERVAL = common dso_local global i32 0, align 4
@BTM_SUCCESS = common dso_local global i32 0, align 4
@BTM_GENERAL_DISCOVERABLE = common dso_local global i32 0, align 4
@BTM_DEFAULT_DISC_WINDOW = common dso_local global i32 0, align 4
@BTM_DEFAULT_DISC_INTERVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BTM_EnableTestMode() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @BTM_TRACE_EVENT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @HCI_DO_AUTO_ACCEPT_CONNECT, align 4
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* @HCI_FILTER_CONNECTION_SETUP, align 4
  %6 = load i32, i32* @HCI_FILTER_COND_NEW_DEVICE, align 4
  %7 = call i32 @btsnd_hcic_set_event_filter(i32 %5, i32 %6, i32* %2, i32 4)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* @BTM_NO_RESOURCES, align 4
  store i32 %10, i32* %1, align 4
  br label %50

11:                                               ; preds = %0
  %12 = load i32, i32* @BTM_CONNECTABLE, align 4
  %13 = load i32, i32* @BTM_DEFAULT_CONN_WINDOW, align 4
  %14 = load i32, i32* @BTM_DEFAULT_CONN_INTERVAL, align 4
  %15 = call i32 @BTM_SetConnectability(i32 %12, i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* @BTM_SUCCESS, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %11
  %22 = load i32, i32* @BTM_NO_RESOURCES, align 4
  store i32 %22, i32* %1, align 4
  br label %50

23:                                               ; preds = %11
  %24 = load i32, i32* @BTM_GENERAL_DISCOVERABLE, align 4
  %25 = load i32, i32* @BTM_DEFAULT_DISC_WINDOW, align 4
  %26 = load i32, i32* @BTM_DEFAULT_DISC_INTERVAL, align 4
  %27 = call i32 @BTM_SetDiscoverability(i32 %24, i32 %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* @BTM_SUCCESS, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* @BTM_NO_RESOURCES, align 4
  store i32 %34, i32* %1, align 4
  br label %50

35:                                               ; preds = %23
  %36 = call %struct.TYPE_4__* (...) @hci_layer_get_interface()
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32 (i32, i32*, i32*, i32*)*, i32 (i32, i32*, i32*, i32*)** %37, align 8
  %39 = call %struct.TYPE_3__* (...) @hci_packet_factory_get_interface()
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32 (i32*)*, i32 (i32*)** %40, align 8
  %42 = call i32 %41(i32* bitcast ([9 x i8]* @.str.1 to i32*))
  %43 = call i32 %38(i32 %42, i32* null, i32* null, i32* null)
  %44 = call i64 (...) @btsnd_hcic_enable_test_mode()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i32, i32* @BTM_SUCCESS, align 4
  store i32 %47, i32* %1, align 4
  br label %50

48:                                               ; preds = %35
  %49 = load i32, i32* @BTM_NO_RESOURCES, align 4
  store i32 %49, i32* %1, align 4
  br label %50

50:                                               ; preds = %48, %46, %33, %21, %9
  %51 = load i32, i32* %1, align 4
  ret i32 %51
}

declare dso_local i32 @BTM_TRACE_EVENT(i8*) #1

declare dso_local i32 @btsnd_hcic_set_event_filter(i32, i32, i32*, i32) #1

declare dso_local i32 @BTM_SetConnectability(i32, i32, i32) #1

declare dso_local i32 @BTM_SetDiscoverability(i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @hci_layer_get_interface(...) #1

declare dso_local %struct.TYPE_3__* @hci_packet_factory_get_interface(...) #1

declare dso_local i64 @btsnd_hcic_enable_test_mode(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
