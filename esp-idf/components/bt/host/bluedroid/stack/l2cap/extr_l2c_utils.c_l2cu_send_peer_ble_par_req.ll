; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_send_peer_ble_par_req.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_send_peer_ble_par_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@L2CAP_ADJ_ID = common dso_local global i32 0, align 4
@L2CAP_CMD_BLE_UPD_REQ_LEN = common dso_local global i32 0, align 4
@L2CAP_CMD_BLE_UPDATE_REQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"l2cu_send_peer_ble_par_req - no buffer\00", align 1
@L2CAP_SEND_CMD_OFFSET = common dso_local global i32 0, align 4
@HCI_DATA_PREAMBLE_SIZE = common dso_local global i32 0, align 4
@L2CAP_PKT_OVERHEAD = common dso_local global i32 0, align 4
@L2CAP_CMD_OVERHEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2cu_send_peer_ble_par_req(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = load i32, i32* @L2CAP_ADJ_ID, align 4
  %19 = call i32 @l2cu_adj_id(%struct.TYPE_6__* %17, i32 %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = load i32, i32* @L2CAP_CMD_BLE_UPD_REQ_LEN, align 4
  %22 = load i32, i32* @L2CAP_CMD_BLE_UPDATE_REQ, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32* @l2cu_build_header(%struct.TYPE_6__* %20, i32 %21, i32 %22, i32 %25)
  store i32* %26, i32** %11, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %60

30:                                               ; preds = %5
  %31 = load i32*, i32** %11, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* @L2CAP_SEND_CMD_OFFSET, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* @HCI_DATA_PREAMBLE_SIZE, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* @L2CAP_PKT_OVERHEAD, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* @L2CAP_CMD_OVERHEAD, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32* %44, i32** %12, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @UINT16_TO_STREAM(i32* %45, i32 %46)
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @UINT16_TO_STREAM(i32* %48, i32 %49)
  %51 = load i32*, i32** %12, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @UINT16_TO_STREAM(i32* %51, i32 %52)
  %54 = load i32*, i32** %12, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @UINT16_TO_STREAM(i32* %54, i32 %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @l2c_link_check_send_pkts(%struct.TYPE_6__* %57, i32* null, i32* %58)
  br label %60

60:                                               ; preds = %30, %28
  ret void
}

declare dso_local i32 @l2cu_adj_id(%struct.TYPE_6__*, i32) #1

declare dso_local i32* @l2cu_build_header(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*) #1

declare dso_local i32 @UINT16_TO_STREAM(i32*, i32) #1

declare dso_local i32 @l2c_link_check_send_pkts(%struct.TYPE_6__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
