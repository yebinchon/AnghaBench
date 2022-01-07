; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_model.c_ccv_cnnp_model_compile.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_model.c_ccv_cnnp_model_compile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i32, %struct.TYPE_23__*, i64, i32, i32* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_30__*, %struct.TYPE_30__*, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_30__*, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_29__ = type { i8, %struct.TYPE_22__, %struct.TYPE_30__*, %struct.TYPE_30__* }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_26__ = type { i64 }

@_ccv_cnnp_add_to_array = common dso_local global i32 0, align 4
@CCV_NNC_AUTOGEN_ALL_EXECS = common dso_local global i32 0, align 4
@CCV_NNC_AUTOGEN_SOURCES_AND_DESTINATIONS = common dso_local global i32 0, align 4
@CCV_NNC_SIMPLIFY_COMMON_SUBEXPRESSION_ELIMINATION = common dso_local global i32 0, align 4
@CCV_NNC_SIMPLIFY_DATA_TRANSFER_OPT = common dso_local global i32 0, align 4
@CCV_NNC_SIMPLIFY_OPS_FUSION = common dso_local global i32 0, align 4
@CCV_NNC_SIMPLIFY_GRAPH_PRUNING = common dso_local global i32 0, align 4
@CCV_TENSOR_GPU_MEMORY = common dso_local global i64 0, align 8
@CCV_STREAM_CONTEXT_GPU = common dso_local global i32 0, align 4
@CCV_STREAM_CONTEXT_CPU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccv_cnnp_model_compile(%struct.TYPE_28__* %0, %struct.TYPE_27__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_30__*, align 8
  %13 = alloca %struct.TYPE_30__*, align 8
  %14 = alloca %struct.TYPE_29__, align 8
  %15 = alloca %struct.TYPE_26__, align 8
  %16 = alloca %struct.TYPE_26__, align 8
  %17 = alloca %struct.TYPE_30__*, align 8
  %18 = alloca %struct.TYPE_30__*, align 8
  %19 = alloca %struct.TYPE_26__, align 8
  %20 = alloca %struct.TYPE_26__, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %6, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %22, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %280, label %33

33:                                               ; preds = %5
  %34 = call i64 (...) @ccv_nnc_symbolic_graph_new()
  %35 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %35, i32 0, i32 3
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 8, %38
  %40 = trunc i64 %39 to i32
  %41 = call i32* @ccmalloc(i32 %40)
  %42 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %42, i32 0, i32 5
  store i32* %41, i32** %43, align 8
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %65, %33
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %44
  %49 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ccv_nnc_tensor_symbol_new(i64 %51, i32 %57, i32 0)
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 5
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %58, i32* %64, align 4
  br label %65

65:                                               ; preds = %48
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %11, align 4
  br label %44

68:                                               ; preds = %44
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %70 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %73, i32 0, i32 5
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @ccv_cnnp_model_build(%struct.TYPE_28__* %69, i64 %72, i32* %75, i32 %76, i32 0, i32 0)
  %78 = call %struct.TYPE_30__* @ccv_array_new(i32 8, i32 0, i32 0)
  store %struct.TYPE_30__* %78, %struct.TYPE_30__** %12, align 8
  %79 = call %struct.TYPE_30__* @ccv_array_new(i32 8, i32 0, i32 0)
  store %struct.TYPE_30__* %79, %struct.TYPE_30__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 0
  store i8 116, i8* %80, align 8
  %81 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  %83 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 2
  %84 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  store %struct.TYPE_30__* %84, %struct.TYPE_30__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 3
  %86 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  store %struct.TYPE_30__* %86, %struct.TYPE_30__** %85, align 8
  %87 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %88 = load i32, i32* @_ccv_cnnp_add_to_array, align 4
  %89 = call i32 @ccv_cnnp_model_add_to_trainable(%struct.TYPE_28__* %87, i32 %88, %struct.TYPE_29__* %14)
  store i32 0, i32* %11, align 4
  br label %90

90:                                               ; preds = %114, %68
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %117

96:                                               ; preds = %90
  %97 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %98 = load i32, i32* %11, align 4
  %99 = call i64 @ccv_array_get(%struct.TYPE_30__* %97, i32 %98)
  %100 = inttoptr i64 %99 to %struct.TYPE_26__*
  %101 = bitcast %struct.TYPE_26__* %15 to i8*
  %102 = bitcast %struct.TYPE_26__* %100 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %101, i8* align 8 %102, i64 8, i1 false)
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %15, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %15, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @ccv_nnc_tensor_symbol_alias_to(i64 %104, i64 %106)
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 0
  store i64 %107, i64* %108, align 8
  %109 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %110, 0
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  br label %114

