; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph.c__ccv_nnc_symbolic_graph_dot_sub_graphs.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph.c__ccv_nnc_symbolic_graph_dot_sub_graphs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__* }

@CCV_NNC_GRAPH_EXEC_P_WHILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"subgraph cluster%d {\0Astyle=\22rounded\22;\0Anode%d [style=invisible];\0Alabel=<\00", align 1
@CCV_NNC_GRAPH_EXEC_CASE_OF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c">;\0A\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"subgraph cluster%d {\0Astyle=\22rounded\22;\0Anode%d [style=invisible];\0Alabel=\22\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"node%d -> node%d [ltail=cluster%d,lhead=cluster%d];\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"node%d -> node%d [ltail=cluster%d];\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"node%d -> node%d [lhead=cluster%d];\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"node%d -> node%d;\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_18__*, %struct.TYPE_18__*, i32, i32*, i32*)* @_ccv_nnc_symbolic_graph_dot_sub_graphs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_nnc_symbolic_graph_dot_sub_graphs(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1, %struct.TYPE_18__* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_17__*, align 8
  %20 = alloca %struct.TYPE_17__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @CCV_NNC_GRAPH_EXEC_P_WHILE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %6
  %30 = load i32*, i32** %11, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %12, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32*, i8*, i32, i32, ...) @fprintf(i32* %30, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %34)
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %38 = call i32* @CCV_NNC_GRAPH_REF(%struct.TYPE_17__* %37)
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 1
  %42 = call i64 @ccv_array_get(%struct.TYPE_18__* %36, i32 %41)
  %43 = inttoptr i64 %42 to %struct.TYPE_16__**
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  store %struct.TYPE_16__* %44, %struct.TYPE_16__** %16, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @_ccv_nnc_symbolic_graph_dot_while_label(%struct.TYPE_17__* %45, i32 %47, %struct.TYPE_18__* %48, %struct.TYPE_16__* %49, i32 %50, i32* %51)
  br label %75

53:                                               ; preds = %6
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @CCV_NNC_GRAPH_EXEC_CASE_OF, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %53
  %61 = load i32*, i32** %11, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %12, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i32*, i8*, i32, i32, ...) @fprintf(i32* %61, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %65)
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i32*, i32** %11, align 8
  %73 = call i32 @_ccv_nnc_symbolic_graph_dot_case_of_label(%struct.TYPE_17__* %67, i32 %69, %struct.TYPE_18__* %70, i32 %71, i32* %72)
  br label %74

74:                                               ; preds = %60, %53
  br label %75

75:                                               ; preds = %74, %29
  %76 = load i32*, i32** %11, align 8
  %77 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %76)
  %78 = load i32*, i32** %12, align 8
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  store i32 0, i32* %15, align 4
  br label %81

81:                                               ; preds = %359, %75
  %82 = load i32, i32* %15, align 4
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %362

87:                                               ; preds = %81
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @CCV_NNC_GRAPH_EXEC_CASE_OF, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %87
  %95 = load i32*, i32** %11, align 8
  %96 = load i32*, i32** %12, align 8
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %12, align 8
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i32*, i8*, i32, i32, ...) @fprintf(i32* %95, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32 %97, i32 %99)
  %101 = load i32*, i32** %12, align 8
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %94, %87
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %107 = call i32* @CCV_NNC_GRAPH_REF(%struct.TYPE_17__* %106)
  %108 = load i32, i32* %15, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %111, 1
  %113 = call i64 @ccv_array_get(%struct.TYPE_18__* %105, i32 %112)
  %114 = inttoptr i64 %113 to %struct.TYPE_16__**
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %114, align 8
  store %struct.TYPE_16__* %115, %struct.TYPE_16__** %17, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = mul i64 4, %121
  %123 = trunc i64 %122 to i32
  %124 = call i64 @ccmalloc(i32 %123)
  %125 = inttoptr i64 %124 to i32*
  store i32* %125, i32** %18, align 8
  store i32 0, i32* %13, align 4
  br label %126

126:                                              ; preds = %183, %104
  %127 = load i32, i32* %13, align 4
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp slt i32 %127, %132
  br i1 %133, label %134, label %186

