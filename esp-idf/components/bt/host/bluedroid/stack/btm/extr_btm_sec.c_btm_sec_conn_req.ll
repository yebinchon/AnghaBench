; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_btm_sec_conn_req.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_btm_sec_conn_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32, i32, i32, %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 (...)* }

@.str = private unnamed_addr constant [57 x i8] c"Security Manager: connect request when device not ready\0A\00", align 1
@HCI_ERR_HOST_REJECT_DEVICE = common dso_local global i32 0, align 4
@btm_cb = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@BTM_SEC_LINK_KEY_AUTHED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Security Manager: connect request from non-paired device\0A\00", align 1
@BTM_NON_DISCOVERABLE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [58 x i8] c"Security Manager: connect request from not paired device\0A\00", align 1
@BTM_PAIR_STATE_IDLE = common dso_local global i64 0, align 8
@BTM_PAIR_FLAGS_WE_STARTED_DD = common dso_local global i32 0, align 4
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [62 x i8] c"Security Manager: reject connect request from bonding device\0A\00", align 1
@BTM_PAIR_FLAGS_REJECTED_CONNECT = common dso_local global i32 0, align 4
@DEV_CLASS_LEN = common dso_local global i32 0, align 4
@BTM_SM4_CONN_PEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_sec_conn_req(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call %struct.TYPE_8__* @btm_find_dev(i32* %6)
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %5, align 8
  %8 = call %struct.TYPE_9__* (...) @controller_get_interface()
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i32 (...)*, i32 (...)** %9, align 8
  %11 = call i32 (...) %10()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @HCI_ERR_HOST_REJECT_DEVICE, align 4
  %17 = call i32 @btsnd_hcic_reject_conn(i32* %15, i32 %16)
  br label %101

18:                                               ; preds = %2
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @btm_cb, i32 0, i32 6), align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %18
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = icmp ne %struct.TYPE_8__* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @BTM_SEC_LINK_KEY_AUTHED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %24, %21
  %32 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* @HCI_ERR_HOST_REJECT_DEVICE, align 4
  %35 = call i32 @btsnd_hcic_reject_conn(i32* %33, i32 %34)
  br label %101

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36, %18
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @btm_cb, i32 0, i32 5, i32 0), align 8
  %39 = load i64, i64* @BTM_NON_DISCOVERABLE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %43 = icmp ne %struct.TYPE_8__* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* @HCI_ERR_HOST_REJECT_DEVICE, align 4
  %48 = call i32 @btsnd_hcic_reject_conn(i32* %46, i32 %47)
  br label %101

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %37
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @btm_cb, i32 0, i32 0), align 8
  %52 = load i64, i64* @BTM_PAIR_STATE_IDLE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %50
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @btm_cb, i32 0, i32 1), align 8
  %56 = load i32, i32* @BTM_PAIR_FLAGS_WE_STARTED_DD, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %54
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @btm_cb, i32 0, i32 4), align 4
  %61 = load i32*, i32** %3, align 8
  %62 = load i32, i32* @BD_ADDR_LEN, align 4
  %63 = call i32 @memcmp(i32 %60, i32* %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %59
  %66 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i32, i32* @BTM_PAIR_FLAGS_REJECTED_CONNECT, align 4
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @btm_cb, i32 0, i32 1), align 8
  %69 = or i32 %68, %67
  store i32 %69, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @btm_cb, i32 0, i32 1), align 8
  %70 = load i32*, i32** %3, align 8
  %71 = load i32, i32* @HCI_ERR_HOST_REJECT_DEVICE, align 4
  %72 = call i32 @btsnd_hcic_reject_conn(i32* %70, i32 %71)
  br label %101

73:                                               ; preds = %59, %54, %50
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @btm_cb, i32 0, i32 3), align 8
  %75 = load i32*, i32** %3, align 8
  %76 = load i32, i32* @BD_ADDR_LEN, align 4
  %77 = call i32 @memcpy(i32 %74, i32* %75, i32 %76)
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @btm_cb, i32 0, i32 2), align 4
  %79 = load i32*, i32** %4, align 8
  %80 = load i32, i32* @DEV_CLASS_LEN, align 4
  %81 = call i32 @memcpy(i32 %78, i32* %79, i32 %80)
  %82 = load i32*, i32** %3, align 8
  %83 = call i64 @l2c_link_hci_conn_req(i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %101

85:                                               ; preds = %73
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %87 = icmp ne %struct.TYPE_8__* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i32*, i32** %3, align 8
  %90 = call %struct.TYPE_8__* @btm_sec_alloc_dev(i32* %89)
  store %struct.TYPE_8__* %90, %struct.TYPE_8__** %5, align 8
  br label %91

91:                                               ; preds = %88, %85
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %93 = icmp ne %struct.TYPE_8__* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load i32, i32* @BTM_SM4_CONN_PEND, align 4
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %94, %91
  br label %101

101:                                              ; preds = %13, %31, %44, %65, %100, %73
  ret void
}

declare dso_local %struct.TYPE_8__* @btm_find_dev(i32*) #1

declare dso_local %struct.TYPE_9__* @controller_get_interface(...) #1

declare dso_local i32 @BTM_TRACE_ERROR(i8*) #1

declare dso_local i32 @btsnd_hcic_reject_conn(i32*, i32) #1

declare dso_local i32 @memcmp(i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @l2c_link_hci_conn_req(i32*) #1

declare dso_local %struct.TYPE_8__* @btm_sec_alloc_dev(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
