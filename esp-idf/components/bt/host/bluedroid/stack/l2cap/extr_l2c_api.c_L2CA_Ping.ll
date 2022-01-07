; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_api.c_L2CA_Ping.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_api.c_L2CA_Ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32* }

@.str = private unnamed_addr constant [48 x i8] c"L2CA_Ping()  BDA: %02x-%02x-%02x-%02x-%02x-%02x\00", align 1
@FALSE = common dso_local global i64 0, align 8
@BT_TRANSPORT_BR_EDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"L2CAP - no LCB for L2CA_ping\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"L2CAP - rejected second L2CA_ping\00", align 1
@LST_DISCONNECTING = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"L2CAP - L2CA_ping rejected - link disconnecting\00", align 1
@LST_CONNECTED = common dso_local global i64 0, align 8
@L2CAP_ADJ_BRCM_ID = common dso_local global i32 0, align 4
@BTU_TTYPE_L2CAP_LINK = common dso_local global i32 0, align 4
@L2CAP_ECHO_RSP_TOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @L2CA_Ping(i32* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 3
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 4
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 5
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @L2CAP_TRACE_API(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12, i32 %15, i32 %18, i32 %21, i32 %24)
  %26 = call i32 (...) @BTM_IsDeviceUp()
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %2
  %29 = load i64, i64* @FALSE, align 8
  store i64 %29, i64* %3, align 8
  br label %96

30:                                               ; preds = %2
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* @BT_TRANSPORT_BR_EDR, align 4
  %33 = call %struct.TYPE_7__* @l2cu_find_lcb_by_bd_addr(i32* %31, i32 %32)
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %6, align 8
  %34 = icmp eq %struct.TYPE_7__* %33, null
  br i1 %34, label %35, label %57

35:                                               ; preds = %30
  %36 = load i32*, i32** %4, align 8
  %37 = load i64, i64* @FALSE, align 8
  %38 = load i32, i32* @BT_TRANSPORT_BR_EDR, align 4
  %39 = call %struct.TYPE_7__* @l2cu_allocate_lcb(i32* %36, i64 %37, i32 %38)
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %6, align 8
  %40 = icmp eq %struct.TYPE_7__* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i64, i64* @FALSE, align 8
  store i64 %43, i64* %3, align 8
  br label %96

44:                                               ; preds = %35
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = load i32, i32* @BT_TRANSPORT_BR_EDR, align 4
  %47 = call i64 @l2cu_create_conn(%struct.TYPE_7__* %45, i32 %46)
  %48 = load i64, i64* @FALSE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i64, i64* @FALSE, align 8
  store i64 %51, i64* %3, align 8
  br label %96

52:                                               ; preds = %44
  %53 = load i32*, i32** %5, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  store i32* %53, i32** %55, align 8
  %56 = load i64, i64* @TRUE, align 8
  store i64 %56, i64* %3, align 8
  br label %96

57:                                               ; preds = %30
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i64, i64* @FALSE, align 8
  store i64 %64, i64* %3, align 8
  br label %96

65:                                               ; preds = %57
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @LST_DISCONNECTING, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i64, i64* @FALSE, align 8
  store i64 %73, i64* %3, align 8
  br label %96

74:                                               ; preds = %65
  %75 = load i32*, i32** %5, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 2
  store i32* %75, i32** %77, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @LST_CONNECTED, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %94

83:                                               ; preds = %74
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %85 = load i32, i32* @L2CAP_ADJ_BRCM_ID, align 4
  %86 = call i32 @l2cu_adj_id(%struct.TYPE_7__* %84, i32 %85)
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %88 = call i32 @l2cu_send_peer_echo_req(%struct.TYPE_7__* %87, i32* null, i32 0)
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i32, i32* @BTU_TTYPE_L2CAP_LINK, align 4
  %92 = load i32, i32* @L2CAP_ECHO_RSP_TOUT, align 4
  %93 = call i32 @btu_start_timer(i32* %90, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %83, %74
  %95 = load i64, i64* @TRUE, align 8
  store i64 %95, i64* %3, align 8
  br label %96

96:                                               ; preds = %94, %71, %62, %52, %50, %41, %28
  %97 = load i64, i64* %3, align 8
  ret i64 %97
}

declare dso_local i32 @L2CAP_TRACE_API(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BTM_IsDeviceUp(...) #1

declare dso_local %struct.TYPE_7__* @l2cu_find_lcb_by_bd_addr(i32*, i32) #1

declare dso_local %struct.TYPE_7__* @l2cu_allocate_lcb(i32*, i64, i32) #1

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*) #1

declare dso_local i64 @l2cu_create_conn(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @l2cu_adj_id(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @l2cu_send_peer_echo_req(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @btu_start_timer(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
