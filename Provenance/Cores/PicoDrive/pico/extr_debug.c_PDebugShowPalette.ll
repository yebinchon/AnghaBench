; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_debug.c_PDebugShowPalette.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_debug.c_PDebugShowPalette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@Pico = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@PicoAHW = common dso_local global i32 0, align 4
@PAHW_SMS = common dso_local global i32 0, align 4
@HighPal = common dso_local global i16* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PDebugShowPalette(i16* %0, i32 %1) #0 {
  %3 = alloca i16*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i16* %0, i16** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 4
  %7 = load i32, i32* @PicoAHW, align 4
  %8 = load i32, i32* @PAHW_SMS, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 (...) @PicoDoHighPal555M4()
  br label %15

13:                                               ; preds = %2
  %14 = call i32 @PicoDoHighPal555(i32 1)
  br label %15

15:                                               ; preds = %13, %11
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 4
  %16 = load i32, i32* %4, align 4
  %17 = mul nsw i32 16, %16
  %18 = add nsw i32 %17, 8
  %19 = load i16*, i16** %3, align 8
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds i16, i16* %19, i64 %20
  store i16* %21, i16** %3, align 8
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %52, %15
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 32
  br i1 %24, label %25, label %55

25:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %48, %25
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 128
  br i1 %28, label %29, label %51

29:                                               ; preds = %26
  %30 = load i16*, i16** @HighPal, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sdiv i32 %31, 8
  %33 = load i32, i32* %6, align 4
  %34 = sdiv i32 %33, 8
  %35 = mul nsw i32 %34, 16
  %36 = add nsw i32 %32, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i16, i16* %30, i64 %37
  %39 = load i16, i16* %38, align 2
  %40 = load i16*, i16** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %4, align 4
  %44 = mul nsw i32 %42, %43
  %45 = add nsw i32 %41, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i16, i16* %40, i64 %46
  store i16 %39, i16* %47, align 2
  br label %48

48:                                               ; preds = %29
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %26

51:                                               ; preds = %26
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %22

55:                                               ; preds = %22
  %56 = load i16*, i16** %3, align 8
  %57 = getelementptr inbounds i16, i16* %56, i64 160
  store i16* %57, i16** %3, align 8
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %89, %55
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 32
  br i1 %60, label %61, label %92

61:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %85, %61
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %63, 128
  br i1 %64, label %65, label %88

65:                                               ; preds = %62
  %66 = load i16*, i16** @HighPal, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sdiv i32 %67, 8
  %69 = load i32, i32* %6, align 4
  %70 = sdiv i32 %69, 8
  %71 = mul nsw i32 %70, 16
  %72 = add nsw i32 %68, %71
  %73 = or i32 %72, 64
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i16, i16* %66, i64 %74
  %76 = load i16, i16* %75, align 2
  %77 = load i16*, i16** %3, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %4, align 4
  %81 = mul nsw i32 %79, %80
  %82 = add nsw i32 %78, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i16, i16* %77, i64 %83
  store i16 %76, i16* %84, align 2
  br label %85

85:                                               ; preds = %65
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %62

88:                                               ; preds = %62
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %58

92:                                               ; preds = %58
  %93 = load i32, i32* %4, align 4
  %94 = mul nsw i32 %93, 48
  %95 = load i16*, i16** %3, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i16, i16* %95, i64 %96
  store i16* %97, i16** %3, align 8
  store i32 0, i32* %6, align 4
  br label %98

98:                                               ; preds = %129, %92
  %99 = load i32, i32* %6, align 4
  %100 = icmp slt i32 %99, 32
  br i1 %100, label %101, label %132

101:                                              ; preds = %98
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %125, %101
  %103 = load i32, i32* %5, align 4
  %104 = icmp slt i32 %103, 128
  br i1 %104, label %105, label %128

105:                                              ; preds = %102
  %106 = load i16*, i16** @HighPal, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sdiv i32 %107, 8
  %109 = load i32, i32* %6, align 4
  %110 = sdiv i32 %109, 8
  %111 = mul nsw i32 %110, 16
  %112 = add nsw i32 %108, %111
  %113 = or i32 %112, 128
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i16, i16* %106, i64 %114
  %116 = load i16, i16* %115, align 2
  %117 = load i16*, i16** %3, align 8
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* %4, align 4
  %121 = mul nsw i32 %119, %120
  %122 = add nsw i32 %118, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i16, i16* %117, i64 %123
  store i16 %116, i16* %124, align 2
  br label %125

125:                                              ; preds = %105
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %5, align 4
  br label %102

128:                                              ; preds = %102
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %6, align 4
  br label %98

132:                                              ; preds = %98
  ret void
}

declare dso_local i32 @PicoDoHighPal555M4(...) #1

declare dso_local i32 @PicoDoHighPal555(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
