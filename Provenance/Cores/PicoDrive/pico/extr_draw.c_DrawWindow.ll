; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw.c_DrawWindow.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw.c_DrawWindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, %struct.PicoVideo }
%struct.PicoVideo = type { i32* }

@Pico = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DrawScanline = common dso_local global i32 0, align 4
@rendstatus = common dso_local global i32 0, align 4
@PDRAW_WND_DIFF_PRIO = common dso_local global i32 0, align 4
@HighCol = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @DrawWindow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DrawWindow(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.PicoVideo*, align 8
  %10 = alloca i32, align 4
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
  %21 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.PicoVideo* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 1), %struct.PicoVideo** %9, align 8
  store i32 0, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  %22 = load %struct.PicoVideo*, %struct.PicoVideo** %9, align 8
  %23 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 12
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 1
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %4
  %30 = load %struct.PicoVideo*, %struct.PicoVideo** %9, align 8
  %31 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 60
  %36 = shl i32 %35, 9
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* @DrawScanline, align 4
  %38 = ashr i32 %37, 3
  %39 = shl i32 %38, 6
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %12, align 4
  br label %55

42:                                               ; preds = %4
  %43 = load %struct.PicoVideo*, %struct.PicoVideo** %9, align 8
  %44 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 3
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 62
  %49 = shl i32 %48, 9
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* @DrawScanline, align 4
  %51 = ashr i32 %50, 3
  %52 = shl i32 %51, 5
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %42, %29
  %56 = load i32, i32* %5, align 4
  %57 = shl i32 %56, 1
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* @rendstatus, align 4
  %59 = load i32, i32* @PDRAW_WND_DIFF_PRIO, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %76, label %62

62:                                               ; preds = %55
  %63 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), align 8
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = ashr i32 %70, 15
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  br label %251

75:                                               ; preds = %62
  br label %76

76:                                               ; preds = %75, %55
  %77 = load i32, i32* %6, align 4
  %78 = shl i32 %77, 1
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* @DrawScanline, align 4
  %80 = and i32 %79, 7
  %81 = shl i32 %80, 1
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %157, label %84

84:                                               ; preds = %76
  br label %85

85:                                               ; preds = %153, %84
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %156

89:                                               ; preds = %85
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %90 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), align 8
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %90, i64 %94
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %89
  br label %153

101:                                              ; preds = %89
  %102 = load i32, i32* %13, align 4
  %103 = ashr i32 %102, 15
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load i32, i32* @PDRAW_WND_DIFF_PRIO, align 4
  %108 = load i32, i32* @rendstatus, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* @rendstatus, align 4
  br label %153

110:                                              ; preds = %101
  %111 = load i32, i32* %13, align 4
  %112 = ashr i32 %111, 9
  %113 = and i32 %112, 48
  store i32 %113, i32* %17, align 4
  %114 = load i32, i32* %13, align 4
  %115 = and i32 %114, 2047
  %116 = shl i32 %115, 4
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %13, align 4
  %118 = and i32 %117, 4096
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %110
  %121 = load i32, i32* %11, align 4
  %122 = sub nsw i32 14, %121
  %123 = load i32, i32* %15, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %15, align 4
  br label %129

125:                                              ; preds = %110
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %15, align 4
  %128 = add nsw i32 %127, %126
  store i32 %128, i32* %15, align 4
  br label %129

129:                                              ; preds = %125, %120
  %130 = load i32, i32* %13, align 4
  %131 = and i32 %130, 2048
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %129
  %134 = load i32, i32* %10, align 4
  %135 = shl i32 %134, 3
  %136 = add nsw i32 8, %135
  %137 = load i32, i32* %15, align 4
  %138 = load i32, i32* %17, align 4
  %139 = call i32 @TileFlip(i32 %136, i32 %137, i32 %138)
  store i32 %139, i32* %16, align 4
  br label %147

140:                                              ; preds = %129
  %141 = load i32, i32* %10, align 4
  %142 = shl i32 %141, 3
  %143 = add nsw i32 8, %142
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* %17, align 4
  %146 = call i32 @TileNorm(i32 %143, i32 %144, i32 %145)
  store i32 %146, i32* %16, align 4
  br label %147

147:                                              ; preds = %140, %133
  %148 = load i32, i32* %16, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %147
  %151 = load i32, i32* %13, align 4
  store i32 %151, i32* %14, align 4
  br label %152

152:                                              ; preds = %150, %147
  br label %153

153:                                              ; preds = %152, %106, %100
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %10, align 4
  br label %85

