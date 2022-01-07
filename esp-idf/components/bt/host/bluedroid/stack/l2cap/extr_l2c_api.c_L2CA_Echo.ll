; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_api.c_L2CA_Echo.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_api.c_L2CA_Echo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"L2CA_Echo() BDA: %08X%04X\00", align 1
@FALSE = common dso_local global i32 0, align 4
@BT_BD_ANY = common dso_local global i32 0, align 4
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@l2cb = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@TRUE = common dso_local global i32 0, align 4
@BT_TRANSPORT_BR_EDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"L2CA_Echo ERROR : link not established\00", align 1
@LST_CONNECTED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"L2CA_Echo ERROR : link is not connected\00", align 1
@L2CAP_ADJ_BRCM_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @L2CA_Echo(i32* %0, %struct.TYPE_9__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 %12, 24
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %16, 16
  %18 = add nsw i32 %13, %17
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 8
  %23 = add nsw i32 %18, %22
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %23, %26
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 8
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 5
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %31, %34
  %36 = call i32 @L2CAP_TRACE_API(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %35)
  %37 = call i32 (...) @BTM_IsDeviceUp()
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %3
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %4, align 4
  br label %90

41:                                               ; preds = %3
  %42 = load i32, i32* @BT_BD_ANY, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* @BD_ADDR_LEN, align 4
  %45 = call i64 @memcmp(i32 %42, i32* %43, i32 %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %49 = icmp eq %struct.TYPE_9__* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32*, i32** %7, align 8
  store i32* %51, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @l2cb, i32 0, i32 0), align 8
  %52 = load i32, i32* @TRUE, align 4
  store i32 %52, i32* %4, align 4
  br label %90

53:                                               ; preds = %47, %41
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* @BT_TRANSPORT_BR_EDR, align 4
  %56 = call %struct.TYPE_8__* @l2cu_find_lcb_by_bd_addr(i32* %54, i32 %55)
  store %struct.TYPE_8__* %56, %struct.TYPE_8__** %8, align 8
  %57 = icmp eq %struct.TYPE_8__* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = call i32 @L2CAP_TRACE_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %4, align 4
  br label %90

61:                                               ; preds = %53
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @LST_CONNECTED, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = call i32 @L2CAP_TRACE_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* @FALSE, align 4
  store i32 %69, i32* %4, align 4
  br label %90

70:                                               ; preds = %61
  %71 = load i32*, i32** %7, align 8
  store i32* %71, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @l2cb, i32 0, i32 0), align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i64 1
  %74 = bitcast %struct.TYPE_9__* %73 to i32*
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %74, i64 %78
  store i32* %79, i32** %9, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %81 = load i32, i32* @L2CAP_ADJ_BRCM_ID, align 4
  %82 = call i32 @l2cu_adj_id(%struct.TYPE_8__* %80, i32 %81)
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @l2cu_send_peer_echo_req(%struct.TYPE_8__* %83, i32* %84, i32 %87)
  %89 = load i32, i32* @TRUE, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %70, %67, %58, %50, %39
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @L2CAP_TRACE_API(i8*, i32, i32) #1

declare dso_local i32 @BTM_IsDeviceUp(...) #1

declare dso_local i64 @memcmp(i32, i32*, i32) #1

declare dso_local %struct.TYPE_8__* @l2cu_find_lcb_by_bd_addr(i32*, i32) #1

declare dso_local i32 @L2CAP_TRACE_ERROR(i8*) #1

declare dso_local i32 @l2cu_adj_id(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @l2cu_send_peer_echo_req(%struct.TYPE_8__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
