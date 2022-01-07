; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pokey.c_POKEY_Scanline.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pokey.c_POKEY_Scanline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESC_enable_sio_patch = common dso_local global i32 0, align 4
@POKEY_DELAYED_SERIN_IRQ = common dso_local global i32 0, align 4
@POKEY_SKCTL = common dso_local global i32 0, align 4
@pot_scanline = common dso_local global i32 0, align 4
@ANTIC_LINE_C = common dso_local global i64 0, align 8
@random_scanline_counter = common dso_local global i32 0, align 4
@POKEY_SERIN = common dso_local global i32 0, align 4
@POKEY_IRQEN = common dso_local global i32 0, align 4
@POKEY_IRQST = common dso_local global i32 0, align 4
@POKEY_SKSTAT = common dso_local global i32 0, align 4
@POKEY_DELAYED_SEROUT_IRQ = common dso_local global i64 0, align 8
@POKEY_DELAYED_XMTDONE_IRQ = common dso_local global i64 0, align 8
@POKEY_DivNIRQ = common dso_local global i32* null, align 8
@POKEY_CHAN1 = common dso_local global i64 0, align 8
@POKEY_DivNMax = common dso_local global i64* null, align 8
@POKEY_CHAN2 = common dso_local global i64 0, align 8
@POKEY_CHAN4 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @POKEY_Scanline() #0 {
  %1 = call i32 (...) @INPUT_Scanline()
  %2 = load i32, i32* @ESC_enable_sio_patch, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %0
  %5 = call i64 (...) @CASSETTE_AddScanLine()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  store i32 1, i32* @POKEY_DELAYED_SERIN_IRQ, align 4
  br label %8

8:                                                ; preds = %7, %4
  br label %9

9:                                                ; preds = %8, %0
  %10 = load i32, i32* @POKEY_SKCTL, align 4
  %11 = and i32 %10, 3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %175

14:                                               ; preds = %9
  %15 = load i32, i32* @pot_scanline, align 4
  %16 = icmp slt i32 %15, 228
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* @pot_scanline, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @pot_scanline, align 4
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i64, i64* @ANTIC_LINE_C, align 8
  %22 = load i32, i32* @random_scanline_counter, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* @random_scanline_counter, align 4
  %26 = load i32, i32* @POKEY_DELAYED_SERIN_IRQ, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %51

28:                                               ; preds = %20
  %29 = load i32, i32* @POKEY_DELAYED_SERIN_IRQ, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* @POKEY_DELAYED_SERIN_IRQ, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %28
  %33 = call i32 (...) @SIO_GetByte()
  store i32 %33, i32* @POKEY_SERIN, align 4
  %34 = load i32, i32* @POKEY_IRQEN, align 4
  %35 = and i32 %34, 32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %32
  %38 = load i32, i32* @POKEY_IRQST, align 4
  %39 = and i32 %38, 32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @POKEY_IRQST, align 4
  %43 = and i32 %42, 223
  store i32 %43, i32* @POKEY_IRQST, align 4
  br label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @POKEY_SKSTAT, align 4
  %46 = and i32 %45, 223
  store i32 %46, i32* @POKEY_SKSTAT, align 4
  br label %47

47:                                               ; preds = %44, %41
  %48 = call i32 (...) @CPU_GenerateIRQ()
  br label %49

49:                                               ; preds = %47, %32
  br label %50

50:                                               ; preds = %49, %28
  br label %51

51:                                               ; preds = %50, %20
  %52 = load i64, i64* @POKEY_DELAYED_SEROUT_IRQ, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %51
  %55 = load i64, i64* @POKEY_DELAYED_SEROUT_IRQ, align 8
  %56 = add nsw i64 %55, -1
  store i64 %56, i64* @POKEY_DELAYED_SEROUT_IRQ, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load i32, i32* @POKEY_IRQEN, align 4
  %60 = and i32 %59, 16
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* @POKEY_IRQST, align 4
  %64 = and i32 %63, 239
  store i32 %64, i32* @POKEY_IRQST, align 4
  %65 = call i32 (...) @CPU_GenerateIRQ()
  br label %66

66:                                               ; preds = %62, %58
  br label %67

67:                                               ; preds = %66, %54
  br label %68

