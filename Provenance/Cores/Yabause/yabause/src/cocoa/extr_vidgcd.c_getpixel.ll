; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/cocoa/extr_vidgcd.c_getpixel.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/cocoa/extr_vidgcd.c_getpixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@cmd = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@characterWidth = common dso_local global i32 0, align 4
@characterHeight = common dso_local global i32 0, align 4
@currentPixel = common dso_local global i32 0, align 4
@currentPixelIsVisible = common dso_local global i32 0, align 4
@Vdp1Ram = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @getpixel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getpixel(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmd, i32 0, i32 0), align 4
  %17 = and i32 %16, 7
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmd, i32 0, i32 1), align 4
  %19 = shl i32 %18, 3
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmd, i32 0, i32 2), align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = shl i32 %21, 3
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmd, i32 0, i32 3), align 4
  %24 = and i32 %23, 64
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmd, i32 0, i32 3), align 4
  %28 = and i32 %27, 128
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 1, i32 0
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmd, i32 0, i32 0), align 4
  %33 = and i32 %32, 48
  %34 = ashr i32 %33, 4
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp eq i32 %35, 4
  br i1 %36, label %43, label %37

37:                                               ; preds = %2
  %38 = load i32, i32* %14, align 4
  %39 = icmp eq i32 %38, 5
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %14, align 4
  %42 = icmp eq i32 %41, 6
  br i1 %42, label %43, label %45

43:                                               ; preds = %40, %37, %2
  store i32 0, i32* %13, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmd, i32 0, i32 2), align 4
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %43, %40
  %46 = load i32, i32* %15, align 4
  switch i32 %46, label %66 [
    i32 1, label %47
    i32 2, label %52
    i32 3, label %57
  ]

47:                                               ; preds = %45
  %48 = load i32, i32* @characterWidth, align 4
  %49 = load i32, i32* %5, align 4
  %50 = sub nsw i32 %48, %49
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %66

52:                                               ; preds = %45
  %53 = load i32, i32* @characterHeight, align 4
  %54 = load i32, i32* %4, align 4
  %55 = sub nsw i32 %53, %54
  %56 = sub nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %66

57:                                               ; preds = %45
  %58 = load i32, i32* @characterHeight, align 4
  %59 = load i32, i32* %4, align 4
  %60 = sub nsw i32 %58, %59
  %61 = sub nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* @characterWidth, align 4
  %63 = load i32, i32* %5, align 4
  %64 = sub nsw i32 %62, %63
  %65 = sub nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %45, %57, %52, %47
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmd, i32 0, i32 3), align 4
  %68 = ashr i32 %67, 3
  %69 = and i32 %68, 7
  switch i32 %69, label %241 [
    i32 0, label %70
    i32 1, label %100
    i32 2, label %134
    i32 3, label %163
    i32 4, label %192
    i32 5, label %221
  ]

70:                                               ; preds = %66
  store i32 15, i32* %10, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @characterWidth, align 4
  %74 = ashr i32 %73, 1
  %75 = mul nsw i32 %72, %74
  %76 = add nsw i32 %71, %75
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @Vdp1ReadPattern16(i32 %76, i32 %77)
  store i32 %78, i32* @currentPixel, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %70
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load i32, i32* @currentPixel, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  store i32 1, i32* %3, align 4
  br label %251

89:                                               ; preds = %84, %81, %70
  %90 = load i32, i32* @currentPixel, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92, %89
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @currentPixel, align 4
  %98 = or i32 %96, %97
  store i32 %98, i32* @currentPixel, align 4
  br label %99

99:                                               ; preds = %95, %92
  store i32 15, i32* @currentPixelIsVisible, align 4
  br label %241

100:                                              ; preds = %66
  store i32 15, i32* %10, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @characterWidth, align 4
  %104 = ashr i32 %103, 1
  %105 = mul nsw i32 %102, %104
  %106 = add nsw i32 %101, %105
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @Vdp1ReadPattern16(i32 %106, i32 %107)
  store i32 %108, i32* @currentPixel, align 4
  %109 = load i32, i32* %13, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %100
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load i32, i32* @currentPixel, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  store i32 1, i32* %3, align 4
  br label %251

119:                                              ; preds = %114, %111, %100
  %120 = load i32, i32* @currentPixel, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i32, i32* %9, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %122, %119
  %126 = load i32, i32* @Vdp1Ram, align 4
  %127 = load i32, i32* @currentPixel, align 4
  %128 = mul nsw i32 %127, 2
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %128, %129
  %131 = and i32 %130, 524287
  %132 = call i32 @T1ReadWord(i32 %126, i32 %131)
  store i32 %132, i32* @currentPixel, align 4
  br label %133

133:                                              ; preds = %125, %122
  store i32 65535, i32* @currentPixelIsVisible, align 4
  br label %241

134:                                              ; preds = %66
  store i32 63, i32* %10, align 4
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* @characterWidth, align 4
  %138 = mul nsw i32 %136, %137
  %139 = add nsw i32 %135, %138
  %140 = load i32, i32* %5, align 4
  %141 = call i32 @Vdp1ReadPattern64(i32 %139, i32 %140)
  store i32 %141, i32* @currentPixel, align 4
  %142 = load i32, i32* %13, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %134
  %145 = load i32, i32* %11, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = load i32, i32* @currentPixel, align 4
  %149 = load i32, i32* %10, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %147
  store i32 0, i32* @currentPixel, align 4
  br label %152