114:                                              ; preds = %96
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  br label %90

117:                                              ; preds = %90
  %118 = call %struct.TYPE_30__* @ccv_array_new(i32 8, i32 0, i32 0)
  store %struct.TYPE_30__* %118, %struct.TYPE_30__** %17, align 8
  %119 = call %struct.TYPE_30__* @ccv_array_new(i32 8, i32 0, i32 0)
  store %struct.TYPE_30__* %119, %struct.TYPE_30__** %18, align 8
  %120 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %117
  %125 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @ccv_array_clear(i64 %127)
  br label %129

129:                                              ; preds = %124, %117
  %130 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 0
  store i8 114, i8* %130, align 8
  %131 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %132 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 3
  store %struct.TYPE_30__* %131, %struct.TYPE_30__** %132, align 8
  %133 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %134 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 2
  store %struct.TYPE_30__* %133, %struct.TYPE_30__** %134, align 8
  %135 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %136 = load i32, i32* @_ccv_cnnp_add_to_array, align 4
  %137 = call i32 @ccv_cnnp_model_add_to_output(%struct.TYPE_28__* %135, i32 %136, %struct.TYPE_29__* %14)
  %138 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @ccv_array_free(i64 %140)
  store i32 0, i32* %11, align 4
  br label %142

142:                                              ; preds = %166, %129
  %143 = load i32, i32* %11, align 4
  %144 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %145 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp slt i32 %143, %146
  br i1 %147, label %148, label %169

148:                                              ; preds = %142
  %149 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %150 = load i32, i32* %11, align 4
  %151 = call i64 @ccv_array_get(%struct.TYPE_30__* %149, i32 %150)
  %152 = inttoptr i64 %151 to %struct.TYPE_26__*
  %153 = bitcast %struct.TYPE_26__* %19 to i8*
  %154 = bitcast %struct.TYPE_26__* %152 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %153, i8* align 8 %154, i64 8, i1 false)
  %155 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = call i64 @ccv_nnc_tensor_symbol_alias_to(i64 %156, i64 %158)
  %160 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 0
  store i64 %159, i64* %160, align 8
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp eq i64 %162, 0
  %164 = zext i1 %163 to i32
  %165 = call i32 @assert(i32 %164)
  br label %166

166:                                              ; preds = %148
  %167 = load i32, i32* %11, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %11, align 4
  br label %142

169:                                              ; preds = %142
  %170 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = load i32, i32* @CCV_NNC_AUTOGEN_ALL_EXECS, align 4
  %174 = load i32, i32* @CCV_NNC_AUTOGEN_SOURCES_AND_DESTINATIONS, align 4
  %175 = or i32 %173, %174
  %176 = call i32 @ccv_nnc_graph_exec_symbol_autogen(i64 %172, i32 0, i32 0, i32 %175)
  %177 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = load i32, i32* @CCV_NNC_SIMPLIFY_COMMON_SUBEXPRESSION_ELIMINATION, align 4
  %181 = load i32, i32* @CCV_NNC_SIMPLIFY_DATA_TRANSFER_OPT, align 4
  %182 = load i32, i32* @CCV_NNC_SIMPLIFY_OPS_FUSION, align 4
  %183 = load i32, i32* @CCV_NNC_SIMPLIFY_GRAPH_PRUNING, align 4
  %184 = call i32 @SYMBOLIC_GRAPH_PASSES(i32 %180, i32 %181, i32 %182, i32 %183)
  %185 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = call i32 @SYMBOLIC_GRAPH_SOURCES(i64 %193)
  %195 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %195, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @SYMBOLIC_GRAPH_DESTINATIONS(i64 %197)
  %199 = call i32 @ccv_nnc_symbolic_graph_simplify(i64 %179, i32 %184, i32 %187, i32 %190, i32 %194, i32 %198)
  store i32 0, i32* %21, align 4
  store i32 0, i32* %11, align 4
  br label %200

200:                                              ; preds = %220, %169
  %201 = load i32, i32* %21, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %207, label %203

203:                                              ; preds = %200
  %204 = load i32, i32* %11, align 4
  %205 = load i32, i32* %8, align 4
  %206 = icmp slt i32 %204, %205
  br label %207

207:                                              ; preds = %203, %200
  %208 = phi i1 [ false, %200 ], [ %206, %203 ]
  br i1 %208, label %209, label %223

