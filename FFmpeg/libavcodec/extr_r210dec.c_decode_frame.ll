; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_r210dec.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_r210dec.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i32, i32, i32, i32* }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32, i32*, i32**, i32 }

@AV_CODEC_ID_R10K = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"DpxE\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"packet too small\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@AV_CODEC_ID_AVRP = common dso_local global i64 0, align 8
@AV_CODEC_ID_R210 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i32*, %struct.TYPE_9__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_11__* %0, i8* %1, i32* %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8**, align 8
  %22 = alloca i8**, align 8
  %23 = alloca i8**, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = bitcast i8* %28 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %13, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %14, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AV_CODEC_ID_R10K, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1, i32 64
  %44 = call i32 @FFALIGN(i32 %36, i32 %43)
  store i32 %44, i32* %15, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, 16777215
  %49 = call i32 @MKTAG(i8 signext 114, i8 signext 49, i32 48, i8 signext 0)
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %19, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @MKTAG(i8 signext 82, i8 signext 49, i32 48, i8 signext 107)
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp sge i32 %60, 12
  br i1 %61, label %62, label %77

62:                                               ; preds = %57
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 5
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  %67 = call i32 @memcmp(i32* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %62
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 5
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 11
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  br label %77

77:                                               ; preds = %69, %62, %57, %4
  %78 = phi i1 [ false, %62 ], [ false, %57 ], [ false, %4 ], [ %76, %69 ]
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %20, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %15, align 4
  %84 = mul nsw i32 4, %83
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = mul nsw i32 %84, %87
  %89 = icmp slt i32 %82, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %77
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %92 = load i32, i32* @AV_LOG_ERROR, align 4
  %93 = call i32 @av_log(%struct.TYPE_11__* %91, i32 %92, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %94 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %94, i32* %5, align 4
  br label %274

95:                                               ; preds = %77
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %98 = call i32 @ff_get_buffer(%struct.TYPE_11__* %96, %struct.TYPE_10__* %97, i32 0)
  store i32 %98, i32* %12, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %5, align 4
  br label %274

102:                                              ; preds = %95
  %103 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 2
  %110 = load i32**, i32*** %109, align 8
  %111 = getelementptr inbounds i32*, i32** %110, i64 0
  %112 = load i32*, i32** %111, align 8
  store i32* %112, i32** %16, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  %115 = load i32**, i32*** %114, align 8
  %116 = getelementptr inbounds i32*, i32** %115, i64 1
  %117 = load i32*, i32** %116, align 8
  store i32* %117, i32** %17, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 2
  %120 = load i32**, i32*** %119, align 8
  %121 = getelementptr inbounds i32*, i32** %120, i64 2
  %122 = load i32*, i32** %121, align 8
  store i32* %122, i32** %18, align 8
  store i32 0, i32* %10, align 4
  br label %123

123:                                              ; preds = %266, %102
  %124 = load i32, i32* %10, align 4
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = icmp slt i32 %124, %127
  br i1 %128, label %129, label %269

129:                                              ; preds = %123
  %130 = load i32*, i32** %16, align 8
  %131 = bitcast i32* %130 to i8**
  store i8** %131, i8*** %21, align 8
  %132 = load i32*, i32** %17, align 8
  %133 = bitcast i32* %132 to i8**
  store i8** %133, i8*** %22, align 8
  %134 = load i32*, i32** %18, align 8
  %135 = bitcast i32* %134 to i8**
  store i8** %135, i8*** %23, align 8
  store i32 0, i32* %11, align 4
  br label %136

136:                                              ; preds = %230, %129
  %137 = load i32, i32* %11, align 4
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %233

142:                                              ; preds = %136
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @AV_CODEC_ID_AVRP, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %154, label %148

148:                                              ; preds = %142
  %149 = load i32, i32* %19, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %148
  %152 = load i32, i32* %20, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %151, %148, %142
  %155 = load i32*, i32** %14, align 8
  %156 = getelementptr inbounds i32, i32* %155, i32 1
  store i32* %156, i32** %14, align 8
  %157 = load i32, i32* %155, align 4
  %158 = call i32 @av_le2ne32(i32 %157)
  store i32 %158, i32* %24, align 4
  br label %164

159:                                              ; preds = %151
  %160 = load i32*, i32** %14, align 8
  %161 = getelementptr inbounds i32, i32* %160, i32 1
  store i32* %161, i32** %14, align 8
  %162 = load i32, i32* %160, align 4
  %163 = call i32 @av_be2ne32(i32 %162)
  store i32 %163, i32* %24, align 4
  br label %164

164:                                              ; preds = %159, %154
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @AV_CODEC_ID_R210, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %185

170:                                              ; preds = %164
  %171 = load i32, i32* %24, align 4
  %172 = and i32 %171, 1023
  %173 = sext i32 %172 to i64
  %174 = inttoptr i64 %173 to i8*
  store i8* %174, i8** %27, align 8
  %175 = load i32, i32* %24, align 4
  %176 = ashr i32 %175, 10
  %177 = and i32 %176, 1023
  %178 = sext i32 %177 to i64
  %179 = inttoptr i64 %178 to i8*
  store i8* %179, i8** %26, align 8
  %180 = load i32, i32* %24, align 4
  %181 = ashr i32 %180, 20
  %182 = and i32 %181, 1023
  %183 = sext i32 %182 to i64
  %184 = inttoptr i64 %183 to i8*
  store i8* %184, i8** %25, align 8
  br label %220

185:                                              ; preds = %164
  %186 = load i32, i32* %19, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %203

188:                                              ; preds = %185
  %189 = load i32, i32* %24, align 4
  %190 = and i32 %189, 1023
  %191 = sext i32 %190 to i64
  %192 = inttoptr i64 %191 to i8*
  store i8* %192, i8** %25, align 8
  %193 = load i32, i32* %24, align 4
  %194 = ashr i32 %193, 10
  %195 = and i32 %194, 1023
  %196 = sext i32 %195 to i64
  %197 = inttoptr i64 %196 to i8*
  store i8* %197, i8** %26, align 8
  %198 = load i32, i32* %24, align 4
  %199 = ashr i32 %198, 20
  %200 = and i32 %199, 1023
  %201 = sext i32 %200 to i64
  %202 = inttoptr i64 %201 to i8*
  store i8* %202, i8** %27, align 8
  br label %219

203:                                              ; preds = %185
  %204 = load i32, i32* %24, align 4
  %205 = ashr i32 %204, 2
  %206 = and i32 %205, 1023
  %207 = sext i32 %206 to i64
  %208 = inttoptr i64 %207 to i8*
  store i8* %208, i8** %27, align 8
  %209 = load i32, i32* %24, align 4
  %210 = ashr i32 %209, 12
  %211 = and i32 %210, 1023
  %212 = sext i32 %211 to i64
  %213 = inttoptr i64 %212 to i8*
  store i8* %213, i8** %26, align 8
  %214 = load i32, i32* %24, align 4
  %215 = ashr i32 %214, 22
  %216 = and i32 %215, 1023
  %217 = sext i32 %216 to i64
  %218 = inttoptr i64 %217 to i8*
  store i8* %218, i8** %25, align 8
  br label %219

219:                                              ; preds = %203, %188
  br label %220

220:                                              ; preds = %219, %170
  %221 = load i8*, i8** %25, align 8
  %222 = load i8**, i8*** %23, align 8
  %223 = getelementptr inbounds i8*, i8** %222, i32 1
  store i8** %223, i8*** %23, align 8
  store i8* %221, i8** %222, align 8
  %224 = load i8*, i8** %26, align 8
  %225 = load i8**, i8*** %21, align 8
  %226 = getelementptr inbounds i8*, i8** %225, i32 1
  store i8** %226, i8*** %21, align 8
  store i8* %224, i8** %225, align 8
  %227 = load i8*, i8** %27, align 8
  %228 = load i8**, i8*** %22, align 8
  %229 = getelementptr inbounds i8*, i8** %228, i32 1
  store i8** %229, i8*** %22, align 8
  store i8* %227, i8** %228, align 8
  br label %230

230:                                              ; preds = %220
  %231 = load i32, i32* %11, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %11, align 4
  br label %136

233:                                              ; preds = %136
  %234 = load i32, i32* %15, align 4
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = sub nsw i32 %234, %237
  %239 = load i32*, i32** %14, align 8
  %240 = sext i32 %238 to i64
  %241 = getelementptr inbounds i32, i32* %239, i64 %240
  store i32* %241, i32** %14, align 8
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 1
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 0
  %246 = load i32, i32* %245, align 4
  %247 = load i32*, i32** %16, align 8
  %248 = sext i32 %246 to i64
  %249 = getelementptr inbounds i32, i32* %247, i64 %248
  store i32* %249, i32** %16, align 8
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 1
  %252 = load i32*, i32** %251, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 1
  %254 = load i32, i32* %253, align 4
  %255 = load i32*, i32** %17, align 8
  %256 = sext i32 %254 to i64
  %257 = getelementptr inbounds i32, i32* %255, i64 %256
  store i32* %257, i32** %17, align 8
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 1
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 2
  %262 = load i32, i32* %261, align 4
  %263 = load i32*, i32** %18, align 8
  %264 = sext i32 %262 to i64
  %265 = getelementptr inbounds i32, i32* %263, i64 %264
  store i32* %265, i32** %18, align 8
  br label %266

266:                                              ; preds = %233
  %267 = load i32, i32* %10, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %10, align 4
  br label %123

269:                                              ; preds = %123
  %270 = load i32*, i32** %8, align 8
  store i32 1, i32* %270, align 4
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  store i32 %273, i32* %5, align 4
  br label %274

274:                                              ; preds = %269, %100, %90
  %275 = load i32, i32* %5, align 4
  ret i32 %275
}

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local i32 @MKTAG(i8 signext, i8 signext, i32, i8 signext) #1

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_11__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @av_le2ne32(i32) #1

declare dso_local i32 @av_be2ne32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
