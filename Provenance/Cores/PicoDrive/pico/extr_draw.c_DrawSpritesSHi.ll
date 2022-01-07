; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw.c_DrawSpritesSHi.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw.c_DrawSpritesSHi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HighPreSpr = common dso_local global i32* null, align 8
@DrawScanline = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @DrawSpritesSHi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DrawSpritesSHi(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32 (i32, i32, i32)*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = and i32 %20, 127
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %172

25:                                               ; preds = %1
  %26 = load i8*, i8** %2, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 3
  store i8* %27, i8** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %169, %25
  %31 = load i32, i32* %5, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %172

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %39, 127
  %41 = mul nsw i32 %40, 2
  store i32 %41, i32* %12, align 4
  %42 = load i32*, i32** @HighPreSpr, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32* %45, i32** %6, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = ashr i32 %49, 9
  %51 = and i32 %50, 48
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %52, 48
  br i1 %53, label %54, label %73

54:                                               ; preds = %33
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, 32768
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load i32, i32* %7, align 4
  %60 = and i32 %59, 2048
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 (i32, i32, i32)* @TileFlipSH, i32 (i32, i32, i32)** %3, align 8
  br label %64

63:                                               ; preds = %58
  store i32 (i32, i32, i32)* @TileNormSH, i32 (i32, i32, i32)** %3, align 8
  br label %64

64:                                               ; preds = %63, %62
  br label %72

65:                                               ; preds = %54
  %66 = load i32, i32* %7, align 4
  %67 = and i32 %66, 2048
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 (i32, i32, i32)* @TileFlipSH_onlyop_lp, i32 (i32, i32, i32)** %3, align 8
  br label %71

70:                                               ; preds = %65
  store i32 (i32, i32, i32)* @TileNormSH_onlyop_lp, i32 (i32, i32, i32)** %3, align 8
  br label %71

71:                                               ; preds = %70, %69
  br label %72

72:                                               ; preds = %71, %64
  br label %85

73:                                               ; preds = %33
  %74 = load i32, i32* %7, align 4
  %75 = and i32 %74, 32768
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  br label %169

78:                                               ; preds = %73
  %79 = load i32, i32* %7, align 4
  %80 = and i32 %79, 2048
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 (i32, i32, i32)* @TileFlip, i32 (i32, i32, i32)** %3, align 8
  br label %84

83:                                               ; preds = %78
  store i32 (i32, i32, i32)* @TileNorm, i32 (i32, i32, i32)** %3, align 8
  br label %84

84:                                               ; preds = %83, %82
  br label %85

85:                                               ; preds = %84, %72
  %86 = load i32*, i32** %6, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %7, align 4
  %90 = ashr i32 %89, 16
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %11, align 4
  %92 = ashr i32 %91, 28
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %11, align 4
  %94 = ashr i32 %93, 24
  %95 = and i32 %94, 7
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %11, align 4
  %97 = shl i32 %96, 16
  %98 = ashr i32 %97, 16
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* @DrawScanline, align 4
  %100 = load i32, i32* %11, align 4
  %101 = sub nsw i32 %99, %100
  store i32 %101, i32* %16, align 4
  %102 = load i32, i32* %7, align 4
  %103 = and i32 %102, 4096
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %85
  %106 = load i32, i32* %15, align 4
  %107 = shl i32 %106, 3
  %108 = sub nsw i32 %107, 1
  %109 = load i32, i32* %16, align 4
  %110 = sub nsw i32 %108, %109
  store i32 %110, i32* %16, align 4
  br label %111

111:                                              ; preds = %105, %85
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %16, align 4
  %114 = ashr i32 %113, 3
  %115 = add nsw i32 %112, %114
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %15, align 4
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %7, align 4
  %118 = and i32 %117, 2048
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %111
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* %14, align 4
  %123 = sub nsw i32 %122, 1
  %124 = mul nsw i32 %121, %123
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %13, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %13, align 4
  br label %129

129:                                              ; preds = %120, %111
  %130 = load i32, i32* %9, align 4
  %131 = and i32 %130, 2047
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %9, align 4
  %133 = shl i32 %132, 4
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %16, align 4
  %135 = and i32 %134, 7
  %136 = shl i32 %135, 1
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %13, align 4
  %140 = shl i32 %139, 4
  store i32 %140, i32* %13, align 4
  br label %141

141:                                              ; preds = %160, %129
  %142 = load i32, i32* %14, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %168

144:                                              ; preds = %141
  %145 = load i32, i32* %10, align 4
  %146 = icmp sle i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  br label %160

148:                                              ; preds = %144
  %149 = load i32, i32* %10, align 4
  %150 = icmp sge i32 %149, 328
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  br label %168

152:                                              ; preds = %148
  %153 = load i32, i32* %9, align 4
  %154 = and i32 %153, 32767
  store i32 %154, i32* %9, align 4
  %155 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %3, align 8
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* %8, align 4
  %159 = call i32 %155(i32 %156, i32 %157, i32 %158)
  br label %160

160:                                              ; preds = %152, %147
  %161 = load i32, i32* %14, align 4
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %14, align 4
  %163 = load i32, i32* %10, align 4
  %164 = add nsw i32 %163, 8
  store i32 %164, i32* %10, align 4
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* %9, align 4
  %167 = add nsw i32 %166, %165
  store i32 %167, i32* %9, align 4
  br label %141

168:                                              ; preds = %151, %141
  br label %169

169:                                              ; preds = %168, %77
  %170 = load i32, i32* %5, align 4
  %171 = add nsw i32 %170, -1
  store i32 %171, i32* %5, align 4
  br label %30

172:                                              ; preds = %24, %30
  ret void
}

declare dso_local i32 @TileFlipSH(i32, i32, i32) #1

declare dso_local i32 @TileNormSH(i32, i32, i32) #1

declare dso_local i32 @TileFlipSH_onlyop_lp(i32, i32, i32) #1

declare dso_local i32 @TileNormSH_onlyop_lp(i32, i32, i32) #1

declare dso_local i32 @TileFlip(i32, i32, i32) #1

declare dso_local i32 @TileNorm(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
