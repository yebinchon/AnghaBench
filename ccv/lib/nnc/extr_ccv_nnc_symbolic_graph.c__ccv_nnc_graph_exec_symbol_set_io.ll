; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph.c__ccv_nnc_graph_exec_symbol_set_io.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph.c__ccv_nnc_graph_exec_symbol_set_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32*, i32*, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32, i32 }

@MAP_TENSOR_USE_AS_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_18__*, %struct.TYPE_15__*, i32, %struct.TYPE_15__*, i32)* @_ccv_nnc_graph_exec_symbol_set_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_nnc_graph_exec_symbol_set_io(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1, %struct.TYPE_15__* %2, i32 %3, %struct.TYPE_15__* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_16__*, align 8
  %20 = alloca { i64, i32 }, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_16__*, align 8
  %23 = alloca { i64, i32 }, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_15__* %4, %struct.TYPE_15__** %11, align 8
  store i32 %5, i32* %12, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %12, align 4
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %6
  %33 = load i32, i32* %12, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %72

35:                                               ; preds = %32, %6
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %12, align 4
  %43 = add nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = mul i64 4, %44
  %46 = trunc i64 %45 to i32
  %47 = call i32* @ccmalloc(i32 %46)
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 2
  store i32* %47, i32** %49, align 8
  br label %63

50:                                               ; preds = %35
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = mul i64 4, %57
  %59 = trunc i64 %58 to i32
  %60 = call i32* @ccrealloc(i32* %53, i32 %59)
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 2
  store i32* %60, i32** %62, align 8
  br label %63

63:                                               ; preds = %50, %40
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 3
  store i32* %69, i32** %71, align 8
  br label %72

72:                                               ; preds = %63, %32
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %13, align 4
  br label %73

73:                                               ; preds = %141, %72
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %144

77:                                               ; preds = %73
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i64 %81
  %83 = bitcast %struct.TYPE_15__* %82 to { i32, %struct.TYPE_17__* }*
  %84 = getelementptr inbounds { i32, %struct.TYPE_17__* }, { i32, %struct.TYPE_17__* }* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds { i32, %struct.TYPE_17__* }, { i32, %struct.TYPE_17__* }* %83, i32 0, i32 1
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %86, align 8
  %88 = call i32 @ccv_nnc_tensor_symbol_map_raw(%struct.TYPE_17__* %78, i32 %85, %struct.TYPE_17__* %87)
  store i32 %88, i32* %18, align 4
  %89 = load i32, i32* %18, align 4
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %89, i32* %95, align 4
  %96 = load i32, i32* %18, align 4
  %97 = icmp sge i32 %96, 0
  br i1 %97, label %98, label %140

98:                                               ; preds = %77
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %18, align 4
  %103 = call i64 @ccv_array_get(i32 %101, i32 %102)
  %104 = inttoptr i64 %103 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %104, %struct.TYPE_16__** %19, align 8
  %105 = load i32, i32* %17, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %118, label %107

107:                                              ; preds = %98
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = bitcast { i64, i32 }* %20 to i8*
  %111 = bitcast %struct.TYPE_19__* %109 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %110, i8* align 4 %111, i64 12, i1 false)
  %112 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 0
  %113 = load i64, i64* %112, align 4
  %114 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @ccv_nnc_is_tensor_auto(i64 %113, i32 %115)
  %117 = icmp ne i64 %116, 0
  br label %118

118:                                              ; preds = %107, %98
  %119 = phi i1 [ true, %98 ], [ %117, %107 ]
  %120 = zext i1 %119 to i32
  store i32 %120, i32* %17, align 4
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @CCV_TENSOR_GET_MEMORY(i32 %124)
  %126 = load i32, i32* %14, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %14, align 4
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %15, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %15, align 4
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %16, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %16, align 4
  br label %140

140:                                              ; preds = %118, %77
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %13, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %13, align 4
  br label %73

144:                                              ; preds = %73
  store i32 0, i32* %13, align 4
  br label %145

145:                                              ; preds = %240, %144
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %243

149:                                              ; preds = %145
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %151 = load i32, i32* %13, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %154, align 8
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %157 = icmp ne %struct.TYPE_17__* %155, %156
  br i1 %157, label %158, label %179

