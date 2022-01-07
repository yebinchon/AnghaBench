; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_backward.c__ccv_nnc_symbolic_graph_backward_prep_free.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_backward.c__ccv_nnc_symbolic_graph_backward_prep_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_13__*, i32, i32, %struct.TYPE_13__*, %struct.TYPE_15__*, %struct.TYPE_13__*, %struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_15__*, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { %struct.TYPE_15__*, %struct.TYPE_13__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @_ccv_nnc_symbolic_graph_backward_prep_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_nnc_symbolic_graph_backward_prep_free(%struct.TYPE_13__* byval(%struct.TYPE_13__) align 8 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 16
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %6, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %19 = icmp ne %struct.TYPE_13__* %18, null
  br i1 %19, label %20, label %64

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %58, %20
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %61

25:                                               ; preds = %21
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 15
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = icmp ne %struct.TYPE_13__* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 15
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = call i32 @ccfree(%struct.TYPE_13__* %39)
  br label %41

41:                                               ; preds = %33, %25
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 9
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %46, align 8
  %48 = icmp ne %struct.TYPE_15__* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %41
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %51 = load i32, i32* %2, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 9
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  %56 = call i32 @ccv_array_free(%struct.TYPE_15__* %55)
  br label %57

57:                                               ; preds = %49, %41
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %2, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %2, align 4
  br label %21

61:                                               ; preds = %21
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %63 = call i32 @ccfree(%struct.TYPE_13__* %62)
  br label %64

64:                                               ; preds = %61, %1
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 14
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  store %struct.TYPE_13__* %66, %struct.TYPE_13__** %7, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %68 = icmp ne %struct.TYPE_13__* %67, null
  br i1 %68, label %69, label %142

69:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %136, %69
  %71 = load i32, i32* %2, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %139

74:                                               ; preds = %70
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %76 = load i32, i32* %2, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 13
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  %81 = icmp ne %struct.TYPE_15__* %80, null
  br i1 %81, label %82, label %135

82:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %124, %82
  %84 = load i32, i32* %3, align 4
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %86 = load i32, i32* %2, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 13
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %84, %92
  br i1 %93, label %94, label %127

94:                                               ; preds = %83
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %96 = load i32, i32* %2, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 13
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %99, align 8
  %101 = load i32, i32* %3, align 4
  %102 = call i64 @ccv_array_get(%struct.TYPE_15__* %100, i32 %101)
  %103 = inttoptr i64 %102 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %103, %struct.TYPE_12__** %8, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %105, align 8
  %107 = icmp ne %struct.TYPE_15__* %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %94
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %110, align 8
  %112 = call i32 @ccv_array_free(%struct.TYPE_15__* %111)
  br label %113

113:                                              ; preds = %108, %94
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %115, align 8
  %117 = icmp ne %struct.TYPE_15__* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %120, align 8
  %122 = call i32 @ccv_array_free(%struct.TYPE_15__* %121)
  br label %123

123:                                              ; preds = %118, %113
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %3, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %3, align 4
  br label %83

127:                                              ; preds = %83
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %129 = load i32, i32* %2, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 13
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %132, align 8
  %134 = call i32 @ccv_array_free(%struct.TYPE_15__* %133)
  br label %135

135:                                              ; preds = %127, %74
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %2, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %2, align 4
  br label %70

139:                                              ; preds = %70
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %141 = call i32 @ccfree(%struct.TYPE_13__* %140)
  br label %142

142:                                              ; preds = %139, %64
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 12
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %143, align 8
  %145 = icmp ne %struct.TYPE_15__* %144, null
  br i1 %145, label %146, label %150

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 12
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %147, align 8
  %149 = call i32 @ccv_array_free(%struct.TYPE_15__* %148)
  br label %150

150:                                              ; preds = %146, %142
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 11
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %151, align 8
  store %struct.TYPE_15__* %152, %struct.TYPE_15__** %9, align 8
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %154 = icmp ne %struct.TYPE_15__* %153, null
  br i1 %154, label %155, label %193

155:                                              ; preds = %150
  store i32 0, i32* %2, align 4
  br label %156

156:                                              ; preds = %187, %155
  %157 = load i32, i32* %2, align 4
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = icmp slt i32 %157, %160
  br i1 %161, label %162, label %190

162:                                              ; preds = %156
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %164 = load i32, i32* %2, align 4
  %165 = call i64 @ccv_array_get(%struct.TYPE_15__* %163, i32 %164)
  %166 = inttoptr i64 %165 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %166, %struct.TYPE_14__** %10, align 8
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %168, align 8
  %170 = icmp ne %struct.TYPE_13__* %169, null
  br i1 %170, label %171, label %176

171:                                              ; preds = %162
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %173, align 8
  %175 = call i32 @ccfree(%struct.TYPE_13__* %174)
  br label %176

176:                                              ; preds = %171, %162
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %178, align 8
  %180 = icmp ne %struct.TYPE_15__* %179, null
  br i1 %180, label %181, label %186

181:                                              ; preds = %176
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %183, align 8
  %185 = call i32 @ccv_array_free(%struct.TYPE_15__* %184)
  br label %186

186:                                              ; preds = %181, %176
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %2, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %2, align 4
  br label %156

190:                                              ; preds = %156
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %192 = call i32 @ccv_array_free(%struct.TYPE_15__* %191)
  br label %193

193:                                              ; preds = %190, %150
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 10
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %194, align 8
  store %struct.TYPE_13__* %195, %struct.TYPE_13__** %11, align 8
  store i32 0, i32* %2, align 4
  br label %196

196:                                              ; preds = %233, %193
  %197 = load i32, i32* %2, align 4
  %198 = load i32, i32* %4, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %236

200:                                              ; preds = %196
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %202 = load i32, i32* %2, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 9
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %205, align 8
  %207 = icmp ne %struct.TYPE_15__* %206, null
  br i1 %207, label %208, label %216

208:                                              ; preds = %200
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %210 = load i32, i32* %2, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 9
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %213, align 8
  %215 = call i32 @ccv_array_free(%struct.TYPE_15__* %214)
  br label %216

216:                                              ; preds = %208, %200
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %218 = load i32, i32* %2, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 8
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %221, align 8
  %223 = icmp ne %struct.TYPE_13__* %222, null
  br i1 %223, label %224, label %232

224:                                              ; preds = %216
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %226 = load i32, i32* %2, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 8
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %229, align 8
  %231 = call i32 @ccfree(%struct.TYPE_13__* %230)
  br label %232

232:                                              ; preds = %224, %216
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %2, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %2, align 4
  br label %196

236:                                              ; preds = %196
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %238 = call i32 @ccfree(%struct.TYPE_13__* %237)
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 7
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @ccv_nnc_graph_visit_free(i32 %240)
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 6
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @ccv_nnc_graph_visit_free(i32 %243)
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 5
  %246 = load %struct.TYPE_13__*, %struct.TYPE_13__** %245, align 8
  %247 = call i32 @ccfree(%struct.TYPE_13__* %246)
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 4
  %249 = load %struct.TYPE_13__*, %struct.TYPE_13__** %248, align 8
  %250 = call i32 @ccfree(%struct.TYPE_13__* %249)
  store i32 0, i32* %2, align 4
  br label %251

251:                                              ; preds = %262, %236
  %252 = load i32, i32* %2, align 4
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = icmp slt i32 %252, %254
  br i1 %255, label %256, label %265

256:                                              ; preds = %251
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 3
  %258 = load %struct.TYPE_13__*, %struct.TYPE_13__** %257, align 8
  %259 = load i32, i32* %2, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i64 %260
  call void @_ccv_nnc_symbolic_graph_backward_prep_free(%struct.TYPE_13__* byval(%struct.TYPE_13__) align 8 %261)
  br label %262

262:                                              ; preds = %256
  %263 = load i32, i32* %2, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %2, align 4
  br label %251

265:                                              ; preds = %251
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 3
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %266, align 8
  %268 = icmp ne %struct.TYPE_13__* %267, null
  br i1 %268, label %269, label %273

269:                                              ; preds = %265
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 3
  %271 = load %struct.TYPE_13__*, %struct.TYPE_13__** %270, align 8
  %272 = call i32 @ccfree(%struct.TYPE_13__* %271)
  br label %273

273:                                              ; preds = %269, %265
  ret void
}

declare dso_local i32 @ccfree(%struct.TYPE_13__*) #1

declare dso_local i32 @ccv_array_free(%struct.TYPE_15__*) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ccv_nnc_graph_visit_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
