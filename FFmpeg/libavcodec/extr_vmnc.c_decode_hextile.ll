; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vmnc.c_decode_hextile.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vmnc.c_decode_hextile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Premature end of data!\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@HT_RAW = common dso_local global i32 0, align 4
@HT_BKG = common dso_local global i32 0, align 4
@HT_FG = common dso_local global i32 0, align 4
@HT_SUB = common dso_local global i32 0, align 4
@HT_CLR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Rectangle outside picture\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32*, i32, i32, i32)* @decode_hextile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_hextile(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
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
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %24, align 4
  store i32 16, i32* %26, align 4
  store i32 16, i32* %27, align 4
  store i32 0, i32* %15, align 4
  br label %35

35:                                               ; preds = %252, %6
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %255

39:                                               ; preds = %35
  %40 = load i32*, i32** %9, align 8
  store i32* %40, i32** %25, align 8
  store i32 16, i32* %26, align 4
  %41 = load i32, i32* %15, align 4
  %42 = add nsw i32 %41, 16
  %43 = load i32, i32* %12, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %15, align 4
  %48 = sub nsw i32 %46, %47
  store i32 %48, i32* %27, align 4
  br label %49

49:                                               ; preds = %45, %39
  store i32 0, i32* %14, align 4
  br label %50

50:                                               ; preds = %238, %49
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %246

54:                                               ; preds = %50
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @bytestream2_get_bytes_left(i32* %55)
  %57 = icmp sle i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @AV_LOG_ERROR, align 4
  %63 = call i32 @av_log(i32 %61, i32 %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %64, i32* %7, align 4
  br label %256

65:                                               ; preds = %54
  %66 = load i32, i32* %14, align 4
  %67 = add nsw i32 %66, 16
  %68 = load i32, i32* %11, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %14, align 4
  %73 = sub nsw i32 %71, %72
  store i32 %73, i32* %26, align 4
  br label %74

74:                                               ; preds = %70, %65
  %75 = load i32*, i32** %10, align 8
  %76 = call i32 @bytestream2_get_byte(i32* %75)
  store i32 %76, i32* %21, align 4
  %77 = load i32, i32* %21, align 4
  %78 = load i32, i32* @HT_RAW, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %108

81:                                               ; preds = %74
  %82 = load i32*, i32** %10, align 8
  %83 = call i32 @bytestream2_get_bytes_left(i32* %82)
  %84 = load i32, i32* %26, align 4
  %85 = load i32, i32* %27, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32, i32* %24, align 4
  %88 = mul nsw i32 %86, %87
  %89 = icmp slt i32 %83, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %81
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @AV_LOG_ERROR, align 4
  %95 = call i32 @av_log(i32 %93, i32 %94, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %96 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %96, i32* %7, align 4
  br label %256

97:                                               ; preds = %81
  %98 = load i32*, i32** %25, align 8
  %99 = load i32, i32* %26, align 4
  %100 = load i32, i32* %27, align 4
  %101 = load i32*, i32** %10, align 8
  %102 = load i32, i32* %24, align 4
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @paint_raw(i32* %98, i32 %99, i32 %100, i32* %101, i32 %102, i32 %105, i32 %106)
  br label %237

108:                                              ; preds = %74
  %109 = load i32, i32* %21, align 4
  %110 = load i32, i32* @HT_BKG, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %108
  %114 = load i32*, i32** %10, align 8
  %115 = load i32, i32* %24, align 4
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @vmnc_get_pixel(i32* %114, i32 %115, i32 %118)
  store i32 %119, i32* %17, align 4
  br label %120

120:                                              ; preds = %113, %108
  %121 = load i32, i32* %21, align 4
  %122 = load i32, i32* @HT_FG, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %120
  %126 = load i32*, i32** %10, align 8
  %127 = load i32, i32* %24, align 4
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @vmnc_get_pixel(i32* %126, i32 %127, i32 %130)
  store i32 %131, i32* %18, align 4
  br label %132

132:                                              ; preds = %125, %120
  store i32 0, i32* %19, align 4
  %133 = load i32, i32* %21, align 4
  %134 = load i32, i32* @HT_SUB, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i32*, i32** %10, align 8
  %139 = call i32 @bytestream2_get_byte(i32* %138)
  store i32 %139, i32* %19, align 4
  br label %140

140:                                              ; preds = %137, %132
  %141 = load i32, i32* %21, align 4
  %142 = load i32, i32* @HT_CLR, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  %145 = xor i1 %144, true
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i32
  store i32 %147, i32* %20, align 4
  %148 = load i32*, i32** %25, align 8
  %149 = load i32, i32* %26, align 4
  %150 = load i32, i32* %27, align 4
  %151 = load i32, i32* %17, align 4
  %152 = load i32, i32* %24, align 4
  %153 = load i32, i32* %13, align 4
  %154 = call i32 @paint_rect(i32* %148, i32 0, i32 0, i32 %149, i32 %150, i32 %151, i32 %152, i32 %153)
  %155 = load i32*, i32** %10, align 8
  %156 = call i32 @bytestream2_get_bytes_left(i32* %155)
  %157 = load i32, i32* %19, align 4
  %158 = load i32, i32* %20, align 4
  %159 = load i32, i32* %24, align 4
  %160 = mul nsw i32 %158, %159
  %161 = add nsw i32 %160, 2
  %162 = mul nsw i32 %157, %161
  %163 = icmp slt i32 %156, %162
  br i1 %163, label %164, label %171

164:                                              ; preds = %140
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @AV_LOG_ERROR, align 4
  %169 = call i32 @av_log(i32 %167, i32 %168, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %170 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %170, i32* %7, align 4
  br label %256

171:                                              ; preds = %140
  store i32 0, i32* %16, align 4
  br label %172

172:                                              ; preds = %233, %171
  %173 = load i32, i32* %16, align 4
  %174 = load i32, i32* %19, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %236

176:                                              ; preds = %172
  %177 = load i32, i32* %20, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %176
  %180 = load i32*, i32** %10, align 8
  %181 = load i32, i32* %24, align 4
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @vmnc_get_pixel(i32* %180, i32 %181, i32 %184)
  store i32 %185, i32* %18, align 4
  br label %186

186:                                              ; preds = %179, %176
  %187 = load i32*, i32** %10, align 8
  %188 = call i32 @bytestream2_get_byte(i32* %187)
  store i32 %188, i32* %22, align 4
  %189 = load i32*, i32** %10, align 8
  %190 = call i32 @bytestream2_get_byte(i32* %189)
  store i32 %190, i32* %23, align 4
  %191 = load i32, i32* %22, align 4
  %192 = ashr i32 %191, 4
  store i32 %192, i32* %28, align 4
  %193 = load i32, i32* %22, align 4
  %194 = and i32 %193, 15
  store i32 %194, i32* %29, align 4
  %195 = load i32, i32* %23, align 4
  %196 = ashr i32 %195, 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %30, align 4
  %198 = load i32, i32* %23, align 4
  %199 = and i32 %198, 15
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %31, align 4
  %201 = load i32, i32* %28, align 4
  %202 = load i32, i32* %30, align 4
  %203 = add nsw i32 %201, %202
  %204 = load i32, i32* %11, align 4
  %205 = load i32, i32* %14, align 4
  %206 = sub nsw i32 %204, %205
  %207 = icmp sgt i32 %203, %206
  br i1 %207, label %216, label %208

208:                                              ; preds = %186
  %209 = load i32, i32* %29, align 4
  %210 = load i32, i32* %31, align 4
  %211 = add nsw i32 %209, %210
  %212 = load i32, i32* %12, align 4
  %213 = load i32, i32* %15, align 4
  %214 = sub nsw i32 %212, %213
  %215 = icmp sgt i32 %211, %214
  br i1 %215, label %216, label %223

216:                                              ; preds = %208, %186
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @AV_LOG_ERROR, align 4
  %221 = call i32 @av_log(i32 %219, i32 %220, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %222 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %222, i32* %7, align 4
  br label %256

223:                                              ; preds = %208
  %224 = load i32*, i32** %25, align 8
  %225 = load i32, i32* %28, align 4
  %226 = load i32, i32* %29, align 4
  %227 = load i32, i32* %30, align 4
  %228 = load i32, i32* %31, align 4
  %229 = load i32, i32* %18, align 4
  %230 = load i32, i32* %24, align 4
  %231 = load i32, i32* %13, align 4
  %232 = call i32 @paint_rect(i32* %224, i32 %225, i32 %226, i32 %227, i32 %228, i32 %229, i32 %230, i32 %231)
  br label %233

233:                                              ; preds = %223
  %234 = load i32, i32* %16, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %16, align 4
  br label %172

236:                                              ; preds = %172
  br label %237

237:                                              ; preds = %236, %97
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %14, align 4
  %240 = add nsw i32 %239, 16
  store i32 %240, i32* %14, align 4
  %241 = load i32, i32* %24, align 4
  %242 = mul nsw i32 16, %241
  %243 = load i32*, i32** %25, align 8
  %244 = sext i32 %242 to i64
  %245 = getelementptr inbounds i32, i32* %243, i64 %244
  store i32* %245, i32** %25, align 8
  br label %50

246:                                              ; preds = %50
  %247 = load i32, i32* %13, align 4
  %248 = mul nsw i32 %247, 16
  %249 = load i32*, i32** %9, align 8
  %250 = sext i32 %248 to i64
  %251 = getelementptr inbounds i32, i32* %249, i64 %250
  store i32* %251, i32** %9, align 8
  br label %252

252:                                              ; preds = %246
  %253 = load i32, i32* %15, align 4
  %254 = add nsw i32 %253, 16
  store i32 %254, i32* %15, align 4
  br label %35

255:                                              ; preds = %35
  store i32 0, i32* %7, align 4
  br label %256

256:                                              ; preds = %255, %216, %164, %90, %58
  %257 = load i32, i32* %7, align 4
  ret i32 %257
}

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @paint_raw(i32*, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @vmnc_get_pixel(i32*, i32, i32) #1

declare dso_local i32 @paint_rect(i32*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
