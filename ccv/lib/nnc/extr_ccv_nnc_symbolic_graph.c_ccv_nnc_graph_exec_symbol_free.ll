; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph.c_ccv_nnc_graph_exec_symbol_free.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph.c_ccv_nnc_graph_exec_symbol_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__* }

@CCV_NNC_GRAPH_EXEC_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccv_nnc_graph_exec_symbol_free(%struct.TYPE_11__* %0, i32 %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca %struct.TYPE_12__, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = bitcast %struct.TYPE_12__* %4 to { i32, %struct.TYPE_11__* }*
  %12 = getelementptr inbounds { i32, %struct.TYPE_11__* }, { i32, %struct.TYPE_11__* }* %11, i32 0, i32 0
  store i32 %1, i32* %12, align 8
  %13 = getelementptr inbounds { i32, %struct.TYPE_11__* }, { i32, %struct.TYPE_11__* }* %11, i32 0, i32 1
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = icmp eq %struct.TYPE_11__* %14, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %21, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @ccv_array_get(%struct.TYPE_14__* %32, i32 %34)
  %36 = inttoptr i64 %35 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %36, %struct.TYPE_13__** %9, align 8
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %153, %3
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %38, %43
  br i1 %44, label %45, label %156

45:                                               ; preds = %37
  %46 = load i32, i32* %6, align 4
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %46, %48
  br i1 %49, label %50, label %152

50:                                               ; preds = %45
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i64 @ccv_array_get(%struct.TYPE_14__* %53, i32 %54)
  %56 = inttoptr i64 %55 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %56, %struct.TYPE_13__** %10, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  %60 = icmp ne %struct.TYPE_14__* %59, null
  br i1 %60, label %61, label %151

61:                                               ; preds = %50
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %147, %61
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %63, %68
  br i1 %69, label %70, label %150

70:                                               ; preds = %62
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i64 @ccv_array_get(%struct.TYPE_14__* %73, i32 %74)
  %76 = inttoptr i64 %75 to i32*
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %146

81:                                               ; preds = %70
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %87, 1
  %89 = icmp slt i32 %82, %88
  br i1 %89, label %90, label %109

90:                                               ; preds = %81
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %92, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %98, 1
  %100 = call i64 @ccv_array_get(%struct.TYPE_14__* %93, i32 %99)
  %101 = inttoptr i64 %100 to i32*
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = call i64 @ccv_array_get(%struct.TYPE_14__* %105, i32 %106)
  %108 = inttoptr i64 %107 to i32*
  store i32 %102, i32* %108, align 4
  br label %109

109:                                              ; preds = %90, %81
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %113, align 4
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  %119 = icmp ne %struct.TYPE_14__* %118, null
  br i1 %119, label %120, label %145

120:                                              ; preds = %109
  store i32 0, i32* %8, align 4
  br label %121

121:                                              ; preds = %141, %120
  %122 = load i32, i32* %8, align 4
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp slt i32 %122, %127
  br i1 %128, label %129, label %144

129:                                              ; preds = %121
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %131, align 8
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %134, align 8
  %136 = load i32, i32* %8, align 4
  %137 = call i64 @ccv_array_get(%struct.TYPE_14__* %135, i32 %136)
  %138 = inttoptr i64 %137 to i32*
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @ccv_array_add_unique_int(%struct.TYPE_14__* %132, i32 %139)
  br label %141

141:                                              ; preds = %129
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %8, align 4
  br label %121

144:                                              ; preds = %121
  br label %145

145:                                              ; preds = %144, %109
  br label %150

146:                                              ; preds = %70
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %7, align 4
  br label %62

150:                                              ; preds = %145, %62
  br label %151

151:                                              ; preds = %150, %50
  br label %152

152:                                              ; preds = %151, %45
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %6, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %6, align 4
  br label %37

156:                                              ; preds = %37
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %158 = call i32 @_ccv_nnc_graph_exec_symbol_free(%struct.TYPE_13__* %157, i32 1)
  %159 = load i32, i32* @CCV_NNC_GRAPH_EXEC_DEAD, align 4
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = sub nsw i32 %166, 1
  store i32 %167, i32* %6, align 4
  br label %168

168:                                              ; preds = %190, %156
  %169 = load i32, i32* %6, align 4
  %170 = icmp sge i32 %169, 0
  br i1 %170, label %171, label %193

171:                                              ; preds = %168
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %173, align 8
  %175 = load i32, i32* %6, align 4
  %176 = call i64 @ccv_array_get(%struct.TYPE_14__* %174, i32 %175)
  %177 = inttoptr i64 %176 to %struct.TYPE_13__*
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @CCV_NNC_GRAPH_EXEC_IS_DEAD(i32 %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %189, label %182

182:                                              ; preds = %171
  %183 = load i32, i32* %6, align 4
  %184 = add nsw i32 %183, 1
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 0
  store i32 %184, i32* %188, align 4
  br label %193

189:                                              ; preds = %171
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %6, align 4
  %192 = add nsw i32 %191, -1
  store i32 %192, i32* %6, align 4
  br label %168

193:                                              ; preds = %182, %168
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 3
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %195, align 8
  %197 = icmp ne %struct.TYPE_14__* %196, null
  br i1 %197, label %198, label %258

198:                                              ; preds = %193
  store i32 0, i32* %6, align 4
  br label %199

199:                                              ; preds = %254, %198
  %200 = load i32, i32* %6, align 4
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 3
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = icmp slt i32 %200, %205
  br i1 %206, label %207, label %257

207:                                              ; preds = %199
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 3
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %209, align 8
  %211 = load i32, i32* %6, align 4
  %212 = call i64 @ccv_array_get(%struct.TYPE_14__* %210, i32 %211)
  %213 = inttoptr i64 %212 to i32*
  %214 = load i32, i32* %213, align 4
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp eq i32 %214, %216
  br i1 %217, label %218, label %253

218:                                              ; preds = %207
  %219 = load i32, i32* %6, align 4
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 3
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = sub nsw i32 %224, 1
  %226 = icmp slt i32 %219, %225
  br i1 %226, label %227, label %246

227:                                              ; preds = %218
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 3
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %229, align 8
  %231 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 3
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = sub nsw i32 %235, 1
  %237 = call i64 @ccv_array_get(%struct.TYPE_14__* %230, i32 %236)
  %238 = inttoptr i64 %237 to i32*
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 3
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %241, align 8
  %243 = load i32, i32* %6, align 4
  %244 = call i64 @ccv_array_get(%struct.TYPE_14__* %242, i32 %243)
  %245 = inttoptr i64 %244 to i32*
  store i32 %239, i32* %245, align 4
  br label %246

246:                                              ; preds = %227, %218
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 3
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = add nsw i32 %251, -1
  store i32 %252, i32* %250, align 4
  br label %257

253:                                              ; preds = %207
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %6, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %6, align 4
  br label %199

257:                                              ; preds = %246, %199
  br label %258

258:                                              ; preds = %257, %193
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 2
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %260, align 8
  %262 = icmp ne %struct.TYPE_14__* %261, null
  br i1 %262, label %263, label %323

263:                                              ; preds = %258
  store i32 0, i32* %6, align 4
  br label %264

264:                                              ; preds = %319, %263
  %265 = load i32, i32* %6, align 4
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 2
  %268 = load %struct.TYPE_14__*, %struct.TYPE_14__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = icmp slt i32 %265, %270
  br i1 %271, label %272, label %322

272:                                              ; preds = %264
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 2
  %275 = load %struct.TYPE_14__*, %struct.TYPE_14__** %274, align 8
  %276 = load i32, i32* %6, align 4
  %277 = call i64 @ccv_array_get(%struct.TYPE_14__* %275, i32 %276)
  %278 = inttoptr i64 %277 to i32*
  %279 = load i32, i32* %278, align 4
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = icmp eq i32 %279, %281
  br i1 %282, label %283, label %318

283:                                              ; preds = %272
  %284 = load i32, i32* %6, align 4
  %285 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 2
  %287 = load %struct.TYPE_14__*, %struct.TYPE_14__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = sub nsw i32 %289, 1
  %291 = icmp slt i32 %284, %290
  br i1 %291, label %292, label %311

292:                                              ; preds = %283
  %293 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 2
  %295 = load %struct.TYPE_14__*, %struct.TYPE_14__** %294, align 8
  %296 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 2
  %298 = load %struct.TYPE_14__*, %struct.TYPE_14__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = sub nsw i32 %300, 1
  %302 = call i64 @ccv_array_get(%struct.TYPE_14__* %295, i32 %301)
  %303 = inttoptr i64 %302 to i32*
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %305, i32 0, i32 2
  %307 = load %struct.TYPE_14__*, %struct.TYPE_14__** %306, align 8
  %308 = load i32, i32* %6, align 4
  %309 = call i64 @ccv_array_get(%struct.TYPE_14__* %307, i32 %308)
  %310 = inttoptr i64 %309 to i32*
  store i32 %304, i32* %310, align 4
  br label %311

311:                                              ; preds = %292, %283
  %312 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 2
  %314 = load %struct.TYPE_14__*, %struct.TYPE_14__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = add nsw i32 %316, -1
  store i32 %317, i32* %315, align 4
  br label %322

318:                                              ; preds = %272
  br label %319

319:                                              ; preds = %318
  %320 = load i32, i32* %6, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %6, align 4
  br label %264

322:                                              ; preds = %311, %264
  br label %323

323:                                              ; preds = %322, %258
  %324 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %326, i32 0, i32 1
  %328 = load %struct.TYPE_14__*, %struct.TYPE_14__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = icmp slt i32 %325, %330
  br i1 %331, label %332, label %352

332:                                              ; preds = %323
  %333 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = icmp slt i32 %334, %338
  br i1 %339, label %346, label %340

340:                                              ; preds = %332
  %341 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %342 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = icmp slt i32 %344, 0
  br i1 %345, label %346, label %352

346:                                              ; preds = %340, %332
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %350 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %350, i32 0, i32 0
  store i32 %348, i32* %351, align 8
  br label %368

352:                                              ; preds = %340, %323
  %353 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %354 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %358 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %357, i32 0, i32 1
  %359 = load %struct.TYPE_14__*, %struct.TYPE_14__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 4
  %362 = icmp sge i32 %356, %361
  br i1 %362, label %363, label %367

363:                                              ; preds = %352
  %364 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %365 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %365, i32 0, i32 0
  store i32 -1, i32* %366, align 8
  br label %367

367:                                              ; preds = %363, %352
  br label %368

368:                                              ; preds = %367, %346
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ccv_array_add_unique_int(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @_ccv_nnc_graph_exec_symbol_free(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @CCV_NNC_GRAPH_EXEC_IS_DEAD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
