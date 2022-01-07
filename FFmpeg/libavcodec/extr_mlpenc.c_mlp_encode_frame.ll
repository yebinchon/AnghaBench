; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpenc.c_mlp_encode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpenc.c_mlp_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32, i64, i64, i32, i64, i64, i64, i64, i64*, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32*, i64, i32, i32, i32*, %struct.TYPE_21__*, i32*, i64, i64, i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i32** }

@MAX_BLOCKSIZE = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Invalid frame size (%d > %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_23__*, %struct.TYPE_24__*, i32*)* @mlp_encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlp_encode_frame(%struct.TYPE_25__* %0, %struct.TYPE_23__* %1, %struct.TYPE_24__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %7, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  store %struct.TYPE_22__* %20, %struct.TYPE_22__** %10, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = mul nsw i32 87500, %25
  %27 = call i32 @ff_alloc_packet2(%struct.TYPE_25__* %21, %struct.TYPE_23__* %22, i32 %26, i32 0)
  store i32 %27, i32* %13, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %5, align 4
  br label %577

31:                                               ; preds = %4
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %33 = icmp ne %struct.TYPE_24__* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  store i32 1, i32* %5, align 4
  br label %577

35:                                               ; preds = %31
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 25
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %39 = call i32 @ff_af_queue_add(i32* %37, %struct.TYPE_24__* %38)
  store i32 %39, i32* %13, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %5, align 4
  br label %577

43:                                               ; preds = %35
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 0
  %46 = load i32**, i32*** %45, align 8
  %47 = getelementptr inbounds i32*, i32** %46, i64 0
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %14, align 8
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = srem i32 %51, %54
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 %63, %66
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %60, %68
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 2
  store i64 %69, i64* %71, align 8
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %577

80:                                               ; preds = %43
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 7
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = mul nsw i32 %86, %89
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %83, %91
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 6
  store i64 %92, i64* %94, align 8
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 8
  store i64 %97, i64* %99, align 8
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %130

107:                                              ; preds = %80
  %108 = load i32*, i32** %14, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  br label %235

111:                                              ; preds = %107
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 0
  store i32 0, i32* %118, align 8
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 7
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 6
  store i64 %121, i64* %123, align 8
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 2
  store i64 %126, i64* %128, align 8
  br label %129

129:                                              ; preds = %111
  br label %130

130:                                              ; preds = %129, %80
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 9
  %133 = load i64*, i64** %132, align 8
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %133, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @MAX_BLOCKSIZE, align 8
  %141 = icmp sgt i64 %139, %140
  br i1 %141, label %142, label %156

142:                                              ; preds = %130
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %144 = load i32, i32* @AV_LOG_ERROR, align 4
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 9
  %147 = load i64*, i64** %146, align 8
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %147, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @MAX_BLOCKSIZE, align 8
  %155 = call i32 @av_log(%struct.TYPE_25__* %143, i32 %144, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %153, i64 %154)
  store i32 -1, i32* %5, align 4
  br label %577

156:                                              ; preds = %130
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  %161 = xor i1 %160, true
  %162 = zext i1 %161 to i32
  store i32 %162, i32* %12, align 4
  %163 = load i32, i32* %12, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %180

165:                                              ; preds = %156
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %167 = call i32 @set_major_params(%struct.TYPE_22__* %166)
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 10
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = icmp ne i64 %170, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %165
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %178 = call i32 @process_major_frame(%struct.TYPE_22__* %177)
  br label %179

179:                                              ; preds = %176, %165
  br label %180

180:                                              ; preds = %179, %156
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 10
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  %188 = icmp eq i64 %183, %187
  br i1 %188, label %189, label %195

189:                                              ; preds = %180
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i32 0, i32 6
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 8
  store i64 %192, i64* %194, align 8
  br label %195

195:                                              ; preds = %189, %180
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %12, align 4
  %204 = call i32 @write_access_unit(%struct.TYPE_22__* %196, i32 %199, i32 %202, i32 %203)
  store i32 %204, i32* %11, align 4
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 9
  %207 = load i64*, i64** %206, align 8
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i64, i64* %207, i64 %211
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %214, i32 0, i32 32
  %216 = load i32, i32* %215, align 4
  %217 = sext i32 %216 to i64
  %218 = add nsw i64 %217, %213
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %215, align 4
  %220 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %221 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %220, i32 0, i32 9
  %222 = load i64*, i64** %221, align 8
  %223 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %224 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i64, i64* %222, i64 %226
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %230 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %229, i32 0, i32 31
  %231 = load i32, i32* %230, align 8
  %232 = sext i32 %231 to i64
  %233 = add nsw i64 %232, %228
  %234 = trunc i64 %233 to i32
  store i32 %234, i32* %230, align 8
  br label %235

235:                                              ; preds = %195, %110
  %236 = load i32*, i32** %14, align 8
  %237 = icmp ne i32* %236, null
  br i1 %237, label %238, label %264

238:                                              ; preds = %235
  %239 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %242, i32 0, i32 9
  %244 = load i64*, i64** %243, align 8
  %245 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %246 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i64, i64* %244, i64 %248
  store i64 %241, i64* %249, align 8
  %250 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %250, i32 0, i32 2
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %254 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %253, i32 0, i32 11
  %255 = load i64, i64* %254, align 8
  %256 = add nsw i64 %255, %252
  store i64 %256, i64* %254, align 8
  %257 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %258 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %257, i32 0, i32 12
  %259 = load i32, i32* %258, align 8
  %260 = add i32 %259, 1
  store i32 %260, i32* %258, align 8
  %261 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %262 = load i32*, i32** %14, align 8
  %263 = call i32 @input_data(%struct.TYPE_22__* %261, i32* %262)
  br label %276

264:                                              ; preds = %235
  %265 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %266 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %265, i32 0, i32 5
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %275, label %269

269:                                              ; preds = %264
  %270 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %271 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %270, i32 0, i32 2
  %272 = load i64, i64* %271, align 8
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %274 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %273, i32 0, i32 5
  store i64 %272, i64* %274, align 8
  br label %275

275:                                              ; preds = %269, %264
  br label %276

276:                                              ; preds = %275, %238
  %277 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %278 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = add nsw i32 %279, 1
  %281 = sext i32 %280 to i64
  %282 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %283 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %282, i32 0, i32 10
  %284 = load i64, i64* %283, align 8
  %285 = srem i64 %281, %284
  %286 = trunc i64 %285 to i32
  store i32 %286, i32* %12, align 4
  %287 = load i32, i32* %12, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %561, label %289

289:                                              ; preds = %276
  store i32 0, i32* %15, align 4
  br label %290

290:                                              ; preds = %527, %289
  %291 = load i32, i32* %15, align 4
  %292 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %293 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %292, i32 0, i32 13
  %294 = load i32, i32* %293, align 4
  %295 = icmp slt i32 %291, %294
  br i1 %295, label %296, label %310

296:                                              ; preds = %290
  %297 = load i32, i32* %15, align 4
  %298 = sext i32 %297 to i64
  %299 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %300 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %299, i32 0, i32 10
  %301 = load i64, i64* %300, align 8
  %302 = mul nsw i64 %298, %301
  %303 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %304 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %303, i32 0, i32 27
  %305 = load %struct.TYPE_21__*, %struct.TYPE_21__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = sext i32 %307 to i64
  %309 = icmp sle i64 %302, %308
  br label %310

310:                                              ; preds = %296, %290
  %311 = phi i1 [ false, %290 ], [ %309, %296 ]
  br i1 %311, label %312, label %530

312:                                              ; preds = %310
  store i32 0, i32* %16, align 4
  %313 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %314 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %313, i32 0, i32 7
  %315 = load i64, i64* %314, align 8
  %316 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %317 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %316, i32 0, i32 6
  store i64 %315, i64* %317, align 8
  %318 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %319 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %318, i32 0, i32 3
  %320 = load i64, i64* %319, align 8
  %321 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %322 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %321, i32 0, i32 2
  store i64 %320, i64* %322, align 8
  %323 = load i32, i32* %15, align 4
  %324 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %325 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %324, i32 0, i32 14
  store i32 %323, i32* %325, align 8
  %326 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %327 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %326, i32 0, i32 27
  %328 = load %struct.TYPE_21__*, %struct.TYPE_21__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = sext i32 %330 to i64
  %332 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %333 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %332, i32 0, i32 27
  %334 = load %struct.TYPE_21__*, %struct.TYPE_21__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = sext i32 %336 to i64
  %338 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %339 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %338, i32 0, i32 10
  %340 = load i64, i64* %339, align 8
  %341 = srem i64 %337, %340
  %342 = sub nsw i64 %331, %341
  %343 = load i32, i32* %15, align 4
  %344 = sext i32 %343 to i64
  %345 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %346 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %345, i32 0, i32 10
  %347 = load i64, i64* %346, align 8
  %348 = mul nsw i64 %344, %347
  %349 = sub nsw i64 %342, %348
  %350 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %351 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = sext i32 %352 to i64
  %354 = srem i64 %349, %353
  %355 = trunc i64 %354 to i32
  %356 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %357 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %356, i32 0, i32 15
  store i32 %355, i32* %357, align 4
  %358 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %359 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %358, i32 0, i32 12
  %360 = load i32, i32* %359, align 8
  %361 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %362 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %361, i32 0, i32 16
  store i32 %360, i32* %362, align 8
  %363 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %364 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %363, i32 0, i32 12
  %365 = load i32, i32* %364, align 8
  %366 = add i32 %365, 1
  %367 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %368 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %367, i32 0, i32 17
  store i32 %366, i32* %368, align 4
  %369 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %370 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %369, i32 0, i32 30
  %371 = load i64, i64* %370, align 8
  %372 = inttoptr i64 %371 to i32*
  %373 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %374 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = sext i32 %375 to i64
  %377 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %378 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %377, i32 0, i32 10
  %379 = load i64, i64* %378, align 8
  %380 = sdiv i64 %376, %379
  %381 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %382 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %381, i32 0, i32 18
  %383 = load i32, i32* %382, align 8
  %384 = sext i32 %383 to i64
  %385 = mul nsw i64 %380, %384
  %386 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %387 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %386, i32 0, i32 27
  %388 = load %struct.TYPE_21__*, %struct.TYPE_21__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 4
  %391 = sext i32 %390 to i64
  %392 = mul nsw i64 %385, %391
  %393 = getelementptr inbounds i32, i32* %372, i64 %392
  %394 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %395 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %394, i32 0, i32 19
  %396 = load i32*, i32** %395, align 8
  %397 = load i32, i32* %15, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i32, i32* %396, i64 %398
  %400 = load i32, i32* %399, align 4
  %401 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %402 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %401, i32 0, i32 27
  %403 = load %struct.TYPE_21__*, %struct.TYPE_21__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 4
  %406 = mul nsw i32 %400, %405
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32, i32* %393, i64 %407
  %409 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %410 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %409, i32 0, i32 28
  store i32* %408, i32** %410, align 8
  %411 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %412 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %411, i32 0, i32 29
  %413 = load i64, i64* %412, align 8
  %414 = inttoptr i64 %413 to i32*
  %415 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %416 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 8
  %418 = sext i32 %417 to i64
  %419 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %420 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %419, i32 0, i32 10
  %421 = load i64, i64* %420, align 8
  %422 = sdiv i64 %418, %421
  %423 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %424 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %423, i32 0, i32 18
  %425 = load i32, i32* %424, align 8
  %426 = sext i32 %425 to i64
  %427 = mul nsw i64 %422, %426
  %428 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %429 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %428, i32 0, i32 20
  %430 = load i32, i32* %429, align 8
  %431 = sext i32 %430 to i64
  %432 = mul nsw i64 %427, %431
  %433 = getelementptr inbounds i32, i32* %414, i64 %432
  %434 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %435 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %434, i32 0, i32 19
  %436 = load i32*, i32** %435, align 8
  %437 = load i32, i32* %15, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i32, i32* %436, i64 %438
  %440 = load i32, i32* %439, align 4
  %441 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %442 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %441, i32 0, i32 20
  %443 = load i32, i32* %442, align 8
  %444 = mul nsw i32 %440, %443
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i32, i32* %433, i64 %445
  %447 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %448 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %447, i32 0, i32 26
  store i32* %446, i32** %448, align 8
  store i32 0, i32* %17, align 4
  br label %449

449:                                              ; preds = %475, %312
  %450 = load i32, i32* %17, align 4
  %451 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %452 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %451, i32 0, i32 16
  %453 = load i32, i32* %452, align 8
  %454 = icmp ult i32 %450, %453
  br i1 %454, label %455, label %478

455:                                              ; preds = %449
  %456 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %457 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %456, i32 0, i32 9
  %458 = load i64*, i64** %457, align 8
  %459 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %460 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %459, i32 0, i32 15
  %461 = load i32, i32* %460, align 4
  %462 = load i32, i32* %17, align 4
  %463 = add i32 %461, %462
  %464 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %465 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %464, i32 0, i32 1
  %466 = load i32, i32* %465, align 4
  %467 = urem i32 %463, %466
  %468 = zext i32 %467 to i64
  %469 = getelementptr inbounds i64, i64* %458, i64 %468
  %470 = load i64, i64* %469, align 8
  %471 = load i32, i32* %16, align 4
  %472 = zext i32 %471 to i64
  %473 = add nsw i64 %472, %470
  %474 = trunc i64 %473 to i32
  store i32 %474, i32* %16, align 4
  br label %475

475:                                              ; preds = %455
  %476 = load i32, i32* %17, align 4
  %477 = add i32 %476, 1
  store i32 %477, i32* %17, align 4
  br label %449

478:                                              ; preds = %449
  %479 = load i32, i32* %16, align 4
  %480 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %481 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %480, i32 0, i32 21
  store i32 %479, i32* %481, align 4
  store i32 0, i32* %17, align 4
  br label %482

482:                                              ; preds = %519, %478
  %483 = load i32, i32* %17, align 4
  %484 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %485 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %484, i32 0, i32 22
  %486 = load i32*, i32** %485, align 8
  %487 = load i32, i32* %15, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds i32, i32* %486, i64 %488
  %490 = load i32, i32* %489, align 4
  %491 = icmp ult i32 %483, %490
  br i1 %491, label %492, label %522

492:                                              ; preds = %482
  %493 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %494 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %495 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %494, i32 0, i32 28
  %496 = load i32*, i32** %495, align 8
  %497 = load i32, i32* %17, align 4
  %498 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %499 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %498, i32 0, i32 27
  %500 = load %struct.TYPE_21__*, %struct.TYPE_21__** %499, align 8
  %501 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %500, i32 0, i32 1
  %502 = load i32, i32* %501, align 4
  %503 = mul i32 %497, %502
  %504 = zext i32 %503 to i64
  %505 = getelementptr inbounds i32, i32* %496, i64 %504
  %506 = call i32 @clear_channel_params(%struct.TYPE_22__* %493, i32* %505)
  %507 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %508 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %509 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %508, i32 0, i32 26
  %510 = load i32*, i32** %509, align 8
  %511 = load i32, i32* %17, align 4
  %512 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %513 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %512, i32 0, i32 20
  %514 = load i32, i32* %513, align 8
  %515 = mul i32 %511, %514
  %516 = zext i32 %515 to i64
  %517 = getelementptr inbounds i32, i32* %510, i64 %516
  %518 = call i32 @default_decoding_params(%struct.TYPE_22__* %507, i32* %517)
  br label %519

519:                                              ; preds = %492
  %520 = load i32, i32* %17, align 4
  %521 = add i32 %520, 1
  store i32 %521, i32* %17, align 4
  br label %482

522:                                              ; preds = %482
  %523 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %524 = call i32 @input_to_sample_buffer(%struct.TYPE_22__* %523)
  %525 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %526 = call i32 @analyze_sample_buffer(%struct.TYPE_22__* %525)
  br label %527

527:                                              ; preds = %522
  %528 = load i32, i32* %15, align 4
  %529 = add nsw i32 %528, 1
  store i32 %529, i32* %15, align 4
  br label %290

530:                                              ; preds = %310
  %531 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %532 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %531, i32 0, i32 0
  %533 = load i32, i32* %532, align 8
  %534 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %535 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %534, i32 0, i32 1
  %536 = load i32, i32* %535, align 4
  %537 = sub nsw i32 %536, 1
  %538 = icmp eq i32 %533, %537
  br i1 %538, label %539, label %560

539:                                              ; preds = %530
  %540 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %541 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %540, i32 0, i32 11
  %542 = load i64, i64* %541, align 8
  %543 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %544 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %543, i32 0, i32 23
  store i64 %542, i64* %544, align 8
  %545 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %546 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %545, i32 0, i32 11
  store i64 0, i64* %546, align 8
  %547 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %548 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %547, i32 0, i32 12
  %549 = load i32, i32* %548, align 8
  %550 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %551 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %550, i32 0, i32 24
  store i32 %549, i32* %551, align 8
  %552 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %553 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %552, i32 0, i32 12
  store i32 0, i32* %553, align 8
  %554 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %555 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %554, i32 0, i32 23
  %556 = load i64, i64* %555, align 8
  %557 = icmp ne i64 %556, 0
  br i1 %557, label %559, label %558

558:                                              ; preds = %539
  br label %562

559:                                              ; preds = %539
  br label %560

560:                                              ; preds = %559, %530
  br label %561

561:                                              ; preds = %560, %276
  br label %562

562:                                              ; preds = %561, %558
  %563 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %564 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %563, i32 0, i32 25
  %565 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %566 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %565, i32 0, i32 2
  %567 = load i64, i64* %566, align 8
  %568 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %569 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %568, i32 0, i32 2
  %570 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %571 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %570, i32 0, i32 1
  %572 = call i32 @ff_af_queue_remove(i32* %564, i64 %567, i32* %569, i32* %571)
  %573 = load i32, i32* %11, align 4
  %574 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %575 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %574, i32 0, i32 0
  store i32 %573, i32* %575, align 4
  %576 = load i32*, i32** %9, align 8
  store i32 1, i32* %576, align 4
  store i32 0, i32* %5, align 4
  br label %577

577:                                              ; preds = %562, %142, %79, %41, %34, %29
  %578 = load i32, i32* %5, align 4
  ret i32 %578
}

declare dso_local i32 @ff_alloc_packet2(%struct.TYPE_25__*, %struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @ff_af_queue_add(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @av_log(%struct.TYPE_25__*, i32, i8*, i64, i64) #1

declare dso_local i32 @set_major_params(%struct.TYPE_22__*) #1

declare dso_local i32 @process_major_frame(%struct.TYPE_22__*) #1

declare dso_local i32 @write_access_unit(%struct.TYPE_22__*, i32, i32, i32) #1

declare dso_local i32 @input_data(%struct.TYPE_22__*, i32*) #1

declare dso_local i32 @clear_channel_params(%struct.TYPE_22__*, i32*) #1

declare dso_local i32 @default_decoding_params(%struct.TYPE_22__*, i32*) #1

declare dso_local i32 @input_to_sample_buffer(%struct.TYPE_22__*) #1

declare dso_local i32 @analyze_sample_buffer(%struct.TYPE_22__*) #1

declare dso_local i32 @ff_af_queue_remove(i32*, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
