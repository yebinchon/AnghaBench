; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_btm_rem_oob_req.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_btm_rem_oob_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 (i32, i32*)* }
%struct.TYPE_7__ = type { i64*, i32*, i32* }
%struct.TYPE_8__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [54 x i8] c"btm_rem_oob_req() BDA: %02x:%02x:%02x:%02x:%02x:%02x\0A\00", align 1
@btm_cb = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@DEV_CLASS_LEN = common dso_local global i32 0, align 4
@BTM_MAX_REM_BD_NAME_LEN = common dso_local global i32 0, align 4
@BTM_PAIR_STATE_WAIT_LOCAL_OOB_RSP = common dso_local global i32 0, align 4
@BTM_SP_RMT_OOB_EVT = common dso_local global i32 0, align 4
@BTM_NOT_AUTHORIZED = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@HCI_ERR_HOST_REJECT_SECURITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_rem_oob_req(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @STREAM_TO_BDADDR(i32* %10, i32* %11)
  %13 = load i32*, i32** %3, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 3
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %3, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 4
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 5
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @BTM_TRACE_EVENT(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %21, i32 %24, i32 %27, i32 %30)
  %32 = load i32*, i32** %3, align 8
  %33 = call %struct.TYPE_8__* @btm_find_dev(i32* %32)
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %5, align 8
  %34 = icmp ne %struct.TYPE_8__* null, %33
  br i1 %34, label %35, label %83

35:                                               ; preds = %1
  %36 = load i64 (i32, i32*)*, i64 (i32, i32*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @btm_cb, i32 0, i32 1, i32 0), align 8
  %37 = icmp ne i64 (i32, i32*)* %36, null
  br i1 %37, label %38, label %83

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @BD_ADDR_LEN, align 4
  %45 = call i32 @memcpy(i32* %40, i32 %43, i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @DEV_CLASS_LEN, align 4
  %52 = call i32 @memcpy(i32* %47, i32 %50, i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = bitcast i64* %54 to i8*
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i8*
  %60 = load i32, i32* @BTM_MAX_REM_BD_NAME_LEN, align 4
  %61 = add nsw i32 %60, 1
  %62 = call i32 @BCM_STRNCPY_S(i8* %55, i32 8, i8* %59, i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* @BTM_MAX_REM_BD_NAME_LEN, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  store i64 0, i64* %67, align 8
  %68 = load i32, i32* @BTM_PAIR_STATE_WAIT_LOCAL_OOB_RSP, align 4
  %69 = call i32 @btm_sec_change_pairing_state(i32 %68)
  %70 = load i64 (i32, i32*)*, i64 (i32, i32*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @btm_cb, i32 0, i32 1, i32 0), align 8
  %71 = load i32, i32* @BTM_SP_RMT_OOB_EVT, align 4
  %72 = bitcast %struct.TYPE_7__* %4 to i32*
  %73 = call i64 %70(i32 %71, i32* %72)
  %74 = load i64, i64* @BTM_NOT_AUTHORIZED, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %38
  %77 = load i32, i32* @TRUE, align 4
  %78 = load i32*, i32** %3, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @BTM_RemoteOobDataReply(i32 %77, i32* %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %76, %38
  br label %87

83:                                               ; preds = %35, %1
  %84 = load i32, i32* @HCI_ERR_HOST_REJECT_SECURITY, align 4
  store i32 %84, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @btm_cb, i32 0, i32 0), align 8
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 @btsnd_hcic_rem_oob_neg_reply(i32* %85)
  br label %87

87:                                               ; preds = %83, %82
  ret void
}

declare dso_local i32 @STREAM_TO_BDADDR(i32*, i32*) #1

declare dso_local i32 @BTM_TRACE_EVENT(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_8__* @btm_find_dev(i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @BCM_STRNCPY_S(i8*, i32, i8*, i32) #1

declare dso_local i32 @btm_sec_change_pairing_state(i32) #1

declare dso_local i32 @BTM_RemoteOobDataReply(i32, i32*, i32, i32) #1

declare dso_local i32 @btsnd_hcic_rem_oob_neg_reply(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
