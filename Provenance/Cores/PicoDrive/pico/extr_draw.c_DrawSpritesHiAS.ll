; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw.c_DrawSpritesHiAS.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw.c_DrawSpritesHiAS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PDRAW_SPR_LO_ON_HI = common dso_local global i32 0, align 4
@rendstatus = common dso_local global i32 0, align 4
@HighPreSpr = common dso_local global i32* null, align 8
@DrawScanline = common dso_local global i32 0, align 4
@SPRL_MAY_HAVE_OP = common dso_local global i8 0, align 1
@HighCol = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @DrawSpritesHiAS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DrawSpritesHiAS(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32 (i32, i32, i32)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %9, align 4
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 127
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %240

31:                                               ; preds = %2
  %32 = load i32, i32* @PDRAW_SPR_LO_ON_HI, align 4
  %33 = load i32, i32* @rendstatus, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* @rendstatus, align 4
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 3
  store i8* %36, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %192, %31
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %195

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %47, 127
  %49 = mul nsw i32 %48, 2
  store i32 %49, i32* %16, align 4
  %50 = load i32*, i32** @HighPreSpr, align 8
  %51 = load i32, i32* %16, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32* %53, i32** %10, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = ashr i32 %57, 9
  %59 = and i32 %58, 48
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %11, align 4
  %61 = and i32 %60, 32768
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %84

63:                                               ; preds = %41
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %63
  %67 = load i32, i32* %12, align 4
  %68 = icmp eq i32 %67, 48
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load i32, i32* %11, align 4
  %71 = and i32 %70, 2048
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 (i32, i32, i32)* @TileFlipAS_noop, i32 (i32, i32, i32)** %5, align 8
  br label %75

74:                                               ; preds = %69
  store i32 (i32, i32, i32)* @TileNormAS_noop, i32 (i32, i32, i32)** %5, align 8
  br label %75

75:                                               ; preds = %74, %73
  br label %83

76:                                               ; preds = %66, %63
  %77 = load i32, i32* %11, align 4
  %78 = and i32 %77, 2048
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 (i32, i32, i32)* @TileFlipAS, i32 (i32, i32, i32)** %5, align 8
  br label %82

81:                                               ; preds = %76
  store i32 (i32, i32, i32)* @TileNormAS, i32 (i32, i32, i32)** %5, align 8
  br label %82

82:                                               ; preds = %81, %80
  br label %83

83:                                               ; preds = %82, %75
  br label %91

84:                                               ; preds = %41
  %85 = load i32, i32* %11, align 4
  %86 = and i32 %85, 2048
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  store i32 (i32, i32, i32)* @TileFlipAS_onlymark, i32 (i32, i32, i32)** %5, align 8
  br label %90

89:                                               ; preds = %84
  store i32 (i32, i32, i32)* @TileNormAS_onlymark, i32 (i32, i32, i32)** %5, align 8
  br label %90

90:                                               ; preds = %89, %88
  br label %91

91:                                               ; preds = %90, %83
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %91
  %95 = load i32, i32* %12, align 4
  %96 = icmp eq i32 %95, 48
  br i1 %96, label %97, label %106

97:                                               ; preds = %94
  %98 = load i32, i32* %16, align 4
  %99 = sdiv i32 %98, 2
  %100 = trunc i32 %99 to i8
  %101 = load i8*, i8** %6, align 8
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i8, i8* %101, i64 %104
  store i8 %100, i8* %105, align 1
  br label %106

106:                                              ; preds = %97, %94, %91
  %107 = load i32*, i32** %10, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* %11, align 4
  %111 = ashr i32 %110, 16
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %15, align 4
  %113 = ashr i32 %112, 28
  store i32 %113, i32* %18, align 4
  %114 = load i32, i32* %15, align 4
  %115 = ashr i32 %114, 24
  %116 = and i32 %115, 7
  store i32 %116, i32* %19, align 4
  %117 = load i32, i32* %15, align 4
  %118 = shl i32 %117, 16
  %119 = ashr i32 %118, 16
  store i32 %119, i32* %15, align 4
  %120 = load i32, i32* @DrawScanline, align 4
  %121 = load i32, i32* %15, align 4
  %122 = sub nsw i32 %120, %121
  store i32 %122, i32* %20, align 4
  %123 = load i32, i32* %11, align 4
  %124 = and i32 %123, 4096
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %106
  %127 = load i32, i32* %19, align 4
  %128 = shl i32 %127, 3
  %129 = sub nsw i32 %128, 1
  %130 = load i32, i32* %20, align 4
  %131 = sub nsw i32 %129, %130
  store i32 %131, i32* %20, align 4
  br label %132

132:                                              ; preds = %126, %106
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* %20, align 4
  %135 = ashr i32 %134, 3
  %136 = add nsw i32 %133, %135
  store i32 %136, i32* %13, align 4
  %137 = load i32, i32* %19, align 4
  store i32 %137, i32* %17, align 4
  %138 = load i32, i32* %11, align 4
  %139 = and i32 %138, 2048
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %132
  %142 = load i32, i32* %17, align 4
  %143 = load i32, i32* %18, align 4
  %144 = sub nsw i32 %143, 1
  %145 = mul nsw i32 %142, %144
  %146 = load i32, i32* %13, align 4
  %147 = add nsw i32 %146, %145
  store i32 %147, i32* %13, align 4
  %148 = load i32, i32* %17, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %17, align 4
  br label %150

150:                                              ; preds = %141, %132
  %151 = load i32, i32* %13, align 4
  %152 = and i32 %151, 2047
  store i32 %152, i32* %13, align 4
  %153 = load i32, i32* %13, align 4
  %154 = shl i32 %153, 4
  store i32 %154, i32* %13, align 4
  %155 = load i32, i32* %20, align 4
  %156 = and i32 %155, 7
  %157 = shl i32 %156, 1
  %158 = load i32, i32* %13, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %13, align 4
  %160 = load i32, i32* %17, align 4
  %161 = shl i32 %160, 4
  store i32 %161, i32* %17, align 4
  %162 = load i32, i32* %12, align 4
  %163 = or i32 %162, 128
  store i32 %163, i32* %12, align 4
  br label %164

164:                                              ; preds = %183, %150
  %165 = load i32, i32* %18, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %191

167:                                              ; preds = %164
  %168 = load i32, i32* %14, align 4
  %169 = icmp sle i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  br label %183

171:                                              ; preds = %167
  %172 = load i32, i32* %14, align 4
  %173 = icmp sge i32 %172, 328
  br i1 %173, label %174, label %175

174:                                              ; preds = %171
  br label %191

175:                                              ; preds = %171
  %176 = load i32, i32* %13, align 4
  %177 = and i32 %176, 32767
  store i32 %177, i32* %13, align 4
  %178 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %5, align 8
  %179 = load i32, i32* %14, align 4
  %180 = load i32, i32* %13, align 4
  %181 = load i32, i32* %12, align 4
  %182 = call i32 %178(i32 %179, i32 %180, i32 %181)
  br label %183

183:                                              ; preds = %175, %170
  %184 = load i32, i32* %18, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %18, align 4
  %186 = load i32, i32* %14, align 4
  %187 = add nsw i32 %186, 8
  store i32 %187, i32* %14, align 4
  %188 = load i32, i32* %17, align 4
  %189 = load i32, i32* %13, align 4
  %190 = add nsw i32 %189, %188
  store i32 %190, i32* %13, align 4
  br label %164

191:                                              ; preds = %174, %164
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %7, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %7, align 4
  br label %37

195:                                              ; preds = %37
  %196 = load i32, i32* %4, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %207

198:                                              ; preds = %195
  %199 = load i8*, i8** %3, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 1
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i32
  %203 = load i8, i8* @SPRL_MAY_HAVE_OP, align 1
  %204 = zext i8 %203 to i32
  %205 = and i32 %202, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %198, %195
  br label %240

208:                                              ; preds = %198
  store i32 20, i32* %21, align 4
  %209 = load i64, i64* @HighCol, align 8
  %210 = add nsw i64 %209, 8
  %211 = inttoptr i64 %210 to i32*
  store i32* %211, i32** %22, align 8
  br label %212

212:                                              ; preds = %216, %208
  %213 = load i32, i32* %21, align 4
  %214 = add nsw i32 %213, -1
  store i32 %214, i32* %21, align 4
  %215 = icmp ne i32 %213, 0
  br i1 %215, label %216, label %233

216:                                              ; preds = %212
  %217 = load i32*, i32** %22, align 8
  %218 = getelementptr inbounds i32, i32* %217, i32 1
  store i32* %218, i32** %22, align 8
  %219 = load i32, i32* %217, align 4
  %220 = and i32 %219, 2139062143
  store i32 %220, i32* %217, align 4
  %221 = load i32*, i32** %22, align 8
  %222 = getelementptr inbounds i32, i32* %221, i32 1
  store i32* %222, i32** %22, align 8
  %223 = load i32, i32* %221, align 4
  %224 = and i32 %223, 2139062143
  store i32 %224, i32* %221, align 4
  %225 = load i32*, i32** %22, align 8
  %226 = getelementptr inbounds i32, i32* %225, i32 1
  store i32* %226, i32** %22, align 8
  %227 = load i32, i32* %225, align 4
  %228 = and i32 %227, 2139062143
  store i32 %228, i32* %225, align 4
  %229 = load i32*, i32** %22, align 8
  %230 = getelementptr inbounds i32, i32* %229, i32 1
  store i32* %230, i32** %22, align 8
  %231 = load i32, i32* %229, align 4
  %232 = and i32 %231, 2139062143
  store i32 %232, i32* %229, align 4
  br label %212

233:                                              ; preds = %212
  %234 = load i32, i32* %9, align 4
  %235 = trunc i32 %234 to i8
  %236 = load i8*, i8** %3, align 8
  %237 = getelementptr inbounds i8, i8* %236, i64 0
  store i8 %235, i8* %237, align 1
  %238 = load i8*, i8** %3, align 8
  %239 = call i32 @DrawSpritesSHi(i8* %238)
  br label %240

240:                                              ; preds = %233, %207, %30
  ret void
}

declare dso_local i32 @TileFlipAS_noop(i32, i32, i32) #1

declare dso_local i32 @TileNormAS_noop(i32, i32, i32) #1

declare dso_local i32 @TileFlipAS(i32, i32, i32) #1

declare dso_local i32 @TileNormAS(i32, i32, i32) #1

declare dso_local i32 @TileFlipAS_onlymark(i32, i32, i32) #1

declare dso_local i32 @TileNormAS_onlymark(i32, i32, i32) #1

declare dso_local i32 @DrawSpritesSHi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
