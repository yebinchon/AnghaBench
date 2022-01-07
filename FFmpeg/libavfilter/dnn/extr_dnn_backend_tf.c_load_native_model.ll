; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/dnn/extr_dnn_backend_tf.c_load_native_model.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/dnn/extr_dnn_backend_tf.c_load_native_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64, i32* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i64 }

@__const.load_native_model.transpose_perm_shape = private unnamed_addr constant [1 x i32] [i32 4], align 4
@__const.load_native_model.input_shape = private unnamed_addr constant [4 x i32] [i32 1, i32 -1, i32 -1, i32 -1], align 16
@DNN_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"Placeholder\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"dtype\00", align 1
@TF_FLOAT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"shape\00", align 1
@TF_OK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"Const\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"transpose_perm\00", align 1
@TF_INT32 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@DNN_SUCCESS = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"Identity\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_17__*, i8*)* @load_native_model to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @load_native_model(%struct.TYPE_17__* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_16__, align 8
  %12 = alloca i64*, align 8
  %13 = alloca [1 x i32], align 4
  %14 = alloca [4 x i32], align 16
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i8* %1, i8** %5, align 8
  %18 = bitcast [1 x i32]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast ([1 x i32]* @__const.load_native_model.transpose_perm_shape to i8*), i64 4, i1 false)
  %19 = bitcast [4 x i32]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %19, i8* align 16 bitcast ([4 x i32]* @__const.load_native_model.input_shape to i8*), i64 16, i1 false)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %16, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call %struct.TYPE_18__* @ff_dnn_load_model_native(i8* %20)
  store %struct.TYPE_18__* %21, %struct.TYPE_18__** %16, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %23 = icmp ne %struct.TYPE_18__* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load i64, i64* @DNN_ERROR, align 8
  store i64 %25, i64* %3, align 8
  br label %250

26:                                               ; preds = %2
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %30, %struct.TYPE_19__** %17, align 8
  %31 = call i32 (...) @TF_NewGraph()
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = call i32 (...) @TF_NewStatus()
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32* @TF_NewOperation(i32 %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %40, i32** %7, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* @TF_FLOAT, align 4
  %43 = call i32 @TF_SetAttrType(i32* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %46 = call i32 @TF_SetAttrShape(i32* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %45, i32 4)
  %47 = load i32*, i32** %7, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32* @TF_FinishOperation(i32* %47, i32 %50)
  store i32* %51, i32** %8, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @TF_GetCode(i32 %54)
  %56 = load i64, i64* @TF_OK, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %26
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i32, ...) bitcast (i32 (...)* @TF_DeleteGraph to i32 (i32, ...)*)(i32 %61)
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i32, ...) bitcast (i32 (...)* @TF_DeleteStatus to i32 (i32, ...)*)(i32 %65)
  %67 = load i64, i64* @DNN_ERROR, align 8
  store i64 %67, i64* %3, align 8
  br label %250