158:                                              ; preds = %149
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %160 = load i32, i32* %13, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp sge i32 %164, 0
  br i1 %165, label %166, label %179

166:                                              ; preds = %158
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %169 = load i32, i32* %13, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i64 %170
  %172 = load i32, i32* @MAP_TENSOR_USE_AS_OUTPUT, align 4
  %173 = bitcast %struct.TYPE_15__* %171 to { i32, %struct.TYPE_17__* }*
  %174 = getelementptr inbounds { i32, %struct.TYPE_17__* }, { i32, %struct.TYPE_17__* }* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = getelementptr inbounds { i32, %struct.TYPE_17__* }, { i32, %struct.TYPE_17__* }* %173, i32 0, i32 1
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %176, align 8
  %178 = call i32 @_ccv_nnc_symbolic_graph_map_tensor_symbol(%struct.TYPE_17__* %167, i32 %175, %struct.TYPE_17__* %177, i32 %172)
  br label %186

179:                                              ; preds = %158, %149
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %181 = load i32, i32* %13, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  br label %186

186:                                              ; preds = %179, %166
  %187 = phi i32 [ %178, %166 ], [ %185, %179 ]
  store i32 %187, i32* %21, align 4
  %188 = load i32, i32* %21, align 4
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 3
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %13, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  store i32 %188, i32* %194, align 4
  %195 = load i32, i32* %21, align 4
  %196 = icmp sge i32 %195, 0
  br i1 %196, label %197, label %239

197:                                              ; preds = %186
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %21, align 4
  %202 = call i64 @ccv_array_get(i32 %200, i32 %201)
  %203 = inttoptr i64 %202 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %203, %struct.TYPE_16__** %22, align 8
  %204 = load i32, i32* %17, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %217, label %206

206:                                              ; preds = %197
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 0
  %209 = bitcast { i64, i32 }* %23 to i8*
  %210 = bitcast %struct.TYPE_19__* %208 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %209, i8* align 4 %210, i64 12, i1 false)
  %211 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %23, i32 0, i32 0
  %212 = load i64, i64* %211, align 4
  %213 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %23, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i64 @ccv_nnc_is_tensor_auto(i64 %212, i32 %214)
  %216 = icmp ne i64 %215, 0
  br label %217

217:                                              ; preds = %206, %197
  %218 = phi i1 [ true, %197 ], [ %216, %206 ]
  %219 = zext i1 %218 to i32
  store i32 %219, i32* %17, align 4
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @CCV_TENSOR_GET_MEMORY(i32 %223)
  %225 = load i32, i32* %14, align 4
  %226 = or i32 %225, %224
  store i32 %226, i32* %14, align 4
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* %15, align 4
  %232 = or i32 %231, %230
  store i32 %232, i32* %15, align 4
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %16, align 4
  %238 = or i32 %237, %236
  store i32 %238, i32* %16, align 4
  br label %239

239:                                              ; preds = %217, %186
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %13, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %13, align 4
  br label %145

243:                                              ; preds = %145
  %244 = load i32, i32* %17, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %258, label %246

246:                                              ; preds = %243
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 4
  %249 = load i32, i32* %14, align 4
  %250 = load i32, i32* %15, align 4
  %251 = load i32, i32* %16, align 4
  %252 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %248, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @ccv_nnc_cmd_find_backend(i32 %253, i32 %249, i32 %250, i32 %251)
  %255 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %256 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %255, i32 0, i32 4
  %257 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %256, i32 0, i32 0
  store i32 %254, i32* %257, align 8
  br label %258

258:                                              ; preds = %246, %243
  ret void
}

declare dso_local i32* @ccmalloc(i32) #1

declare dso_local i32* @ccrealloc(i32*, i32) #1

declare dso_local i32 @ccv_nnc_tensor_symbol_map_raw(%struct.TYPE_17__*, i32, %struct.TYPE_17__*) #1

declare dso_local i64 @ccv_array_get(i32, i32) #1

declare dso_local i64 @ccv_nnc_is_tensor_auto(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @CCV_TENSOR_GET_MEMORY(i32) #1

declare dso_local i32 @_ccv_nnc_symbolic_graph_map_tensor_symbol(%struct.TYPE_17__*, i32, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @ccv_nnc_cmd_find_backend(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