156:                                              ; preds = %85
  br label %251

157:                                              ; preds = %76
  br label %158

158:                                              ; preds = %247, %157
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* %6, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %250

162:                                              ; preds = %158
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %163 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), align 8
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %164, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %163, i64 %167
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %13, align 4
  %170 = load i32, i32* %13, align 4
  %171 = load i32, i32* %14, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %162
  br label %247

174:                                              ; preds = %162
  %175 = load i32, i32* %13, align 4
  %176 = ashr i32 %175, 15
  %177 = load i32, i32* %7, align 4
  %178 = icmp ne i32 %176, %177
  br i1 %178, label %179, label %183

179:                                              ; preds = %174
  %180 = load i32, i32* @PDRAW_WND_DIFF_PRIO, align 4
  %181 = load i32, i32* @rendstatus, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* @rendstatus, align 4
  br label %247

183:                                              ; preds = %174
  %184 = load i32, i32* %13, align 4
  %185 = ashr i32 %184, 9
  %186 = and i32 %185, 48
  store i32 %186, i32* %20, align 4
  %187 = load i32, i32* %7, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %204

189:                                              ; preds = %183
  %190 = load i64, i64* @HighCol, align 8
  %191 = add nsw i64 %190, 8
  %192 = load i32, i32* %10, align 4
  %193 = shl i32 %192, 3
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %191, %194
  %196 = inttoptr i64 %195 to i32*
  store i32* %196, i32** %21, align 8
  %197 = load i32*, i32** %21, align 8
  %198 = getelementptr inbounds i32, i32* %197, i32 1
  store i32* %198, i32** %21, align 8
  %199 = load i32, i32* %197, align 4
  %200 = and i32 %199, -1077952577
  store i32 %200, i32* %197, align 4
  %201 = load i32*, i32** %21, align 8
  %202 = load i32, i32* %201, align 4
  %203 = and i32 %202, -1077952577
  store i32 %203, i32* %201, align 4
  br label %207

204:                                              ; preds = %183
  %205 = load i32, i32* %20, align 4
  %206 = or i32 %205, 64
  store i32 %206, i32* %20, align 4
  br label %207

207:                                              ; preds = %204, %189
  %208 = load i32, i32* %13, align 4
  %209 = and i32 %208, 2047
  %210 = shl i32 %209, 4
  store i32 %210, i32* %18, align 4
  %211 = load i32, i32* %13, align 4
  %212 = and i32 %211, 4096
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %207
  %215 = load i32, i32* %11, align 4
  %216 = sub nsw i32 14, %215
  %217 = load i32, i32* %18, align 4
  %218 = add nsw i32 %217, %216
  store i32 %218, i32* %18, align 4
  br label %223

219:                                              ; preds = %207
  %220 = load i32, i32* %11, align 4
  %221 = load i32, i32* %18, align 4
  %222 = add nsw i32 %221, %220
  store i32 %222, i32* %18, align 4
  br label %223

223:                                              ; preds = %219, %214
  %224 = load i32, i32* %13, align 4
  %225 = and i32 %224, 2048
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %234

227:                                              ; preds = %223
  %228 = load i32, i32* %10, align 4
  %229 = shl i32 %228, 3
  %230 = add nsw i32 8, %229
  %231 = load i32, i32* %18, align 4
  %232 = load i32, i32* %20, align 4
  %233 = call i32 @TileFlip(i32 %230, i32 %231, i32 %232)
  store i32 %233, i32* %19, align 4
  br label %241

234:                                              ; preds = %223
  %235 = load i32, i32* %10, align 4
  %236 = shl i32 %235, 3
  %237 = add nsw i32 8, %236
  %238 = load i32, i32* %18, align 4
  %239 = load i32, i32* %20, align 4
  %240 = call i32 @TileNorm(i32 %237, i32 %238, i32 %239)
  store i32 %240, i32* %19, align 4
  br label %241

241:                                              ; preds = %234, %227
  %242 = load i32, i32* %19, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %241
  %245 = load i32, i32* %13, align 4
  store i32 %245, i32* %14, align 4
  br label %246

246:                                              ; preds = %244, %241
  br label %247

247:                                              ; preds = %246, %179, %173
  %248 = load i32, i32* %10, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %10, align 4
  br label %158

250:                                              ; preds = %158
  br label %251

251:                                              ; preds = %74, %250, %156
  ret void
}

declare dso_local i32 @TileFlip(i32, i32, i32) #1

declare dso_local i32 @TileNorm(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
