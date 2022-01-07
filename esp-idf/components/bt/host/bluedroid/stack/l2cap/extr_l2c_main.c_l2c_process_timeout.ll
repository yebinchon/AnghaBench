; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_main.c_l2c_process_timeout.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_main.c_l2c_process_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32 }

@L2CEVT_TIMEOUT = common dso_local global i32 0, align 4
@L2CEVT_ACK_TIMEOUT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@HCI_ERR_HOST_TIMEOUT = common dso_local global i32 0, align 4
@L2C_BLE_UPDATE_PENDING = common dso_local global i32 0, align 4
@L2C_BLE_UPDATE_PARAM_FULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2c_process_timeout(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %62 [
    i32 129, label %8
    i32 133, label %14
    i32 132, label %21
    i32 131, label %28
    i32 130, label %31
    i32 128, label %37
  ]

8:                                                ; preds = %1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_7__*
  %13 = call i32 @l2c_link_timeout(%struct.TYPE_7__* %12)
  br label %62

14:                                               ; preds = %1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i32*
  %19 = load i32, i32* @L2CEVT_TIMEOUT, align 4
  %20 = call i32 @l2c_csm_execute(i32* %18, i32 %19, i32* null)
  br label %62

21:                                               ; preds = %1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = load i32, i32* @L2CEVT_ACK_TIMEOUT, align 4
  %27 = call i32 @l2c_csm_execute(i32* %25, i32 %26, i32* null)
  br label %62

28:                                               ; preds = %1
  %29 = load i32, i32* @TRUE, align 4
  %30 = call i32 @l2c_process_held_packets(i32 %29)
  br label %62

31:                                               ; preds = %1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.TYPE_7__*
  %36 = call i32 @l2c_info_timeout(%struct.TYPE_7__* %35)
  br label %62

37:                                               ; preds = %1
  %38 = load i32, i32* @HCI_ERR_HOST_TIMEOUT, align 4
  store i32 %38, i32* %3, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %4, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = icmp ne %struct.TYPE_7__* %43, null
  br i1 %44, label %45, label %58

45:                                               ; preds = %37
  %46 = load i32, i32* @L2C_BLE_UPDATE_PENDING, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* @L2C_BLE_UPDATE_PARAM_FULL, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %45, %37
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @l2c_send_update_conn_params_cb(%struct.TYPE_7__* %59, i32 %60)
  br label %62

62:                                               ; preds = %1, %58, %31, %28, %21, %14, %8
  ret void
}

declare dso_local i32 @l2c_link_timeout(%struct.TYPE_7__*) #1

declare dso_local i32 @l2c_csm_execute(i32*, i32, i32*) #1

declare dso_local i32 @l2c_process_held_packets(i32) #1

declare dso_local i32 @l2c_info_timeout(%struct.TYPE_7__*) #1

declare dso_local i32 @l2c_send_update_conn_params_cb(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
