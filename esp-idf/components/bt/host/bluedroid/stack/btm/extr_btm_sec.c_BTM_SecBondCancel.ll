; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_BTM_SecBondCancel.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_BTM_SecBondCancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.TYPE_5__ = type { i64, i64 }

@.str = private unnamed_addr constant [43 x i8] c"BTM_SecBondCancel()  State: %s flags:0x%x\0A\00", align 1
@btm_cb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@BTM_UNKNOWN_ADDR = common dso_local global i32 0, align 4
@BTM_PAIR_FLAGS_LE_ACTIVE = common dso_local global i32 0, align 4
@BTM_SEC_STATE_AUTHENTICATING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"Cancel LE pairing\0A\00", align 1
@BTM_CMD_STARTED = common dso_local global i32 0, align 4
@BTM_WRONG_MODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"hci_handle:0x%x sec_state:%d\0A\00", align 1
@BTM_PAIR_STATE_WAIT_LOCAL_PIN = common dso_local global i64 0, align 8
@BTM_PAIR_FLAGS_WE_STARTED_DD = common dso_local global i32 0, align 4
@BTM_SUCCESS = common dso_local global i32 0, align 4
@BTM_PAIR_STATE_IDLE = common dso_local global i64 0, align 8
@BTM_SEC_INVALID_HANDLE = common dso_local global i64 0, align 8
@BTM_SEC_STATE_DISCONNECTING = common dso_local global i64 0, align 8
@BTM_SEC_STATE_DISCONNECTING_BOTH = common dso_local global i64 0, align 8
@BTM_PAIR_FLAGS_DISC_WHEN_DONE = common dso_local global i32 0, align 4
@HCI_ERR_PEER_USER = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@BTM_NOT_AUTHORIZED = common dso_local global i32 0, align 4
@BTM_NO_RESOURCES = common dso_local global i32 0, align 4
@BTM_PAIR_STATE_GET_REM_NAME = common dso_local global i64 0, align 8
@BTM_PAIR_FLAGS_WE_CANCEL_DD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BTM_SecBondCancel(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0), align 8
  %6 = call i32 @btm_pair_state_descr(i64 %5)
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 1), align 8
  %8 = call i32 @BTM_TRACE_API(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.TYPE_5__* @btm_find_dev(i32 %9)
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %4, align 8
  %11 = icmp eq %struct.TYPE_5__* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 2), align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @BD_ADDR_LEN, align 4
  %16 = call i64 @memcmp(i32 %13, i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12, %1
  %19 = load i32, i32* @BTM_UNKNOWN_ADDR, align 4
  store i32 %19, i32* %2, align 4
  br label %134

20:                                               ; preds = %12
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 1), align 8
  %22 = load i32, i32* @BTM_PAIR_FLAGS_LE_ACTIVE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %20
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @BTM_SEC_STATE_AUTHENTICATING, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = call i32 (i8*, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* %3, align 4
  %34 = call i64 @SMP_PairCancel(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @BTM_CMD_STARTED, align 4
  store i32 %37, i32* %2, align 4
  br label %134

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %25
  %40 = load i32, i32* @BTM_WRONG_MODE, align 4
  store i32 %40, i32* %2, align 4
  br label %134

41:                                               ; preds = %20
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (i8*, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %44, i64 %47)
  %49 = load i64, i64* @BTM_PAIR_STATE_WAIT_LOCAL_PIN, align 8
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0), align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %41
  %53 = load i32, i32* @BTM_PAIR_FLAGS_WE_STARTED_DD, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 1), align 8
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = call i32 (...) @btm_sec_bond_cancel_complete()
  %59 = load i32, i32* @BTM_SUCCESS, align 4
  store i32 %59, i32* %2, align 4
  br label %134

60:                                               ; preds = %52, %41
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0), align 8
  %62 = load i64, i64* @BTM_PAIR_STATE_IDLE, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %132

64:                                               ; preds = %60
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 1), align 8
  %66 = load i32, i32* @BTM_PAIR_FLAGS_WE_STARTED_DD, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %132

69:                                               ; preds = %64
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @BTM_SEC_INVALID_HANDLE, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %107

75:                                               ; preds = %69
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @BTM_SEC_STATE_DISCONNECTING, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @BTM_SEC_STATE_DISCONNECTING_BOTH, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %81, %75
  %88 = load i32, i32* @BTM_CMD_STARTED, align 4
  store i32 %88, i32* %2, align 4
  br label %134

89:                                               ; preds = %81
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 1), align 8
  %91 = load i32, i32* @BTM_PAIR_FLAGS_DISC_WHEN_DONE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %96 = load i32, i32* @HCI_ERR_PEER_USER, align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @btm_sec_send_hci_disconnect(%struct.TYPE_5__* %95, i32 %96, i64 %99)
  store i32 %100, i32* %2, align 4
  br label %134

101:                                              ; preds = %89
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* @FALSE, align 4
  %104 = call i32 @l2cu_update_lcb_4_bonding(i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %101
  %106 = load i32, i32* @BTM_NOT_AUTHORIZED, align 4
  store i32 %106, i32* %2, align 4
  br label %134

107:                                              ; preds = %69
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 1), align 8
  %109 = load i32, i32* @BTM_PAIR_FLAGS_DISC_WHEN_DONE, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %107
  %113 = load i32, i32* %3, align 4
  %114 = call i64 @btsnd_hcic_create_conn_cancel(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = load i32, i32* @BTM_CMD_STARTED, align 4
  store i32 %117, i32* %2, align 4
  br label %134

118:                                              ; preds = %112
  %119 = load i32, i32* @BTM_NO_RESOURCES, align 4
  store i32 %119, i32* %2, align 4
  br label %134

120:                                              ; preds = %107
  %121 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0), align 8
  %122 = load i64, i64* @BTM_PAIR_STATE_GET_REM_NAME, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %120
  %125 = call i32 (...) @BTM_CancelRemoteDeviceName()
  %126 = load i32, i32* @BTM_PAIR_FLAGS_WE_CANCEL_DD, align 4
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 1), align 8
  %128 = or i32 %127, %126
  store i32 %128, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 1), align 8
  %129 = load i32, i32* @BTM_CMD_STARTED, align 4
  store i32 %129, i32* %2, align 4
  br label %134

130:                                              ; preds = %120
  %131 = load i32, i32* @BTM_NOT_AUTHORIZED, align 4
  store i32 %131, i32* %2, align 4
  br label %134

132:                                              ; preds = %64, %60
  %133 = load i32, i32* @BTM_WRONG_MODE, align 4
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %132, %130, %124, %118, %116, %105, %94, %87, %57, %39, %36, %18
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @BTM_TRACE_API(i8*, i32, i32) #1

declare dso_local i32 @btm_pair_state_descr(i64) #1

declare dso_local %struct.TYPE_5__* @btm_find_dev(i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, ...) #1

declare dso_local i64 @SMP_PairCancel(i32) #1

declare dso_local i32 @btm_sec_bond_cancel_complete(...) #1

declare dso_local i32 @btm_sec_send_hci_disconnect(%struct.TYPE_5__*, i32, i64) #1

declare dso_local i32 @l2cu_update_lcb_4_bonding(i32, i32) #1

declare dso_local i64 @btsnd_hcic_create_conn_cancel(i32) #1

declare dso_local i32 @BTM_CancelRemoteDeviceName(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
