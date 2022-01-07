; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_db.c_SDP_AddLanguageBaseAttrIDList.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_db.c_SDP_AddLanguageBaseAttrIDList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SDP_MAX_ATTR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"SDP_AddLanguageBaseAttrIDList cannot get a buffer!\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@UINT_DESC_TYPE = common dso_local global i32 0, align 4
@SIZE_TWO_BYTES = common dso_local global i32 0, align 4
@ATTR_ID_LANGUAGE_BASE_ATTR_ID_LIST = common dso_local global i32 0, align 4
@DATA_ELE_SEQ_DESC_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SDP_AddLanguageBaseAttrIDList(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @SDP_MAX_ATTR_LEN, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 4, %14
  %16 = trunc i64 %15 to i32
  %17 = call i64 @osi_malloc(i32 %16)
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %10, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = call i32 @SDP_TRACE_ERROR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %5, align 4
  br label %67

23:                                               ; preds = %4
  %24 = load i32*, i32** %10, align 8
  store i32* %24, i32** %11, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = load i32, i32* @UINT_DESC_TYPE, align 4
  %27 = shl i32 %26, 3
  %28 = load i32, i32* @SIZE_TWO_BYTES, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @UINT8_TO_BE_STREAM(i32* %25, i32 %29)
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @UINT16_TO_BE_STREAM(i32* %31, i32 %32)
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* @UINT_DESC_TYPE, align 4
  %36 = shl i32 %35, 3
  %37 = load i32, i32* @SIZE_TWO_BYTES, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @UINT8_TO_BE_STREAM(i32* %34, i32 %38)
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @UINT16_TO_BE_STREAM(i32* %40, i32 %41)
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* @UINT_DESC_TYPE, align 4
  %45 = shl i32 %44, 3
  %46 = load i32, i32* @SIZE_TWO_BYTES, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @UINT8_TO_BE_STREAM(i32* %43, i32 %47)
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @UINT16_TO_BE_STREAM(i32* %49, i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @ATTR_ID_LANGUAGE_BASE_ATTR_ID_LIST, align 4
  %54 = load i32, i32* @DATA_ELE_SEQ_DESC_TYPE, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = ptrtoint i32* %55 to i64
  %58 = ptrtoint i32* %56 to i64
  %59 = sub i64 %57, %58
  %60 = sdiv exact i64 %59, 4
  %61 = trunc i64 %60 to i32
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @SDP_AddAttribute(i32 %52, i32 %53, i32 %54, i32 %61, i32* %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32*, i32** %10, align 8
  %65 = call i32 @osi_free(i32* %64)
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %23, %20
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @SDP_TRACE_ERROR(i8*) #1

declare dso_local i32 @UINT8_TO_BE_STREAM(i32*, i32) #1

declare dso_local i32 @UINT16_TO_BE_STREAM(i32*, i32) #1

declare dso_local i32 @SDP_AddAttribute(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @osi_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
