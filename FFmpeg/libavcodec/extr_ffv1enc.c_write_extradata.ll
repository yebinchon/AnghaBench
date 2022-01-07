; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffv1enc.c_write_extradata.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffv1enc.c_write_extradata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32***, i32*, i32, i32, %struct.TYPE_11__*, i32*, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32* }

@CONTEXT_SIZE = common dso_local global i32 0, align 4
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AC_RANGE_CUSTOM_TAB = common dso_local global i32 0, align 4
@AV_CRC_32_IEEE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @write_extradata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_extradata(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 19
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %4, align 8
  %16 = load i32, i32* @CONTEXT_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %5, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %6, align 8
  %20 = load i32, i32* @CONTEXT_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = mul nuw i64 32, %21
  %23 = alloca i32, i64 %22, align 16
  store i64 %21, i64* %10, align 8
  %24 = mul nuw i64 32, %21
  %25 = mul nuw i64 4, %24
  %26 = trunc i64 %25 to i32
  %27 = call i32 @memset(i32* %23, i32 128, i32 %26)
  %28 = mul nuw i64 4, %17
  %29 = trunc i64 %28 to i32
  %30 = call i32 @memset(i32* %19, i32 128, i32 %29)
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 17
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  store i32 536596, i32* %34, align 4
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 17
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @AV_INPUT_BUFFER_PADDING_SIZE, align 4
  %41 = add nsw i32 %39, %40
  %42 = call i32 @av_malloc(i32 %41)
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 17
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  store i32 %42, i32* %46, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 17
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %1
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = call i32 @AVERROR(i32 %54)
  store i32 %55, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %371

56:                                               ; preds = %1
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 17
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 17
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ff_init_range_encoder(%struct.TYPE_12__* %57, i32 %62, i32 %67)
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %70 = call i32 @ff_build_rac_states(%struct.TYPE_12__* %69, double 0x41A999999999999A, i32 248)
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @put_symbol(%struct.TYPE_12__* %71, i32* %19, i32 %74, i32 0)
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp sgt i32 %78, 2
  br i1 %79, label %80, label %103

80:                                               ; preds = %56
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 3
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  store i32 4, i32* %87, align 4
  br label %97

88:                                               ; preds = %80
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %91, 4
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  store i32 2, i32* %95, align 4
  br label %96

96:                                               ; preds = %93, %88
  br label %97

97:                                               ; preds = %96, %85
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @put_symbol(%struct.TYPE_12__* %98, i32* %19, i32 %101, i32 0)
  br label %103

103:                                              ; preds = %97, %56
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @put_symbol(%struct.TYPE_12__* %104, i32* %19, i32 %107, i32 0)
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @AC_RANGE_CUSTOM_TAB, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %140

114:                                              ; preds = %103
  store i32 1, i32* %7, align 4
  br label %115

115:                                              ; preds = %136, %114
  %116 = load i32, i32* %7, align 4
  %117 = icmp slt i32 %116, 256
  br i1 %117, label %118, label %139

118:                                              ; preds = %115
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = sub nsw i32 %126, %133
  %135 = call i32 @put_symbol(%struct.TYPE_12__* %119, i32* %19, i32 %134, i32 1)
  br label %136

136:                                              ; preds = %118
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %7, align 4
  br label %115

139:                                              ; preds = %115
  br label %140

140:                                              ; preds = %139, %103
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @put_symbol(%struct.TYPE_12__* %141, i32* %19, i32 %144, i32 0)
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @put_symbol(%struct.TYPE_12__* %146, i32* %19, i32 %149, i32 0)
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 6
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @put_rac(%struct.TYPE_12__* %151, i32* %19, i32 %154)
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 7
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @put_symbol(%struct.TYPE_12__* %156, i32* %19, i32 %159, i32 0)
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 8
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @put_symbol(%struct.TYPE_12__* %161, i32* %19, i32 %164, i32 0)
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 9
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @put_rac(%struct.TYPE_12__* %166, i32* %19, i32 %169)
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 10
  %174 = load i32, i32* %173, align 8
  %175 = sub nsw i32 %174, 1
  %176 = call i32 @put_symbol(%struct.TYPE_12__* %171, i32* %19, i32 %175, i32 0)
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 11
  %180 = load i32, i32* %179, align 4
  %181 = sub nsw i32 %180, 1
  %182 = call i32 @put_symbol(%struct.TYPE_12__* %177, i32* %19, i32 %181, i32 0)
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 12
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @put_symbol(%struct.TYPE_12__* %183, i32* %19, i32 %186, i32 0)
  store i32 0, i32* %7, align 4
  br label %188

188:                                              ; preds = %204, %140
  %189 = load i32, i32* %7, align 4
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 12
  %192 = load i32, i32* %191, align 8
  %193 = icmp slt i32 %189, %192
  br i1 %193, label %194, label %207

194:                                              ; preds = %188
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 18
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %7, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @write_quant_tables(%struct.TYPE_12__* %195, i32 %202)
  br label %204

204:                                              ; preds = %194
  %205 = load i32, i32* %7, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %7, align 4
  br label %188

207:                                              ; preds = %188
  store i32 0, i32* %7, align 4
  br label %208

208:                                              ; preds = %307, %207
  %209 = load i32, i32* %7, align 4
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 12
  %212 = load i32, i32* %211, align 8
  %213 = icmp slt i32 %209, %212
  br i1 %213, label %214, label %310

214:                                              ; preds = %208
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 13
  %217 = load i32***, i32**** %216, align 8
  %218 = load i32, i32* %7, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32**, i32*** %217, i64 %219
  %221 = load i32**, i32*** %220, align 8
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 14
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %7, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = call i64 @contains_non_128(i32** %221, i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %303

231:                                              ; preds = %214
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %233 = call i32 @put_rac(%struct.TYPE_12__* %232, i32* %19, i32 1)
  store i32 0, i32* %8, align 4
  br label %234

234:                                              ; preds = %299, %231
  %235 = load i32, i32* %8, align 4
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 14
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* %7, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = icmp slt i32 %235, %242
  br i1 %243, label %244, label %302

244:                                              ; preds = %234
  store i32 0, i32* %9, align 4
  br label %245

245:                                              ; preds = %295, %244
  %246 = load i32, i32* %9, align 4
  %247 = load i32, i32* @CONTEXT_SIZE, align 4
  %248 = icmp slt i32 %246, %247
  br i1 %248, label %249, label %298

249:                                              ; preds = %245
  %250 = load i32, i32* %8, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %269

252:                                              ; preds = %249
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 13
  %255 = load i32***, i32**** %254, align 8
  %256 = load i32, i32* %7, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32**, i32*** %255, i64 %257
  %259 = load i32**, i32*** %258, align 8
  %260 = load i32, i32* %8, align 4
  %261 = sub nsw i32 %260, 1
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32*, i32** %259, i64 %262
  %264 = load i32*, i32** %263, align 8
  %265 = load i32, i32* %9, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  %268 = load i32, i32* %267, align 4
  br label %270

269:                                              ; preds = %249
  br label %270

270:                                              ; preds = %269, %252
  %271 = phi i32 [ %268, %252 ], [ 128, %269 ]
  store i32 %271, i32* %13, align 4
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %273 = load i32, i32* %9, align 4
  %274 = sext i32 %273 to i64
  %275 = mul nsw i64 %274, %21
  %276 = getelementptr inbounds i32, i32* %23, i64 %275
  %277 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i32 0, i32 13
  %279 = load i32***, i32**** %278, align 8
  %280 = load i32, i32* %7, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32**, i32*** %279, i64 %281
  %283 = load i32**, i32*** %282, align 8
  %284 = load i32, i32* %8, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32*, i32** %283, i64 %285
  %287 = load i32*, i32** %286, align 8
  %288 = load i32, i32* %9, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* %13, align 4
  %293 = sub nsw i32 %291, %292
  %294 = call i32 @put_symbol(%struct.TYPE_12__* %272, i32* %276, i32 %293, i32 1)
  br label %295

295:                                              ; preds = %270
  %296 = load i32, i32* %9, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %9, align 4
  br label %245

298:                                              ; preds = %245
  br label %299

299:                                              ; preds = %298
  %300 = load i32, i32* %8, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %8, align 4
  br label %234

302:                                              ; preds = %234
  br label %306

303:                                              ; preds = %214
  %304 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %305 = call i32 @put_rac(%struct.TYPE_12__* %304, i32* %19, i32 0)
  br label %306

306:                                              ; preds = %303, %302
  br label %307

307:                                              ; preds = %306
  %308 = load i32, i32* %7, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %7, align 4
  br label %208

310:                                              ; preds = %208
  %311 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = icmp sgt i32 %313, 2
  br i1 %314, label %315, label %332

315:                                              ; preds = %310
  %316 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %317 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %317, i32 0, i32 15
  %319 = load i32, i32* %318, align 8
  %320 = call i32 @put_symbol(%struct.TYPE_12__* %316, i32* %19, i32 %319, i32 0)
  %321 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %322 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %323 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %322, i32 0, i32 17
  %324 = load %struct.TYPE_11__*, %struct.TYPE_11__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 4
  %327 = icmp slt i32 %326, 2
  %328 = zext i1 %327 to i32
  %329 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %330 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %329, i32 0, i32 16
  store i32 %328, i32* %330, align 4
  %331 = call i32 @put_symbol(%struct.TYPE_12__* %321, i32* %19, i32 %328, i32 0)
  br label %332

332:                                              ; preds = %315, %310
  %333 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %334 = call i32 @ff_rac_terminate(%struct.TYPE_12__* %333, i32 0)
  %335 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %336 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %335, i32 0, i32 17
  %337 = load %struct.TYPE_11__*, %struct.TYPE_11__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %337, i32 0, i32 0
  store i32 %334, i32* %338, align 4
  %339 = load i32, i32* @AV_CRC_32_IEEE, align 4
  %340 = call i32 @av_crc_get_table(i32 %339)
  %341 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %342 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %341, i32 0, i32 17
  %343 = load %struct.TYPE_11__*, %struct.TYPE_11__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %347 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %346, i32 0, i32 17
  %348 = load %struct.TYPE_11__*, %struct.TYPE_11__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = call i32 @av_crc(i32 %340, i32 0, i32 %345, i32 %350)
  store i32 %351, i32* %11, align 4
  %352 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %353 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %352, i32 0, i32 17
  %354 = load %struct.TYPE_11__*, %struct.TYPE_11__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %358 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %357, i32 0, i32 17
  %359 = load %struct.TYPE_11__*, %struct.TYPE_11__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 4
  %362 = add nsw i32 %356, %361
  %363 = load i32, i32* %11, align 4
  %364 = call i32 @AV_WL32(i32 %362, i32 %363)
  %365 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %366 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %365, i32 0, i32 17
  %367 = load %struct.TYPE_11__*, %struct.TYPE_11__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  %370 = add nsw i32 %369, 4
  store i32 %370, i32* %368, align 4
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %371

371:                                              ; preds = %332, %53
  %372 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %372)
  %373 = load i32, i32* %2, align 4
  ret i32 %373
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @av_malloc(i32) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @ff_init_range_encoder(%struct.TYPE_12__*, i32, i32) #2

declare dso_local i32 @ff_build_rac_states(%struct.TYPE_12__*, double, i32) #2

declare dso_local i32 @put_symbol(%struct.TYPE_12__*, i32*, i32, i32) #2

declare dso_local i32 @put_rac(%struct.TYPE_12__*, i32*, i32) #2

declare dso_local i32 @write_quant_tables(%struct.TYPE_12__*, i32) #2

declare dso_local i64 @contains_non_128(i32**, i32) #2

declare dso_local i32 @ff_rac_terminate(%struct.TYPE_12__*, i32) #2

declare dso_local i32 @av_crc(i32, i32, i32, i32) #2

declare dso_local i32 @av_crc_get_table(i32) #2

declare dso_local i32 @AV_WL32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
