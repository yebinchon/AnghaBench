; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_ucd.c_L2CA_UcdDiscover.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_ucd.c_L2CA_UcdDiscover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [64 x i8] c"L2CA_UcdDiscover()  PSM: 0x%04x  BDA: %08x%04x, InfoType=0x%02x\00", align 1
@L2C_UCD_STATE_UNUSED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"L2CAP - no RCB for L2CA_UcdDiscover, PSM: 0x%04x\00", align 1
@FALSE = common dso_local global i64 0, align 8
@BT_TRANSPORT_BR_EDR = common dso_local global i32 0, align 4
@L2CAP_CONNECTIONLESS_CID = common dso_local global i32 0, align 4
@L2CAP_UCD_INFO_TYPE_RECEPTION = common dso_local global i32 0, align 4
@L2C_UCD_STATE_W4_RECEPTION = common dso_local global i32 0, align 4
@L2CAP_UCD_INFO_TYPE_MTU = common dso_local global i32 0, align 4
@L2C_UCD_STATE_W4_MTU = common dso_local global i32 0, align 4
@LST_CONNECTED = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @L2CA_UcdDiscover(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 %14, 24
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 16
  %20 = add nsw i32 %15, %19
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 8
  %25 = add nsw i32 %20, %24
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %25, %28
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 8
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 5
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %33, %36
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @L2CAP_TRACE_API(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %29, i32 %37, i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = call %struct.TYPE_8__* @l2cu_find_rcb_by_psm(i32 %40)
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %10, align 8
  %42 = icmp eq %struct.TYPE_8__* %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %3
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @L2C_UCD_STATE_UNUSED, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %43, %3
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i64, i64* @FALSE, align 8
  store i64 %53, i64* %4, align 8
  br label %117

54:                                               ; preds = %43
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* @BT_TRANSPORT_BR_EDR, align 4
  %57 = call %struct.TYPE_9__* @l2cu_find_lcb_by_bd_addr(i32* %55, i32 %56)
  store %struct.TYPE_9__* %57, %struct.TYPE_9__** %8, align 8
  %58 = icmp eq %struct.TYPE_9__* %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %61 = load i32, i32* @L2CAP_CONNECTIONLESS_CID, align 4
  %62 = call i32* @l2cu_find_ccb_by_cid(%struct.TYPE_9__* %60, i32 %61)
  store i32* %62, i32** %9, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %59, %54
  %65 = load i32*, i32** %6, align 8
  %66 = call i64 @l2c_ucd_connect(i32* %65)
  %67 = load i64, i64* @FALSE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i64, i64* @FALSE, align 8
  store i64 %70, i64* %4, align 8
  br label %117

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71, %59
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @L2CAP_UCD_INFO_TYPE_RECEPTION, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load i32, i32* @L2C_UCD_STATE_W4_RECEPTION, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %78
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %77, %72
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @L2CAP_UCD_INFO_TYPE_MTU, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load i32, i32* @L2C_UCD_STATE_W4_MTU, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %90
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %89, %84
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %98 = icmp ne %struct.TYPE_9__* %97, null
  br i1 %98, label %99, label %115

99:                                               ; preds = %96
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @LST_CONNECTED, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %99
  %106 = load i32*, i32** %9, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %112, label %108

108:                                              ; preds = %105
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %110 = load i32, i32* @L2CAP_CONNECTIONLESS_CID, align 4
  %111 = call i32* @l2cu_find_ccb_by_cid(%struct.TYPE_9__* %109, i32 %110)
  store i32* %111, i32** %9, align 8
  br label %112

112:                                              ; preds = %108, %105
  %113 = load i32*, i32** %9, align 8
  %114 = call i32 @l2c_ucd_check_pending_info_req(i32* %113)
  br label %115

115:                                              ; preds = %112, %99, %96
  %116 = load i64, i64* @TRUE, align 8
  store i64 %116, i64* %4, align 8
  br label %117

117:                                              ; preds = %115, %69, %50
  %118 = load i64, i64* %4, align 8
  ret i64 %118
}

declare dso_local i32 @L2CAP_TRACE_API(i8*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_8__* @l2cu_find_rcb_by_psm(i32) #1

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*, i32) #1

declare dso_local %struct.TYPE_9__* @l2cu_find_lcb_by_bd_addr(i32*, i32) #1

declare dso_local i32* @l2cu_find_ccb_by_cid(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @l2c_ucd_connect(i32*) #1

declare dso_local i32 @l2c_ucd_check_pending_info_req(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
