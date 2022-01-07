; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/hci/extr_packet_fragmenter.c_fragment_and_dispatch.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/hci/extr_packet_fragmenter.c_fragment_and_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)* }
%struct.TYPE_10__ = type { i64, i32, i64, i64, i32* }
%struct.TYPE_11__ = type { i64 (...)*, i64 (...)* }

@MSG_EVT_MASK = common dso_local global i64 0, align 8
@MSG_STACK_TO_HC_HCI_ACL = common dso_local global i64 0, align 8
@callbacks = common dso_local global %struct.TYPE_12__* null, align 8
@LOCAL_BR_EDR_CONTROLLER_ID = common dso_local global i64 0, align 8
@controller = common dso_local global %struct.TYPE_11__* null, align 8
@HCI_ACL_PREAMBLE_SIZE = common dso_local global i64 0, align 8
@current_fragment_packet = common dso_local global %struct.TYPE_10__* null, align 8
@MSG_HC_TO_STACK_L2C_SEG_XMIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @fragment_and_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fragment_and_dispatch(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MSG_EVT_MASK, align 8
  %13 = and i64 %11, %12
  store i64 %13, i64* %7, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %16, i64 %20
  store i32* %21, i32** %8, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %23 = icmp ne %struct.TYPE_10__* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @MSG_STACK_TO_HC_HCI_ACL, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** @callbacks, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %31, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %34 = call i32 %32(%struct.TYPE_10__* %33, i32 1)
  br label %140

35:                                               ; preds = %1
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @SUB_EVENT(i64 %38)
  %40 = load i64, i64* @LOCAL_BR_EDR_CONTROLLER_ID, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** @controller, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i64 (...)*, i64 (...)** %44, align 8
  %46 = call i64 (...) %45()
  br label %52

47:                                               ; preds = %35
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** @controller, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load i64 (...)*, i64 (...)** %49, align 8
  %51 = call i64 (...) %50()
  br label %52

52:                                               ; preds = %47, %42
  %53 = phi i64 [ %46, %42 ], [ %51, %47 ]
  store i64 %53, i64* %4, align 8
  %54 = load i64, i64* %4, align 8
  %55 = load i64, i64* @HCI_ACL_PREAMBLE_SIZE, align 8
  %56 = add nsw i64 %54, %55
  store i64 %56, i64* %5, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %6, align 8
  %60 = load i64, i64* %3, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @STREAM_TO_UINT16(i64 %60, i32* %61)
  %63 = load i64, i64* %3, align 8
  %64 = call i64 @APPLY_CONTINUATION_FLAG(i64 %63)
  store i64 %64, i64* %3, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* %5, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %134

68:                                               ; preds = %52
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  store %struct.TYPE_10__* %69, %struct.TYPE_10__** @current_fragment_packet, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = load i64, i64* %4, align 8
  %72 = call i32 @UINT16_TO_STREAM(i32* %70, i64 %71)
  %73 = load i64, i64* %5, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** @callbacks, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %77, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %80 = call i32 %78(%struct.TYPE_10__* %79, i32 0)
  %81 = load i64, i64* %4, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %81
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %83, align 8
  %88 = load i64, i64* %4, align 8
  %89 = load i64, i64* %6, align 8
  %90 = sub nsw i64 %89, %88
  store i64 %90, i64* %6, align 8
  %91 = load i64, i64* %6, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 2
  store i64 %91, i64* %93, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 4
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  store i32* %101, i32** %8, align 8
  %102 = load i32*, i32** %8, align 8
  %103 = load i64, i64* %3, align 8
  %104 = call i32 @UINT16_TO_STREAM(i32* %102, i64 %103)
  %105 = load i32*, i32** %8, align 8
  %106 = load i64, i64* %6, align 8
  %107 = load i64, i64* @HCI_ACL_PREAMBLE_SIZE, align 8
  %108 = sub nsw i64 %106, %107
  %109 = call i32 @UINT16_TO_STREAM(i32* %105, i64 %108)
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %133

114:                                              ; preds = %68
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %117, -1
  store i64 %118, i64* %116, align 8
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %114
  %124 = load i64, i64* @MSG_HC_TO_STACK_L2C_SEG_XMIT, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** @current_fragment_packet, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** @callbacks, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 1
  %129 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %128, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %131 = call i32 %129(%struct.TYPE_10__* %130, i32 0)
  br label %140

132:                                              ; preds = %114
  br label %133

133:                                              ; preds = %132, %68
  br label %140

134:                                              ; preds = %52
  store %struct.TYPE_10__* null, %struct.TYPE_10__** @current_fragment_packet, align 8
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** @callbacks, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %136, align 8
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %139 = call i32 %137(%struct.TYPE_10__* %138, i32 1)
  br label %140

140:                                              ; preds = %29, %123, %134, %133
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @SUB_EVENT(i64) #1

declare dso_local i32 @STREAM_TO_UINT16(i64, i32*) #1

declare dso_local i64 @APPLY_CONTINUATION_FLAG(i64) #1

declare dso_local i32 @UINT16_TO_STREAM(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
