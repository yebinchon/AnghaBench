; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_BTM_ReadTxPower.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_BTM_ReadTxPower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32*, i32 }
%struct.TYPE_6__ = type { i64, i32 }

@.str = private unnamed_addr constant [54 x i8] c"BTM_ReadTxPower: RemBdAddr: %02x%02x%02x%02x%02x%02x\0A\00", align 1
@btm_cb = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@BTM_BUSY = common dso_local global i32 0, align 4
@BTU_TTYPE_BTM_ACL = common dso_local global i32 0, align 4
@BTM_DEV_REPLY_TIMEOUT = common dso_local global i32 0, align 4
@BT_TRANSPORT_LE = common dso_local global i64 0, align 8
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@BTM_NO_RESOURCES = common dso_local global i32 0, align 4
@BTM_CMD_STARTED = common dso_local global i32 0, align 4
@BTM_UNKNOWN_ADDR = common dso_local global i32 0, align 4
@BTM_READ_RSSI_TYPE_CUR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BTM_ReadTxPower(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 4
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 5
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @BTM_TRACE_API(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, i32 %18, i32 %21, i32 %24, i32 %27)
  %29 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @btm_cb, i32 0, i32 0, i32 1), align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* @BTM_BUSY, align 4
  store i32 %32, i32* %4, align 4
  br label %70

33:                                               ; preds = %3
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call %struct.TYPE_6__* @btm_bda_to_acl(i32* %34, i32 %35)
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %8, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %38 = icmp ne %struct.TYPE_6__* %37, null
  br i1 %38, label %39, label %68

39:                                               ; preds = %33
  %40 = load i32, i32* @BTU_TTYPE_BTM_ACL, align 4
  %41 = load i32, i32* @BTM_DEV_REPLY_TIMEOUT, align 4
  %42 = call i32 @btu_start_timer(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @btm_cb, i32 0, i32 0, i32 0), i32 %40, i32 %41)
  %43 = load i32*, i32** %7, align 8
  store i32* %43, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @btm_cb, i32 0, i32 0, i32 1), align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @BT_TRANSPORT_LE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %39
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @btm_cb, i32 0, i32 0, i32 2), align 8
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* @BD_ADDR_LEN, align 4
  %53 = call i32 @memcpy(i32 %50, i32* %51, i32 %52)
  %54 = call i32 (...) @btsnd_hcic_ble_read_adv_chnl_tx_power()
  store i32 %54, i32* %9, align 4
  br label %60

55:                                               ; preds = %39
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @btsnd_hcic_read_tx_power(i32 %58, i32 0)
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %55, %49
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @btm_cb, i32 0, i32 0, i32 1), align 8
  %64 = call i32 @btu_stop_timer(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @btm_cb, i32 0, i32 0, i32 0))
  %65 = load i32, i32* @BTM_NO_RESOURCES, align 4
  store i32 %65, i32* %4, align 4
  br label %70

66:                                               ; preds = %60
  %67 = load i32, i32* @BTM_CMD_STARTED, align 4
  store i32 %67, i32* %4, align 4
  br label %70

68:                                               ; preds = %33
  %69 = load i32, i32* @BTM_UNKNOWN_ADDR, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %66, %63, %31
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @BTM_TRACE_API(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_6__* @btm_bda_to_acl(i32*, i32) #1

declare dso_local i32 @btu_start_timer(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @btsnd_hcic_ble_read_adv_chnl_tx_power(...) #1

declare dso_local i32 @btsnd_hcic_read_tx_power(i32, i32) #1

declare dso_local i32 @btu_stop_timer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
