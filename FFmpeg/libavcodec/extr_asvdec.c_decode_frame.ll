; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_asvdec.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_asvdec.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i64, i32, i32, i32, i32, i32*, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32 (i32*, i32*, i32)* }
%struct.TYPE_14__ = type { i64*, i32 }
%struct.TYPE_15__ = type { i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AV_CODEC_ID_ASV1 = common dso_local global i64 0, align 8
@ff_reverse = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i8*, i32*, %struct.TYPE_14__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_16__* %0, i8* %1, i32* %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %9, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  store %struct.TYPE_17__* %20, %struct.TYPE_17__** %10, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  store i64* %23, i64** %11, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %12, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %13, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = mul nsw i64 %30, 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = mul nsw i64 %34, %37
  %39 = mul nsw i64 %38, 13
  %40 = icmp slt i64 %31, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %4
  %42 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %42, i32* %5, align 4
  br label %242

43:                                               ; preds = %4
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %46 = call i32 @ff_get_buffer(%struct.TYPE_16__* %44, %struct.TYPE_15__* %45, i32 0)
  store i32 %46, i32* %16, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %16, align 4
  store i32 %49, i32* %5, align 4
  br label %242

50:                                               ; preds = %43
  %51 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 6
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @av_fast_padded_malloc(i32** %57, i32* %59, i32 %60)
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 6
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %50
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = call i32 @AVERROR(i32 %67)
  store i32 %68, i32* %5, align 4
  br label %242

69:                                               ; preds = %50
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @AV_CODEC_ID_ASV1, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %69
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 7
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %78, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 6
  %82 = load i32*, i32** %81, align 8
  %83 = load i64*, i64** %11, align 8
  %84 = bitcast i64* %83 to i32*
  %85 = load i32, i32* %12, align 4
  %86 = sdiv i32 %85, 4
  %87 = call i32 %79(i32* %82, i32* %84, i32 %86)
  br label %112

88:                                               ; preds = %69
  store i32 0, i32* %17, align 4
  br label %89

89:                                               ; preds = %108, %88
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %111

93:                                               ; preds = %89
  %94 = load i32*, i32** @ff_reverse, align 8
  %95 = load i64*, i64** %11, align 8
  %96 = load i32, i32* %17, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i32, i32* %94, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 6
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %17, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %101, i32* %107, align 4
  br label %108

108:                                              ; preds = %93
  %109 = load i32, i32* %17, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %17, align 4
  br label %89

111:                                              ; preds = %89
  br label %112

112:                                              ; preds = %111, %75
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 4
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 6
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %12, align 4
  %119 = mul nsw i32 %118, 8
  %120 = call i32 @init_get_bits(i32* %114, i32* %117, i32 %119)
  store i32 0, i32* %15, align 4
  br label %121

121:                                              ; preds = %153, %112
  %122 = load i32, i32* %15, align 4
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %156

127:                                              ; preds = %121
  store i32 0, i32* %14, align 4
  br label %128

128:                                              ; preds = %149, %127
  %129 = load i32, i32* %14, align 4
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = icmp slt i32 %129, %132
  br i1 %133, label %134, label %152

134:                                              ; preds = %128
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @decode_mb(%struct.TYPE_17__* %135, i32 %138)
  store i32 %139, i32* %16, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %134
  %142 = load i32, i32* %16, align 4
  store i32 %142, i32* %5, align 4
  br label %242

143:                                              ; preds = %134
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* %15, align 4
  %148 = call i32 @idct_put(%struct.TYPE_17__* %144, %struct.TYPE_15__* %145, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %143
  %150 = load i32, i32* %14, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %14, align 4
  br label %128

152:                                              ; preds = %128
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %15, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %15, align 4
  br label %121

156:                                              ; preds = %121
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %160, %163
  br i1 %164, label %165, label %194

165:                                              ; preds = %156
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %169

169:                                              ; preds = %190, %165
  %170 = load i32, i32* %15, align 4
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = icmp slt i32 %170, %173
  br i1 %174, label %175, label %193

175:                                              ; preds = %169
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @decode_mb(%struct.TYPE_17__* %176, i32 %179)
  store i32 %180, i32* %16, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %175
  %183 = load i32, i32* %16, align 4
  store i32 %183, i32* %5, align 4
  br label %242

184:                                              ; preds = %175
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %187 = load i32, i32* %14, align 4
  %188 = load i32, i32* %15, align 4
  %189 = call i32 @idct_put(%struct.TYPE_17__* %185, %struct.TYPE_15__* %186, i32 %187, i32 %188)
  br label %190

190:                                              ; preds = %184
  %191 = load i32, i32* %15, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %15, align 4
  br label %169

193:                                              ; preds = %169
  br label %194

194:                                              ; preds = %193, %156
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = sext i32 %197 to i64
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %198, %201
  br i1 %202, label %203, label %233

203:                                              ; preds = %194
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  store i32 %206, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %207

207:                                              ; preds = %229, %203
  %208 = load i32, i32* %14, align 4
  %209 = sext i32 %208 to i64
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = icmp slt i64 %209, %212
  br i1 %213, label %214, label %232

214:                                              ; preds = %207
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 5
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @decode_mb(%struct.TYPE_17__* %215, i32 %218)
  store i32 %219, i32* %16, align 4
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %214
  %222 = load i32, i32* %16, align 4
  store i32 %222, i32* %5, align 4
  br label %242

223:                                              ; preds = %214
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %226 = load i32, i32* %14, align 4
  %227 = load i32, i32* %15, align 4
  %228 = call i32 @idct_put(%struct.TYPE_17__* %224, %struct.TYPE_15__* %225, i32 %226, i32 %227)
  br label %229

229:                                              ; preds = %223
  %230 = load i32, i32* %14, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %14, align 4
  br label %207

232:                                              ; preds = %207
  br label %233

233:                                              ; preds = %232, %194
  %234 = load i32*, i32** %8, align 8
  store i32 1, i32* %234, align 4
  %235 = call i32 (...) @emms_c()
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 4
  %238 = call i32 @get_bits_count(i32* %237)
  %239 = add nsw i32 %238, 31
  %240 = sdiv i32 %239, 32
  %241 = mul nsw i32 %240, 4
  store i32 %241, i32* %5, align 4
  br label %242

242:                                              ; preds = %233, %221, %182, %141, %66, %48, %41
  %243 = load i32, i32* %5, align 4
  ret i32 %243
}

declare dso_local i32 @ff_get_buffer(%struct.TYPE_16__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @av_fast_padded_malloc(i32**, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @init_get_bits(i32*, i32*, i32) #1

declare dso_local i32 @decode_mb(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @idct_put(%struct.TYPE_17__*, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @emms_c(...) #1

declare dso_local i32 @get_bits_count(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
