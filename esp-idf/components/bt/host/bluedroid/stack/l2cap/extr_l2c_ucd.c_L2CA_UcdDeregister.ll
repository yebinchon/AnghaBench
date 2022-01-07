; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_ucd.c_L2CA_UcdDeregister.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_ucd.c_L2CA_UcdDeregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [34 x i8] c"L2CA_UcdDeregister()  PSM: 0x%04x\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"L2CAP - no RCB for L2CA_UcdDeregister, PSM: 0x%04x\00", align 1
@FALSE = common dso_local global i32 0, align 4
@L2C_UCD_STATE_UNUSED = common dso_local global i64 0, align 8
@l2cb = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@MAX_L2CAP_CLIENTS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@L2C_UCD_RCB_ID = common dso_local global i64 0, align 8
@MAX_L2CAP_CHANNELS = common dso_local global i64 0, align 8
@L2CAP_CONNECTIONLESS_CID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @L2CA_UcdDeregister(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @L2CAP_TRACE_API(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %7)
  %9 = load i64, i64* %3, align 8
  %10 = call %struct.TYPE_9__* @l2cu_find_rcb_by_psm(i64 %9)
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %5, align 8
  %11 = icmp eq %struct.TYPE_9__* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @L2CAP_TRACE_ERROR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %13)
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %2, align 4
  br label %82

16:                                               ; preds = %1
  %17 = load i64, i64* @L2C_UCD_STATE_UNUSED, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i64 %17, i64* %20, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @l2cb, i32 0, i32 1), align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i64 0
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %5, align 8
  store i64 0, i64* %6, align 8
  br label %23

23:                                               ; preds = %42, %16
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @MAX_L2CAP_CLIENTS, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %23
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @L2C_UCD_STATE_UNUSED, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* %2, align 4
  br label %82

41:                                               ; preds = %32, %27
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %6, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %6, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 1
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %5, align 8
  br label %23

47:                                               ; preds = %23
  %48 = load i64, i64* @L2C_UCD_RCB_ID, align 8
  %49 = call %struct.TYPE_9__* @l2cu_find_rcb_by_psm(i64 %48)
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %5, align 8
  %50 = icmp ne %struct.TYPE_9__* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = call i32 @l2cu_release_rcb(%struct.TYPE_9__* %52)
  br label %54

54:                                               ; preds = %51, %47
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @l2cb, i32 0, i32 0), align 8
  store %struct.TYPE_10__* %55, %struct.TYPE_10__** %4, align 8
  store i64 0, i64* %6, align 8
  br label %56

56:                                               ; preds = %77, %54
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* @MAX_L2CAP_CHANNELS, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %56
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @L2CAP_CONNECTIONLESS_CID, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = call i32 @l2cu_release_ccb(%struct.TYPE_10__* %72)
  br label %74

74:                                               ; preds = %71, %65, %60
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 1
  store %struct.TYPE_10__* %76, %struct.TYPE_10__** %4, align 8
  br label %77

77:                                               ; preds = %74
  %78 = load i64, i64* %6, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %6, align 8
  br label %56

80:                                               ; preds = %56
  %81 = load i32, i32* @TRUE, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %80, %39, %12
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @L2CAP_TRACE_API(i8*, i64) #1

declare dso_local %struct.TYPE_9__* @l2cu_find_rcb_by_psm(i64) #1

declare dso_local i32 @L2CAP_TRACE_ERROR(i8*, i64) #1

declare dso_local i32 @l2cu_release_rcb(%struct.TYPE_9__*) #1

declare dso_local i32 @l2cu_release_ccb(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