134:                                              ; preds = %126
  %135 = load i32*, i32** %12, align 8
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %18, align 8
  %138 = load i32, i32* %13, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 %136, i32* %140, align 4
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %142, align 8
  %144 = load i32, i32* %13, align 4
  %145 = call i64 @ccv_array_get(%struct.TYPE_18__* %143, i32 %144)
  %146 = inttoptr i64 %145 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %146, %struct.TYPE_17__** %19, align 8
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i64 @CCV_NNC_GRAPH_EXEC_IS_DEAD(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %134
  br label %183

153:                                              ; preds = %134
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %153
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %161, align 8
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %164, align 8
  %166 = load i32, i32* %10, align 4
  %167 = load i32*, i32** %11, align 8
  %168 = load i32*, i32** %12, align 8
  call void @_ccv_nnc_symbolic_graph_dot_sub_graphs(%struct.TYPE_17__* %159, %struct.TYPE_18__* %162, %struct.TYPE_18__* %165, i32 %166, i32* %167, i32* %168)
  br label %182

169:                                              ; preds = %153
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %171 = load i32*, i32** %12, align 8
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %174, align 8
  %176 = load i32, i32* %10, align 4
  %177 = load i32*, i32** %11, align 8
  %178 = call i32 @_ccv_nnc_symbolic_graph_dot_node(%struct.TYPE_17__* %170, i32 %172, %struct.TYPE_18__* %175, i32 %176, i32* %177)
  %179 = load i32*, i32** %12, align 8
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %179, align 4
  br label %182

182:                                              ; preds = %169, %158
  br label %183

183:                                              ; preds = %182, %152
  %184 = load i32, i32* %13, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %13, align 4
  br label %126

186:                                              ; preds = %126
  store i32 0, i32* %13, align 4
  br label %187

187:                                              ; preds = %351, %186
  %188 = load i32, i32* %13, align 4
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = icmp slt i32 %188, %193
  br i1 %194, label %195, label %354

195:                                              ; preds = %187
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %197, align 8
  %199 = load i32, i32* %13, align 4
  %200 = call i64 @ccv_array_get(%struct.TYPE_18__* %198, i32 %199)
  %201 = inttoptr i64 %200 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %201, %struct.TYPE_17__** %20, align 8
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i64 @CCV_NNC_GRAPH_EXEC_IS_DEAD(i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %195
  br label %351

208:                                              ; preds = %195
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 2
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %210, align 8
  %212 = icmp ne %struct.TYPE_18__* %211, null
  br i1 %212, label %213, label %350

213:                                              ; preds = %208
  store i32 0, i32* %14, align 4
  br label %214

214:                                              ; preds = %346, %213
  %215 = load i32, i32* %14, align 4
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 2
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = icmp slt i32 %215, %220
  br i1 %221, label %222, label %349

222:                                              ; preds = %214
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 2
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %224, align 8
  %226 = load i32, i32* %14, align 4
  %227 = call i64 @ccv_array_get(%struct.TYPE_18__* %225, i32 %226)
  %228 = inttoptr i64 %227 to i32*
  %229 = load i32, i32* %228, align 4
  store i32 %229, i32* %21, align 4
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_18__*, %struct.TYPE_18__** %231, align 8
  %233 = load i32, i32* %21, align 4
  %234 = call i64 @ccv_array_get(%struct.TYPE_18__* %232, i32 %233)
  %235 = inttoptr i64 %234 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %235, %struct.TYPE_17__** %22, align 8
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %237 = call i32* @CCV_NNC_GRAPH_REF(%struct.TYPE_17__* %236)
  %238 = getelementptr inbounds i32, i32* %237, i64 0
  %239 = load i32, i32* %238, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %270

241:                                              ; preds = %222
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %243 = call i32* @CCV_NNC_GRAPH_REF(%struct.TYPE_17__* %242)
  %244 = getelementptr inbounds i32, i32* %243, i64 0
  %245 = load i32, i32* %244, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %270

247:                                              ; preds = %241
  %248 = load i32*, i32** %11, align 8
  %249 = load i32*, i32** %18, align 8
  %250 = load i32, i32* %13, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = load i32*, i32** %18, align 8
  %255 = load i32, i32* %21, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = load i32*, i32** %18, align 8
  %260 = load i32, i32* %13, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = load i32*, i32** %18, align 8
  %265 = load i32, i32* %21, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = call i32 (i32*, i8*, i32, i32, ...) @fprintf(i32* %248, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %253, i32 %258, i32 %263, i32 %268)
  br label %345

270:                                              ; preds = %241, %222
  %271 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %272 = call i32* @CCV_NNC_GRAPH_REF(%struct.TYPE_17__* %271)
  %273 = getelementptr inbounds i32, i32* %272, i64 0
  %274 = load i32, i32* %273, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %300

276:                                              ; preds = %270
  %277 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %278 = call i32* @CCV_NNC_GRAPH_REF(%struct.TYPE_17__* %277)
  %279 = getelementptr inbounds i32, i32* %278, i64 0
  %280 = load i32, i32* %279, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %300, label %282

282:                                              ; preds = %276
  %283 = load i32*, i32** %11, align 8
  %284 = load i32*, i32** %18, align 8
  %285 = load i32, i32* %13, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %284, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = load i32*, i32** %18, align 8
  %290 = load i32, i32* %21, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = load i32*, i32** %18, align 8
  %295 = load i32, i32* %13, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = call i32 (i32*, i8*, i32, i32, ...) @fprintf(i32* %283, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %288, i32 %293, i32 %298)
  br label %344

300:                                              ; preds = %276, %270
  %301 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %302 = call i32* @CCV_NNC_GRAPH_REF(%struct.TYPE_17__* %301)
  %303 = getelementptr inbounds i32, i32* %302, i64 0
  %304 = load i32, i32* %303, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %330, label %306

306:                                              ; preds = %300
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %308 = call i32* @CCV_NNC_GRAPH_REF(%struct.TYPE_17__* %307)
  %309 = getelementptr inbounds i32, i32* %308, i64 0
  %310 = load i32, i32* %309, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %330

312:                                              ; preds = %306
  %313 = load i32*, i32** %11, align 8
  %314 = load i32*, i32** %18, align 8
  %315 = load i32, i32* %13, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %314, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = load i32*, i32** %18, align 8
  %320 = load i32, i32* %21, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %319, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = load i32*, i32** %18, align 8
  %325 = load i32, i32* %21, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %324, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = call i32 (i32*, i8*, i32, i32, ...) @fprintf(i32* %313, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %318, i32 %323, i32 %328)
  br label %343

330:                                              ; preds = %306, %300
  %331 = load i32*, i32** %11, align 8
  %332 = load i32*, i32** %18, align 8
  %333 = load i32, i32* %13, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %332, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = load i32*, i32** %18, align 8
  %338 = load i32, i32* %21, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %337, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = call i32 (i32*, i8*, i32, i32, ...) @fprintf(i32* %331, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %336, i32 %341)
  br label %343

343:                                              ; preds = %330, %312
  br label %344

344:                                              ; preds = %343, %282
  br label %345

345:                                              ; preds = %344, %247
  br label %346

346:                                              ; preds = %345
  %347 = load i32, i32* %14, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %14, align 4
  br label %214

349:                                              ; preds = %214
  br label %350

350:                                              ; preds = %349, %208
  br label %351

351:                                              ; preds = %350, %207
  %352 = load i32, i32* %13, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %13, align 4
  br label %187

354:                                              ; preds = %187
  %355 = load i32*, i32** %11, align 8
  %356 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32* %355)
  %357 = load i32*, i32** %18, align 8
  %358 = call i32 @ccfree(i32* %357)
  br label %359

359:                                              ; preds = %354
  %360 = load i32, i32* %15, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %15, align 4
  br label %81

362:                                              ; preds = %81
  %363 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %364 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = load i32, i32* @CCV_NNC_GRAPH_EXEC_CASE_OF, align 4
  %367 = and i32 %365, %366
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %372

369:                                              ; preds = %362
  %370 = load i32*, i32** %11, align 8
  %371 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32* %370)
  br label %372

372:                                              ; preds = %369, %362
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i32, i32, ...) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_18__*, i32) #1

declare dso_local i32* @CCV_NNC_GRAPH_REF(%struct.TYPE_17__*) #1

declare dso_local i32 @_ccv_nnc_symbolic_graph_dot_while_label(%struct.TYPE_17__*, i32, %struct.TYPE_18__*, %struct.TYPE_16__*, i32, i32*) #1

declare dso_local i32 @_ccv_nnc_symbolic_graph_dot_case_of_label(%struct.TYPE_17__*, i32, %struct.TYPE_18__*, i32, i32*) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i64 @ccmalloc(i32) #1

declare dso_local i64 @CCV_NNC_GRAPH_EXEC_IS_DEAD(i32) #1

declare dso_local i32 @_ccv_nnc_symbolic_graph_dot_node(%struct.TYPE_17__*, i32, %struct.TYPE_18__*, i32, i32*) #1

declare dso_local i32 @ccfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