209:                                              ; preds = %207
  %210 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %211 = load i32, i32* %11, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i64 @CCV_TENSOR_GET_MEMORY(i32 %215)
  %217 = load i64, i64* @CCV_TENSOR_GPU_MEMORY, align 8
  %218 = icmp eq i64 %216, %217
  %219 = zext i1 %218 to i32
  store i32 %219, i32* %21, align 4
  br label %220

220:                                              ; preds = %209
  %221 = load i32, i32* %11, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %11, align 4
  br label %200

223:                                              ; preds = %207
  %224 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = sub nsw i32 %226, 1
  %228 = sext i32 %227 to i64
  %229 = mul i64 8, %228
  %230 = add i64 4, %229
  %231 = trunc i64 %230 to i32
  %232 = call %struct.TYPE_23__* @cccalloc(i32 1, i32 %231)
  %233 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %233, i32 0, i32 2
  store %struct.TYPE_23__* %232, %struct.TYPE_23__** %234, align 8
  %235 = load i32, i32* %21, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %223
  %238 = load i32, i32* @CCV_STREAM_CONTEXT_GPU, align 4
  br label %241

239:                                              ; preds = %223
  %240 = load i32, i32* @CCV_STREAM_CONTEXT_CPU, align 4
  br label %241

241:                                              ; preds = %239, %237
  %242 = phi i32 [ %238, %237 ], [ %240, %239 ]
  %243 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %243, i32 0, i32 2
  %245 = load %struct.TYPE_23__*, %struct.TYPE_23__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %245, i32 0, i32 5
  store i32 %242, i32* %246, align 8
  %247 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %248 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %248, i32 0, i32 2
  %250 = load %struct.TYPE_23__*, %struct.TYPE_23__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %250, i32 0, i32 4
  store %struct.TYPE_30__* %247, %struct.TYPE_30__** %251, align 8
  %252 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %253 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %253, i32 0, i32 2
  %255 = load %struct.TYPE_23__*, %struct.TYPE_23__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %255, i32 0, i32 3
  store %struct.TYPE_30__* %252, %struct.TYPE_30__** %256, align 8
  %257 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %258 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %258, i32 0, i32 2
  %260 = load %struct.TYPE_23__*, %struct.TYPE_23__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %260, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %261, i32 0, i32 1
  store %struct.TYPE_30__* %257, %struct.TYPE_30__** %262, align 8
  %263 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %264 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %264, i32 0, i32 2
  %266 = load %struct.TYPE_23__*, %struct.TYPE_23__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %267, i32 0, i32 0
  store %struct.TYPE_30__* %263, %struct.TYPE_30__** %268, align 8
  %269 = load i32, i32* %9, align 4
  %270 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %270, i32 0, i32 2
  %272 = load %struct.TYPE_23__*, %struct.TYPE_23__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %273, i32 0, i32 0
  store i32 %269, i32* %274, align 4
  %275 = load i32, i32* %10, align 4
  %276 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %276, i32 0, i32 2
  %278 = load %struct.TYPE_23__*, %struct.TYPE_23__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %278, i32 0, i32 0
  store i32 %275, i32* %279, align 8
  br label %280

280:                                              ; preds = %241, %5
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ccv_nnc_symbolic_graph_new(...) #1

declare dso_local i32* @ccmalloc(i32) #1

declare dso_local i32 @ccv_nnc_tensor_symbol_new(i64, i32, i32) #1

declare dso_local i32 @ccv_cnnp_model_build(%struct.TYPE_28__*, i64, i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_30__* @ccv_array_new(i32, i32, i32) #1

declare dso_local i32 @ccv_cnnp_model_add_to_trainable(%struct.TYPE_28__*, i32, %struct.TYPE_29__*) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_30__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ccv_nnc_tensor_symbol_alias_to(i64, i64) #1

declare dso_local i32 @ccv_array_clear(i64) #1

declare dso_local i32 @ccv_cnnp_model_add_to_output(%struct.TYPE_28__*, i32, %struct.TYPE_29__*) #1

declare dso_local i32 @ccv_array_free(i64) #1

declare dso_local i32 @ccv_nnc_graph_exec_symbol_autogen(i64, i32, i32, i32) #1

declare dso_local i32 @ccv_nnc_symbolic_graph_simplify(i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SYMBOLIC_GRAPH_PASSES(i32, i32, i32, i32) #1

declare dso_local i32 @SYMBOLIC_GRAPH_SOURCES(i64) #1

declare dso_local i32 @SYMBOLIC_GRAPH_DESTINATIONS(i64) #1

declare dso_local i64 @CCV_TENSOR_GET_MEMORY(i32) #1

declare dso_local %struct.TYPE_23__* @cccalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
