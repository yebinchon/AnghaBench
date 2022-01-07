; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_sdp.c_bta_ag_do_disc.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_sdp.c_bta_ag_do_disc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i32*, i32 }
%struct.TYPE_10__ = type { i8*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8* }

@FALSE = common dso_local global i64 0, align 8
@BTA_HFP_SERVICE_MASK = common dso_local global i32 0, align 4
@BTA_AG_INT = common dso_local global i64 0, align 8
@ATTR_ID_SERVICE_CLASS_ID_LIST = common dso_local global i32 0, align 4
@ATTR_ID_PROTOCOL_DESC_LIST = common dso_local global i32 0, align 4
@ATTR_ID_BT_PROFILE_DESC_LIST = common dso_local global i32 0, align 4
@ATTR_ID_SUPPORTED_FEATURES = common dso_local global i32 0, align 4
@UUID_SERVCLASS_HF_HANDSFREE = common dso_local global i8* null, align 8
@BTA_AG_ACP = common dso_local global i64 0, align 8
@BTA_HSP_SERVICE_MASK = common dso_local global i32 0, align 4
@ATTR_ID_REMOTE_AUDIO_VOLUME_CONTROL = common dso_local global i32 0, align 4
@UUID_SERVCLASS_HEADSET = common dso_local global i8* null, align 8
@HSP_VERSION_1_2 = common dso_local global i64 0, align 8
@UUID_SERVCLASS_HEADSET_HS = common dso_local global i8* null, align 8
@BTA_AG_DISC_BUF_SIZE = common dso_local global i32 0, align 4
@LEN_UUID_16 = common dso_local global i8* null, align 8
@bta_ag_sdp_cback_tbl = common dso_local global i32* null, align 8
@BTA_AG_DISC_FAIL_EVT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_ag_do_disc(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x %struct.TYPE_10__], align 16
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %6, align 4
  %10 = load i64, i64* @FALSE, align 8
  store i64 %10, i64* %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @BTA_HFP_SERVICE_MASK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %2
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @BTA_AG_INT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %15
  %22 = load i32, i32* @ATTR_ID_SERVICE_CLASS_ID_LIST, align 4
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %22, i32* %23, align 16
  %24 = load i32, i32* @ATTR_ID_PROTOCOL_DESC_LIST, align 4
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @ATTR_ID_BT_PROFILE_DESC_LIST, align 4
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* @ATTR_ID_SUPPORTED_FEATURES, align 4
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 %28, i32* %29, align 4
  store i32 4, i32* %8, align 4
  %30 = load i8*, i8** @UUID_SERVCLASS_HF_HANDSFREE, align 8
  %31 = getelementptr inbounds [2 x %struct.TYPE_10__], [2 x %struct.TYPE_10__]* %5, i64 0, i64 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  store i8* %30, i8** %33, align 8
  br label %94

34:                                               ; preds = %15, %2
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @BTA_HFP_SERVICE_MASK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %34
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @BTA_AG_ACP, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %39
  %46 = load i32, i32* @ATTR_ID_SERVICE_CLASS_ID_LIST, align 4
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %46, i32* %47, align 16
  %48 = load i32, i32* @ATTR_ID_BT_PROFILE_DESC_LIST, align 4
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* @ATTR_ID_SUPPORTED_FEATURES, align 4
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 %50, i32* %51, align 8
  store i32 3, i32* %8, align 4
  %52 = load i8*, i8** @UUID_SERVCLASS_HF_HANDSFREE, align 8
  %53 = getelementptr inbounds [2 x %struct.TYPE_10__], [2 x %struct.TYPE_10__]* %5, i64 0, i64 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  store i8* %52, i8** %55, align 8
  br label %93

56:                                               ; preds = %39, %34
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @BTA_HSP_SERVICE_MASK, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %91

61:                                               ; preds = %56
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @BTA_AG_INT, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %91

