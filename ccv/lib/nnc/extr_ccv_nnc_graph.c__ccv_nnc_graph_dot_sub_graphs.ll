; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_graph.c__ccv_nnc_graph_dot_sub_graphs.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_graph.c__ccv_nnc_graph_dot_sub_graphs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_15__*, i32, %struct.TYPE_15__* }

@CCV_NNC_GRAPH_EXEC_P_WHILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"subgraph cluster%d {\0Astyle=\22rounded\22;\0Anode%d [style=invisible];\0A\00", align 1
@CCV_NNC_GRAPH_EXEC_CASE_OF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"subgraph cluster%d {\0Astyle=\22rounded\22;\0Anode%d [style=invisible];\0Alabel=\22\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"node%d -> node%d [ltail=cluster%d,lhead=cluster%d];\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"node%d -> node%d [ltail=cluster%d];\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"node%d -> node%d [lhead=cluster%d];\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"node%d -> node%d;\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32, %struct.TYPE_15__*, i32, i32, i32*, i32*, i32*)* @_ccv_nnc_graph_dot_sub_graphs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_nnc_graph_dot_sub_graphs(%struct.TYPE_14__* %0, i32 %1, %struct.TYPE_15__* %2, i32 %3, i32 %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_13__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_14__*, align 8
  %26 = alloca %struct.TYPE_14__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @CCV_NNC_GRAPH_EXEC_P_WHILE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %8
  %36 = load i32*, i32** %14, align 8
  %37 = load i32*, i32** %16, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %16, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i32*, i8*, i32, i32, ...) @fprintf(i32* %36, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %40)
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %44 = call i32* @CCV_NNC_GRAPH_REF(%struct.TYPE_14__* %43)
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 1
  %48 = call i64 @ccv_array_get(%struct.TYPE_15__* %42, i32 %47)
  %49 = inttoptr i64 %48 to %struct.TYPE_13__**
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  store %struct.TYPE_13__* %50, %struct.TYPE_13__** %17, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %52 = load i32*, i32** %16, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = sub nsw i32 %57, 1
  %59 = load i32*, i32** %14, align 8
  %60 = load i32*, i32** %15, align 8
  %61 = call i32 @_ccv_nnc_graph_dot_while_label(%struct.TYPE_14__* %51, i32 %53, i32 %54, %struct.TYPE_13__* %55, i32 %56, i32 %58, i32* %59, i32* %60)
  br label %87

62:                                               ; preds = %8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @CCV_NNC_GRAPH_EXEC_CASE_OF, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %62
  %70 = load i32*, i32** %14, align 8
  %71 = load i32*, i32** %16, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %16, align 8
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i32*, i8*, i32, i32, ...) @fprintf(i32* %70, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %74)
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %77 = load i32*, i32** %16, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %13, align 4
  %82 = sub nsw i32 %81, 1
  %83 = load i32*, i32** %14, align 8
  %84 = load i32*, i32** %15, align 8
  %85 = call i32 @_ccv_nnc_graph_dot_case_of_label(%struct.TYPE_14__* %76, i32 %78, i32 %79, i32 %80, i32 %82, i32* %83, i32* %84)
  br label %86

86:                                               ; preds = %69, %62
  br label %87

87:                                               ; preds = %86, %35
  %88 = load i32*, i32** %16, align 8
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  store i32 0, i32* %18, align 4
  br label %91

91:                                               ; preds = %362, %87
  %92 = load i32, i32* %18, align 4
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %365

97:                                               ; preds = %91
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @CCV_NNC_GRAPH_EXEC_CASE_OF, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %97
  %105 = load i32*, i32** %14, align 8
  %106 = load i32*, i32** %16, align 8
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %16, align 8
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (i32*, i8*, i32, i32, ...) @fprintf(i32* %105, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %107, i32 %109)
  %111 = load i32*, i32** %16, align 8
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %104, %97
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %117 = call i32* @CCV_NNC_GRAPH_REF(%struct.TYPE_14__* %116)
  %118 = load i32, i32* %18, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = sub nsw i32 %121, 1
  %123 = call i64 @ccv_array_get(%struct.TYPE_15__* %115, i32 %122)
  %124 = inttoptr i64 %123 to %struct.TYPE_13__**
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %124, align 8
  store %struct.TYPE_13__* %125, %struct.TYPE_13__** %19, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %127 = call i32 @_ccv_nnc_graph_tensor_dot_recovery(%struct.TYPE_13__* %126)
  store i32 %127, i32* %20, align 4
  store i32 0, i32* %23, align 4
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = mul i64 4, %133
  %135 = trunc i64 %134 to i32
  %136 = call i64 @ccmalloc(i32 %135)
  %137 = inttoptr i64 %136 to i32*
  store i32* %137, i32** %24, align 8
  store i32 0, i32* %21, align 4
  br label %138

