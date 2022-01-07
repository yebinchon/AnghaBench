; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_btm_read_remote_ext_features_complete.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_btm_read_remote_ext_features_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }

@.str = private unnamed_addr constant [39 x i8] c"btm_read_remote_ext_features_complete\0A\00", align 1
@MAX_L2CAP_LINKS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"btm_read_remote_ext_features_complete handle=%d invalid\0A\00", align 1
@HCI_EXT_FEATURES_PAGE_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [54 x i8] c"btm_read_remote_ext_features_complete page=%d unknown\00", align 1
@btm_cb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@HCI_FEATURE_BYTES_PER_PAGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"BTM reads next remote extended features page (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"BTM reached last remote extended features page (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_read_remote_ext_features_complete(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  %8 = call i32 (i8*, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %9 = load i64*, i64** %2, align 8
  %10 = getelementptr inbounds i64, i64* %9, i32 1
  store i64* %10, i64** %2, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64*, i64** %2, align 8
  %13 = call i32 @STREAM_TO_UINT16(i64 %11, i64* %12)
  %14 = load i64, i64* %4, align 8
  %15 = load i64*, i64** %2, align 8
  %16 = call i32 @STREAM_TO_UINT8(i64 %14, i64* %15)
  %17 = load i64, i64* %5, align 8
  %18 = load i64*, i64** %2, align 8
  %19 = call i32 @STREAM_TO_UINT8(i64 %17, i64* %18)
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @btm_handle_to_acl_index(i64 %20)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* @MAX_L2CAP_LINKS, align 8
  %23 = icmp uge i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  br label %71

27:                                               ; preds = %1
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @HCI_EXT_FEATURES_PAGE_MAX, align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i64 %32)
  br label %71

34:                                               ; preds = %27
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0), align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %36
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %3, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %4, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i64*, i64** %2, align 8
  %45 = load i32, i32* @HCI_FEATURE_BYTES_PER_PAGE, align 4
  %46 = call i32 @STREAM_TO_ARRAY(i32 %43, i64* %44, i32 %45)
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* %5, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %34
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* @HCI_EXT_FEATURES_PAGE_MAX, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i64, i64* %4, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %4, align 8
  %57 = load i64, i64* %4, align 8
  %58 = call i32 (i8*, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i64 %57)
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %4, align 8
  %61 = call i32 @btm_read_remote_ext_features(i64 %59, i64 %60)
  br label %71

62:                                               ; preds = %50, %34
  %63 = load i64, i64* %4, align 8
  %64 = call i32 (i8*, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i64 %63)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %66 = load i64, i64* %4, align 8
  %67 = add i64 %66, 1
  %68 = call i32 @btm_process_remote_ext_features(%struct.TYPE_5__* %65, i64 %67)
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %70 = call i32 @btm_establish_continue(%struct.TYPE_5__* %69)
  br label %71

71:                                               ; preds = %62, %54, %31, %24
  ret void
}

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, ...) #1

declare dso_local i32 @STREAM_TO_UINT16(i64, i64*) #1

declare dso_local i32 @STREAM_TO_UINT8(i64, i64*) #1

declare dso_local i64 @btm_handle_to_acl_index(i64) #1

declare dso_local i32 @BTM_TRACE_ERROR(i8*, i64) #1

declare dso_local i32 @STREAM_TO_ARRAY(i32, i64*, i32) #1

declare dso_local i32 @btm_read_remote_ext_features(i64, i64) #1

declare dso_local i32 @btm_process_remote_ext_features(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @btm_establish_continue(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
