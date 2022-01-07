; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_btm_simple_pair_complete.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_btm_simple_pair_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 (i32, i32*)* }
%struct.TYPE_8__ = type { i32*, i32*, i32 }
%struct.TYPE_9__ = type { i64, i32, i32, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"btm_simple_pair_complete() with unknown BDA: %08x%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"btm_simple_pair_complete()  Pair State: %s  Status:%d  sec_state: %u\0A\00", align 1
@btm_cb = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@BTM_ERR_PROCESSING = common dso_local global i32 0, align 4
@HCI_SUCCESS = common dso_local global i64 0, align 8
@BTM_SUCCESS = common dso_local global i32 0, align 4
@BTM_SEC_AUTHENTICATED = common dso_local global i32 0, align 4
@HCI_ERR_PAIRING_NOT_ALLOWED = common dso_local global i64 0, align 8
@BTM_PAIR_STATE_WAIT_DISCONNECT = common dso_local global i32 0, align 4
@BTU_TTYPE_USER_FUNC = common dso_local global i32 0, align 4
@BT_1SEC_TIMEOUT = common dso_local global i32 0, align 4
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@BTM_SEC_STATE_AUTHENTICATING = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@DEV_CLASS_LEN = common dso_local global i32 0, align 4
@BTM_SP_COMPLT_EVT = common dso_local global i32 0, align 4
@HCI_ERR_PEER_USER = common dso_local global i64 0, align 8
@HCI_ERR_CONN_CAUSE_LOCAL_HOST = common dso_local global i64 0, align 8
@HCI_ERR_AUTH_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_simple_pair_complete(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca %struct.TYPE_8__, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  %7 = load i64, i64* @FALSE, align 8
  store i64 %7, i64* %6, align 8
  %8 = load i64*, i64** %2, align 8
  %9 = getelementptr inbounds i64, i64* %8, i32 1
  store i64* %9, i64** %2, align 8
  %10 = load i64, i64* %8, align 8
  store i64 %10, i64* %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64*, i64** %2, align 8
  %14 = call i32 @STREAM_TO_BDADDR(i32* %12, i64* %13)
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call %struct.TYPE_9__* @btm_find_dev(i32* %16)
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %4, align 8
  %18 = icmp eq %struct.TYPE_9__* %17, null
  br i1 %18, label %19, label %53

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 24
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 16
  %30 = add nsw i32 %24, %29
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 8
  %36 = add nsw i32 %30, %35
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %36, %40
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 4
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 5
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %46, %50
  %52 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %51)
  br label %146

53:                                               ; preds = %1
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @btm_cb, i32 0, i32 3), align 8
  %55 = call i32 @btm_pair_state_descr(i32 %54)
  %56 = load i64, i64* %5, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @BTM_TRACE_EVENT(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %55, i64 %56, i64 %59)
  %61 = load i32, i32* @BTM_ERR_PROCESSING, align 4
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 2
  store i32 %61, i32* %62, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* @HCI_SUCCESS, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %53
  %67 = load i32, i32* @BTM_SUCCESS, align 4
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 2
  store i32 %67, i32* %68, align 8
  %69 = load i32, i32* @BTM_SEC_AUTHENTICATED, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %105

74:                                               ; preds = %53
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* @HCI_ERR_PAIRING_NOT_ALLOWED, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load i32, i32* @BTM_PAIR_STATE_WAIT_DISCONNECT, align 4
  %80 = call i32 @btm_sec_change_pairing_state(i32 %79)
  %81 = load i32, i32* @BTU_TTYPE_USER_FUNC, align 4
  %82 = load i32, i32* @BT_1SEC_TIMEOUT, align 4
  %83 = call i32 @btu_start_timer(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @btm_cb, i32 0, i32 1), i32 %81, i32 %82)
  br label %104

84:                                               ; preds = %74
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @btm_cb, i32 0, i32 2), align 4
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* @BD_ADDR_LEN, align 4
  %89 = call i64 @memcmp(i32 %85, i32* %87, i32 %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %84
  %92 = call i32 @btu_stop_timer(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @btm_cb, i32 0, i32 1))
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @BTM_SEC_STATE_AUTHENTICATING, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = load i64, i64* @TRUE, align 8
  store i64 %99, i64* %6, align 8
  br label %100

100:                                              ; preds = %98, %91
  br label %103

101:                                              ; preds = %84
  %102 = load i64, i64* @TRUE, align 8
  store i64 %102, i64* %6, align 8
  br label %103

103:                                              ; preds = %101, %100
  br label %104

104:                                              ; preds = %103, %78
  br label %105

105:                                              ; preds = %104, %66
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @BD_ADDR_LEN, align 4
  %112 = call i32 @memcpy(i32* %107, i32 %110, i32 %111)
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @DEV_CLASS_LEN, align 4
  %119 = call i32 @memcpy(i32* %114, i32 %117, i32 %118)
  %120 = load i32 (i32, i32*)*, i32 (i32, i32*)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %121 = icmp ne i32 (i32, i32*)* %120, null
  br i1 %121, label %122, label %127

122:                                              ; preds = %105
  %123 = load i32 (i32, i32*)*, i32 (i32, i32*)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %124 = load i32, i32* @BTM_SP_COMPLT_EVT, align 4
  %125 = bitcast %struct.TYPE_8__* %3 to i32*
  %126 = call i32 %123(i32 %124, i32* %125)
  br label %127

127:                                              ; preds = %122, %105
  %128 = load i64, i64* %6, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %146

130:                                              ; preds = %127
  %131 = load i64, i64* %5, align 8
  %132 = load i64, i64* @HCI_ERR_PEER_USER, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %145

134:                                              ; preds = %130
  %135 = load i64, i64* %5, align 8
  %136 = load i64, i64* @HCI_ERR_CONN_CAUSE_LOCAL_HOST, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %134
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %140 = load i32, i32* @HCI_ERR_AUTH_FAILURE, align 4
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @btm_sec_send_hci_disconnect(%struct.TYPE_9__* %139, i32 %140, i32 %143)
  br label %145

145:                                              ; preds = %138, %134, %130
  br label %146

146:                                              ; preds = %19, %145, %127
  ret void
}

declare dso_local i32 @STREAM_TO_BDADDR(i32*, i64*) #1

declare dso_local %struct.TYPE_9__* @btm_find_dev(i32*) #1

declare dso_local i32 @BTM_TRACE_ERROR(i8*, i32, i32) #1

declare dso_local i32 @BTM_TRACE_EVENT(i8*, i32, i64, i64) #1

declare dso_local i32 @btm_pair_state_descr(i32) #1

declare dso_local i32 @btm_sec_change_pairing_state(i32) #1

declare dso_local i32 @btu_start_timer(i32*, i32, i32) #1

declare dso_local i64 @memcmp(i32, i32*, i32) #1

declare dso_local i32 @btu_stop_timer(i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @btm_sec_send_hci_disconnect(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
