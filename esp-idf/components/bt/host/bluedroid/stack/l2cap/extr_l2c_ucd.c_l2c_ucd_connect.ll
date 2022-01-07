; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_ucd.c_l2c_ucd_connect.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_ucd.c_l2c_ucd_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64 }
%struct.TYPE_12__ = type { i32, i32*, i32, i8*, i8* }

@.str = private unnamed_addr constant [33 x i8] c"l2c_ucd_connect()  BDA: %08x%04x\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"l2c_ucd_connect - BTU not ready\00", align 1
@FALSE = common dso_local global i64 0, align 8
@BT_TRANSPORT_BR_EDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"L2CAP - conn not started l2c_ucd_connect\00", align 1
@L2CAP_EXTENDED_FEATURES_INFO_TYPE = common dso_local global i32 0, align 4
@L2CAP_EXTFEA_UCD_RECEPTION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"L2CAP - UCD is not supported by peer, l2c_ucd_connect\00", align 1
@L2CAP_CONNECTIONLESS_CID = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"L2CAP - no CCB for l2c_ucd_connect\00", align 1
@L2CAP_UCD_IDLE_TIMEOUT = common dso_local global i32 0, align 4
@L2CAP_UCD_CH_PRIORITY = common dso_local global i32 0, align 4
@L2C_UCD_RCB_ID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"L2CAP - no UCD registered, l2c_ucd_connect\00", align 1
@LST_CONNECTED = common dso_local global i64 0, align 8
@CST_OPEN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @l2c_ucd_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @l2c_ucd_connect(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = shl i32 %9, 24
  %11 = load i32*, i32** %3, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 %13, 16
  %15 = add nsw i32 %10, %14
  %16 = load i32*, i32** %3, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 8
  %20 = add nsw i32 %15, %19
  %21 = load i32*, i32** %3, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 3
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %20, %23
  %25 = load i32*, i32** %3, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 4
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 8
  %29 = load i32*, i32** %3, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 5
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %28, %31
  %33 = call i32 @L2CAP_TRACE_DEBUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %32)
  %34 = call i32 (...) @BTM_IsDeviceUp()
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %1
  %37 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i64, i64* @FALSE, align 8
  store i64 %38, i64* %2, align 8
  br label %128

39:                                               ; preds = %1
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* @BT_TRANSPORT_BR_EDR, align 4
  %42 = call %struct.TYPE_11__* @l2cu_find_lcb_by_bd_addr(i32* %40, i32 %41)
  store %struct.TYPE_11__* %42, %struct.TYPE_11__** %4, align 8
  %43 = icmp eq %struct.TYPE_11__* %42, null
  br i1 %43, label %44, label %60

44:                                               ; preds = %39
  %45 = load i32*, i32** %3, align 8
  %46 = load i64, i64* @FALSE, align 8
  %47 = load i32, i32* @BT_TRANSPORT_BR_EDR, align 4
  %48 = call %struct.TYPE_11__* @l2cu_allocate_lcb(i32* %45, i64 %46, i32 %47)
  store %struct.TYPE_11__* %48, %struct.TYPE_11__** %4, align 8
  %49 = icmp eq %struct.TYPE_11__* %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %52 = load i32, i32* @BT_TRANSPORT_BR_EDR, align 4
  %53 = call i64 @l2cu_create_conn(%struct.TYPE_11__* %51, i32 %52)
  %54 = load i64, i64* @FALSE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50, %44
  %57 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i64, i64* @FALSE, align 8
  store i64 %58, i64* %2, align 8
  br label %128

59:                                               ; preds = %50
  br label %80

60:                                               ; preds = %39
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @L2CAP_EXTENDED_FEATURES_INFO_TYPE, align 4
  %65 = shl i32 1, %64
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %60
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @L2CAP_EXTFEA_UCD_RECEPTION, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %68
  %76 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i64, i64* @FALSE, align 8
  store i64 %77, i64* %2, align 8
  br label %128

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %78, %60
  br label %80

80:                                               ; preds = %79, %59
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %82 = load i8*, i8** @L2CAP_CONNECTIONLESS_CID, align 8
  %83 = call %struct.TYPE_12__* @l2cu_find_ccb_by_cid(%struct.TYPE_11__* %81, i8* %82)
  store %struct.TYPE_12__* %83, %struct.TYPE_12__** %5, align 8
  %84 = icmp eq %struct.TYPE_12__* %83, null
  br i1 %84, label %85, label %126

85:                                               ; preds = %80
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %87 = call %struct.TYPE_12__* @l2cu_allocate_ccb(%struct.TYPE_11__* %86, i32 0)
  store %struct.TYPE_12__* %87, %struct.TYPE_12__** %5, align 8
  %88 = icmp eq %struct.TYPE_12__* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %91 = load i64, i64* @FALSE, align 8
  store i64 %91, i64* %2, align 8
  br label %128

92:                                               ; preds = %85
  %93 = load i8*, i8** @L2CAP_CONNECTIONLESS_CID, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 4
  store i8* %93, i8** %95, align 8
  %96 = load i8*, i8** @L2CAP_CONNECTIONLESS_CID, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 3
  store i8* %96, i8** %98, align 8
  %99 = load i32, i32* @L2CAP_UCD_IDLE_TIMEOUT, align 4
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %103 = load i32, i32* @L2CAP_UCD_CH_PRIORITY, align 4
  %104 = call i32 @l2cu_change_pri_ccb(%struct.TYPE_12__* %102, i32 %103)
  %105 = load i32, i32* @L2C_UCD_RCB_ID, align 4
  %106 = call i32* @l2cu_find_rcb_by_psm(i32 %105)
  store i32* %106, i32** %6, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %92
  %109 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %110 = load i64, i64* @FALSE, align 8
  store i64 %110, i64* %2, align 8
  br label %128

111:                                              ; preds = %92
  %112 = load i32*, i32** %6, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 1
  store i32* %112, i32** %114, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @LST_CONNECTED, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %111
  %121 = load i32, i32* @CST_OPEN, align 4
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  br label %124

124:                                              ; preds = %120, %111
  br label %125

125:                                              ; preds = %124
  br label %126

126:                                              ; preds = %125, %80
  %127 = load i64, i64* @TRUE, align 8
  store i64 %127, i64* %2, align 8
  br label %128

128:                                              ; preds = %126, %108, %89, %75, %56, %36
  %129 = load i64, i64* %2, align 8
  ret i64 %129
}

declare dso_local i32 @L2CAP_TRACE_DEBUG(i8*, i32, i32) #1

declare dso_local i32 @BTM_IsDeviceUp(...) #1

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*) #1

declare dso_local %struct.TYPE_11__* @l2cu_find_lcb_by_bd_addr(i32*, i32) #1

declare dso_local %struct.TYPE_11__* @l2cu_allocate_lcb(i32*, i64, i32) #1

declare dso_local i64 @l2cu_create_conn(%struct.TYPE_11__*, i32) #1

declare dso_local %struct.TYPE_12__* @l2cu_find_ccb_by_cid(%struct.TYPE_11__*, i8*) #1

declare dso_local %struct.TYPE_12__* @l2cu_allocate_ccb(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @l2cu_change_pri_ccb(%struct.TYPE_12__*, i32) #1

declare dso_local i32* @l2cu_find_rcb_by_psm(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