138:                                              ; preds = %191, %114
  %139 = load i32, i32* %21, align 4
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp slt i32 %139, %144
  br i1 %145, label %146, label %194

146:                                              ; preds = %138
  %147 = load i32*, i32** %16, align 8
  %148 = load i32, i32* %147, align 4
  %149 = load i32*, i32** %24, align 8
  %150 = load i32, i32* %21, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 %148, i32* %152, align 4
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %154, align 8
  %156 = load i32, i32* %21, align 4
  %157 = call i64 @ccv_array_get(%struct.TYPE_15__* %155, i32 %156)
  %158 = inttoptr i64 %157 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %158, %struct.TYPE_14__** %25, align 8
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %160 = call i32* @CCV_NNC_GRAPH_REF(%struct.TYPE_14__* %159)
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %175

164:                                              ; preds = %146
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %166 = load i32, i32* %20, align 4
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %168, align 8
  %170 = load i32, i32* %12, align 4
  %171 = load i32, i32* %13, align 4
  %172 = add nsw i32 %171, 1
  %173 = load i32*, i32** %14, align 8
  %174 = load i32*, i32** %16, align 8
  call void @_ccv_nnc_graph_dot_sub_graphs(%struct.TYPE_14__* %165, i32 %166, %struct.TYPE_15__* %169, i32 %170, i32 %172, i32* %173, i32* %23, i32* %174)
  br label %190

175:                                              ; preds = %146
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %177 = load i32*, i32** %16, align 8
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* %20, align 4
  %183 = load i32, i32* %12, align 4
  %184 = load i32, i32* %13, align 4
  %185 = load i32*, i32** %14, align 8
  %186 = call i32 @_ccv_nnc_graph_dot_node(%struct.TYPE_14__* %176, i32 %178, i32 %181, i32 %182, i32 %183, i32 %184, i32* %185, i32* %23)
  %187 = load i32*, i32** %16, align 8
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %187, align 4
  br label %190

190:                                              ; preds = %175, %164
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %21, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %21, align 4
  br label %138

194:                                              ; preds = %138
  store i32 0, i32* %21, align 4
  br label %195

195:                                              ; preds = %352, %194
  %196 = load i32, i32* %21, align 4
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = icmp slt i32 %196, %201
  br i1 %202, label %203, label %355

203:                                              ; preds = %195
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %205, align 8
  %207 = load i32, i32* %21, align 4
  %208 = call i64 @ccv_array_get(%struct.TYPE_15__* %206, i32 %207)
  %209 = inttoptr i64 %208 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %209, %struct.TYPE_14__** %26, align 8
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 2
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %211, align 8
  %213 = icmp ne %struct.TYPE_15__* %212, null
  br i1 %213, label %214, label %351

214:                                              ; preds = %203
  store i32 0, i32* %22, align 4
  br label %215

215:                                              ; preds = %347, %214
  %216 = load i32, i32* %22, align 4
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 2
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = icmp slt i32 %216, %221
  br i1 %222, label %223, label %350

223:                                              ; preds = %215
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 2
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %225, align 8
  %227 = load i32, i32* %22, align 4
  %228 = call i64 @ccv_array_get(%struct.TYPE_15__* %226, i32 %227)
  %229 = inttoptr i64 %228 to i32*
  %230 = load i32, i32* %229, align 4
  store i32 %230, i32* %27, align 4
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %232, align 8
  %234 = load i32, i32* %27, align 4
  %235 = call i64 @ccv_array_get(%struct.TYPE_15__* %233, i32 %234)
  %236 = inttoptr i64 %235 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %236, %struct.TYPE_14__** %28, align 8
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %238 = call i32* @CCV_NNC_GRAPH_REF(%struct.TYPE_14__* %237)
  %239 = getelementptr inbounds i32, i32* %238, i64 0
  %240 = load i32, i32* %239, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %271

242:                                              ; preds = %223
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %244 = call i32* @CCV_NNC_GRAPH_REF(%struct.TYPE_14__* %243)
  %245 = getelementptr inbounds i32, i32* %244, i64 0
  %246 = load i32, i32* %245, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %271

248:                                              ; preds = %242
  %249 = load i32*, i32** %14, align 8
  %250 = load i32*, i32** %24, align 8
  %251 = load i32, i32* %21, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = load i32*, i32** %24, align 8
  %256 = load i32, i32* %27, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = load i32*, i32** %24, align 8
  %261 = load i32, i32* %21, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = load i32*, i32** %24, align 8
  %266 = load i32, i32* %27, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = call i32 (i32*, i8*, i32, i32, ...) @fprintf(i32* %249, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %254, i32 %259, i32 %264, i32 %269)
  br label %346

