; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_db.c_SDP_AddServiceClassIdList.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_db.c_SDP_AddServiceClassIdList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SDP_MAX_ATTR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"SDP_AddServiceClassIdList cannot get a buffer!\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@UUID_DESC_TYPE = common dso_local global i32 0, align 4
@SIZE_TWO_BYTES = common dso_local global i32 0, align 4
@ATTR_ID_SERVICE_CLASS_ID_LIST = common dso_local global i32 0, align 4
@DATA_ELE_SEQ_DESC_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SDP_AddServiceClassIdList(i32 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load i32, i32* @SDP_MAX_ATTR_LEN, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 4, %13
  %15 = mul i64 %14, 2
  %16 = trunc i64 %15 to i32
  %17 = call i64 @osi_malloc(i32 %16)
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %9, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = call i32 @SDP_TRACE_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %4, align 4
  br label %61

23:                                               ; preds = %3
  %24 = load i32*, i32** %9, align 8
  store i32* %24, i32** %10, align 8
  store i64 0, i64* %8, align 8
  br label %25

25:                                               ; preds = %40, %23
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = load i32*, i32** %10, align 8
  %31 = load i32, i32* @UUID_DESC_TYPE, align 4
  %32 = shl i32 %31, 3
  %33 = load i32, i32* @SIZE_TWO_BYTES, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @UINT8_TO_BE_STREAM(i32* %30, i32 %34)
  %36 = load i32*, i32** %10, align 8
  %37 = load i64*, i64** %7, align 8
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @UINT16_TO_BE_STREAM(i32* %36, i64 %38)
  br label %40

40:                                               ; preds = %29
  %41 = load i64, i64* %8, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %8, align 8
  %43 = load i64*, i64** %7, align 8
  %44 = getelementptr inbounds i64, i64* %43, i32 1
  store i64* %44, i64** %7, align 8
  br label %25

45:                                               ; preds = %25
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @ATTR_ID_SERVICE_CLASS_ID_LIST, align 4
  %48 = load i32, i32* @DATA_ELE_SEQ_DESC_TYPE, align 4
  %49 = load i32*, i32** %10, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = ptrtoint i32* %49 to i64
  %52 = ptrtoint i32* %50 to i64
  %53 = sub i64 %51, %52
  %54 = sdiv exact i64 %53, 4
  %55 = trunc i64 %54 to i32
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @SDP_AddAttribute(i32 %46, i32 %47, i32 %48, i32 %55, i32* %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @osi_free(i32* %58)
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %45, %20
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @SDP_TRACE_ERROR(i8*) #1

declare dso_local i32 @UINT8_TO_BE_STREAM(i32*, i32) #1

declare dso_local i32 @UINT16_TO_BE_STREAM(i32*, i64) #1

declare dso_local i32 @SDP_AddAttribute(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @osi_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
