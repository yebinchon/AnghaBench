; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_btm_io_capabilities_rsp.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_btm_io_capabilities_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_6__, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 (i32, i32*)* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@btm_cb = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@BTM_PAIR_STATE_IDLE = common dso_local global i64 0, align 8
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@BTM_PAIR_STATE_INCOMING_SSP = common dso_local global i64 0, align 8
@DEV_CLASS_LEN = common dso_local global i32 0, align 4
@BTM_AUTH_DD_BOND = common dso_local global i32 0, align 4
@BTM_PAIR_FLAGS_PEER_STARTED_DD = common dso_local global i32 0, align 4
@BTM_SP_IO_RSP_EVT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_io_capabilities_rsp(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__, align 4
  store i32* %0, i32** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @STREAM_TO_BDADDR(i32 %6, i32* %7)
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @STREAM_TO_UINT8(i32 %10, i32* %11)
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @STREAM_TO_UINT8(i32 %14, i32* %15)
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @STREAM_TO_UINT8(i32 %18, i32* %19)
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_8__* @btm_find_or_alloc_dev(i32 %22)
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %3, align 8
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @btm_cb, i32 0, i32 0), align 8
  %25 = load i64, i64* @BTM_PAIR_STATE_IDLE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %1
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @btm_cb, i32 0, i32 5), align 4
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @BD_ADDR_LEN, align 4
  %32 = call i32 @memcpy(i32 %28, i32 %30, i32 %31)
  %33 = load i64, i64* @BTM_PAIR_STATE_INCOMING_SSP, align 8
  %34 = call i32 @btm_sec_change_pairing_state(i64 %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @BTM_SEC_CLR_TRUSTED_DEVICE(i32 %37)
  %39 = call i32 (...) @btm_inq_stop_on_ssp()
  br label %40

40:                                               ; preds = %27, %1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @l2c_pin_code_request(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @btm_cb, i32 0, i32 4), align 8
  %47 = load i32, i32* @BD_ADDR_LEN, align 4
  %48 = call i32 @memcmp(i32 %45, i32 %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %40
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @btm_cb, i32 0, i32 3), align 4
  %55 = load i32, i32* @DEV_CLASS_LEN, align 4
  %56 = call i32 @memcpy(i32 %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %50, %40
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @btm_cb, i32 0, i32 0), align 8
  %59 = load i64, i64* @BTM_PAIR_STATE_INCOMING_SSP, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @BTM_AUTH_DD_BOND, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i32, i32* @BTM_PAIR_FLAGS_PEER_STARTED_DD, align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @btm_cb, i32 0, i32 2), align 8
  %70 = or i32 %69, %68
  store i32 %70, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @btm_cb, i32 0, i32 2), align 8
  br label %71

71:                                               ; preds = %67, %61, %57
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32 (i32, i32*)*, i32 (i32, i32*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @btm_cb, i32 0, i32 1, i32 0), align 8
  %81 = icmp ne i32 (i32, i32*)* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %71
  %83 = load i32 (i32, i32*)*, i32 (i32, i32*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @btm_cb, i32 0, i32 1, i32 0), align 8
  %84 = load i32, i32* @BTM_SP_IO_RSP_EVT, align 4
  %85 = bitcast %struct.TYPE_7__* %4 to i32*
  %86 = call i32 %83(i32 %84, i32* %85)
  br label %87

87:                                               ; preds = %82, %71
  ret void
}

declare dso_local i32 @STREAM_TO_BDADDR(i32, i32*) #1

declare dso_local i32 @STREAM_TO_UINT8(i32, i32*) #1

declare dso_local %struct.TYPE_8__* @btm_find_or_alloc_dev(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @btm_sec_change_pairing_state(i64) #1

declare dso_local i32 @BTM_SEC_CLR_TRUSTED_DEVICE(i32) #1

declare dso_local i32 @btm_inq_stop_on_ssp(...) #1

declare dso_local i32 @l2c_pin_code_request(i32) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
