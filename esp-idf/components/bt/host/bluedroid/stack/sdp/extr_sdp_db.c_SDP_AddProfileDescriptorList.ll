; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_db.c_SDP_AddProfileDescriptorList.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_db.c_SDP_AddProfileDescriptorList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SDP_MAX_ATTR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"SDP_AddProfileDescriptorList cannot get a buffer!\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@UUID_DESC_TYPE = common dso_local global i32 0, align 4
@SIZE_TWO_BYTES = common dso_local global i32 0, align 4
@UINT_DESC_TYPE = common dso_local global i32 0, align 4
@DATA_ELE_SEQ_DESC_TYPE = common dso_local global i32 0, align 4
@SIZE_IN_NEXT_BYTE = common dso_local global i32 0, align 4
@ATTR_ID_BT_PROFILE_DESC_LIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SDP_AddProfileDescriptorList(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @SDP_MAX_ATTR_LEN, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 8, %12
  %14 = trunc i64 %13 to i32
  %15 = call i64 @osi_malloc(i32 %14)
  %16 = inttoptr i64 %15 to i64*
  store i64* %16, i64** %8, align 8
  %17 = icmp eq i64* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = call i32 @SDP_TRACE_ERROR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %4, align 4
  br label %72

21:                                               ; preds = %3
  %22 = load i64*, i64** %8, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 2
  store i64* %23, i64** %9, align 8
  %24 = load i64*, i64** %9, align 8
  %25 = load i32, i32* @UUID_DESC_TYPE, align 4
  %26 = shl i32 %25, 3
  %27 = load i32, i32* @SIZE_TWO_BYTES, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @UINT8_TO_BE_STREAM(i64* %24, i32 %28)
  %30 = load i64*, i64** %9, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @UINT16_TO_BE_STREAM(i64* %30, i32 %31)
  %33 = load i64*, i64** %9, align 8
  %34 = load i32, i32* @UINT_DESC_TYPE, align 4
  %35 = shl i32 %34, 3
  %36 = load i32, i32* @SIZE_TWO_BYTES, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @UINT8_TO_BE_STREAM(i64* %33, i32 %37)
  %39 = load i64*, i64** %9, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @UINT16_TO_BE_STREAM(i64* %39, i32 %40)
  %42 = load i32, i32* @DATA_ELE_SEQ_DESC_TYPE, align 4
  %43 = shl i32 %42, 3
  %44 = load i32, i32* @SIZE_IN_NEXT_BYTE, align 4
  %45 = or i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = load i64*, i64** %8, align 8
  store i64 %46, i64* %47, align 8
  %48 = load i64*, i64** %9, align 8
  %49 = load i64*, i64** %8, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 2
  %51 = ptrtoint i64* %48 to i64
  %52 = ptrtoint i64* %50 to i64
  %53 = sub i64 %51, %52
  %54 = sdiv exact i64 %53, 8
  %55 = load i64*, i64** %8, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 1
  store i64 %54, i64* %56, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @ATTR_ID_BT_PROFILE_DESC_LIST, align 4
  %59 = load i32, i32* @DATA_ELE_SEQ_DESC_TYPE, align 4
  %60 = load i64*, i64** %9, align 8
  %61 = load i64*, i64** %8, align 8
  %62 = ptrtoint i64* %60 to i64
  %63 = ptrtoint i64* %61 to i64
  %64 = sub i64 %62, %63
  %65 = sdiv exact i64 %64, 8
  %66 = trunc i64 %65 to i32
  %67 = load i64*, i64** %8, align 8
  %68 = call i32 @SDP_AddAttribute(i32 %57, i32 %58, i32 %59, i32 %66, i64* %67)
  store i32 %68, i32* %10, align 4
  %69 = load i64*, i64** %8, align 8
  %70 = call i32 @osi_free(i64* %69)
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %21, %18
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @SDP_TRACE_ERROR(i8*) #1

declare dso_local i32 @UINT8_TO_BE_STREAM(i64*, i32) #1

declare dso_local i32 @UINT16_TO_BE_STREAM(i64*, i32) #1

declare dso_local i32 @SDP_AddAttribute(i32, i32, i32, i32, i64*) #1

declare dso_local i32 @osi_free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
