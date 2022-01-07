; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_ble.c_L2CA_CancelBleConnectReq.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_ble.c_L2CA_CancelBleConnectReq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i64, i32 }

@BLE_CONN_IDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"L2CA_CancelBleConnectReq - no connection pending\00", align 1
@FALSE = common dso_local global i32 0, align 4
@l2cb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [81 x i8] c"L2CA_CancelBleConnectReq - different  BDA Connecting: %08x%04x  Cancel: %08x%04x\00", align 1
@BT_TRANSPORT_LE = common dso_local global i32 0, align 4
@HCI_ROLE_SLAVE = common dso_local global i64 0, align 8
@L2CAP_CONN_CANCEL = common dso_local global i32 0, align 4
@BLE_CONN_CANCEL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @L2CA_CancelBleConnectReq(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %3, align 8
  %5 = call i64 (...) @btm_ble_get_conn_st()
  %6 = load i64, i64* @BLE_CONN_IDLE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = call i32 (i8*, ...) @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %2, align 4
  br label %103

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @l2cb, i32 0, i32 0), align 8
  %14 = load i32, i32* @BD_ADDR_LEN, align 4
  %15 = call i64 @memcmp(i32* %12, i32* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %72

17:                                               ; preds = %11
  %18 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @l2cb, i32 0, i32 0), align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 24
  %22 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @l2cb, i32 0, i32 0), align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 16
  %26 = add nsw i32 %21, %25
  %27 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @l2cb, i32 0, i32 0), align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 8
  %31 = add nsw i32 %26, %30
  %32 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @l2cb, i32 0, i32 0), align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %31, %34
  %36 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @l2cb, i32 0, i32 0), align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 8
  %40 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @l2cb, i32 0, i32 0), align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 5
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %39, %42
  %44 = load i32*, i32** %3, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 24
  %48 = load i32*, i32** %3, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 16
  %52 = add nsw i32 %47, %51
  %53 = load i32*, i32** %3, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 8
  %57 = add nsw i32 %52, %56
  %58 = load i32*, i32** %3, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %57, %60
  %62 = load i32*, i32** %3, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 8
  %66 = load i32*, i32** %3, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 5
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %65, %68
  %70 = call i32 (i8*, ...) @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %43, i32 %61, i32 %69)
  %71 = load i32, i32* @FALSE, align 4
  store i32 %71, i32* %2, align 4
  br label %103

72:                                               ; preds = %11
  %73 = call i64 (...) @btsnd_hcic_ble_create_conn_cancel()
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %101

75:                                               ; preds = %72
  %76 = load i32*, i32** %3, align 8
  %77 = load i32, i32* @BT_TRANSPORT_LE, align 4
  %78 = call %struct.TYPE_5__* @l2cu_find_lcb_by_bd_addr(i32* %76, i32 %77)
  store %struct.TYPE_5__* %78, %struct.TYPE_5__** %4, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %80 = icmp ne %struct.TYPE_5__* %79, null
  br i1 %80, label %81, label %97

81:                                               ; preds = %75
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @HCI_ROLE_SLAVE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load i32*, i32** %3, align 8
  %89 = call i64 @BTM_ACL_IS_CONNECTED(i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %87, %81
  %92 = load i32, i32* @L2CAP_CONN_CANCEL, align 4
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %96 = call i32 @l2cu_release_lcb(%struct.TYPE_5__* %95)
  br label %97

97:                                               ; preds = %91, %87, %75
  %98 = load i32, i32* @BLE_CONN_CANCEL, align 4
  %99 = call i32 @btm_ble_set_conn_st(i32 %98)
  %100 = load i32, i32* @TRUE, align 4
  store i32 %100, i32* %2, align 4
  br label %103

101:                                              ; preds = %72
  %102 = load i32, i32* @FALSE, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %101, %97, %17, %8
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i64 @btm_ble_get_conn_st(...) #1

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*, ...) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i64 @btsnd_hcic_ble_create_conn_cancel(...) #1

declare dso_local %struct.TYPE_5__* @l2cu_find_lcb_by_bd_addr(i32*, i32) #1

declare dso_local i64 @BTM_ACL_IS_CONNECTED(i32*) #1

declare dso_local i32 @l2cu_release_lcb(%struct.TYPE_5__*) #1

declare dso_local i32 @btm_ble_set_conn_st(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