152:                                              ; preds = %151, %147, %144, %134
  %153 = load i32, i32* @currentPixel, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load i32, i32* %9, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %155, %152
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* @currentPixel, align 4
  %161 = or i32 %159, %160
  store i32 %161, i32* @currentPixel, align 4
  br label %162

162:                                              ; preds = %158, %155
  store i32 63, i32* @currentPixelIsVisible, align 4
  br label %241

163:                                              ; preds = %66
  store i32 255, i32* %10, align 4
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* @characterWidth, align 4
  %167 = mul nsw i32 %165, %166
  %168 = add nsw i32 %164, %167
  %169 = load i32, i32* %5, align 4
  %170 = call i32 @Vdp1ReadPattern128(i32 %168, i32 %169)
  store i32 %170, i32* @currentPixel, align 4
  %171 = load i32, i32* %13, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %163
  %174 = load i32, i32* %11, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %173
  %177 = load i32, i32* @currentPixel, align 4
  %178 = load i32, i32* %10, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %176
  store i32 1, i32* %3, align 4
  br label %251

181:                                              ; preds = %176, %173, %163
  %182 = load i32, i32* @currentPixel, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load i32, i32* %9, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %184, %181
  %188 = load i32, i32* %8, align 4
  %189 = load i32, i32* @currentPixel, align 4
  %190 = or i32 %188, %189
  store i32 %190, i32* @currentPixel, align 4
  br label %191

191:                                              ; preds = %187, %184
  store i32 127, i32* @currentPixelIsVisible, align 4
  br label %241

192:                                              ; preds = %66
  store i32 255, i32* %10, align 4
  %193 = load i32, i32* %6, align 4
  %194 = load i32, i32* %4, align 4
  %195 = load i32, i32* @characterWidth, align 4
  %196 = mul nsw i32 %194, %195
  %197 = add nsw i32 %193, %196
  %198 = load i32, i32* %5, align 4
  %199 = call i32 @Vdp1ReadPattern256(i32 %197, i32 %198)
  store i32 %199, i32* @currentPixel, align 4
  %200 = load i32, i32* %13, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %210

202:                                              ; preds = %192
  %203 = load i32, i32* %11, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %202
  %206 = load i32, i32* @currentPixel, align 4
  %207 = load i32, i32* %10, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %205
  store i32 1, i32* %3, align 4
  br label %251

210:                                              ; preds = %205, %202, %192
  store i32 255, i32* @currentPixelIsVisible, align 4
  %211 = load i32, i32* @currentPixel, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %210
  %214 = load i32, i32* %9, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %213, %210
  %217 = load i32, i32* %8, align 4
  %218 = load i32, i32* @currentPixel, align 4
  %219 = or i32 %217, %218
  store i32 %219, i32* @currentPixel, align 4
  br label %220

220:                                              ; preds = %216, %213
  br label %241

221:                                              ; preds = %66
  store i32 32767, i32* %10, align 4
  %222 = load i32, i32* %6, align 4
  %223 = load i32, i32* %4, align 4
  %224 = load i32, i32* @characterWidth, align 4
  %225 = mul nsw i32 %223, %224
  %226 = mul nsw i32 %225, 2
  %227 = add nsw i32 %222, %226
  %228 = load i32, i32* %5, align 4
  %229 = call i32 @Vdp1ReadPattern64k(i32 %227, i32 %228)
  store i32 %229, i32* @currentPixel, align 4
  %230 = load i32, i32* %13, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %240

232:                                              ; preds = %221
  %233 = load i32, i32* %11, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %232
  %236 = load i32, i32* @currentPixel, align 4
  %237 = load i32, i32* %10, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %235
  store i32 1, i32* %3, align 4
  br label %251

240:                                              ; preds = %235, %232, %221
  store i32 65535, i32* @currentPixelIsVisible, align 4
  br label %241

241:                                              ; preds = %66, %240, %220, %191, %162, %133, %99
  %242 = load i32, i32* %13, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %246, label %244

244:                                              ; preds = %241
  %245 = load i32, i32* %12, align 4
  store i32 %245, i32* @currentPixel, align 4
  br label %246

246:                                              ; preds = %244, %241
  %247 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmd, i32 0, i32 3), align 4
  %248 = and i32 %247, 32768
  %249 = load i32, i32* @currentPixel, align 4
  %250 = or i32 %249, %248
  store i32 %250, i32* @currentPixel, align 4
  store i32 0, i32* %3, align 4
  br label %251

251:                                              ; preds = %246, %239, %209, %180, %118, %88
  %252 = load i32, i32* %3, align 4
  ret i32 %252
}

declare dso_local i32 @Vdp1ReadPattern16(i32, i32) #1

declare dso_local i32 @T1ReadWord(i32, i32) #1

declare dso_local i32 @Vdp1ReadPattern64(i32, i32) #1

declare dso_local i32 @Vdp1ReadPattern128(i32, i32) #1

declare dso_local i32 @Vdp1ReadPattern256(i32, i32) #1

declare dso_local i32 @Vdp1ReadPattern64k(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