271:                                              ; preds = %242, %223
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %273 = call i32* @CCV_NNC_GRAPH_REF(%struct.TYPE_14__* %272)
  %274 = getelementptr inbounds i32, i32* %273, i64 0
  %275 = load i32, i32* %274, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %301

277:                                              ; preds = %271
  %278 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %279 = call i32* @CCV_NNC_GRAPH_REF(%struct.TYPE_14__* %278)
  %280 = getelementptr inbounds i32, i32* %279, i64 0
  %281 = load i32, i32* %280, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %301, label %283

283:                                              ; preds = %277
  %284 = load i32*, i32** %14, align 8
  %285 = load i32*, i32** %24, align 8
  %286 = load i32, i32* %21, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = load i32*, i32** %24, align 8
  %291 = load i32, i32* %27, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %290, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = load i32*, i32** %24, align 8
  %296 = load i32, i32* %21, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = call i32 (i32*, i8*, i32, i32, ...) @fprintf(i32* %284, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %289, i32 %294, i32 %299)
  br label %345

301:                                              ; preds = %277, %271
  %302 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %303 = call i32* @CCV_NNC_GRAPH_REF(%struct.TYPE_14__* %302)
  %304 = getelementptr inbounds i32, i32* %303, i64 0
  %305 = load i32, i32* %304, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %331, label %307

307:                                              ; preds = %301
  %308 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %309 = call i32* @CCV_NNC_GRAPH_REF(%struct.TYPE_14__* %308)
  %310 = getelementptr inbounds i32, i32* %309, i64 0
  %311 = load i32, i32* %310, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %331

313:                                              ; preds = %307
  %314 = load i32*, i32** %14, align 8
  %315 = load i32*, i32** %24, align 8
  %316 = load i32, i32* %21, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = load i32*, i32** %24, align 8
  %321 = load i32, i32* %27, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %320, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = load i32*, i32** %24, align 8
  %326 = load i32, i32* %27, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %325, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = call i32 (i32*, i8*, i32, i32, ...) @fprintf(i32* %314, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %319, i32 %324, i32 %329)
  br label %344

331:                                              ; preds = %307, %301
  %332 = load i32*, i32** %14, align 8
  %333 = load i32*, i32** %24, align 8
  %334 = load i32, i32* %21, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %333, i64 %335
  %337 = load i32, i32* %336, align 4
  %338 = load i32*, i32** %24, align 8
  %339 = load i32, i32* %27, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32, i32* %338, i64 %340
  %342 = load i32, i32* %341, align 4
  %343 = call i32 (i32*, i8*, i32, i32, ...) @fprintf(i32* %332, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %337, i32 %342)
  br label %344

344:                                              ; preds = %331, %313
  br label %345

345:                                              ; preds = %344, %283
  br label %346

346:                                              ; preds = %345, %248
  br label %347

347:                                              ; preds = %346
  %348 = load i32, i32* %22, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %22, align 4
  br label %215

350:                                              ; preds = %215
  br label %351

351:                                              ; preds = %350, %203
  br label %352

352:                                              ; preds = %351
  %353 = load i32, i32* %21, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %21, align 4
  br label %195

355:                                              ; preds = %195
  %356 = load i32*, i32** %14, align 8
  %357 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* %356)
  %358 = load i32, i32* %20, align 4
  %359 = call i32 @_ccv_nnc_graph_tensor_dot_recovery_free(i32 %358)
  %360 = load i32*, i32** %24, align 8
  %361 = call i32 @ccfree(i32* %360)
  br label %362

362:                                              ; preds = %355
  %363 = load i32, i32* %18, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %18, align 4
  br label %91

365:                                              ; preds = %91
  %366 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %367 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* @CCV_NNC_GRAPH_EXEC_CASE_OF, align 4
  %370 = and i32 %368, %369
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %375

372:                                              ; preds = %365
  %373 = load i32*, i32** %14, align 8
  %374 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* %373)
  br label %375

375:                                              ; preds = %372, %365
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i32, i32, ...) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_15__*, i32) #1

declare dso_local i32* @CCV_NNC_GRAPH_REF(%struct.TYPE_14__*) #1

declare dso_local i32 @_ccv_nnc_graph_dot_while_label(%struct.TYPE_14__*, i32, i32, %struct.TYPE_13__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @_ccv_nnc_graph_dot_case_of_label(%struct.TYPE_14__*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @_ccv_nnc_graph_tensor_dot_recovery(%struct.TYPE_13__*) #1

declare dso_local i64 @ccmalloc(i32) #1

declare dso_local i32 @_ccv_nnc_graph_dot_node(%struct.TYPE_14__*, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @_ccv_nnc_graph_tensor_dot_recovery_free(i32) #1

declare dso_local i32 @ccfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
