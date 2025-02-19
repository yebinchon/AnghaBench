; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_api.c_SDP_FindProtocolListElemInRec.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_api.c_SDP_FindProtocolListElemInRec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_6__*, i32 }

@ATTR_ID_PROTOCOL_DESC_LIST = common dso_local global i64 0, align 8
@DATA_ELE_SEQ_DESC_TYPE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SDP_FindProtocolListElemInRec(%struct.TYPE_5__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %8, align 8
  br label %12

12:                                               ; preds = %33, %3
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %14 = icmp ne %struct.TYPE_6__* %13, null
  br i1 %14, label %15, label %37

15:                                               ; preds = %12
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ATTR_ID_PROTOCOL_DESC_LIST, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %15
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @SDP_DISC_ATTR_TYPE(i32 %24)
  %26 = load i64, i64* @DATA_ELE_SEQ_DESC_TYPE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @sdp_fill_proto_elem(%struct.TYPE_6__* %29, i32 %30, i32* %31)
  store i32 %32, i32* %4, align 4
  br label %39

33:                                               ; preds = %21, %15
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %8, align 8
  br label %12

37:                                               ; preds = %12
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %37, %28
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i64 @SDP_DISC_ATTR_TYPE(i32) #1

declare dso_local i32 @sdp_fill_proto_elem(%struct.TYPE_6__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
