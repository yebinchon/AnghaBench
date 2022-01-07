; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_utils.c_sdpu_build_attrib_seq.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_utils.c_sdpu_build_attrib_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DATA_ELE_SEQ_DESC_TYPE = common dso_local global i32 0, align 4
@SIZE_IN_NEXT_WORD = common dso_local global i32 0, align 4
@SIZE_IN_NEXT_BYTE = common dso_local global i32 0, align 4
@UINT_DESC_TYPE = common dso_local global i32 0, align 4
@SIZE_FOUR_BYTES = common dso_local global i32 0, align 4
@SIZE_TWO_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @sdpu_build_attrib_seq(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  store i32 5, i32* %7, align 4
  br label %14

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = mul nsw i32 %12, 3
  store i32 %13, i32* %7, align 4
  br label %14

14:                                               ; preds = %11, %10
  %15 = load i32, i32* %7, align 4
  %16 = icmp sgt i32 %15, 255
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @DATA_ELE_SEQ_DESC_TYPE, align 4
  %20 = shl i32 %19, 3
  %21 = load i32, i32* @SIZE_IN_NEXT_WORD, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @UINT8_TO_BE_STREAM(i32* %18, i32 %22)
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @UINT16_TO_BE_STREAM(i32* %24, i32 %25)
  br label %37

27:                                               ; preds = %14
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* @DATA_ELE_SEQ_DESC_TYPE, align 4
  %30 = shl i32 %29, 3
  %31 = load i32, i32* @SIZE_IN_NEXT_BYTE, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @UINT8_TO_BE_STREAM(i32* %28, i32 %32)
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @UINT8_TO_BE_STREAM(i32* %34, i32 %35)
  br label %37

37:                                               ; preds = %27, %17
  %38 = load i32*, i32** %5, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %51, label %40

40:                                               ; preds = %37
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* @UINT_DESC_TYPE, align 4
  %43 = shl i32 %42, 3
  %44 = load i32, i32* @SIZE_FOUR_BYTES, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @UINT8_TO_BE_STREAM(i32* %41, i32 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @UINT16_TO_BE_STREAM(i32* %47, i32 0)
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @UINT16_TO_BE_STREAM(i32* %49, i32 65535)
  br label %73

51:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %67, %51
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %52
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* @UINT_DESC_TYPE, align 4
  %59 = shl i32 %58, 3
  %60 = load i32, i32* @SIZE_TWO_BYTES, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @UINT8_TO_BE_STREAM(i32* %57, i32 %61)
  %63 = load i32*, i32** %4, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @UINT16_TO_BE_STREAM(i32* %63, i32 %65)
  br label %67

67:                                               ; preds = %56
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  %70 = load i32*, i32** %5, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %5, align 8
  br label %52

72:                                               ; preds = %52
  br label %73

73:                                               ; preds = %72, %40
  %74 = load i32*, i32** %4, align 8
  ret i32* %74
}

declare dso_local i32 @UINT8_TO_BE_STREAM(i32*, i32) #1

declare dso_local i32 @UINT16_TO_BE_STREAM(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
