; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_add_sdp_record.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_add_sdp_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i8**, i32 }

@UUID_SERVCLASS_PUBLIC_BROWSE_GROUP = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [43 x i8] c"gatt_add_sdp_record s_hdl=0x%x  s_hdl=0x%x\00", align 1
@UUID_DESC_TYPE = common dso_local global i32 0, align 4
@SIZE_FOUR_BYTES = common dso_local global i32 0, align 4
@ATTR_ID_SERVICE_CLASS_ID_LIST = common dso_local global i32 0, align 4
@DATA_ELE_SEQ_DESC_TYPE = common dso_local global i32 0, align 4
@SIZE_SIXTEEN_BYTES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"inavlid UUID len=%d\00", align 1
@UUID_PROTOCOL_L2CAP = common dso_local global i32 0, align 4
@BT_PSM_ATT = common dso_local global i8* null, align 8
@UUID_PROTOCOL_ATT = common dso_local global i32 0, align 4
@ATTR_ID_BROWSE_GROUP_LIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gatt_add_sdp_record(%struct.TYPE_8__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [2 x %struct.TYPE_7__], align 16
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca [60 x i32], align 16
  %12 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** @UUID_SERVCLASS_PUBLIC_BROWSE_GROUP, align 8
  store i8* %13, i8** %10, align 8
  %14 = getelementptr inbounds [60 x i32], [60 x i32]* %11, i64 0, i64 0
  store i32* %14, i32** %12, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %15, i8* %16)
  %18 = call i32 (...) @SDP_CreateRecord()
  store i32 %18, i32* %9, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %121

21:                                               ; preds = %3
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %81 [
    i32 129, label %25
    i32 128, label %31
    i32 130, label %56
  ]

25:                                               ; preds = %21
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = call i32 @SDP_AddServiceClassIdList(i32 %26, i32 1, i32* %29)
  br label %88

31:                                               ; preds = %21
  %32 = load i32*, i32** %12, align 8
  %33 = load i32, i32* @UUID_DESC_TYPE, align 4
  %34 = shl i32 %33, 3
  %35 = load i32, i32* @SIZE_FOUR_BYTES, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @UINT8_TO_BE_STREAM(i32* %32, i32 %36)
  %38 = load i32*, i32** %12, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @UINT32_TO_BE_STREAM(i32* %38, i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @ATTR_ID_SERVICE_CLASS_ID_LIST, align 4
  %46 = load i32, i32* @DATA_ELE_SEQ_DESC_TYPE, align 4
  %47 = load i32*, i32** %12, align 8
  %48 = getelementptr inbounds [60 x i32], [60 x i32]* %11, i64 0, i64 0
  %49 = ptrtoint i32* %47 to i64
  %50 = ptrtoint i32* %48 to i64
  %51 = sub i64 %49, %50
  %52 = sdiv exact i64 %51, 4
  %53 = trunc i64 %52 to i32
  %54 = getelementptr inbounds [60 x i32], [60 x i32]* %11, i64 0, i64 0
  %55 = call i32 @SDP_AddAttribute(i32 %44, i32 %45, i32 %46, i32 %53, i32* %54)
  br label %88

56:                                               ; preds = %21
  %57 = load i32*, i32** %12, align 8
  %58 = load i32, i32* @UUID_DESC_TYPE, align 4
  %59 = shl i32 %58, 3
  %60 = load i32, i32* @SIZE_SIXTEEN_BYTES, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @UINT8_TO_BE_STREAM(i32* %57, i32 %61)
  %63 = load i32*, i32** %12, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ARRAY_TO_BE_STREAM_REVERSE(i32* %63, i32 %67, i32 130)
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @ATTR_ID_SERVICE_CLASS_ID_LIST, align 4
  %71 = load i32, i32* @DATA_ELE_SEQ_DESC_TYPE, align 4
  %72 = load i32*, i32** %12, align 8
  %73 = getelementptr inbounds [60 x i32], [60 x i32]* %11, i64 0, i64 0
  %74 = ptrtoint i32* %72 to i64
  %75 = ptrtoint i32* %73 to i64
  %76 = sub i64 %74, %75
  %77 = sdiv exact i64 %76, 4
  %78 = trunc i64 %77 to i32
  %79 = getelementptr inbounds [60 x i32], [60 x i32]* %11, i64 0, i64 0
  %80 = call i32 @SDP_AddAttribute(i32 %69, i32 %70, i32 %71, i32 %78, i32* %79)
  br label %88

81:                                               ; preds = %21
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @SDP_DeleteRecord(i32 %86)
  store i32 0, i32* %4, align 4
  br label %121

88:                                               ; preds = %56, %31, %25
  %89 = load i32, i32* @UUID_PROTOCOL_L2CAP, align 4
  %90 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %8, i64 0, i64 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 16
  %92 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %8, i64 0, i64 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  store i32 1, i32* %93, align 16
  %94 = load i8*, i8** @BT_PSM_ATT, align 8
  %95 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %8, i64 0, i64 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i8**, i8*** %96, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 0
  store i8* %94, i8** %98, align 8
  %99 = load i32, i32* @UUID_PROTOCOL_ATT, align 4
  %100 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %8, i64 0, i64 1
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  %102 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %8, i64 0, i64 1
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  store i32 2, i32* %103, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %8, i64 0, i64 1
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i8**, i8*** %106, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 0
  store i8* %104, i8** %108, align 8
  %109 = load i8*, i8** %7, align 8
  %110 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %8, i64 0, i64 1
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load i8**, i8*** %111, align 8
  %113 = getelementptr inbounds i8*, i8** %112, i64 1
  store i8* %109, i8** %113, align 8
  %114 = load i32, i32* %9, align 4
  %115 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %8, i64 0, i64 0
  %116 = call i32 @SDP_AddProtocolList(i32 %114, i32 2, %struct.TYPE_7__* %115)
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* @ATTR_ID_BROWSE_GROUP_LIST, align 4
  %119 = call i32 @SDP_AddUuidSequence(i32 %117, i32 %118, i32 1, i8** %10)
  %120 = load i32, i32* %9, align 4
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %88, %81, %20
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32 @GATT_TRACE_DEBUG(i8*, i8*, i8*) #1

declare dso_local i32 @SDP_CreateRecord(...) #1

declare dso_local i32 @SDP_AddServiceClassIdList(i32, i32, i32*) #1

declare dso_local i32 @UINT8_TO_BE_STREAM(i32*, i32) #1

declare dso_local i32 @UINT32_TO_BE_STREAM(i32*, i32) #1

declare dso_local i32 @SDP_AddAttribute(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ARRAY_TO_BE_STREAM_REVERSE(i32*, i32, i32) #1

declare dso_local i32 @GATT_TRACE_ERROR(i8*, i32) #1

declare dso_local i32 @SDP_DeleteRecord(i32) #1

declare dso_local i32 @SDP_AddProtocolList(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @SDP_AddUuidSequence(i32, i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
