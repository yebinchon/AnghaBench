; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pokey.c_POKEY_Initialise.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pokey.c_POKEY_Initialise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POKEY_DELAYED_SERIN_IRQ = common dso_local global i64 0, align 8
@POKEY_DELAYED_SEROUT_IRQ = common dso_local global i64 0, align 8
@POKEY_DELAYED_XMTDONE_IRQ = common dso_local global i64 0, align 8
@POKEY_KBCODE = common dso_local global i32 0, align 4
@POKEY_SERIN = common dso_local global i32 0, align 4
@POKEY_IRQST = common dso_local global i32 0, align 4
@POKEY_IRQEN = common dso_local global i32 0, align 4
@POKEY_SKSTAT = common dso_local global i32 0, align 4
@POKEY_SKCTL = common dso_local global i32 0, align 4
@POKEY_MAXPOKEYS = common dso_local global i32 0, align 4
@POKEY_AUDC = common dso_local global i64* null, align 8
@POKEY_AUDF = common dso_local global i64* null, align 8
@POKEY_AUDCTL = common dso_local global i64* null, align 8
@POKEY_DIV_64 = common dso_local global i32 0, align 4
@POKEY_Base_mult = common dso_local global i32* null, align 8
@POKEY_DivNMax = common dso_local global i64* null, align 8
@POKEY_DivNIRQ = common dso_local global i64* null, align 8
@pot_scanline = common dso_local global i64 0, align 8
@POKEY_poly9_lookup = common dso_local global i8** null, align 8
@POKEY_poly17_lookup = common dso_local global i8** null, align 8
@random_scanline_counter = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@POKEY_POLY17_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @POKEY_Initialise(i32* %0, i8** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8** %1, i8*** %4, align 8
  store i64 0, i64* @POKEY_DELAYED_SERIN_IRQ, align 8
  store i64 0, i64* @POKEY_DELAYED_SEROUT_IRQ, align 8
  store i64 0, i64* @POKEY_DELAYED_XMTDONE_IRQ, align 8
  store i32 255, i32* @POKEY_KBCODE, align 4
  store i32 0, i32* @POKEY_SERIN, align 4
  store i32 255, i32* @POKEY_IRQST, align 4
  store i32 0, i32* @POKEY_IRQEN, align 4
  store i32 239, i32* @POKEY_SKSTAT, align 4
  store i32 0, i32* @POKEY_SKCTL, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %21, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @POKEY_MAXPOKEYS, align 4
  %10 = mul nsw i32 %9, 4
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %7
  %13 = load i64*, i64** @POKEY_AUDC, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  store i64 0, i64* %16, align 8
  %17 = load i64*, i64** @POKEY_AUDF, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %7

24:                                               ; preds = %7
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %39, %24
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @POKEY_MAXPOKEYS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = load i64*, i64** @POKEY_AUDCTL, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @POKEY_DIV_64, align 4
  %35 = load i32*, i32** @POKEY_Base_mult, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %34, i32* %38, align 4
  br label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %25

42:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %55, %42
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 4
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = load i64*, i64** @POKEY_DivNMax, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  store i64 0, i64* %50, align 8
  %51 = load i64*, i64** @POKEY_DivNIRQ, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %43

58:                                               ; preds = %43
  store i64 0, i64* @pot_scanline, align 8
  store i32 511, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %79, %58
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %60, 511
  br i1 %61, label %62, label %82

62:                                               ; preds = %59
  %63 = load i32, i32* %6, align 4
  %64 = ashr i32 %63, 5
  %65 = load i32, i32* %6, align 4
  %66 = xor i32 %64, %65
  %67 = and i32 %66, 1
  %68 = shl i32 %67, 8
  %69 = load i32, i32* %6, align 4
  %70 = ashr i32 %69, 1
  %71 = add nsw i32 %68, %70
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i8*
  %75 = load i8**, i8*** @POKEY_poly9_lookup, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  store i8* %74, i8** %78, align 8
  br label %79

79:                                               ; preds = %62
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %59

82:                                               ; preds = %59
  store i32 131071, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %104, %82
  %84 = load i32, i32* %5, align 4
  %85 = icmp slt i32 %84, 16385
  br i1 %85, label %86, label %107

86:                                               ; preds = %83
  %87 = load i32, i32* %6, align 4
  %88 = ashr i32 %87, 5
  %89 = load i32, i32* %6, align 4
  %90 = xor i32 %88, %89
  %91 = and i32 %90, 255
  %92 = shl i32 %91, 9
  %93 = load i32, i32* %6, align 4
  %94 = ashr i32 %93, 8
  %95 = add nsw i32 %92, %94
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = ashr i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to i8*
  %100 = load i8**, i8*** @POKEY_poly17_lookup, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  store i8* %99, i8** %103, align 8
  br label %104

104:                                              ; preds = %86
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %5, align 4
  br label %83

107:                                              ; preds = %83
  %108 = call i64 (...) @INPUT_Playingback()
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = call i32 (...) @INPUT_PlaybackInt()
  store i32 %111, i32* @random_scanline_counter, align 4
  br label %113

112:                                              ; preds = %107
  store i32 0, i32* @random_scanline_counter, align 4
  br label %113

113:                                              ; preds = %112, %110
  %114 = call i64 (...) @INPUT_Recording()
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i32, i32* @random_scanline_counter, align 4
  %118 = call i32 @INPUT_RecordInt(i32 %117)
  br label %119

119:                                              ; preds = %116, %113
  %120 = load i32, i32* @TRUE, align 4
  ret i32 %120
}

declare dso_local i64 @INPUT_Playingback(...) #1

declare dso_local i32 @INPUT_PlaybackInt(...) #1

declare dso_local i64 @INPUT_Recording(...) #1

declare dso_local i32 @INPUT_RecordInt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