67:                                               ; preds = %61
  %68 = load i32, i32* @ATTR_ID_SERVICE_CLASS_ID_LIST, align 4
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %68, i32* %69, align 16
  %70 = load i32, i32* @ATTR_ID_PROTOCOL_DESC_LIST, align 4
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* @ATTR_ID_BT_PROFILE_DESC_LIST, align 4
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 %72, i32* %73, align 8
  %74 = load i32, i32* @ATTR_ID_REMOTE_AUDIO_VOLUME_CONTROL, align 4
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 %74, i32* %75, align 4
  store i32 4, i32* %8, align 4
  %76 = load i8*, i8** @UUID_SERVCLASS_HEADSET, align 8
  %77 = getelementptr inbounds [2 x %struct.TYPE_10__], [2 x %struct.TYPE_10__]* %5, i64 0, i64 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  store i8* %76, i8** %79, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @HSP_VERSION_1_2, align 8
  %84 = icmp sge i64 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %67
  %86 = load i8*, i8** @UUID_SERVCLASS_HEADSET_HS, align 8
  %87 = getelementptr inbounds [2 x %struct.TYPE_10__], [2 x %struct.TYPE_10__]* %5, i64 0, i64 1
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  store i8* %86, i8** %89, align 8
  store i32 2, i32* %6, align 4
  br label %90

90:                                               ; preds = %85, %67
  br label %92

91:                                               ; preds = %61, %56
  br label %147

92:                                               ; preds = %90
  br label %93

93:                                               ; preds = %92, %45
  br label %94

94:                                               ; preds = %93, %21
  %95 = load i32, i32* @BTA_AG_DISC_BUF_SIZE, align 4
  %96 = call i64 @osi_malloc(i32 %95)
  %97 = inttoptr i64 %96 to i32*
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 2
  store i32* %97, i32** %99, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %120

104:                                              ; preds = %94
  %105 = load i8*, i8** @LEN_UUID_16, align 8
  %106 = getelementptr inbounds [2 x %struct.TYPE_10__], [2 x %struct.TYPE_10__]* %5, i64 0, i64 0
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  store i8* %105, i8** %107, align 16
  %108 = load i8*, i8** @LEN_UUID_16, align 8
  %109 = getelementptr inbounds [2 x %struct.TYPE_10__], [2 x %struct.TYPE_10__]* %5, i64 0, i64 1
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  store i8* %108, i8** %110, align 16
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* @BTA_AG_DISC_BUF_SIZE, align 4
  %115 = load i32, i32* %6, align 4
  %116 = getelementptr inbounds [2 x %struct.TYPE_10__], [2 x %struct.TYPE_10__]* %5, i64 0, i64 0
  %117 = load i32, i32* %8, align 4
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %119 = call i64 @SDP_InitDiscoveryDb(i32* %113, i32 %114, i32 %115, %struct.TYPE_10__* %116, i32 %117, i32* %118)
  store i64 %119, i64* %9, align 8
  br label %120

120:                                              ; preds = %104, %94
  %121 = load i64, i64* %9, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %138

123:                                              ; preds = %120
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = load i32*, i32** @bta_ag_sdp_cback_tbl, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %132 = call i32 @bta_ag_scb_to_idx(%struct.TYPE_11__* %131)
  %133 = sub nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %130, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @SDP_ServiceSearchAttributeRequest(i32 %126, i32* %129, i32 %136)
  store i64 %137, i64* %9, align 8
  br label %138

138:                                              ; preds = %123, %120
  %139 = load i64, i64* %9, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %147, label %141

141:                                              ; preds = %138
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %143 = call i32 @bta_ag_free_db(%struct.TYPE_11__* %142, i32* null)
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %145 = load i32, i32* @BTA_AG_DISC_FAIL_EVT, align 4
  %146 = call i32 @bta_ag_sm_execute(%struct.TYPE_11__* %144, i32 %145, i32* null)
  br label %147

147:                                              ; preds = %91, %141, %138
  ret void
}

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i64 @SDP_InitDiscoveryDb(i32*, i32, i32, %struct.TYPE_10__*, i32, i32*) #1

declare dso_local i64 @SDP_ServiceSearchAttributeRequest(i32, i32*, i32) #1

declare dso_local i32 @bta_ag_scb_to_idx(%struct.TYPE_11__*) #1

declare dso_local i32 @bta_ag_free_db(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @bta_ag_sm_execute(%struct.TYPE_11__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
