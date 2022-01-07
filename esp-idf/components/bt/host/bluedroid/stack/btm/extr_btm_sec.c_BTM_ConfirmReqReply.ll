; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_BTM_ConfirmReqReply.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_BTM_ConfirmReqReply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"BTM_ConfirmReqReply() State: %s  Res: %u\00", align 1
@btm_cb = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@BTM_PAIR_STATE_WAIT_NUMERIC_CONFIRM = common dso_local global i64 0, align 8
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@BTM_PAIR_STATE_WAIT_AUTH_COMPLETE = common dso_local global i32 0, align 4
@BTM_SUCCESS = common dso_local global i64 0, align 8
@BTM_SUCCESS_NO_SECURITY = common dso_local global i64 0, align 8
@HCI_SUCCESS = common dso_local global i32 0, align 4
@BTM_SEC_LINK_KEY_AUTHED = common dso_local global i32 0, align 4
@BTM_SEC_16_DIGIT_PIN_AUTHED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@HCI_ERR_HOST_REJECT_SECURITY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BTM_ConfirmReqReply(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @btm_cb, i32 0, i32 0), align 8
  %7 = call i32 @btm_pair_state_descr(i64 %6)
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @BTM_TRACE_EVENT(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %7, i64 %8)
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @btm_cb, i32 0, i32 0), align 8
  %11 = load i64, i64* @BTM_PAIR_STATE_WAIT_NUMERIC_CONFIRM, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @btm_cb, i32 0, i32 2), align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @BD_ADDR_LEN, align 4
  %17 = call i64 @memcmp(i32 %14, i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %2
  br label %60

20:                                               ; preds = %13
  %21 = load i32, i32* @BTM_PAIR_STATE_WAIT_AUTH_COMPLETE, align 4
  %22 = call i32 @btm_sec_change_pairing_state(i32 %21)
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @BTM_SUCCESS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @BTM_SUCCESS_NO_SECURITY, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %55

30:                                               ; preds = %26, %20
  %31 = load i32, i32* @HCI_SUCCESS, align 4
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @btm_cb, i32 0, i32 1), align 8
  %32 = load i64, i64* %3, align 8
  %33 = load i64, i64* @BTM_SUCCESS, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  %37 = call %struct.TYPE_4__* @btm_find_dev(i32 %36)
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %5, align 8
  %38 = icmp ne %struct.TYPE_4__* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i32, i32* @BTM_SEC_LINK_KEY_AUTHED, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %39, %35
  %46 = load i32, i32* @BTM_SEC_16_DIGIT_PIN_AUTHED, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %45, %30
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @TRUE, align 4
  %54 = call i32 @btsnd_hcic_user_conf_reply(i32 %52, i32 %53)
  br label %60

55:                                               ; preds = %26
  %56 = load i32, i32* @HCI_ERR_HOST_REJECT_SECURITY, align 4
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @btm_cb, i32 0, i32 1), align 8
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @FALSE, align 4
  %59 = call i32 @btsnd_hcic_user_conf_reply(i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %19, %55, %51
  ret void
}

declare dso_local i32 @BTM_TRACE_EVENT(i8*, i32, i64) #1

declare dso_local i32 @btm_pair_state_descr(i64) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @btm_sec_change_pairing_state(i32) #1

declare dso_local %struct.TYPE_4__* @btm_find_dev(i32) #1

declare dso_local i32 @btsnd_hcic_user_conf_reply(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
