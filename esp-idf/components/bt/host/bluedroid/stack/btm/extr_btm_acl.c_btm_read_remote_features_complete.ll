; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_btm_read_remote_features_complete.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_btm_read_remote_features_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_7__ = type { i64 (...)* }

@.str = private unnamed_addr constant [35 x i8] c"btm_read_remote_features_complete\0A\00", align 1
@HCI_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"btm_read_remote_features_complete failed (status 0x%02x)\0A\00", align 1
@MAX_L2CAP_LINKS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"btm_read_remote_features_complete handle=%d invalid\0A\00", align 1
@btm_cb = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@HCI_EXT_FEATURES_PAGE_0 = common dso_local global i64 0, align 8
@HCI_FEATURE_BYTES_PER_PAGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Start reading remote extended features\0A\00", align 1
@HCI_EXT_FEATURES_PAGE_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_read_remote_features_complete(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  %7 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %8 = load i64, i64* %4, align 8
  %9 = load i64*, i64** %2, align 8
  %10 = call i32 @STREAM_TO_UINT8(i64 %8, i64* %9)
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @HCI_SUCCESS, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i64 %15)
  br label %65

17:                                               ; preds = %1
  %18 = load i64, i64* %5, align 8
  %19 = load i64*, i64** %2, align 8
  %20 = call i32 @STREAM_TO_UINT16(i64 %18, i64* %19)
  %21 = load i64, i64* %5, align 8
  %22 = call i64 @btm_handle_to_acl_index(i64 %21)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* @MAX_L2CAP_LINKS, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i64 %26)
  br label %65

28:                                               ; preds = %17
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 0), align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %30
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %3, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @HCI_EXT_FEATURES_PAGE_0, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i64*, i64** %2, align 8
  %39 = load i32, i32* @HCI_FEATURE_BYTES_PER_PAGE, align 4
  %40 = call i32 @STREAM_TO_ARRAY(i32 %37, i64* %38, i32 %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @HCI_EXT_FEATURES_PAGE_0, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @HCI_LMP_EXTENDED_SUPPORTED(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %28
  %50 = call %struct.TYPE_7__* (...) @controller_get_interface()
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64 (...)*, i64 (...)** %51, align 8
  %53 = call i64 (...) %52()
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i64, i64* %5, align 8
  %58 = load i32, i32* @HCI_EXT_FEATURES_PAGE_1, align 4
  %59 = call i32 @btm_read_remote_ext_features(i64 %57, i32 %58)
  br label %65

60:                                               ; preds = %49, %28
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %62 = call i32 @btm_process_remote_ext_features(%struct.TYPE_6__* %61, i32 1)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %64 = call i32 @btm_establish_continue(%struct.TYPE_6__* %63)
  br label %65

65:                                               ; preds = %60, %55, %25, %14
  ret void
}

declare dso_local i32 @BTM_TRACE_DEBUG(i8*) #1

declare dso_local i32 @STREAM_TO_UINT8(i64, i64*) #1

declare dso_local i32 @BTM_TRACE_ERROR(i8*, i64) #1

declare dso_local i32 @STREAM_TO_UINT16(i64, i64*) #1

declare dso_local i64 @btm_handle_to_acl_index(i64) #1

declare dso_local i32 @STREAM_TO_ARRAY(i32, i64*, i32) #1

declare dso_local i64 @HCI_LMP_EXTENDED_SUPPORTED(i32) #1

declare dso_local %struct.TYPE_7__* @controller_get_interface(...) #1

declare dso_local i32 @btm_read_remote_ext_features(i64, i32) #1

declare dso_local i32 @btm_process_remote_ext_features(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @btm_establish_continue(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
