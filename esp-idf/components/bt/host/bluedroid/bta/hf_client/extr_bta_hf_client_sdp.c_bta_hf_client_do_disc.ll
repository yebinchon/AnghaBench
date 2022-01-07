; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_client/extr_bta_hf_client_sdp.c_bta_hf_client_do_disc.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_client/extr_bta_hf_client_sdp.c_bta_hf_client_do_disc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32*, i32 }
%struct.TYPE_8__ = type { i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }

@FALSE = common dso_local global i64 0, align 8
@bta_hf_client_cb = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@BTA_HF_CLIENT_INT = common dso_local global i64 0, align 8
@ATTR_ID_SERVICE_CLASS_ID_LIST = common dso_local global i32 0, align 4
@ATTR_ID_PROTOCOL_DESC_LIST = common dso_local global i32 0, align 4
@ATTR_ID_BT_PROFILE_DESC_LIST = common dso_local global i32 0, align 4
@ATTR_ID_SUPPORTED_FEATURES = common dso_local global i32 0, align 4
@UUID_SERVCLASS_AG_HANDSFREE = common dso_local global i8* null, align 8
@BT_DEFAULT_BUFFER_SIZE = common dso_local global i32 0, align 4
@LEN_UUID_16 = common dso_local global i8* null, align 8
@bta_hf_client_sdp_cback = common dso_local global i32 0, align 4
@BTA_HF_CLIENT_DISC_FAIL_EVT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_hf_client_do_disc() #0 {
  %1 = alloca [2 x %struct.TYPE_8__], align 16
  %2 = alloca i32, align 4
  %3 = alloca [4 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 1, i32* %2, align 4
  %6 = load i64, i64* @FALSE, align 8
  store i64 %6, i64* %5, align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bta_hf_client_cb, i32 0, i32 0, i32 0), align 8
  %8 = load i64, i64* @BTA_HF_CLIENT_INT, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %0
  %11 = load i32, i32* @ATTR_ID_SERVICE_CLASS_ID_LIST, align 4
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  store i32 %11, i32* %12, align 16
  %13 = load i32, i32* @ATTR_ID_PROTOCOL_DESC_LIST, align 4
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 1
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @ATTR_ID_BT_PROFILE_DESC_LIST, align 4
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* @ATTR_ID_SUPPORTED_FEATURES, align 4
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 3
  store i32 %17, i32* %18, align 4
  store i32 4, i32* %4, align 4
  %19 = load i8*, i8** @UUID_SERVCLASS_AG_HANDSFREE, align 8
  %20 = getelementptr inbounds [2 x %struct.TYPE_8__], [2 x %struct.TYPE_8__]* %1, i64 0, i64 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i8* %19, i8** %22, align 8
  br label %34

23:                                               ; preds = %0
  %24 = load i32, i32* @ATTR_ID_SERVICE_CLASS_ID_LIST, align 4
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  store i32 %24, i32* %25, align 16
  %26 = load i32, i32* @ATTR_ID_BT_PROFILE_DESC_LIST, align 4
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 1
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @ATTR_ID_SUPPORTED_FEATURES, align 4
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2
  store i32 %28, i32* %29, align 8
  store i32 3, i32* %4, align 4
  %30 = load i8*, i8** @UUID_SERVCLASS_AG_HANDSFREE, align 8
  %31 = getelementptr inbounds [2 x %struct.TYPE_8__], [2 x %struct.TYPE_8__]* %1, i64 0, i64 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i8* %30, i8** %33, align 8
  br label %34

34:                                               ; preds = %23, %10
  %35 = load i32, i32* @BT_DEFAULT_BUFFER_SIZE, align 4
  %36 = call i64 @osi_malloc(i32 %35)
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bta_hf_client_cb, i32 0, i32 0, i32 1), align 8
  %38 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bta_hf_client_cb, i32 0, i32 0, i32 1), align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %54

40:                                               ; preds = %34
  %41 = load i8*, i8** @LEN_UUID_16, align 8
  %42 = getelementptr inbounds [2 x %struct.TYPE_8__], [2 x %struct.TYPE_8__]* %1, i64 0, i64 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 16
  %44 = load i8*, i8** @LEN_UUID_16, align 8
  %45 = getelementptr inbounds [2 x %struct.TYPE_8__], [2 x %struct.TYPE_8__]* %1, i64 0, i64 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 16
  %47 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bta_hf_client_cb, i32 0, i32 0, i32 1), align 8
  %48 = load i32, i32* @BT_DEFAULT_BUFFER_SIZE, align 4
  %49 = load i32, i32* %2, align 4
  %50 = getelementptr inbounds [2 x %struct.TYPE_8__], [2 x %struct.TYPE_8__]* %1, i64 0, i64 0
  %51 = load i32, i32* %4, align 4
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %53 = call i64 @SDP_InitDiscoveryDb(i32* %47, i32 %48, i32 %49, %struct.TYPE_8__* %50, i32 %51, i32* %52)
  store i64 %53, i64* %5, align 8
  br label %54

54:                                               ; preds = %40, %34
  %55 = load i64, i64* %5, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bta_hf_client_cb, i32 0, i32 0, i32 2), align 8
  %59 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bta_hf_client_cb, i32 0, i32 0, i32 1), align 8
  %60 = load i32, i32* @bta_hf_client_sdp_cback, align 4
  %61 = call i64 @SDP_ServiceSearchAttributeRequest(i32 %58, i32* %59, i32 %60)
  store i64 %61, i64* %5, align 8
  br label %62

62:                                               ; preds = %57, %54
  %63 = load i64, i64* %5, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = call i32 @bta_hf_client_free_db(i32* null)
  %67 = load i32, i32* @BTA_HF_CLIENT_DISC_FAIL_EVT, align 4
  %68 = call i32 @bta_hf_client_sm_execute(i32 %67, i32* null)
  br label %69

69:                                               ; preds = %65, %62
  ret void
}

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i64 @SDP_InitDiscoveryDb(i32*, i32, i32, %struct.TYPE_8__*, i32, i32*) #1

declare dso_local i64 @SDP_ServiceSearchAttributeRequest(i32, i32*, i32) #1

declare dso_local i32 @bta_hf_client_free_db(i32*) #1

declare dso_local i32 @bta_hf_client_sm_execute(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
