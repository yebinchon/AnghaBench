; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_sdp.c_bta_ag_add_record.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_sdp.c_bta_ag_add_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32 }

@BTA_AG_NUM_PROTO_ELEMS = common dso_local global i32 0, align 4
@BTA_AG_NUM_SVC_ELEMS = common dso_local global i32 0, align 4
@UUID_SERVCLASS_PUBLIC_BROWSE_GROUP = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"bta_ag_add_record uuid: %x\00", align 1
@UUID_PROTOCOL_L2CAP = common dso_local global i32 0, align 4
@UUID_PROTOCOL_RFCOMM = common dso_local global i32 0, align 4
@UUID_SERVCLASS_GENERIC_AUDIO = common dso_local global i64 0, align 8
@UUID_SERVCLASS_AG_HANDSFREE = common dso_local global i64 0, align 8
@UUID_SERVCLASS_HF_HANDSFREE = common dso_local global i64 0, align 8
@HFP_VERSION_1_6 = common dso_local global i64 0, align 8
@UUID_SERVCLASS_HEADSET = common dso_local global i64 0, align 8
@HSP_VERSION_1_2 = common dso_local global i64 0, align 8
@ATTR_ID_SERVICE_NAME = common dso_local global i32 0, align 4
@TEXT_STR_DESC_TYPE = common dso_local global i32 0, align 4
@BTA_AG_FEAT_REJECT = common dso_local global i32 0, align 4
@ATTR_ID_DATA_STORES_OR_NETWORK = common dso_local global i32 0, align 4
@UINT_DESC_TYPE = common dso_local global i32 0, align 4
@BTA_AG_FEAT_CODEC = common dso_local global i32 0, align 4
@BTA_AG_SDP_FEAT_SPEC = common dso_local global i32 0, align 4
@ATTR_ID_SUPPORTED_FEATURES = common dso_local global i32 0, align 4
@ATTR_ID_BROWSE_GROUP_LIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bta_ag_add_record(i64 %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca [1 x i64], align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca [2 x i32], align 4
  store i64 %0, i64* %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %21 = load i32, i32* @BTA_AG_NUM_PROTO_ELEMS, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %11, align 8
  %24 = alloca %struct.TYPE_4__, i64 %22, align 16
  store i64 %22, i64* %12, align 8
  %25 = load i32, i32* @BTA_AG_NUM_SVC_ELEMS, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i64, i64 %26, align 16
  store i64 %26, i64* %13, align 8
  %28 = getelementptr inbounds [1 x i64], [1 x i64]* %14, i64 0, i64 0
  %29 = load i64, i64* @UUID_SERVCLASS_PUBLIC_BROWSE_GROUP, align 8
  store i64 %29, i64* %28, align 8
  %30 = load i64, i64* @TRUE, align 8
  store i64 %30, i64* %18, align 8
  %31 = load i64, i64* @FALSE, align 8
  store i64 %31, i64* %19, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = load i32, i32* @BTA_AG_NUM_PROTO_ELEMS, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 24
  %37 = trunc i64 %36 to i32
  %38 = call i32 @memset(%struct.TYPE_4__* %24, i32 0, i32 %37)
  %39 = load i32, i32* @UUID_PROTOCOL_L2CAP, align 4
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 16
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 0, i32* %43, align 16
  %44 = load i32, i32* @UUID_PROTOCOL_RFCOMM, align 4
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load i32, i32* %8, align 4
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 %49, i32* %53, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @BTA_AG_NUM_PROTO_ELEMS, align 4
  %56 = call i64 @SDP_AddProtocolList(i32 %54, i32 %55, %struct.TYPE_4__* %24)
  %57 = load i64, i64* %18, align 8
  %58 = and i64 %57, %56
  store i64 %58, i64* %18, align 8
  %59 = load i64, i64* %6, align 8
  %60 = getelementptr inbounds i64, i64* %27, i64 0
  store i64 %59, i64* %60, align 16
  %61 = load i64, i64* @UUID_SERVCLASS_GENERIC_AUDIO, align 8
  %62 = getelementptr inbounds i64, i64* %27, i64 1
  store i64 %61, i64* %62, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @BTA_AG_NUM_SVC_ELEMS, align 4
  %65 = call i64 @SDP_AddServiceClassIdList(i32 %63, i32 %64, i64* %27)
  %66 = load i64, i64* %18, align 8
  %67 = and i64 %66, %65
  store i64 %67, i64* %18, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* @UUID_SERVCLASS_AG_HANDSFREE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %5
  %72 = load i64, i64* @UUID_SERVCLASS_HF_HANDSFREE, align 8
  store i64 %72, i64* %16, align 8
  %73 = load i64, i64* @HFP_VERSION_1_6, align 8
  store i64 %73, i64* %15, align 8
  br label %77

74:                                               ; preds = %5
  %75 = load i64, i64* @UUID_SERVCLASS_HEADSET, align 8
  store i64 %75, i64* %16, align 8
  %76 = load i64, i64* @HSP_VERSION_1_2, align 8
  store i64 %76, i64* %15, align 8
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i32, i32* %10, align 4
  %79 = load i64, i64* %16, align 8
  %80 = load i64, i64* %15, align 8
  %81 = call i64 @SDP_AddProfileDescriptorList(i32 %78, i64 %79, i64 %80)
  %82 = load i64, i64* %18, align 8
  %83 = and i64 %82, %81
  store i64 %83, i64* %18, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %105

86:                                               ; preds = %77
  %87 = load i8*, i8** %7, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %86
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @ATTR_ID_SERVICE_NAME, align 4
  %95 = load i32, i32* @TEXT_STR_DESC_TYPE, align 4
  %96 = load i8*, i8** %7, align 8
  %97 = call i64 @strlen(i8* %96)
  %98 = add nsw i64 %97, 1
  %99 = trunc i64 %98 to i32
  %100 = load i8*, i8** %7, align 8
  %101 = bitcast i8* %100 to i32*
  %102 = call i64 @SDP_AddAttribute(i32 %93, i32 %94, i32 %95, i32 %99, i32* %101)
  %103 = load i64, i64* %18, align 8
  %104 = and i64 %103, %102
  store i64 %104, i64* %18, align 8
  br label %105

105:                                              ; preds = %92, %86, %77
  %106 = load i64, i64* %6, align 8
  %107 = load i64, i64* @UUID_SERVCLASS_AG_HANDSFREE, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %148

109:                                              ; preds = %105
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @BTA_AG_FEAT_REJECT, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 1, i32 0
  store i32 %115, i32* %17, align 4
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* @ATTR_ID_DATA_STORES_OR_NETWORK, align 4
  %118 = load i32, i32* @UINT_DESC_TYPE, align 4
  %119 = call i64 @SDP_AddAttribute(i32 %116, i32 %117, i32 %118, i32 1, i32* %17)
  %120 = load i64, i64* %18, align 8
  %121 = and i64 %120, %119
  store i64 %121, i64* %18, align 8
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* @BTA_AG_FEAT_CODEC, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %109
  %127 = load i64, i64* @TRUE, align 8
  store i64 %127, i64* %19, align 8
  br label %128

128:                                              ; preds = %126, %109
  %129 = load i32, i32* @BTA_AG_SDP_FEAT_SPEC, align 4
  %130 = load i32, i32* %9, align 4
  %131 = and i32 %130, %129
  store i32 %131, i32* %9, align 4
  %132 = load i64, i64* %19, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %128
  %135 = load i32, i32* %9, align 4
  %136 = or i32 %135, 32
  store i32 %136, i32* %9, align 4
  br label %137

137:                                              ; preds = %134, %128
  %138 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @UINT16_TO_BE_FIELD(i32* %138, i32 %139)
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* @ATTR_ID_SUPPORTED_FEATURES, align 4
  %143 = load i32, i32* @UINT_DESC_TYPE, align 4
  %144 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %145 = call i64 @SDP_AddAttribute(i32 %141, i32 %142, i32 %143, i32 2, i32* %144)
  %146 = load i64, i64* %18, align 8
  %147 = and i64 %146, %145
  store i64 %147, i64* %18, align 8
  br label %148

148:                                              ; preds = %137, %105
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* @ATTR_ID_BROWSE_GROUP_LIST, align 4
  %151 = getelementptr inbounds [1 x i64], [1 x i64]* %14, i64 0, i64 0
  %152 = call i64 @SDP_AddUuidSequence(i32 %149, i32 %150, i32 1, i64* %151)
  %153 = load i64, i64* %18, align 8
  %154 = and i64 %153, %152
  store i64 %154, i64* %18, align 8
  %155 = load i64, i64* %18, align 8
  %156 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %156)
  ret i64 %155
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @APPL_TRACE_DEBUG(i8*, i64) #2

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #2

declare dso_local i64 @SDP_AddProtocolList(i32, i32, %struct.TYPE_4__*) #2

declare dso_local i64 @SDP_AddServiceClassIdList(i32, i32, i64*) #2

declare dso_local i64 @SDP_AddProfileDescriptorList(i32, i64, i64) #2

declare dso_local i64 @SDP_AddAttribute(i32, i32, i32, i32, i32*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @UINT16_TO_BE_FIELD(i32*, i32) #2

declare dso_local i64 @SDP_AddUuidSequence(i32, i32, i32, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
