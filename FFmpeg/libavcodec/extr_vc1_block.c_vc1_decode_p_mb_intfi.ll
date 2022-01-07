; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc1_block.c_vc1_decode_p_mb_intfi.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc1_block.c_vc1_decode_p_mb_intfi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_27__ = type { i32, i32, i32*, i64, i32, i32, i32, i32**, i64, i32, i64, i32*, i32*, i64, i32, i32**, %struct.TYPE_24__*, %struct.TYPE_28__, i32, i32, %struct.TYPE_23__*, %struct.TYPE_22__, i32, i32, i32*, %struct.TYPE_21__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_28__ = type { i32, i32, i32, i32, i64*, i64*, i32, i32, %struct.TYPE_26__*, i64*, i64**, %struct.TYPE_25__, i32, i32, i32, i32*, i32, i32*, i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32*, i32*, i64*** }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32 (i32)* }
%struct.TYPE_21__ = type { i32 }

@VC1_IF_MBMODE_VLC_BITS = common dso_local global i32 0, align 4
@MB_TYPE_INTRA = common dso_local global i32 0, align 4
@VC1_ICBPCY_VLC_BITS = common dso_local global i32 0, align 4
@block_map = common dso_local global i64* null, align 8
@CONFIG_GRAY = common dso_local global i64 0, align 8
@AV_CODEC_FLAG_GRAY = common dso_local global i32 0, align 4
@MB_TYPE_16x16 = common dso_local global i32 0, align 4
@VC1_4MV_BLOCK_PATTERN_VLC_BITS = common dso_local global i32 0, align 4
@VC1_CBPCY_P_VLC_BITS = common dso_local global i32 0, align 4
@ff_vc1_ttmb_vlc = common dso_local global %struct.TYPE_20__* null, align 8
@VC1_TTMB_VLC_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*)* @vc1_decode_p_mb_intfi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc1_decode_p_mb_intfi(%struct.TYPE_27__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca i32*, align 8
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
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %3, align 8
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %24, i32 0, i32 17
  store %struct.TYPE_28__* %25, %struct.TYPE_28__** %4, align 8
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %26, i32 0, i32 12
  store i32* %27, i32** %5, align 8
  %28 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %33, %36
  %38 = add nsw i32 %30, %37
  store i32 %38, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %39 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 1, i32* %16, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %10, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %46, i32 0, i32 25
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @VC1_IF_MBMODE_VLC_BITS, align 4
  %52 = call i32 @get_vlc2(i32* %45, i32 %50, i32 %51, i32 2)
  store i32 %52, i32* %23, align 4
  %53 = load i32, i32* %23, align 4
  %54 = icmp sle i32 %53, 1
  br i1 %54, label %55, label %373

55:                                               ; preds = %1
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  store i32 63, i32* %63, align 4
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %64, i32 0, i32 3
  store i32 1, i32* %65, align 4
  %66 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %66, i32 0, i32 11
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 2
  %69 = load i64***, i64**** %68, align 8
  %70 = getelementptr inbounds i64**, i64*** %69, i64 1
  %71 = load i64**, i64*** %70, align 8
  %72 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %72, i32 0, i32 4
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = add i64 %76, %79
  %81 = getelementptr inbounds i64*, i64** %71, i64 %80
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 0
  store i64 0, i64* %83, align 8
  %84 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %84, i32 0, i32 11
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 2
  %87 = load i64***, i64**** %86, align 8
  %88 = getelementptr inbounds i64**, i64*** %87, i64 1
  %89 = load i64**, i64*** %88, align 8
  %90 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %90, i32 0, i32 4
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = add i64 %94, %97
  %99 = getelementptr inbounds i64*, i64** %89, i64 %98
  %100 = load i64*, i64** %99, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 1
  store i64 0, i64* %101, align 8
  %102 = load i32, i32* @MB_TYPE_INTRA, align 4
  %103 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %103, i32 0, i32 11
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %107, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %106, i64 %112
  store i32 %102, i32* %113, align 4
  %114 = call i32 (...) @GET_MQUANT()
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %116, i32 0, i32 11
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %115, i32* %122, align 4
  %123 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %123, i32 0, i32 17
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %10, align 4
  %127 = call i64 @FFABS(i32 %126)
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %130, i32 0, i32 18
  store i32 %129, i32* %131, align 8
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %132, i32 0, i32 15
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = call i64 @FFABS(i32 %135)
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %139, i32 0, i32 16
  store i32 %138, i32* %140, align 8
  %141 = load i32*, i32** %5, align 8
  %142 = call i32 @get_bits1(i32* %141)
  %143 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %143, i32 0, i32 24
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  store i32 %142, i32* %148, align 4
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %149, i32 0, i32 17
  %151 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %150, i32 0, i32 14
  store i32 %142, i32* %151, align 8
  %152 = load i32, i32* %23, align 4
  %153 = and i32 %152, 1
  store i32 %153, i32* %12, align 4
  %154 = load i32, i32* %12, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %168

156:                                              ; preds = %55
  %157 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %157, i32 0, i32 17
  %159 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %158, i32 0, i32 12
  %160 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %160, i32 0, i32 16
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @VC1_ICBPCY_VLC_BITS, align 4
  %166 = call i32 @get_vlc2(i32* %159, i32 %164, i32 %165, i32 2)
  %167 = add nsw i32 1, %166
  store i32 %167, i32* %8, align 4
  br label %168

168:                                              ; preds = %156, %55
  store i32 0, i32* %17, align 4
  store i32 0, i32* %6, align 4
  br label %169

169:                                              ; preds = %369, %168
  %170 = load i32, i32* %6, align 4
  %171 = icmp slt i32 %170, 6
  br i1 %171, label %172, label %372

172:                                              ; preds = %169
  %173 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %173, i32 0, i32 6
  store i32 0, i32* %174, align 8
  %175 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %175, i32 0, i32 5
  store i32 0, i32* %176, align 4
  %177 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %177, i32 0, i32 7
  %179 = load i32**, i32*** %178, align 8
  %180 = getelementptr inbounds i32*, i32** %179, i64 0
  %181 = load i32*, i32** %180, align 8
  %182 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %182, i32 0, i32 4
  %184 = load i64*, i64** %183, align 8
  %185 = load i32, i32* %6, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %184, i64 %186
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds i32, i32* %181, i64 %188
  store i32 1, i32* %189, align 4
  %190 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %190, i32 0, i32 10
  %192 = load i64**, i64*** %191, align 8
  %193 = getelementptr inbounds i64*, i64** %192, i64 0
  %194 = load i64*, i64** %193, align 8
  %195 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %195, i32 0, i32 4
  %197 = load i64*, i64** %196, align 8
  %198 = load i32, i32* %6, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i64, i64* %197, i64 %199
  %201 = load i64, i64* %200, align 8
  %202 = getelementptr inbounds i64, i64* %194, i64 %201
  store i64 0, i64* %202, align 8
  %203 = load i32, i32* %6, align 4
  %204 = ashr i32 %203, 2
  %205 = load i32, i32* %17, align 4
  %206 = add nsw i32 %205, %204
  store i32 %206, i32* %17, align 4
  %207 = load i32, i32* %8, align 4
  %208 = load i32, i32* %6, align 4
  %209 = sub nsw i32 5, %208
  %210 = ashr i32 %207, %209
  %211 = and i32 %210, 1
  store i32 %211, i32* %15, align 4
  %212 = load i32, i32* %6, align 4
  %213 = icmp eq i32 %212, 2
  br i1 %213, label %222, label %214

214:                                              ; preds = %172
  %215 = load i32, i32* %6, align 4
  %216 = icmp eq i32 %215, 3
  br i1 %216, label %222, label %217

217:                                              ; preds = %214
  %218 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %218, i32 0, i32 13
  %220 = load i32, i32* %219, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %247, label %222

222:                                              ; preds = %217, %214, %172
  %223 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %223, i32 0, i32 7
  %225 = load i32**, i32*** %224, align 8
  %226 = getelementptr inbounds i32*, i32** %225, i64 0
  %227 = load i32*, i32** %226, align 8
  %228 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %228, i32 0, i32 4
  %230 = load i64*, i64** %229, align 8
  %231 = load i32, i32* %6, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i64, i64* %230, i64 %232
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %235, i32 0, i32 5
  %237 = load i64*, i64** %236, align 8
  %238 = load i32, i32* %6, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i64, i64* %237, i64 %239
  %241 = load i64, i64* %240, align 8
  %242 = sub i64 %234, %241
  %243 = getelementptr inbounds i32, i32* %227, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %245, i32 0, i32 5
  store i32 %244, i32* %246, align 4
  br label %247

247:                                              ; preds = %222, %217
  %248 = load i32, i32* %6, align 4
  %249 = icmp eq i32 %248, 1
  br i1 %249, label %258, label %250

250:                                              ; preds = %247
  %251 = load i32, i32* %6, align 4
  %252 = icmp eq i32 %251, 3
  br i1 %252, label %258, label %253

253:                                              ; preds = %250
  %254 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %276

258:                                              ; preds = %253, %250, %247
  %259 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %259, i32 0, i32 7
  %261 = load i32**, i32*** %260, align 8
  %262 = getelementptr inbounds i32*, i32** %261, i64 0
  %263 = load i32*, i32** %262, align 8
  %264 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %264, i32 0, i32 4
  %266 = load i64*, i64** %265, align 8
  %267 = load i32, i32* %6, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i64, i64* %266, i64 %268
  %270 = load i64, i64* %269, align 8
  %271 = sub i64 %270, 1
  %272 = getelementptr inbounds i32, i32* %263, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %274, i32 0, i32 6
  store i32 %273, i32* %275, align 8
  br label %276

276:                                              ; preds = %258, %253
  %277 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %278 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %278, i32 0, i32 15
  %280 = load i32**, i32*** %279, align 8
  %281 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %281, i32 0, i32 8
  %283 = load i64, i64* %282, align 8
  %284 = getelementptr inbounds i32*, i32** %280, i64 %283
  %285 = load i32*, i32** %284, align 8
  %286 = load i64*, i64** @block_map, align 8
  %287 = load i32, i32* %6, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i64, i64* %286, i64 %288
  %290 = load i64, i64* %289, align 8
  %291 = getelementptr inbounds i32, i32* %285, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* %6, align 4
  %294 = load i32, i32* %15, align 4
  %295 = load i32, i32* %10, align 4
  %296 = load i32, i32* %6, align 4
  %297 = and i32 %296, 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %303

299:                                              ; preds = %276
  %300 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %301 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %300, i32 0, i32 23
  %302 = load i32, i32* %301, align 4
  br label %307

303:                                              ; preds = %276
  %304 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %304, i32 0, i32 22
  %306 = load i32, i32* %305, align 8
  br label %307

307:                                              ; preds = %303, %299
  %308 = phi i32 [ %302, %299 ], [ %306, %303 ]
  %309 = call i32 @vc1_decode_intra_block(%struct.TYPE_27__* %277, i32 %292, i32 %293, i32 %294, i32 %295, i32 %308)
  %310 = load i64, i64* @CONFIG_GRAY, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %325

312:                                              ; preds = %307
  %313 = load i32, i32* %6, align 4
  %314 = icmp sgt i32 %313, 3
  br i1 %314, label %315, label %325

315:                                              ; preds = %312
  %316 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %316, i32 0, i32 8
  %318 = load %struct.TYPE_26__*, %struct.TYPE_26__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* @AV_CODEC_FLAG_GRAY, align 4
  %322 = and i32 %320, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %325

324:                                              ; preds = %315
  br label %369

325:                                              ; preds = %315, %312, %307
  %326 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %327 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %326, i32 0, i32 21
  %328 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %327, i32 0, i32 0
  %329 = load i32 (i32)*, i32 (i32)** %328, align 8
  %330 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %331 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %330, i32 0, i32 15
  %332 = load i32**, i32*** %331, align 8
  %333 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %334 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %333, i32 0, i32 8
  %335 = load i64, i64* %334, align 8
  %336 = getelementptr inbounds i32*, i32** %332, i64 %335
  %337 = load i32*, i32** %336, align 8
  %338 = load i64*, i64** @block_map, align 8
  %339 = load i32, i32* %6, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i64, i64* %338, i64 %340
  %342 = load i64, i64* %341, align 8
  %343 = getelementptr inbounds i32, i32* %337, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = call i32 %329(i32 %344)
  %346 = load i32, i32* %6, align 4
  %347 = and i32 %346, 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %350

349:                                              ; preds = %325
  br label %362

350:                                              ; preds = %325
  %351 = load i32, i32* %6, align 4
  %352 = and i32 %351, 1
  %353 = mul nsw i32 %352, 8
  %354 = load i32, i32* %6, align 4
  %355 = and i32 %354, 2
  %356 = mul nsw i32 %355, 4
  %357 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %358 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %357, i32 0, i32 6
  %359 = load i32, i32* %358, align 8
  %360 = mul nsw i32 %356, %359
  %361 = add nsw i32 %353, %360
  br label %362

362:                                              ; preds = %350, %349
  %363 = phi i32 [ 0, %349 ], [ %361, %350 ]
  store i32 %363, i32* %18, align 4
  %364 = load i32, i32* %6, align 4
  %365 = shl i32 %364, 2
  %366 = shl i32 15, %365
  %367 = load i32, i32* %20, align 4
  %368 = or i32 %367, %366
  store i32 %368, i32* %20, align 4
  br label %369

369:                                              ; preds = %362, %324
  %370 = load i32, i32* %6, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %6, align 4
  br label %169

372:                                              ; preds = %169
  br label %686

373:                                              ; preds = %1
  %374 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %375 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %374, i32 0, i32 2
  %376 = load i32*, i32** %375, align 8
  %377 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %378 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %376, i64 %380
  store i32 0, i32* %381, align 4
  %382 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %383 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %382, i32 0, i32 3
  store i32 0, i32* %383, align 4
  %384 = load i32, i32* @MB_TYPE_16x16, align 4
  %385 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %386 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %385, i32 0, i32 11
  %387 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %386, i32 0, i32 1
  %388 = load i32*, i32** %387, align 8
  %389 = load i32, i32* %7, align 4
  %390 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %391 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %390, i32 0, i32 4
  %392 = load i32, i32* %391, align 8
  %393 = add nsw i32 %389, %392
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i32, i32* %388, i64 %394
  store i32 %384, i32* %395, align 4
  store i32 0, i32* %6, align 4
  br label %396

396:                                              ; preds = %413, %373
  %397 = load i32, i32* %6, align 4
  %398 = icmp slt i32 %397, 6
  br i1 %398, label %399, label %416

399:                                              ; preds = %396
  %400 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %401 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %400, i32 0, i32 7
  %402 = load i32**, i32*** %401, align 8
  %403 = getelementptr inbounds i32*, i32** %402, i64 0
  %404 = load i32*, i32** %403, align 8
  %405 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %406 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %405, i32 0, i32 4
  %407 = load i64*, i64** %406, align 8
  %408 = load i32, i32* %6, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i64, i64* %407, i64 %409
  %411 = load i64, i64* %410, align 8
  %412 = getelementptr inbounds i32, i32* %404, i64 %411
  store i32 0, i32* %412, align 4
  br label %413

413:                                              ; preds = %399
  %414 = load i32, i32* %6, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %6, align 4
  br label %396

416:                                              ; preds = %396
  %417 = load i32, i32* %23, align 4
  %418 = icmp sle i32 %417, 5
  br i1 %418, label %419, label %450

419:                                              ; preds = %416
  store i32 0, i32* %19, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  %420 = load i32, i32* %23, align 4
  %421 = and i32 %420, 1
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %426

423:                                              ; preds = %419
  %424 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %425 = call i32 @get_mvdata_interlaced(%struct.TYPE_27__* %424, i32* %13, i32* %14, i32* %19)
  br label %426

426:                                              ; preds = %423, %419
  %427 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %428 = load i32, i32* %13, align 4
  %429 = load i32, i32* %14, align 4
  %430 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %431 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %430, i32 0, i32 19
  %432 = load i32, i32* %431, align 4
  %433 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %434 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %433, i32 0, i32 18
  %435 = load i32, i32* %434, align 8
  %436 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %437 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %436, i32 0, i32 7
  %438 = load i32**, i32*** %437, align 8
  %439 = getelementptr inbounds i32*, i32** %438, i64 0
  %440 = load i32*, i32** %439, align 8
  %441 = load i32, i32* %19, align 4
  %442 = call i32 @ff_vc1_pred_mv(%struct.TYPE_27__* %427, i32 0, i32 %428, i32 %429, i32 1, i32 %432, i32 %435, i32* %440, i32 %441, i32 0)
  %443 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %444 = call i32 @ff_vc1_mc_1mv(%struct.TYPE_27__* %443, i32 0)
  %445 = load i32, i32* %23, align 4
  %446 = and i32 %445, 2
  %447 = icmp ne i32 %446, 0
  %448 = xor i1 %447, true
  %449 = zext i1 %448 to i32
  store i32 %449, i32* %12, align 4
  br label %504

450:                                              ; preds = %416
  %451 = load i32*, i32** %5, align 8
  %452 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %453 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %452, i32 0, i32 20
  %454 = load %struct.TYPE_23__*, %struct.TYPE_23__** %453, align 8
  %455 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 4
  %457 = load i32, i32* @VC1_4MV_BLOCK_PATTERN_VLC_BITS, align 4
  %458 = call i32 @get_vlc2(i32* %451, i32 %456, i32 %457, i32 1)
  %459 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %460 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %459, i32 0, i32 9
  store i32 %458, i32* %460, align 8
  store i32 0, i32* %6, align 4
  br label %461

461:                                              ; preds = %496, %450
  %462 = load i32, i32* %6, align 4
  %463 = icmp slt i32 %462, 4
  br i1 %463, label %464, label %499

464:                                              ; preds = %461
  store i32 0, i32* %19, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  %465 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %466 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %465, i32 0, i32 9
  %467 = load i32, i32* %466, align 8
  %468 = load i32, i32* %6, align 4
  %469 = ashr i32 8, %468
  %470 = and i32 %467, %469
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %475

472:                                              ; preds = %464
  %473 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %474 = call i32 @get_mvdata_interlaced(%struct.TYPE_27__* %473, i32* %13, i32* %14, i32* %19)
  br label %475

475:                                              ; preds = %472, %464
  %476 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %477 = load i32, i32* %6, align 4
  %478 = load i32, i32* %13, align 4
  %479 = load i32, i32* %14, align 4
  %480 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %481 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %480, i32 0, i32 19
  %482 = load i32, i32* %481, align 4
  %483 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %484 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %483, i32 0, i32 18
  %485 = load i32, i32* %484, align 8
  %486 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %487 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %486, i32 0, i32 7
  %488 = load i32**, i32*** %487, align 8
  %489 = getelementptr inbounds i32*, i32** %488, i64 0
  %490 = load i32*, i32** %489, align 8
  %491 = load i32, i32* %19, align 4
  %492 = call i32 @ff_vc1_pred_mv(%struct.TYPE_27__* %476, i32 %477, i32 %478, i32 %479, i32 0, i32 %482, i32 %485, i32* %490, i32 %491, i32 0)
  %493 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %494 = load i32, i32* %6, align 4
  %495 = call i32 @ff_vc1_mc_4mv_luma(%struct.TYPE_27__* %493, i32 %494, i32 0, i32 0)
  br label %496

496:                                              ; preds = %475
  %497 = load i32, i32* %6, align 4
  %498 = add nsw i32 %497, 1
  store i32 %498, i32* %6, align 4
  br label %461

499:                                              ; preds = %461
  %500 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %501 = call i32 @ff_vc1_mc_4mv_chroma(%struct.TYPE_27__* %500, i32 0)
  %502 = load i32, i32* %23, align 4
  %503 = and i32 %502, 1
  store i32 %503, i32* %12, align 4
  br label %504

504:                                              ; preds = %499, %426
  %505 = load i32, i32* %12, align 4
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %519

507:                                              ; preds = %504
  %508 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %509 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %508, i32 0, i32 17
  %510 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %509, i32 0, i32 12
  %511 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %512 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %511, i32 0, i32 16
  %513 = load %struct.TYPE_24__*, %struct.TYPE_24__** %512, align 8
  %514 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %513, i32 0, i32 0
  %515 = load i32, i32* %514, align 4
  %516 = load i32, i32* @VC1_CBPCY_P_VLC_BITS, align 4
  %517 = call i32 @get_vlc2(i32* %510, i32 %515, i32 %516, i32 2)
  %518 = add nsw i32 1, %517
  store i32 %518, i32* %8, align 4
  br label %519

519:                                              ; preds = %507, %504
  %520 = load i32, i32* %8, align 4
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %522, label %524

522:                                              ; preds = %519
  %523 = call i32 (...) @GET_MQUANT()
  br label %524

524:                                              ; preds = %522, %519
  %525 = load i32, i32* %10, align 4
  %526 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %527 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %526, i32 0, i32 11
  %528 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %527, i32 0, i32 0
  %529 = load i32*, i32** %528, align 8
  %530 = load i32, i32* %7, align 4
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds i32, i32* %529, i64 %531
  store i32 %525, i32* %532, align 4
  %533 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %534 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %533, i32 0, i32 14
  %535 = load i32, i32* %534, align 8
  %536 = icmp ne i32 %535, 0
  br i1 %536, label %551, label %537

537:                                              ; preds = %524
  %538 = load i32, i32* %8, align 4
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %540, label %551

540:                                              ; preds = %537
  %541 = load i32*, i32** %5, align 8
  %542 = load %struct.TYPE_20__*, %struct.TYPE_20__** @ff_vc1_ttmb_vlc, align 8
  %543 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %544 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %543, i32 0, i32 10
  %545 = load i64, i64* %544, align 8
  %546 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %542, i64 %545
  %547 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %546, i32 0, i32 0
  %548 = load i32, i32* %547, align 4
  %549 = load i32, i32* @VC1_TTMB_VLC_BITS, align 4
  %550 = call i32 @get_vlc2(i32* %541, i32 %548, i32 %549, i32 2)
  store i32 %550, i32* %11, align 4
  br label %551

551:                                              ; preds = %540, %537, %524
  store i32 0, i32* %17, align 4
  store i32 0, i32* %6, align 4
  br label %552

552:                                              ; preds = %682, %551
  %553 = load i32, i32* %6, align 4
  %554 = icmp slt i32 %553, 6
  br i1 %554, label %555, label %685

555:                                              ; preds = %552
  %556 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %557 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %556, i32 0, i32 10
  %558 = load i64**, i64*** %557, align 8
  %559 = getelementptr inbounds i64*, i64** %558, i64 0
  %560 = load i64*, i64** %559, align 8
  %561 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %562 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %561, i32 0, i32 4
  %563 = load i64*, i64** %562, align 8
  %564 = load i32, i32* %6, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds i64, i64* %563, i64 %565
  %567 = load i64, i64* %566, align 8
  %568 = getelementptr inbounds i64, i64* %560, i64 %567
  store i64 0, i64* %568, align 8
  %569 = load i32, i32* %6, align 4
  %570 = ashr i32 %569, 2
  %571 = load i32, i32* %17, align 4
  %572 = add nsw i32 %571, %570
  store i32 %572, i32* %17, align 4
  %573 = load i32, i32* %8, align 4
  %574 = load i32, i32* %6, align 4
  %575 = sub nsw i32 5, %574
  %576 = ashr i32 %573, %575
  %577 = and i32 %576, 1
  store i32 %577, i32* %15, align 4
  %578 = load i32, i32* %6, align 4
  %579 = and i32 %578, 4
  %580 = icmp ne i32 %579, 0
  br i1 %580, label %581, label %582

581:                                              ; preds = %555
  br label %594

582:                                              ; preds = %555
  %583 = load i32, i32* %6, align 4
  %584 = and i32 %583, 1
  %585 = mul nsw i32 %584, 8
  %586 = load i32, i32* %6, align 4
  %587 = and i32 %586, 2
  %588 = mul nsw i32 %587, 4
  %589 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %590 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %589, i32 0, i32 6
  %591 = load i32, i32* %590, align 8
  %592 = mul nsw i32 %588, %591
  %593 = add nsw i32 %585, %592
  br label %594

594:                                              ; preds = %582, %581
  %595 = phi i32 [ 0, %581 ], [ %593, %582 ]
  store i32 %595, i32* %18, align 4
  %596 = load i32, i32* %15, align 4
  %597 = icmp ne i32 %596, 0
  br i1 %597, label %598, label %681

598:                                              ; preds = %594
  %599 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %600 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %601 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %600, i32 0, i32 15
  %602 = load i32**, i32*** %601, align 8
  %603 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %604 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %603, i32 0, i32 8
  %605 = load i64, i64* %604, align 8
  %606 = getelementptr inbounds i32*, i32** %602, i64 %605
  %607 = load i32*, i32** %606, align 8
  %608 = load i64*, i64** @block_map, align 8
  %609 = load i32, i32* %6, align 4
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds i64, i64* %608, i64 %610
  %612 = load i64, i64* %611, align 8
  %613 = getelementptr inbounds i32, i32* %607, i64 %612
  %614 = load i32, i32* %613, align 4
  %615 = load i32, i32* %6, align 4
  %616 = load i32, i32* %10, align 4
  %617 = load i32, i32* %11, align 4
  %618 = load i32, i32* %16, align 4
  %619 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %620 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %619, i32 0, i32 9
  %621 = load i64*, i64** %620, align 8
  %622 = load i32, i32* %17, align 4
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds i64, i64* %621, i64 %623
  %625 = load i64, i64* %624, align 8
  %626 = load i32, i32* %18, align 4
  %627 = sext i32 %626 to i64
  %628 = add nsw i64 %625, %627
  %629 = load i32, i32* %6, align 4
  %630 = and i32 %629, 4
  %631 = icmp ne i32 %630, 0
  br i1 %631, label %632, label %636

632:                                              ; preds = %598
  %633 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %634 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %633, i32 0, i32 7
  %635 = load i32, i32* %634, align 4
  br label %640

636:                                              ; preds = %598
  %637 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %638 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %637, i32 0, i32 6
  %639 = load i32, i32* %638, align 8
  br label %640

640:                                              ; preds = %636, %632
  %641 = phi i32 [ %635, %632 ], [ %639, %636 ]
  %642 = load i64, i64* @CONFIG_GRAY, align 8
  %643 = icmp ne i64 %642, 0
  br i1 %643, label %644, label %657

644:                                              ; preds = %640
  %645 = load i32, i32* %6, align 4
  %646 = and i32 %645, 4
  %647 = icmp ne i32 %646, 0
  br i1 %647, label %648, label %657

648:                                              ; preds = %644
  %649 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %650 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %649, i32 0, i32 8
  %651 = load %struct.TYPE_26__*, %struct.TYPE_26__** %650, align 8
  %652 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %651, i32 0, i32 0
  %653 = load i32, i32* %652, align 4
  %654 = load i32, i32* @AV_CODEC_FLAG_GRAY, align 4
  %655 = and i32 %653, %654
  %656 = icmp ne i32 %655, 0
  br label %657

657:                                              ; preds = %648, %644, %640
  %658 = phi i1 [ false, %644 ], [ false, %640 ], [ %656, %648 ]
  %659 = zext i1 %658 to i32
  %660 = call i32 @vc1_decode_p_block(%struct.TYPE_27__* %599, i32 %614, i32 %615, i32 %616, i32 %617, i32 %618, i64 %628, i32 %641, i32 %659, i32* %22)
  store i32 %660, i32* %21, align 4
  %661 = load i32, i32* %21, align 4
  %662 = icmp slt i32 %661, 0
  br i1 %662, label %663, label %665

663:                                              ; preds = %657
  %664 = load i32, i32* %21, align 4
  store i32 %664, i32* %2, align 4
  br label %720

665:                                              ; preds = %657
  %666 = load i32, i32* %21, align 4
  %667 = load i32, i32* %6, align 4
  %668 = shl i32 %667, 2
  %669 = shl i32 %666, %668
  %670 = load i32, i32* %20, align 4
  %671 = or i32 %670, %669
  store i32 %671, i32* %20, align 4
  %672 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %673 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %672, i32 0, i32 14
  %674 = load i32, i32* %673, align 8
  %675 = icmp ne i32 %674, 0
  br i1 %675, label %680, label %676

676:                                              ; preds = %665
  %677 = load i32, i32* %11, align 4
  %678 = icmp slt i32 %677, 8
  br i1 %678, label %679, label %680

679:                                              ; preds = %676
  store i32 -1, i32* %11, align 4
  br label %680

680:                                              ; preds = %679, %676, %665
  store i32 0, i32* %16, align 4
  br label %681

681:                                              ; preds = %680, %594
  br label %682

682:                                              ; preds = %681
  %683 = load i32, i32* %6, align 4
  %684 = add nsw i32 %683, 1
  store i32 %684, i32* %6, align 4
  br label %552

685:                                              ; preds = %552
  br label %686

686:                                              ; preds = %685, %372
  %687 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %688 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %687, i32 0, i32 13
  %689 = load i64, i64* %688, align 8
  %690 = icmp ne i64 %689, 0
  br i1 %690, label %691, label %699

691:                                              ; preds = %686
  %692 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %693 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %692, i32 0, i32 1
  %694 = load i32, i32* %693, align 4
  %695 = icmp sge i32 %694, 9
  br i1 %695, label %696, label %699

696:                                              ; preds = %691
  %697 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %698 = call i32 @ff_vc1_p_overlap_filter(%struct.TYPE_27__* %697)
  br label %699

699:                                              ; preds = %696, %691, %686
  %700 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %701 = call i32 @vc1_put_blocks_clamped(%struct.TYPE_27__* %700, i32 1)
  %702 = load i32, i32* %20, align 4
  %703 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %704 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %703, i32 0, i32 11
  %705 = load i32*, i32** %704, align 8
  %706 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %707 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %706, i32 0, i32 0
  %708 = load i32, i32* %707, align 8
  %709 = sext i32 %708 to i64
  %710 = getelementptr inbounds i32, i32* %705, i64 %709
  store i32 %702, i32* %710, align 4
  %711 = load i32, i32* %22, align 4
  %712 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %713 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %712, i32 0, i32 12
  %714 = load i32*, i32** %713, align 8
  %715 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %716 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %715, i32 0, i32 0
  %717 = load i32, i32* %716, align 8
  %718 = sext i32 %717 to i64
  %719 = getelementptr inbounds i32, i32* %714, i64 %718
  store i32 %711, i32* %719, align 4
  store i32 0, i32* %2, align 4
  br label %720

720:                                              ; preds = %699, %663
  %721 = load i32, i32* %2, align 4
  ret i32 %721
}

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @GET_MQUANT(...) #1

declare dso_local i64 @FFABS(i32) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @vc1_decode_intra_block(%struct.TYPE_27__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @get_mvdata_interlaced(%struct.TYPE_27__*, i32*, i32*, i32*) #1

declare dso_local i32 @ff_vc1_pred_mv(%struct.TYPE_27__*, i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ff_vc1_mc_1mv(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @ff_vc1_mc_4mv_luma(%struct.TYPE_27__*, i32, i32, i32) #1

declare dso_local i32 @ff_vc1_mc_4mv_chroma(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @vc1_decode_p_block(%struct.TYPE_27__*, i32, i32, i32, i32, i32, i64, i32, i32, i32*) #1

declare dso_local i32 @ff_vc1_p_overlap_filter(%struct.TYPE_27__*) #1

declare dso_local i32 @vc1_put_blocks_clamped(%struct.TYPE_27__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
