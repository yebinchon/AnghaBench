; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_btm_read_tx_power_complete.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_btm_read_tx_power_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i32, i32 (%struct.TYPE_8__*)*, i32 }
%struct.TYPE_8__ = type { i64, i64, i32, i32 }
%struct.TYPE_9__ = type { i64, i32, i64 }

@btm_cb = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str = private unnamed_addr constant [28 x i8] c"btm_read_tx_power_complete\0A\00", align 1
@HCI_SUCCESS = common dso_local global i64 0, align 8
@BTM_SUCCESS = common dso_local global i32 0, align 4
@MAX_L2CAP_LINKS = common dso_local global i64 0, align 8
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"BTM TX power Complete: tx_power %d, hci status 0x%02x\0A\00", align 1
@BTM_ERR_PROCESSING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_read_tx_power_complete(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32 (%struct.TYPE_8__*)**, align 8
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @btm_cb, i32 0, i32 0, i32 1), align 8
  %11 = bitcast i32 (%struct.TYPE_8__*)* %10 to i32 (%struct.TYPE_8__*)**
  store i32 (%struct.TYPE_8__*)** %11, i32 (%struct.TYPE_8__*)*** %5, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @btm_cb, i32 0, i32 1), align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i64 0
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %8, align 8
  %14 = call i32 (i8*, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @btu_stop_timer(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @btm_cb, i32 0, i32 0, i32 2))
  store i32 (%struct.TYPE_8__*)* null, i32 (%struct.TYPE_8__*)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @btm_cb, i32 0, i32 0, i32 1), align 8
  %16 = load i32 (%struct.TYPE_8__*)**, i32 (%struct.TYPE_8__*)*** %5, align 8
  %17 = icmp ne i32 (%struct.TYPE_8__*)** %16, null
  br i1 %17, label %18, label %93

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @STREAM_TO_UINT8(i64 %20, i32* %21)
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @HCI_SUCCESS, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %86

27:                                               ; preds = %18
  %28 = load i32, i32* @BTM_SUCCESS, align 4
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %70, label %32

32:                                               ; preds = %27
  %33 = load i64, i64* %7, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @STREAM_TO_UINT16(i64 %33, i32* %34)
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @STREAM_TO_UINT8(i64 %37, i32* %38)
  store i64 0, i64* %9, align 8
  br label %40

40:                                               ; preds = %64, %32
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* @MAX_L2CAP_LINKS, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %69

44:                                               ; preds = %40
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %44
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @BD_ADDR_LEN, align 4
  %62 = call i32 @memcpy(i32 %57, i32 %60, i32 %61)
  br label %69

63:                                               ; preds = %49, %44
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %9, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %9, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 1
  store %struct.TYPE_9__* %68, %struct.TYPE_9__** %8, align 8
  br label %40

69:                                               ; preds = %55, %40
  br label %80

70:                                               ; preds = %27
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @STREAM_TO_UINT8(i64 %72, i32* %73)
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %78 = load i32, i32* @BD_ADDR_LEN, align 4
  %79 = call i32 @memcpy(i32 %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %70, %69
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 (i8*, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %82, i64 %84)
  br label %89

86:                                               ; preds = %18
  %87 = load i32, i32* @BTM_ERR_PROCESSING, align 4
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  store i32 %87, i32* %88, align 8
  br label %89

89:                                               ; preds = %86, %80
  %90 = load i32 (%struct.TYPE_8__*)**, i32 (%struct.TYPE_8__*)*** %5, align 8
  %91 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %90, align 8
  %92 = call i32 %91(%struct.TYPE_8__* %6)
  br label %93

93:                                               ; preds = %89, %2
  ret void
}

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, ...) #1

declare dso_local i32 @btu_stop_timer(i32*) #1

declare dso_local i32 @STREAM_TO_UINT8(i64, i32*) #1

declare dso_local i32 @STREAM_TO_UINT16(i64, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
