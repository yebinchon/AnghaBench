; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_api.c_L2CA_FlowControl.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_api.c_L2CA_FlowControl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [34 x i8] c"L2CA_FlowControl(%d)  CID: 0x%04x\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"L2CAP - no CCB for L2CA_FlowControl, CID: 0x%04x  data_enabled: %d\00", align 1
@FALSE = common dso_local global i64 0, align 8
@L2CAP_FCR_ERTM_MODE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"L2CA_FlowControl()  invalid mode:%d\00", align 1
@CST_OPEN = common dso_local global i64 0, align 8
@L2CAP_FCR_SUP_RNR = common dso_local global i32 0, align 4
@L2CAP_FCR_SUP_RR = common dso_local global i32 0, align 4
@L2CAP_FCR_P_BIT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @L2CA_FlowControl(i32 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp ne i64 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @L2CAP_TRACE_API(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %13, i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = call %struct.TYPE_10__* @l2cu_find_ccb_by_cid(i32* null, i32 %16)
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %6, align 8
  %18 = icmp eq %struct.TYPE_10__* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %20, i64 %21)
  %23 = load i64, i64* @FALSE, align 8
  store i64 %23, i64* %3, align 8
  br label %79

24:                                               ; preds = %2
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @L2CAP_FCR_ERTM_MODE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %24
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @L2CAP_TRACE_EVENT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %37)
  %39 = load i64, i64* @FALSE, align 8
  store i64 %39, i64* %3, align 8
  br label %79

40:                                               ; preds = %24
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %77

47:                                               ; preds = %40
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  store i64 %48, i64* %51, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CST_OPEN, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %76

57:                                               ; preds = %47
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %76, label %63

63:                                               ; preds = %57
  %64 = load i64, i64* %7, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %68 = load i32, i32* @L2CAP_FCR_SUP_RNR, align 4
  %69 = call i32 @l2c_fcr_send_S_frame(%struct.TYPE_10__* %67, i32 %68, i32 0)
  br label %75

70:                                               ; preds = %63
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %72 = load i32, i32* @L2CAP_FCR_SUP_RR, align 4
  %73 = load i32, i32* @L2CAP_FCR_P_BIT, align 4
  %74 = call i32 @l2c_fcr_send_S_frame(%struct.TYPE_10__* %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %70, %66
  br label %76

76:                                               ; preds = %75, %57, %47
  br label %77

77:                                               ; preds = %76, %40
  %78 = load i64, i64* @TRUE, align 8
  store i64 %78, i64* %3, align 8
  br label %79

79:                                               ; preds = %77, %32, %19
  %80 = load i64, i64* %3, align 8
  ret i64 %80
}

declare dso_local i32 @L2CAP_TRACE_API(i8*, i64, i32) #1

declare dso_local %struct.TYPE_10__* @l2cu_find_ccb_by_cid(i32*, i32) #1

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*, i32, i64) #1

declare dso_local i32 @L2CAP_TRACE_EVENT(i8*, i64) #1

declare dso_local i32 @l2c_fcr_send_S_frame(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