68:                                               ; preds = %67, %51
  %69 = load i64, i64* @POKEY_DELAYED_XMTDONE_IRQ, align 8
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %68
  %72 = load i64, i64* @POKEY_DELAYED_XMTDONE_IRQ, align 8
  %73 = add nsw i64 %72, -1
  store i64 %73, i64* @POKEY_DELAYED_XMTDONE_IRQ, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %71
  %76 = load i32, i32* @POKEY_IRQST, align 4
  %77 = and i32 %76, 247
  store i32 %77, i32* @POKEY_IRQST, align 4
  %78 = load i32, i32* @POKEY_IRQEN, align 4
  %79 = and i32 %78, 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = call i32 (...) @CPU_GenerateIRQ()
  br label %83

83:                                               ; preds = %81, %75
  br label %84

84:                                               ; preds = %83, %71
  br label %85

85:                                               ; preds = %84, %68
  %86 = load i64, i64* @ANTIC_LINE_C, align 8
  %87 = load i32*, i32** @POKEY_DivNIRQ, align 8
  %88 = load i64, i64* @POKEY_CHAN1, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = sub nsw i64 %91, %86
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %89, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %115

95:                                               ; preds = %85
  %96 = load i64*, i64** @POKEY_DivNMax, align 8
  %97 = load i64, i64* @POKEY_CHAN1, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = load i32*, i32** @POKEY_DivNIRQ, align 8
  %101 = load i64, i64* @POKEY_CHAN1, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %99
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %102, align 4
  %107 = load i32, i32* @POKEY_IRQEN, align 4
  %108 = and i32 %107, 1
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %95
  %111 = load i32, i32* @POKEY_IRQST, align 4
  %112 = and i32 %111, 254
  store i32 %112, i32* @POKEY_IRQST, align 4
  %113 = call i32 (...) @CPU_GenerateIRQ()
  br label %114

114:                                              ; preds = %110, %95
  br label %115

115:                                              ; preds = %114, %85
  %116 = load i64, i64* @ANTIC_LINE_C, align 8
  %117 = load i32*, i32** @POKEY_DivNIRQ, align 8
  %118 = load i64, i64* @POKEY_CHAN2, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = sub nsw i64 %121, %116
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %119, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %145

125:                                              ; preds = %115
  %126 = load i64*, i64** @POKEY_DivNMax, align 8
  %127 = load i64, i64* @POKEY_CHAN2, align 8
  %128 = getelementptr inbounds i64, i64* %126, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = load i32*, i32** @POKEY_DivNIRQ, align 8
  %131 = load i64, i64* @POKEY_CHAN2, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %134, %129
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %132, align 4
  %137 = load i32, i32* @POKEY_IRQEN, align 4
  %138 = and i32 %137, 2
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %125
  %141 = load i32, i32* @POKEY_IRQST, align 4
  %142 = and i32 %141, 253
  store i32 %142, i32* @POKEY_IRQST, align 4
  %143 = call i32 (...) @CPU_GenerateIRQ()
  br label %144

144:                                              ; preds = %140, %125
  br label %145

145:                                              ; preds = %144, %115
  %146 = load i64, i64* @ANTIC_LINE_C, align 8
  %147 = load i32*, i32** @POKEY_DivNIRQ, align 8
  %148 = load i64, i64* @POKEY_CHAN4, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = sub nsw i64 %151, %146
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %149, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %175

155:                                              ; preds = %145
  %156 = load i64*, i64** @POKEY_DivNMax, align 8
  %157 = load i64, i64* @POKEY_CHAN4, align 8
  %158 = getelementptr inbounds i64, i64* %156, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = load i32*, i32** @POKEY_DivNIRQ, align 8
  %161 = load i64, i64* @POKEY_CHAN4, align 8
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %164, %159
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %162, align 4
  %167 = load i32, i32* @POKEY_IRQEN, align 4
  %168 = and i32 %167, 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %155
  %171 = load i32, i32* @POKEY_IRQST, align 4
  %172 = and i32 %171, 251
  store i32 %172, i32* @POKEY_IRQST, align 4
  %173 = call i32 (...) @CPU_GenerateIRQ()
  br label %174

174:                                              ; preds = %170, %155
  br label %175

175:                                              ; preds = %13, %174, %145
  ret void
}

declare dso_local i32 @INPUT_Scanline(...) #1

declare dso_local i64 @CASSETTE_AddScanLine(...) #1

declare dso_local i32 @SIO_GetByte(...) #1

declare dso_local i32 @CPU_GenerateIRQ(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
