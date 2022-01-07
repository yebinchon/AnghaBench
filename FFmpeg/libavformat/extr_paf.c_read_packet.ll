; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_paf.c_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_paf.c_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32*, i32, i32*, i64, i64, i32*, i32, i32*, i32, i32, i32*, i32* }
%struct.TYPE_8__ = type { i32*, i32, i32, i32, i32 }

@AVERROR_EOF = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAF_SOUND_SAMPLES = common dso_local global i32 0, align 4
@PAF_SOUND_FRAME_SIZE = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*)* @read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_packet(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %6, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %7, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %20, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %26, i32* %3, align 4
  br label %298

27:                                               ; preds = %2
  %28 = load i32*, i32** %7, align 8
  %29 = call i64 @avio_feof(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %32, i32* %3, align 4
  br label %298

33:                                               ; preds = %27
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %80

38:                                               ; preds = %33
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @av_new_packet(%struct.TYPE_8__* %39, i32 %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = call i32 @AVERROR(i32 %46)
  store i32 %47, i32* %3, align 4
  br label %298

48:                                               ; preds = %38
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 4
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @memcpy(i32* %51, i32* %54, i32 %57)
  %59 = load i32, i32* @PAF_SOUND_SAMPLES, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @PAF_SOUND_FRAME_SIZE, align 4
  %64 = sdiv i32 %62, %63
  %65 = mul nsw i32 %59, %64
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  store i32 1, i32* %74, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  store i32 0, i32* %76, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %3, align 4
  br label %298

80:                                               ; preds = %33
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  br label %100

89:                                               ; preds = %80
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 6
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %92, i64 %97
  %99 = load i32, i32* %98, align 4
  br label %100

100:                                              ; preds = %89, %85
  %101 = phi i32 [ %88, %85 ], [ %99, %89 ]
  store i32 %101, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %102

102:                                              ; preds = %213, %100
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %216

106:                                              ; preds = %102
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 7
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 8
  %112 = load i64, i64* %111, align 8
  %113 = icmp uge i64 %109, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %106
  %115 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %115, i32* %3, align 4
  br label %298

116:                                              ; preds = %106
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 9
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 7
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, 2147483647
  store i32 %125, i32* %9, align 4
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 9
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 7
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, -2147483648
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %184

136:                                              ; preds = %116
  %137 = load i32, i32* %9, align 4
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 10
  %143 = load i32, i32* %142, align 8
  %144 = sub nsw i32 %140, %143
  %145 = icmp sgt i32 %137, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %136
  %147 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %147, i32* %3, align 4
  br label %298

148:                                              ; preds = %136
  %149 = load i32*, i32** %7, align 8
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 11
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 10
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @avio_read(i32* %149, i32* %155, i32 %158)
  %160 = load i32, i32* %9, align 4
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 12
  %163 = load i32, i32* %162, align 8
  %164 = sub nsw i32 %163, 2
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 10
  %167 = load i32, i32* %166, align 8
  %168 = mul nsw i32 %164, %167
  %169 = icmp eq i32 %160, %168
  br i1 %169, label %170, label %183

170:                                              ; preds = %148
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 4
  %173 = load i32*, i32** %172, align 8
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 11
  %176 = load i32*, i32** %175, align 8
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @memcpy(i32* %173, i32* %176, i32 %179)
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 2
  store i32 1, i32* %182, align 8
  br label %183

183:                                              ; preds = %170, %148
  br label %208

184:                                              ; preds = %116
  %185 = load i32, i32* %9, align 4
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 13
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 10
  %191 = load i32, i32* %190, align 8
  %192 = sub nsw i32 %188, %191
  %193 = icmp sgt i32 %185, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %184
  %195 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %195, i32* %3, align 4
  br label %298

196:                                              ; preds = %184
  %197 = load i32*, i32** %7, align 8
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 14
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %9, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 10
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @avio_read(i32* %197, i32* %203, i32 %206)
  br label %208

208:                                              ; preds = %196, %183
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 7
  %211 = load i64, i64* %210, align 8
  %212 = add i64 %211, 1
  store i64 %212, i64* %210, align 8
  br label %213

213:                                              ; preds = %208
  %214 = load i32, i32* %11, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %11, align 4
  br label %102

216:                                              ; preds = %102
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 15
  %219 = load i32*, i32** %218, align 8
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %219, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 13
  %228 = load i32, i32* %227, align 4
  %229 = icmp sge i32 %225, %228
  br i1 %229, label %230, label %232

230:                                              ; preds = %216
  %231 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %231, i32* %3, align 4
  br label %298

232:                                              ; preds = %216
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 13
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 15
  %238 = load i32*, i32** %237, align 8
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %238, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = sub nsw i32 %235, %244
  store i32 %245, i32* %10, align 4
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %247 = load i32, i32* %10, align 4
  %248 = call i64 @av_new_packet(%struct.TYPE_8__* %246, i32 %247)
  %249 = icmp slt i64 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %232
  %251 = load i32, i32* @ENOMEM, align 4
  %252 = call i32 @AVERROR(i32 %251)
  store i32 %252, i32* %3, align 4
  br label %298

253:                                              ; preds = %232
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 2
  store i32 0, i32* %255, align 4
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 1
  store i32 1, i32* %257, align 8
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 0
  %260 = load i32*, i32** %259, align 8
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 14
  %263 = load i32*, i32** %262, align 8
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 15
  %266 = load i32*, i32** %265, align 8
  %267 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %266, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %263, i64 %273
  %275 = load i32, i32* %10, align 4
  %276 = call i32 @memcpy(i32* %260, i32* %274, i32 %275)
  %277 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 0
  %279 = load i32*, i32** %278, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 0
  %281 = load i32, i32* %280, align 4
  %282 = and i32 %281, 32
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %290

284:                                              ; preds = %253
  %285 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %286 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 4
  %288 = load i32, i32* %287, align 4
  %289 = or i32 %288, %285
  store i32 %289, i32* %287, align 4
  br label %290

290:                                              ; preds = %284, %253
  %291 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %292, align 8
  %295 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 8
  store i32 %297, i32* %3, align 4
  br label %298

298:                                              ; preds = %290, %250, %230, %194, %146, %114, %48, %45, %31, %25
  %299 = load i32, i32* %3, align 4
  ret i32 %299
}

declare dso_local i64 @avio_feof(i32*) #1

declare dso_local i64 @av_new_packet(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @avio_read(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