68:                                               ; preds = %26
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32* @TF_NewOperation(i32 %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store i32* %72, i32** %7, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* @TF_INT32, align 4
  %75 = call i32 @TF_SetAttrType(i32* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @TF_INT32, align 4
  %77 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %78 = call i32* @TF_AllocateTensor(i32 %76, i32* %77, i32 1, i32 32)
  store i32* %78, i32** %10, align 8
  %79 = load i32*, i32** %10, align 8
  %80 = call i64 @TF_TensorData(i32* %79)
  %81 = inttoptr i64 %80 to i64*
  store i64* %81, i64** %12, align 8
  %82 = load i64*, i64** %12, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 0
  store i64 1, i64* %83, align 8
  %84 = load i64*, i64** %12, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 1
  store i64 2, i64* %85, align 8
  %86 = load i64*, i64** %12, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 2
  store i64 3, i64* %87, align 8
  %88 = load i64*, i64** %12, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 3
  store i64 0, i64* %89, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @TF_SetAttrTensor(i32* %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32* %91, i32 %94)
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @TF_GetCode(i32 %98)
  %100 = load i64, i64* @TF_OK, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %112

102:                                              ; preds = %68
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i32, ...) bitcast (i32 (...)* @TF_DeleteGraph to i32 (i32, ...)*)(i32 %105)
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (i32, ...) bitcast (i32 (...)* @TF_DeleteStatus to i32 (i32, ...)*)(i32 %109)
  %111 = load i64, i64* @DNN_ERROR, align 8
  store i64 %111, i64* %3, align 8
  br label %250

112:                                              ; preds = %68
  %113 = load i32*, i32** %7, align 8
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32* @TF_FinishOperation(i32* %113, i32 %116)
  store i32* %117, i32** %9, align 8
  store i64 0, i64* %6, align 8
  br label %118

118:                                              ; preds = %208, %112
  %119 = load i64, i64* %6, align 8
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ult i64 %119, %122
  br i1 %123, label %124, label %211

124:                                              ; preds = %118
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %126, align 8
  %128 = load i64, i64* %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  switch i32 %131, label %183 [
    i32 130, label %132
    i32 132, label %134
    i32 131, label %147
    i32 128, label %159
    i32 129, label %171
  ]

132:                                              ; preds = %124
  %133 = load i64, i64* @DNN_SUCCESS, align 8
  store i64 %133, i64* %15, align 8
  br label %193

134:                                              ; preds = %124
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %136 = load i32*, i32** %9, align 8
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %138, align 8
  %140 = load i64, i64* %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = inttoptr i64 %143 to i32*
  %145 = load i64, i64* %6, align 8
  %146 = call i64 @add_conv_layer(%struct.TYPE_17__* %135, i32* %136, i32** %8, i32* %144, i64 %145)
  store i64 %146, i64* %15, align 8
  br label %193

147:                                              ; preds = %124
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %150, align 8
  %152 = load i64, i64* %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = inttoptr i64 %155 to i32*
  %157 = load i64, i64* %6, align 8
  %158 = call i64 @add_depth_to_space_layer(%struct.TYPE_17__* %148, i32** %8, i32* %156, i64 %157)
  store i64 %158, i64* %15, align 8
  br label %193

159:                                              ; preds = %124
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %162, align 8
  %164 = load i64, i64* %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = inttoptr i64 %167 to i32*
  %169 = load i64, i64* %6, align 8
  %170 = call i64 @add_pad_layer(%struct.TYPE_17__* %160, i32** %8, i32* %168, i64 %169)
  store i64 %170, i64* %15, align 8
  br label %193

171:                                              ; preds = %124
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %174, align 8
  %176 = load i64, i64* %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = inttoptr i64 %179 to i32*
  %181 = load i64, i64* %6, align 8
  %182 = call i64 @add_maximum_layer(%struct.TYPE_17__* %172, i32** %8, i32* %180, i64 %181)
  store i64 %182, i64* %15, align 8
  br label %193

183:                                              ; preds = %124
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 (i32, ...) bitcast (i32 (...)* @TF_DeleteGraph to i32 (i32, ...)*)(i32 %186)
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 (i32, ...) bitcast (i32 (...)* @TF_DeleteStatus to i32 (i32, ...)*)(i32 %190)
  %192 = load i64, i64* @DNN_ERROR, align 8
  store i64 %192, i64* %3, align 8
  br label %250

193:                                              ; preds = %171, %159, %147, %134, %132
  %194 = load i64, i64* %15, align 8
  %195 = load i64, i64* @DNN_SUCCESS, align 8
  %196 = icmp ne i64 %194, %195
  br i1 %196, label %197, label %207

197:                                              ; preds = %193
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = call i32 (i32, ...) bitcast (i32 (...)* @TF_DeleteGraph to i32 (i32, ...)*)(i32 %200)
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 (i32, ...) bitcast (i32 (...)* @TF_DeleteStatus to i32 (i32, ...)*)(i32 %204)
  %206 = load i64, i64* @DNN_ERROR, align 8
  store i64 %206, i64* %3, align 8
  br label %250

207:                                              ; preds = %193
  br label %208

208:                                              ; preds = %207
  %209 = load i64, i64* %6, align 8
  %210 = add i64 %209, 1
  store i64 %210, i64* %6, align 8
  br label %118

211:                                              ; preds = %118
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32* @TF_NewOperation(i32 %214, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store i32* %215, i32** %7, align 8
  %216 = load i32*, i32** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  store i32* %216, i32** %217, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  store i64 0, i64* %218, align 8
  %219 = load i32*, i32** %7, align 8
  %220 = bitcast %struct.TYPE_16__* %11 to { i64, i32* }*
  %221 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %220, i32 0, i32 1
  %224 = load i32*, i32** %223, align 8
  %225 = call i32 @TF_AddInput(i32* %219, i64 %222, i32* %224)
  %226 = load i32*, i32** %7, align 8
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = call i32* @TF_FinishOperation(i32* %226, i32 %229)
  %231 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call i64 @TF_GetCode(i32 %233)
  %235 = load i64, i64* @TF_OK, align 8
  %236 = icmp ne i64 %234, %235
  br i1 %236, label %237, label %247

237:                                              ; preds = %211
  %238 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = call i32 (i32, ...) bitcast (i32 (...)* @TF_DeleteGraph to i32 (i32, ...)*)(i32 %240)
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = call i32 (i32, ...) bitcast (i32 (...)* @TF_DeleteStatus to i32 (i32, ...)*)(i32 %244)
  %246 = load i64, i64* @DNN_ERROR, align 8
  store i64 %246, i64* %3, align 8
  br label %250

247:                                              ; preds = %211
  %248 = call i32 @ff_dnn_free_model_native(%struct.TYPE_18__** %16)
  %249 = load i64, i64* @DNN_SUCCESS, align 8
  store i64 %249, i64* %3, align 8
  br label %250

250:                                              ; preds = %247, %237, %197, %183, %102, %58, %24
  %251 = load i64, i64* %3, align 8
  ret i64 %251
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_18__* @ff_dnn_load_model_native(i8*) #2

declare dso_local i32 @TF_NewGraph(...) #2

declare dso_local i32 @TF_NewStatus(...) #2

declare dso_local i32* @TF_NewOperation(i32, i8*, i8*) #2

declare dso_local i32 @TF_SetAttrType(i32*, i8*, i32) #2

declare dso_local i32 @TF_SetAttrShape(i32*, i8*, i32*, i32) #2

declare dso_local i32* @TF_FinishOperation(i32*, i32) #2

declare dso_local i64 @TF_GetCode(i32) #2

declare dso_local i32 @TF_DeleteGraph(...) #2

declare dso_local i32 @TF_DeleteStatus(...) #2

declare dso_local i32* @TF_AllocateTensor(i32, i32*, i32, i32) #2

declare dso_local i64 @TF_TensorData(i32*) #2

declare dso_local i32 @TF_SetAttrTensor(i32*, i8*, i32*, i32) #2

declare dso_local i64 @add_conv_layer(%struct.TYPE_17__*, i32*, i32**, i32*, i64) #2

declare dso_local i64 @add_depth_to_space_layer(%struct.TYPE_17__*, i32**, i32*, i64) #2

declare dso_local i64 @add_pad_layer(%struct.TYPE_17__*, i32**, i32*, i64) #2

declare dso_local i64 @add_maximum_layer(%struct.TYPE_17__*, i32**, i32*, i64) #2

declare dso_local i32 @TF_AddInput(i32*, i64, i32*) #2

declare dso_local i32 @ff_dnn_free_model_native(%struct.TYPE_18__**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
