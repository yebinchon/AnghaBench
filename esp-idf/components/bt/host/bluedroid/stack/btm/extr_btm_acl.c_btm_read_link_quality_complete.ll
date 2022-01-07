; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_btm_read_link_quality_complete.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_btm_read_link_quality_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*)*, i32 }
%struct.TYPE_8__ = type { i64, i64, i32, i32 }
%struct.TYPE_9__ = type { i64, i32, i64 }

@btm_cb = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str = private unnamed_addr constant [32 x i8] c"btm_read_link_quality_complete\0A\00", align 1
@HCI_SUCCESS = common dso_local global i64 0, align 8
@BTM_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"BTM Link Quality Complete: Link Quality %d, hci status 0x%02x\0A\00", align 1
@MAX_L2CAP_LINKS = common dso_local global i64 0, align 8
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@BTM_ERR_PROCESSING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_read_link_quality_complete(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32 (%struct.TYPE_8__*)**, align 8
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %9 = bitcast i32 (%struct.TYPE_8__*)* %8 to i32 (%struct.TYPE_8__*)**
  store i32 (%struct.TYPE_8__*)** %9, i32 (%struct.TYPE_8__*)*** %3, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @btm_cb, i32 0, i32 1), align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i64 0
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %6, align 8
  %12 = call i32 (i8*, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @btu_stop_timer(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @btm_cb, i32 0, i32 0, i32 1))
  store i32 (%struct.TYPE_8__*)* null, i32 (%struct.TYPE_8__*)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %14 = load i32 (%struct.TYPE_8__*)**, i32 (%struct.TYPE_8__*)*** %3, align 8
  %15 = icmp ne i32 (%struct.TYPE_8__*)** %14, null
  br i1 %15, label %16, label %77

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @STREAM_TO_UINT8(i64 %18, i32* %19)
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @HCI_SUCCESS, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %70

25:                                               ; preds = %16
  %26 = load i32, i32* @BTM_SUCCESS, align 4
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 2
  store i32 %26, i32* %27, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @STREAM_TO_UINT16(i64 %28, i32* %29)
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @STREAM_TO_UINT8(i64 %32, i32* %33)
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 (i8*, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i64 %36, i64 %38)
  store i64 0, i64* %7, align 8
  br label %40

40:                                               ; preds = %64, %25
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* @MAX_L2CAP_LINKS, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %69

44:                                               ; preds = %40
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %44
  %50 = load i64, i64* %5, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @BD_ADDR_LEN, align 4
  %62 = call i32 @memcpy(i32 %57, i32 %60, i32 %61)
  br label %69

63:                                               ; preds = %49, %44
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %7, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %7, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 1
  store %struct.TYPE_9__* %68, %struct.TYPE_9__** %6, align 8
  br label %40

69:                                               ; preds = %55, %40
  br label %73

70:                                               ; preds = %16
  %71 = load i32, i32* @BTM_ERR_PROCESSING, align 4
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 2
  store i32 %71, i32* %72, align 8
  br label %73

73:                                               ; preds = %70, %69
  %74 = load i32 (%struct.TYPE_8__*)**, i32 (%struct.TYPE_8__*)*** %3, align 8
  %75 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %74, align 8
  %76 = call i32 %75(%struct.TYPE_8__* %4)
  br label %77

77:                                               ; preds = %73, %1
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
