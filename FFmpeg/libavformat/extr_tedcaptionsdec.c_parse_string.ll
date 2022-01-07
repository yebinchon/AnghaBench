; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_tedcaptionsdec.c_parse_string.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_tedcaptionsdec.c_parse_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_BPRINT_SIZE_UNLIMITED = common dso_local global i32 0, align 4
@AV_BPRINT_SIZE_AUTOMATIC = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32)* @parse_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_string(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32*, i32** %8, align 8
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @AV_BPRINT_SIZE_UNLIMITED, align 4
  br label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @AV_BPRINT_SIZE_AUTOMATIC, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = call i32 @av_bprint_init(i32* %13, i32 0, i32 %21)
  %23 = load i32*, i32** %6, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @expect_byte(i32* %23, i32* %24, i8 signext 34)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %121

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %99, %29
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 34
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi i1 [ false, %30 ], [ %37, %34 ]
  br i1 %39, label %40, label %103

40:                                               ; preds = %38
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 92
  br i1 %43, label %44, label %94

44:                                               ; preds = %40
  %45 = load i32*, i32** %6, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @next_byte(i32* %45, i32* %46)
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %52, i32* %10, align 4
  br label %121

53:                                               ; preds = %44
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, 32
  %57 = icmp eq i32 %56, 117
  br i1 %57, label %58, label %88

58:                                               ; preds = %53
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %59

59:                                               ; preds = %81, %58
  %60 = load i32, i32* %12, align 4
  %61 = icmp ult i32 %60, 4
  br i1 %61, label %62, label %84

62:                                               ; preds = %59
  %63 = load i32*, i32** %6, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @next_byte(i32* %63, i32* %64)
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @HEX_DIGIT_TEST(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %62
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ERR_CODE(i32 %72)
  store i32 %73, i32* %10, align 4
  br label %121

74:                                               ; preds = %62
  %75 = load i32, i32* %11, align 4
  %76 = mul i32 %75, 16
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @HEX_DIGIT_VAL(i32 %78)
  %80 = add i32 %76, %79
  store i32 %80, i32* %11, align 4
  br label %81

81:                                               ; preds = %74
  %82 = load i32, i32* %12, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %59

84:                                               ; preds = %59
  %85 = load i32*, i32** %8, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @av_bprint_utf8(i32* %85, i32 %86)
  br label %93

88:                                               ; preds = %53
  %89 = load i32*, i32** %8, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @av_bprint_chars(i32* %89, i32 %91, i32 1)
  br label %93

93:                                               ; preds = %88, %84
  br label %99

94:                                               ; preds = %40
  %95 = load i32*, i32** %8, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @av_bprint_chars(i32* %95, i32 %97, i32 1)
  br label %99

99:                                               ; preds = %94, %93
  %100 = load i32*, i32** %6, align 8
  %101 = load i32*, i32** %7, align 8
  %102 = call i32 @next_byte(i32* %100, i32* %101)
  br label %30

103:                                              ; preds = %38
  %104 = load i32*, i32** %6, align 8
  %105 = load i32*, i32** %7, align 8
  %106 = call i32 @expect_byte(i32* %104, i32* %105, i8 signext 34)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %121

110:                                              ; preds = %103
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %110
  %114 = load i32*, i32** %8, align 8
  %115 = call i32 @av_bprint_is_complete(i32* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %113
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = call i32 @AVERROR(i32 %118)
  store i32 %119, i32* %10, align 4
  br label %121

120:                                              ; preds = %113, %110
  store i32 0, i32* %5, align 4
  br label %125

121:                                              ; preds = %117, %109, %70, %51, %28
  %122 = load i32*, i32** %8, align 8
  %123 = call i32 @av_bprint_finalize(i32* %122, i32* null)
  %124 = load i32, i32* %10, align 4
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %121, %120
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i32 @av_bprint_init(i32*, i32, i32) #1

declare dso_local i32 @expect_byte(i32*, i32*, i8 signext) #1

declare dso_local i32 @next_byte(i32*, i32*) #1

declare dso_local i32 @HEX_DIGIT_TEST(i32) #1

declare dso_local i32 @ERR_CODE(i32) #1

declare dso_local i32 @HEX_DIGIT_VAL(i32) #1

declare dso_local i32 @av_bprint_utf8(i32*, i32) #1

declare dso_local i32 @av_bprint_chars(i32*, i32, i32) #1

declare dso_local i32 @av_bprint_is_complete(i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_bprint_finalize(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
