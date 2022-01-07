; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_BTM_PasskeyReqReply.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_BTM_PasskeyReqReply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i8*, i32 }
%struct.TYPE_5__ = type { i64, i32 }

@.str = private unnamed_addr constant [40 x i8] c"BTM_PasskeyReqReply: State: %s  res:%d\0A\00", align 1
@btm_cb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@BTM_PAIR_STATE_IDLE = common dso_local global i64 0, align 8
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@BTM_PAIR_STATE_WAIT_AUTH_COMPLETE = common dso_local global i64 0, align 8
@BTM_SUCCESS = common dso_local global i64 0, align 8
@HCI_ERR_HOST_REJECT_SECURITY = common dso_local global i8* null, align 8
@BTM_SEC_INVALID_HANDLE = common dso_local global i64 0, align 8
@HCI_ERR_AUTH_FAILURE = common dso_local global i32 0, align 4
@BTM_SEC_LINK_KEY_AUTHED = common dso_local global i32 0, align 4
@BTM_SEC_LINK_KEY_KNOWN = common dso_local global i32 0, align 4
@BTM_PAIR_STATE_KEY_ENTRY = common dso_local global i64 0, align 8
@BTM_MAX_PASSKEY_VAL = common dso_local global i64 0, align 8
@BTM_ILLEGAL_VALUE = common dso_local global i64 0, align 8
@HCI_SUCCESS = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BTM_PasskeyReqReply(i64 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0), align 8
  %9 = call i32 @btm_pair_state_descr(i64 %8)
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @BTM_TRACE_API(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %9, i64 %10)
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0), align 8
  %13 = load i64, i64* @BTM_PAIR_STATE_IDLE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 2), align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @BD_ADDR_LEN, align 4
  %19 = call i64 @memcmp(i32 %16, i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %3
  br label %91

22:                                               ; preds = %15
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0), align 8
  %24 = load i64, i64* @BTM_PAIR_STATE_WAIT_AUTH_COMPLETE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %64

26:                                               ; preds = %22
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @BTM_SUCCESS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %64

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = call %struct.TYPE_5__* @btm_find_dev(i32 %31)
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %7, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %34 = icmp ne %struct.TYPE_5__* %33, null
  br i1 %34, label %35, label %63

35:                                               ; preds = %30
  %36 = load i8*, i8** @HCI_ERR_HOST_REJECT_SECURITY, align 8
  store i8* %36, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 1), align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @BTM_SEC_INVALID_HANDLE, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %44 = load i32, i32* @HCI_ERR_AUTH_FAILURE, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @btm_sec_send_hci_disconnect(%struct.TYPE_5__* %43, i32 %44, i64 %47)
  br label %52

49:                                               ; preds = %35
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @BTM_SecBondCancel(i32 %50)
  br label %52

52:                                               ; preds = %49, %42
  %53 = load i32, i32* @BTM_SEC_LINK_KEY_AUTHED, align 4
  %54 = load i32, i32* @BTM_SEC_LINK_KEY_KNOWN, align 4
  %55 = or i32 %53, %54
  %56 = xor i32 %55, -1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load i64, i64* @BTM_PAIR_STATE_IDLE, align 8
  %62 = call i32 @btm_sec_change_pairing_state(i64 %61)
  br label %91

63:                                               ; preds = %30
  br label %70

64:                                               ; preds = %26, %22
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0), align 8
  %66 = load i64, i64* @BTM_PAIR_STATE_KEY_ENTRY, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %91

69:                                               ; preds = %64
  br label %70

70:                                               ; preds = %69, %63
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* @BTM_MAX_PASSKEY_VAL, align 8
  %73 = icmp sgt i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i64, i64* @BTM_ILLEGAL_VALUE, align 8
  store i64 %75, i64* %4, align 8
  br label %76

76:                                               ; preds = %74, %70
  %77 = load i64, i64* @BTM_PAIR_STATE_WAIT_AUTH_COMPLETE, align 8
  %78 = call i32 @btm_sec_change_pairing_state(i64 %77)
  %79 = load i64, i64* %4, align 8
  %80 = load i64, i64* @BTM_SUCCESS, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i8*, i8** @HCI_ERR_HOST_REJECT_SECURITY, align 8
  store i8* %83, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 1), align 8
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @btsnd_hcic_user_passkey_neg_reply(i32 %84)
  br label %91

86:                                               ; preds = %76
  %87 = load i8*, i8** @HCI_SUCCESS, align 8
  store i8* %87, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 1), align 8
  %88 = load i32, i32* %5, align 4
  %89 = load i64, i64* %6, align 8
  %90 = call i32 @btsnd_hcic_user_passkey_reply(i32 %88, i64 %89)
  br label %91

91:                                               ; preds = %21, %52, %68, %86, %82
  ret void
}

declare dso_local i32 @BTM_TRACE_API(i8*, i32, i64) #1

declare dso_local i32 @btm_pair_state_descr(i64) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local %struct.TYPE_5__* @btm_find_dev(i32) #1

declare dso_local i32 @btm_sec_send_hci_disconnect(%struct.TYPE_5__*, i32, i64) #1

declare dso_local i32 @BTM_SecBondCancel(i32) #1

declare dso_local i32 @btm_sec_change_pairing_state(i64) #1

declare dso_local i32 @btsnd_hcic_user_passkey_neg_reply(i32) #1

declare dso_local i32 @btsnd_hcic_user_passkey_reply(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
