; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_model_io.c_ccv_cnnp_model_checkpoint.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_model_io.c_ccv_cnnp_model_checkpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_17__*, %struct.TYPE_17__*, i32 }
%struct.TYPE_13__ = type { i32*, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_17__*, %struct.TYPE_17__* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@SQLITE_OK = common dso_local global i64 0, align 8
@CCV_CNNP_MODEL_CHECKPOINT_READ_ONLY = common dso_local global i32 0, align 4
@CCV_IO_FINAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s(%d)\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"BEGIN\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"COMMIT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccv_cnnp_model_checkpoint(%struct.TYPE_15__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [1040 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %7, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %26 = call i32 @assert(%struct.TYPE_16__* %25)
  store i32* null, i32** %8, align 8
  %27 = load i64, i64* @SQLITE_OK, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @sqlite3_open(i8* %28, i32** %8)
  %30 = icmp ne i64 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  br label %283

32:                                               ; preds = %3
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %9, align 4
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @ccv_max(i32 %43, i32 1)
  store i32 %44, i32* %12, align 4
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %13, align 4
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %32
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @CCV_CNNP_MODEL_CHECKPOINT_READ_ONLY, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %195

61:                                               ; preds = %57, %32
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %61
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %69 = call i32 @ccv_cnnp_model_tensors_init(i32 %67, %struct.TYPE_16__* %68)
  br label %70

70:                                               ; preds = %64, %61
  store i32 0, i32* %10, align 4
  br label %71

71:                                               ; preds = %119, %70
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %122

75:                                               ; preds = %71
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i64 @ccv_array_get(%struct.TYPE_17__* %79, i32 %80)
  %82 = inttoptr i64 %81 to i8**
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %16, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = load i8*, i8** %16, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = call i64 @ccv_nnc_tensor_read(i32* %84, i8* %85, i32* %92)
  %94 = load i64, i64* @CCV_IO_FINAL, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %118

96:                                               ; preds = %75
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 4
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i64 @ccv_array_get(%struct.TYPE_17__* %99, i32 %100)
  %102 = inttoptr i64 %101 to %struct.TYPE_14__*
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %17, align 4
  %105 = load i32, i32* %17, align 4
  %106 = and i32 %105, 31
  %107 = shl i32 1, %106
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %17, align 4
  %113 = ashr i32 %112, 5
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %107
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %96, %75
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %10, align 4
  br label %71

122:                                              ; preds = %71
  store i32 0, i32* %10, align 4
  br label %123

123:                                              ; preds = %189, %122
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %12, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %192

127:                                              ; preds = %123
  store i32 0, i32* %11, align 4
  br label %128

128:                                              ; preds = %185, %127
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* %14, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %188

132:                                              ; preds = %128
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %135, align 8
  %137 = load i32, i32* %11, align 4
  %138 = call i64 @ccv_array_get(%struct.TYPE_17__* %136, i32 %137)
  %139 = inttoptr i64 %138 to i8**
  %140 = load i8*, i8** %139, align 8
  store i8* %140, i8** %18, align 8
  %141 = getelementptr inbounds [1040 x i8], [1040 x i8]* %15, i64 0, i64 0
  %142 = load i8*, i8** %18, align 8
  %143 = load i32, i32* %10, align 4
  %144 = call i32 @snprintf(i8* %141, i32 1040, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %142, i32 %143)
  %145 = load i32*, i32** %8, align 8
  %146 = getelementptr inbounds [1040 x i8], [1040 x i8]* %15, i64 0, i64 0
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* %14, align 4
  %153 = mul nsw i32 %151, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %150, i64 %154
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = call i64 @ccv_nnc_tensor_read(i32* %145, i8* %146, i32* %158)
  %160 = load i64, i64* @CCV_IO_FINAL, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %184

162:                                              ; preds = %132
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 3
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %164, align 8
  %166 = load i32, i32* %10, align 4
  %167 = call i64 @ccv_array_get(%struct.TYPE_17__* %165, i32 %166)
  %168 = inttoptr i64 %167 to %struct.TYPE_14__*
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  store i32 %170, i32* %19, align 4
  %171 = load i32, i32* %19, align 4
  %172 = and i32 %171, 31
  %173 = shl i32 1, %172
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %19, align 4
  %179 = ashr i32 %178, 5
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %177, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %182, %173
  store i32 %183, i32* %181, align 4
  br label %184

184:                                              ; preds = %162, %132
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %11, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %11, align 4
  br label %128

188:                                              ; preds = %128
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %10, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %10, align 4
  br label %123

192:                                              ; preds = %123
  %193 = load i32*, i32** %8, align 8
  %194 = call i32 @sqlite3_close(i32* %193)
  br label %283

195:                                              ; preds = %57
  %196 = load i64, i64* @SQLITE_OK, align 8
  %197 = load i32*, i32** %8, align 8
  %198 = call i64 @sqlite3_exec(i32* %197, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0, i32 0)
  %199 = icmp eq i64 %196, %198
  %200 = zext i1 %199 to i32
  %201 = call i32 @SQLITE_ENFORCE(i32 %200)
  store i32 0, i32* %10, align 4
  br label %202

202:                                              ; preds = %226, %195
  %203 = load i32, i32* %10, align 4
  %204 = load i32, i32* %13, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %229

206:                                              ; preds = %202
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %209, align 8
  %211 = load i32, i32* %10, align 4
  %212 = call i64 @ccv_array_get(%struct.TYPE_17__* %210, i32 %211)
  %213 = inttoptr i64 %212 to i8**
  %214 = load i8*, i8** %213, align 8
  store i8* %214, i8** %20, align 8
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 1
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* %10, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = load i32*, i32** %8, align 8
  %224 = load i8*, i8** %20, align 8
  %225 = call i32 @ccv_nnc_tensor_write(i32 %222, i32* %223, i8* %224)
  br label %226

226:                                              ; preds = %206
  %227 = load i32, i32* %10, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %10, align 4
  br label %202

229:                                              ; preds = %202
  store i32 0, i32* %10, align 4
  br label %230

230:                                              ; preds = %271, %229
  %231 = load i32, i32* %10, align 4
  %232 = load i32, i32* %12, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %274

234:                                              ; preds = %230
  store i32 0, i32* %11, align 4
  br label %235

235:                                              ; preds = %267, %234
  %236 = load i32, i32* %11, align 4
  %237 = load i32, i32* %14, align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %239, label %270

239:                                              ; preds = %235
  %240 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 0
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %242, align 8
  %244 = load i32, i32* %11, align 4
  %245 = call i64 @ccv_array_get(%struct.TYPE_17__* %243, i32 %244)
  %246 = inttoptr i64 %245 to i8**
  %247 = load i8*, i8** %246, align 8
  store i8* %247, i8** %21, align 8
  %248 = getelementptr inbounds [1040 x i8], [1040 x i8]* %15, i64 0, i64 0
  %249 = load i8*, i8** %21, align 8
  %250 = load i32, i32* %10, align 4
  %251 = call i32 @snprintf(i8* %248, i32 1040, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %249, i32 %250)
  %252 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 0
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %10, align 4
  %257 = load i32, i32* %14, align 4
  %258 = mul nsw i32 %256, %257
  %259 = load i32, i32* %11, align 4
  %260 = add nsw i32 %258, %259
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %255, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = load i32*, i32** %8, align 8
  %265 = getelementptr inbounds [1040 x i8], [1040 x i8]* %15, i64 0, i64 0
  %266 = call i32 @ccv_nnc_tensor_write(i32 %263, i32* %264, i8* %265)
  br label %267

267:                                              ; preds = %239
  %268 = load i32, i32* %11, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %11, align 4
  br label %235

270:                                              ; preds = %235
  br label %271

271:                                              ; preds = %270
  %272 = load i32, i32* %10, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %10, align 4
  br label %230

274:                                              ; preds = %230
  %275 = load i64, i64* @SQLITE_OK, align 8
  %276 = load i32*, i32** %8, align 8
  %277 = call i64 @sqlite3_exec(i32* %276, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0, i32 0)
  %278 = icmp eq i64 %275, %277
  %279 = zext i1 %278 to i32
  %280 = call i32 @SQLITE_ENFORCE(i32 %279)
  %281 = load i32*, i32** %8, align 8
  %282 = call i32 @sqlite3_close(i32* %281)
  br label %283

283:                                              ; preds = %274, %192, %31
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_16__*) #1

declare dso_local i64 @sqlite3_open(i8*, i32**) #1

declare dso_local i32 @ccv_max(i32, i32) #1

declare dso_local i32 @ccv_cnnp_model_tensors_init(i32, %struct.TYPE_16__*) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @ccv_nnc_tensor_read(i32*, i8*, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @sqlite3_close(i32*) #1

declare dso_local i32 @SQLITE_ENFORCE(i32) #1

declare dso_local i64 @sqlite3_exec(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @ccv_nnc_tensor_write(i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
