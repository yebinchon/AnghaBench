; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw2.c_DrawSpriteFull.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw2.c_DrawSpriteFull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@START_ROW = common dso_local global i32 0, align 4
@PicoDraw2FB = common dso_local global i8* null, align 8
@LINE_WIDTH = common dso_local global i32 0, align 4
@END_ROW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @DrawSpriteFull to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DrawSpriteFull(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %16 = load i32*, i32** %2, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = ashr i32 %19, 24
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %12, align 4
  %22 = and i32 %21, 511
  %23 = sub nsw i32 %22, 120
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %4, align 4
  %25 = ashr i32 %24, 2
  %26 = and i32 %25, 3
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, 3
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  %33 = load i32*, i32** %2, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = ashr i32 %36, 16
  %38 = and i32 %37, 511
  %39 = sub nsw i32 %38, 120
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, 2047
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, 2048
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %1
  %47 = load i32, i32* %8, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %3, align 4
  %51 = sub nsw i32 %50, 1
  %52 = mul nsw i32 %49, %51
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %46, %1
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, 4096
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i32, i32* %9, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %4, align 4
  %63 = sub nsw i32 %62, 1
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %59, %55
  %67 = load i32, i32* %7, align 4
  %68 = ashr i32 %67, 9
  %69 = and i32 %68, 48
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %5, align 1
  br label %71

71:                                               ; preds = %76, %66
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @START_ROW, align 4
  %74 = mul nsw i32 %73, 8
  %75 = icmp sle i32 %72, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 8
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %4, align 4
  br label %71

84:                                               ; preds = %71
  %85 = load i8*, i8** @PicoDraw2FB, align 8
  store i8* %85, i8** %10, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @START_ROW, align 4
  %88 = mul nsw i32 %87, 8
  %89 = sub nsw i32 %86, %88
  %90 = load i32, i32* @LINE_WIDTH, align 4
  %91 = mul nsw i32 %89, %90
  %92 = load i8*, i8** %10, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8* %94, i8** %10, align 8
  br label %95

95:                                               ; preds = %177, %84
  %96 = load i32, i32* %4, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %185

98:                                               ; preds = %95
  %99 = load i32, i32* %3, align 4
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %11, align 4
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* @END_ROW, align 4
  %104 = mul nsw i32 %103, 8
  %105 = add nsw i32 %104, 8
  %106 = icmp sge i32 %102, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  br label %185

108:                                              ; preds = %98
  br label %109

109:                                              ; preds = %163, %108
  %110 = load i32, i32* %13, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %171

112:                                              ; preds = %109
  %113 = load i32, i32* %14, align 4
  %114 = icmp sle i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  br label %163

116:                                              ; preds = %112
  %117 = load i32, i32* %14, align 4
  %118 = icmp sge i32 %117, 328
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  br label %171

120:                                              ; preds = %116
  %121 = load i32, i32* %15, align 4
  %122 = and i32 %121, 32767
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* %7, align 4
  %124 = ashr i32 %123, 11
  %125 = and i32 %124, 3
  switch i32 %125, label %162 [
    i32 0, label %126
    i32 1, label %135
    i32 2, label %144
    i32 3, label %153
  ]

126:                                              ; preds = %120
  %127 = load i8*, i8** %10, align 8
  %128 = load i32, i32* %14, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = load i32, i32* %15, align 4
  %132 = shl i32 %131, 4
  %133 = load i8, i8* %5, align 1
  %134 = call i32 @TileXnormYnorm(i8* %130, i32 %132, i8 zeroext %133)
  br label %162

135:                                              ; preds = %120
  %136 = load i8*, i8** %10, align 8
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = load i32, i32* %15, align 4
  %141 = shl i32 %140, 4
  %142 = load i8, i8* %5, align 1
  %143 = call i32 @TileXflipYnorm(i8* %139, i32 %141, i8 zeroext %142)
  br label %162

144:                                              ; preds = %120
  %145 = load i8*, i8** %10, align 8
  %146 = load i32, i32* %14, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  %149 = load i32, i32* %15, align 4
  %150 = shl i32 %149, 4
  %151 = load i8, i8* %5, align 1
  %152 = call i32 @TileXnormYflip(i8* %148, i32 %150, i8 zeroext %151)
  br label %162

153:                                              ; preds = %120
  %154 = load i8*, i8** %10, align 8
  %155 = load i32, i32* %14, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  %158 = load i32, i32* %15, align 4
  %159 = shl i32 %158, 4
  %160 = load i8, i8* %5, align 1
  %161 = call i32 @TileXflipYflip(i8* %157, i32 %159, i8 zeroext %160)
  br label %162

162:                                              ; preds = %120, %153, %144, %135, %126
  br label %163

163:                                              ; preds = %162, %115
  %164 = load i32, i32* %13, align 4
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* %13, align 4
  %166 = load i32, i32* %14, align 4
  %167 = add nsw i32 %166, 8
  store i32 %167, i32* %14, align 4
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* %15, align 4
  %170 = add nsw i32 %169, %168
  store i32 %170, i32* %15, align 4
  br label %109

171:                                              ; preds = %119, %109
  %172 = load i32, i32* @LINE_WIDTH, align 4
  %173 = mul nsw i32 8, %172
  %174 = load i8*, i8** %10, align 8
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds i8, i8* %174, i64 %175
  store i8* %176, i8** %10, align 8
  br label %177

177:                                              ; preds = %171
  %178 = load i32, i32* %4, align 4
  %179 = add nsw i32 %178, -1
  store i32 %179, i32* %4, align 4
  %180 = load i32, i32* %12, align 4
  %181 = add nsw i32 %180, 8
  store i32 %181, i32* %12, align 4
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* %6, align 4
  %184 = add nsw i32 %183, %182
  store i32 %184, i32* %6, align 4
  br label %95

185:                                              ; preds = %107, %95
  ret void
}

declare dso_local i32 @TileXnormYnorm(i8*, i32, i8 zeroext) #1

declare dso_local i32 @TileXflipYnorm(i8*, i32, i8 zeroext) #1

declare dso_local i32 @TileXnormYflip(i8*, i32, i8 zeroext) #1

declare dso_local i32 @TileXflipYflip(i8*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
