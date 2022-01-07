; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g723_1dec.c_unpack_bitstream.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g723_1dec.c_unpack_bitstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i64, i32*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i8* }

@UNTRANSMITTED_FRAME = common dso_local global i32 0, align 4
@SID_FRAME = common dso_local global i32 0, align 4
@RATE_5300 = common dso_local global i64 0, align 8
@RATE_6300 = common dso_local global i64 0, align 8
@ACTIVE_FRAME = common dso_local global i32 0, align 4
@PITCH_MIN = common dso_local global i64 0, align 8
@SUBFRAMES = common dso_local global i32 0, align 4
@SUBFRAME_LEN = common dso_local global i32 0, align 4
@GAIN_LEVELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32)* @unpack_bitstream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unpack_bitstream(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @init_get_bits8(i32* %8, i32* %14, i32 %15)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %13, align 4
  store i32 %20, i32* %4, align 4
  br label %444

21:                                               ; preds = %3
  %22 = call i32 @get_bits(i32* %8, i32 2)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* @UNTRANSMITTED_FRAME, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  store i32 0, i32* %4, align 4
  br label %444

29:                                               ; preds = %21
  %30 = call i32 @get_bits(i32* %8, i32 8)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  store i32 %30, i32* %34, align 4
  %35 = call i32 @get_bits(i32* %8, i32 8)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  store i32 %35, i32* %39, align 4
  %40 = call i32 @get_bits(i32* %8, i32 8)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 %40, i32* %44, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %47, label %57

47:                                               ; preds = %29
  %48 = load i32, i32* @SID_FRAME, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = call i32 @get_bits(i32* %8, i32 6)
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 %51, i32* %56, align 8
  store i32 0, i32* %4, align 4
  br label %444

57:                                               ; preds = %29
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i64, i64* @RATE_5300, align 8
  br label %64

62:                                               ; preds = %57
  %63 = load i64, i64* @RATE_6300, align 8
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i64 [ %61, %60 ], [ %63, %62 ]
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load i32, i32* @ACTIVE_FRAME, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = call i32 @get_bits(i32* %8, i32 7)
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  store i32 %71, i32* %75, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp sgt i32 %80, 123
  br i1 %81, label %82, label %83

82:                                               ; preds = %64
  store i32 -1, i32* %4, align 4
  br label %444

83:                                               ; preds = %64
  %84 = load i64, i64* @PITCH_MIN, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %84
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %88, align 4
  %93 = call i32 @get_bits(i32* %8, i32 2)
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  store i32 %93, i32* %98, align 4
  %99 = call i32 @get_bits(i32* %8, i32 7)
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  store i32 %99, i32* %103, align 4
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp sgt i32 %108, 123
  br i1 %109, label %110, label %111

110:                                              ; preds = %83
  store i32 -1, i32* %4, align 4
  br label %444

111:                                              ; preds = %83
  %112 = load i64, i64* @PITCH_MIN, align 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %112
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %116, align 4
  %121 = call i32 @get_bits(i32* %8, i32 2)
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 3
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  store i32 %121, i32* %126, align 4
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 3
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i64 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  store i32 1, i32* %131, align 4
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 3
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i64 2
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  store i32 1, i32* %136, align 4
  store i32 0, i32* %12, align 4
  br label %137

137:                                              ; preds = %223, %111
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* @SUBFRAMES, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %226

141:                                              ; preds = %137
  %142 = call i32 @get_bits(i32* %8, i32 12)
  store i32 %142, i32* %10, align 4
  store i32 170, i32* %9, align 4
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 3
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = load i32, i32* %12, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 2
  store i32 0, i32* %149, align 8
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @RATE_6300, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %179

155:                                              ; preds = %141
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %12, align 4
  %160 = ashr i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %158, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @SUBFRAME_LEN, align 4
  %165 = sub nsw i32 %164, 2
  %166 = icmp slt i32 %163, %165
  br i1 %166, label %167, label %179

167:                                              ; preds = %155
  %168 = load i32, i32* %10, align 4
  %169 = ashr i32 %168, 11
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 3
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %171, align 8
  %173 = load i32, i32* %12, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 2
  store i32 %169, i32* %176, align 8
  %177 = load i32, i32* %10, align 4
  %178 = and i32 %177, 2047
  store i32 %178, i32* %10, align 4
  store i32 85, i32* %9, align 4
  br label %179

179:                                              ; preds = %167, %155, %141
  %180 = load i32, i32* %10, align 4
  %181 = load i32, i32* @GAIN_LEVELS, align 4
  %182 = call i8* @FASTDIV(i32 %180, i32 %181)
  %183 = ptrtoint i8* %182 to i32
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 3
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = load i32, i32* %12, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 3
  store i32 %183, i32* %190, align 4
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 3
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %192, align 8
  %194 = load i32, i32* %12, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %9, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %221

201:                                              ; preds = %179
  %202 = load i32, i32* %10, align 4
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 3
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %204, align 8
  %206 = load i32, i32* %12, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @GAIN_LEVELS, align 4
  %212 = mul nsw i32 %210, %211
  %213 = sub nsw i32 %202, %212
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 3
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %215, align 8
  %217 = load i32, i32* %12, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 0
  store i32 %213, i32* %220, align 8
  br label %222

221:                                              ; preds = %179
  store i32 -1, i32* %4, align 4
  br label %444

222:                                              ; preds = %201
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %12, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %12, align 4
  br label %137

226:                                              ; preds = %137
  %227 = call i8* @get_bits1(i32* %8)
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 3
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i64 0
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 6
  store i8* %227, i8** %232, align 8
  %233 = call i8* @get_bits1(i32* %8)
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 3
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i64 1
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 6
  store i8* %233, i8** %238, align 8
  %239 = call i8* @get_bits1(i32* %8)
  %240 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 3
  %242 = load %struct.TYPE_4__*, %struct.TYPE_4__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i64 2
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 6
  store i8* %239, i8** %244, align 8
  %245 = call i8* @get_bits1(i32* %8)
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 3
  %248 = load %struct.TYPE_4__*, %struct.TYPE_4__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i64 3
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 6
  store i8* %245, i8** %250, align 8
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @RATE_6300, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %394

256:                                              ; preds = %226
  %257 = call i32 @skip_bits1(i32* %8)
  %258 = call i32 @get_bits(i32* %8, i32 13)
  store i32 %258, i32* %10, align 4
  %259 = load i32, i32* %10, align 4
  %260 = sdiv i32 %259, 810
  %261 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 3
  %263 = load %struct.TYPE_4__*, %struct.TYPE_4__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i64 0
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 4
  store i32 %260, i32* %265, align 8
  %266 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 3
  %268 = load %struct.TYPE_4__*, %struct.TYPE_4__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i64 0
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 8
  %272 = mul nsw i32 %271, 810
  %273 = load i32, i32* %10, align 4
  %274 = sub nsw i32 %273, %272
  store i32 %274, i32* %10, align 4
  %275 = load i32, i32* %10, align 4
  %276 = call i8* @FASTDIV(i32 %275, i32 90)
  %277 = ptrtoint i8* %276 to i32
  %278 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i32 0, i32 3
  %280 = load %struct.TYPE_4__*, %struct.TYPE_4__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i64 1
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 4
  store i32 %277, i32* %282, align 8
  %283 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i32 0, i32 3
  %285 = load %struct.TYPE_4__*, %struct.TYPE_4__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i64 1
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 4
  %288 = load i32, i32* %287, align 8
  %289 = mul nsw i32 %288, 90
  %290 = load i32, i32* %10, align 4
  %291 = sub nsw i32 %290, %289
  store i32 %291, i32* %10, align 4
  %292 = load i32, i32* %10, align 4
  %293 = call i8* @FASTDIV(i32 %292, i32 9)
  %294 = ptrtoint i8* %293 to i32
  %295 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %295, i32 0, i32 3
  %297 = load %struct.TYPE_4__*, %struct.TYPE_4__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i64 2
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 4
  store i32 %294, i32* %299, align 8
  %300 = load i32, i32* %10, align 4
  %301 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %301, i32 0, i32 3
  %303 = load %struct.TYPE_4__*, %struct.TYPE_4__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i64 2
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i32 0, i32 4
  %306 = load i32, i32* %305, align 8
  %307 = mul nsw i32 %306, 9
  %308 = sub nsw i32 %300, %307
  %309 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %309, i32 0, i32 3
  %311 = load %struct.TYPE_4__*, %struct.TYPE_4__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %311, i64 3
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i32 0, i32 4
  store i32 %308, i32* %313, align 8
  %314 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i32 0, i32 3
  %316 = load %struct.TYPE_4__*, %struct.TYPE_4__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i64 0
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i32 0, i32 4
  %319 = load i32, i32* %318, align 8
  %320 = shl i32 %319, 16
  %321 = call i32 @get_bits(i32* %8, i32 16)
  %322 = add nsw i32 %320, %321
  %323 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %323, i32 0, i32 3
  %325 = load %struct.TYPE_4__*, %struct.TYPE_4__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %325, i64 0
  %327 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %326, i32 0, i32 4
  store i32 %322, i32* %327, align 8
  %328 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %328, i32 0, i32 3
  %330 = load %struct.TYPE_4__*, %struct.TYPE_4__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %330, i64 1
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %331, i32 0, i32 4
  %333 = load i32, i32* %332, align 8
  %334 = shl i32 %333, 14
  %335 = call i32 @get_bits(i32* %8, i32 14)
  %336 = add nsw i32 %334, %335
  %337 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %338 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %337, i32 0, i32 3
  %339 = load %struct.TYPE_4__*, %struct.TYPE_4__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %339, i64 1
  %341 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %340, i32 0, i32 4
  store i32 %336, i32* %341, align 8
  %342 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %343 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %342, i32 0, i32 3
  %344 = load %struct.TYPE_4__*, %struct.TYPE_4__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %344, i64 2
  %346 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %345, i32 0, i32 4
  %347 = load i32, i32* %346, align 8
  %348 = shl i32 %347, 16
  %349 = call i32 @get_bits(i32* %8, i32 16)
  %350 = add nsw i32 %348, %349
  %351 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %351, i32 0, i32 3
  %353 = load %struct.TYPE_4__*, %struct.TYPE_4__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %353, i64 2
  %355 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %354, i32 0, i32 4
  store i32 %350, i32* %355, align 8
  %356 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %356, i32 0, i32 3
  %358 = load %struct.TYPE_4__*, %struct.TYPE_4__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %358, i64 3
  %360 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %359, i32 0, i32 4
  %361 = load i32, i32* %360, align 8
  %362 = shl i32 %361, 14
  %363 = call i32 @get_bits(i32* %8, i32 14)
  %364 = add nsw i32 %362, %363
  %365 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %366 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %365, i32 0, i32 3
  %367 = load %struct.TYPE_4__*, %struct.TYPE_4__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %367, i64 3
  %369 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %368, i32 0, i32 4
  store i32 %364, i32* %369, align 8
  %370 = call i32 @get_bits(i32* %8, i32 6)
  %371 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %372 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %371, i32 0, i32 3
  %373 = load %struct.TYPE_4__*, %struct.TYPE_4__** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %373, i64 0
  %375 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %374, i32 0, i32 5
  store i32 %370, i32* %375, align 4
  %376 = call i32 @get_bits(i32* %8, i32 5)
  %377 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %378 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %377, i32 0, i32 3
  %379 = load %struct.TYPE_4__*, %struct.TYPE_4__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %379, i64 1
  %381 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %380, i32 0, i32 5
  store i32 %376, i32* %381, align 4
  %382 = call i32 @get_bits(i32* %8, i32 6)
  %383 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %384 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %383, i32 0, i32 3
  %385 = load %struct.TYPE_4__*, %struct.TYPE_4__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %385, i64 2
  %387 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %386, i32 0, i32 5
  store i32 %382, i32* %387, align 4
  %388 = call i32 @get_bits(i32* %8, i32 5)
  %389 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %390 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %389, i32 0, i32 3
  %391 = load %struct.TYPE_4__*, %struct.TYPE_4__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %391, i64 3
  %393 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %392, i32 0, i32 5
  store i32 %388, i32* %393, align 4
  br label %443

394:                                              ; preds = %226
  %395 = call i32 @get_bits(i32* %8, i32 12)
  %396 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %397 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %396, i32 0, i32 3
  %398 = load %struct.TYPE_4__*, %struct.TYPE_4__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %398, i64 0
  %400 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %399, i32 0, i32 4
  store i32 %395, i32* %400, align 8
  %401 = call i32 @get_bits(i32* %8, i32 12)
  %402 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %403 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %402, i32 0, i32 3
  %404 = load %struct.TYPE_4__*, %struct.TYPE_4__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %404, i64 1
  %406 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %405, i32 0, i32 4
  store i32 %401, i32* %406, align 8
  %407 = call i32 @get_bits(i32* %8, i32 12)
  %408 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %409 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %408, i32 0, i32 3
  %410 = load %struct.TYPE_4__*, %struct.TYPE_4__** %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %410, i64 2
  %412 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %411, i32 0, i32 4
  store i32 %407, i32* %412, align 8
  %413 = call i32 @get_bits(i32* %8, i32 12)
  %414 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %415 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %414, i32 0, i32 3
  %416 = load %struct.TYPE_4__*, %struct.TYPE_4__** %415, align 8
  %417 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %416, i64 3
  %418 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %417, i32 0, i32 4
  store i32 %413, i32* %418, align 8
  %419 = call i32 @get_bits(i32* %8, i32 4)
  %420 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %421 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %420, i32 0, i32 3
  %422 = load %struct.TYPE_4__*, %struct.TYPE_4__** %421, align 8
  %423 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %422, i64 0
  %424 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %423, i32 0, i32 5
  store i32 %419, i32* %424, align 4
  %425 = call i32 @get_bits(i32* %8, i32 4)
  %426 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %427 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %426, i32 0, i32 3
  %428 = load %struct.TYPE_4__*, %struct.TYPE_4__** %427, align 8
  %429 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %428, i64 1
  %430 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %429, i32 0, i32 5
  store i32 %425, i32* %430, align 4
  %431 = call i32 @get_bits(i32* %8, i32 4)
  %432 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %433 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %432, i32 0, i32 3
  %434 = load %struct.TYPE_4__*, %struct.TYPE_4__** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %434, i64 2
  %436 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %435, i32 0, i32 5
  store i32 %431, i32* %436, align 4
  %437 = call i32 @get_bits(i32* %8, i32 4)
  %438 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %439 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %438, i32 0, i32 3
  %440 = load %struct.TYPE_4__*, %struct.TYPE_4__** %439, align 8
  %441 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %440, i64 3
  %442 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %441, i32 0, i32 5
  store i32 %437, i32* %442, align 4
  br label %443

443:                                              ; preds = %394, %256
  store i32 0, i32* %4, align 4
  br label %444

444:                                              ; preds = %443, %221, %110, %82, %47, %25, %19
  %445 = load i32, i32* %4, align 4
  ret i32 %445
}

declare dso_local i32 @init_get_bits8(i32*, i32*, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i8* @FASTDIV(i32, i32) #1

declare dso_local i8* @get_bits1(i32*) #1

declare dso_local i32 @skip_bits1(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
