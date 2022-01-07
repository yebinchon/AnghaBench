; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph.c__ccv_nnc_symbolic_graph_dot_tensor_symbol.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph.c__ccv_nnc_symbolic_graph_dot_tensor_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i32 }

@CCV_NNC_LONG_DOT_GRAPH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"tensor%d\00", align 1
@CCV_NNC_TENSOR_SYMBOL_INIT_ZEROS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c" (0\00", align 1
@CCV_NNC_TENSOR_SYMBOL_INIT_ONES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c" (1\00", align 1
@CCV_NNC_TENSOR_SYMBOL_TAPE_VAR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c",t\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" (t\00", align 1
@CCV_TENSOR_GPU_MEMORY = common dso_local global i64 0, align 8
@CCV_COMPUTE_DEVICE_ANY = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c",d%d\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" (d%d\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"</td><td>%d\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"|%d\00", align 1
@CCV_NNC_MAX_DIM_ALLOC = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"x%d\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"</td><td border=\220\22>as. \00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"|as. \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_6__*, %struct.TYPE_6__*, i32, i32, i32*)* @_ccv_nnc_symbolic_graph_dot_tensor_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_nnc_symbolic_graph_dot_tensor_symbol(i32 %0, %struct.TYPE_6__* %1, %struct.TYPE_6__* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @CCV_NNC_LONG_DOT_GRAPH, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %6
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %21 = icmp ne %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %19, %6
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32*, i32** %12, align 8
  %27 = call i32 @fputc(i8 signext 123, i32* %26)
  br label %28

28:                                               ; preds = %25, %22, %19
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = call i32 @fputs(i8* %36, i32* %37)
  br label %43

39:                                               ; preds = %28
  %40 = load i32*, i32** %12, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @fprintf(i32* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %39, %33
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @CCV_NNC_LONG_DOT_GRAPH, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %130

47:                                               ; preds = %43
  store i32 -1, i32* %13, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @CCV_NNC_TENSOR_SYMBOL_INIT_ZEROS, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i32*, i32** %12, align 8
  %56 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %55)
  store i32 %56, i32* %13, align 4
  br label %68

57:                                               ; preds = %47
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @CCV_NNC_TENSOR_SYMBOL_INIT_ONES, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %65)
  store i32 %66, i32* %13, align 4
  br label %67

67:                                               ; preds = %64, %57
  br label %68

68:                                               ; preds = %67, %54
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @CCV_NNC_TENSOR_SYMBOL_TAPE_VAR, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %68
  %76 = load i32, i32* %13, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32*, i32** %12, align 8
  %80 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %79)
  br label %84

81:                                               ; preds = %75
  %82 = load i32*, i32** %12, align 8
  %83 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = phi i32 [ %80, %78 ], [ %83, %81 ]
  store i32 %85, i32* %13, align 4
  br label %86

86:                                               ; preds = %84, %68
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @CCV_TENSOR_GET_MEMORY(i32 %90)
  %92 = load i64, i64* @CCV_TENSOR_GPU_MEMORY, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %123

94:                                               ; preds = %86
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @CCV_TENSOR_GET_DEVICE(i32 %98)
  %100 = load i64, i64* @CCV_COMPUTE_DEVICE_ANY, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %123

102:                                              ; preds = %94
  %103 = load i32, i32* %13, align 4
  %104 = icmp sge i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  %106 = load i32*, i32** %12, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @CCV_TENSOR_GET_DEVICE_ID(i32 %110)
  %112 = call i32 @fprintf(i32* %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %111)
  br label %121

113:                                              ; preds = %102
  %114 = load i32*, i32** %12, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @CCV_TENSOR_GET_DEVICE_ID(i32 %118)
  %120 = call i32 @fprintf(i32* %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %113, %105
  %122 = phi i32 [ %112, %105 ], [ %120, %113 ]
  store i32 %122, i32* %13, align 4
  br label %123

123:                                              ; preds = %121, %94, %86
  %124 = load i32, i32* %13, align 4
  %125 = icmp sge i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32*, i32** %12, align 8
  %128 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32* %127)
  br label %129

129:                                              ; preds = %126, %123
  br label %130

130:                                              ; preds = %129, %43
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* @CCV_NNC_LONG_DOT_GRAPH, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %187

134:                                              ; preds = %130
  %135 = load i32, i32* %10, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %134
  %138 = load i32*, i32** %12, align 8
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @fprintf(i32* %138, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %144)
  br label %155

146:                                              ; preds = %134
  %147 = load i32*, i32** %12, align 8
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @fprintf(i32* %147, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %153)
  br label %155

155:                                              ; preds = %146, %137
  store i32 1, i32* %14, align 4
  br label %156

156:                                              ; preds = %183, %155
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* @CCV_NNC_MAX_DIM_ALLOC, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %170

160:                                              ; preds = %156
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %14, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br label %170

170:                                              ; preds = %160, %156
  %171 = phi i1 [ false, %156 ], [ %169, %160 ]
  br i1 %171, label %172, label %186

172:                                              ; preds = %170
  %173 = load i32*, i32** %12, align 8
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %14, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @fprintf(i32* %173, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %181)
  br label %183

183:                                              ; preds = %172
  %184 = load i32, i32* %14, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %14, align 4
  br label %156

186:                                              ; preds = %170
  br label %187

187:                                              ; preds = %186, %130
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %189 = icmp ne %struct.TYPE_6__* %188, null
  br i1 %189, label %190, label %305

190:                                              ; preds = %187
  %191 = load i32, i32* %10, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %190
  %194 = load i32*, i32** %12, align 8
  %195 = call i32 @fputs(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32* %194)
  br label %199

196:                                              ; preds = %190
  %197 = load i32*, i32** %12, align 8
  %198 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32* %197)
  br label %199

199:                                              ; preds = %196, %193
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = icmp ne i8* %202, null
  br i1 %203, label %204, label %210

204:                                              ; preds = %199
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8
  %208 = load i32*, i32** %12, align 8
  %209 = call i32 @fputs(i8* %207, i32* %208)
  br label %217

210:                                              ; preds = %199
  %211 = load i32*, i32** %12, align 8
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = sub nsw i32 %214, 1
  %216 = call i32 @fprintf(i32* %211, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %215)
  br label %217

217:                                              ; preds = %210, %204
  %218 = load i32, i32* %11, align 4
  %219 = load i32, i32* @CCV_NNC_LONG_DOT_GRAPH, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %304

221:                                              ; preds = %217
  store i32 -1, i32* %15, align 4
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @CCV_NNC_TENSOR_SYMBOL_INIT_ZEROS, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %221
  %229 = load i32*, i32** %12, align 8
  %230 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %229)
  store i32 %230, i32* %15, align 4
  br label %242

231:                                              ; preds = %221
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @CCV_NNC_TENSOR_SYMBOL_INIT_ONES, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %231
  %239 = load i32*, i32** %12, align 8
  %240 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %239)
  store i32 %240, i32* %15, align 4
  br label %241

241:                                              ; preds = %238, %231
  br label %242

242:                                              ; preds = %241, %228
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @CCV_NNC_TENSOR_SYMBOL_TAPE_VAR, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %260

249:                                              ; preds = %242
  %250 = load i32, i32* %15, align 4
  %251 = icmp sge i32 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %249
  %253 = load i32*, i32** %12, align 8
  %254 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %253)
  br label %258

255:                                              ; preds = %249
  %256 = load i32*, i32** %12, align 8
  %257 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* %256)
  br label %258

258:                                              ; preds = %255, %252
  %259 = phi i32 [ %254, %252 ], [ %257, %255 ]
  store i32 %259, i32* %15, align 4
  br label %260

260:                                              ; preds = %258, %242
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 3
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = call i64 @CCV_TENSOR_GET_MEMORY(i32 %264)
  %266 = load i64, i64* @CCV_TENSOR_GPU_MEMORY, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %297

268:                                              ; preds = %260
  %269 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 3
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  %273 = call i64 @CCV_TENSOR_GET_DEVICE(i32 %272)
  %274 = load i64, i64* @CCV_COMPUTE_DEVICE_ANY, align 8
  %275 = icmp ne i64 %273, %274
  br i1 %275, label %276, label %297

276:                                              ; preds = %268
  %277 = load i32, i32* %15, align 4
  %278 = icmp sge i32 %277, 0
  br i1 %278, label %279, label %287

279:                                              ; preds = %276
  %280 = load i32*, i32** %12, align 8
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 3
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = call i32 @CCV_TENSOR_GET_DEVICE_ID(i32 %284)
  %286 = call i32 @fprintf(i32* %280, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %285)
  br label %295

287:                                              ; preds = %276
  %288 = load i32*, i32** %12, align 8
  %289 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 3
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 8
  %293 = call i32 @CCV_TENSOR_GET_DEVICE_ID(i32 %292)
  %294 = call i32 @fprintf(i32* %288, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %293)
  br label %295

295:                                              ; preds = %287, %279
  %296 = phi i32 [ %286, %279 ], [ %294, %287 ]
  store i32 %296, i32* %15, align 4
  br label %297

297:                                              ; preds = %295, %268, %260
  %298 = load i32, i32* %15, align 4
  %299 = icmp sge i32 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %297
  %301 = load i32*, i32** %12, align 8
  %302 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32* %301)
  br label %303

303:                                              ; preds = %300, %297
  br label %304

304:                                              ; preds = %303, %217
  br label %305

305:                                              ; preds = %304, %187
  %306 = load i32, i32* %11, align 4
  %307 = load i32, i32* @CCV_NNC_LONG_DOT_GRAPH, align 4
  %308 = icmp eq i32 %306, %307
  br i1 %308, label %312, label %309

309:                                              ; preds = %305
  %310 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %311 = icmp ne %struct.TYPE_6__* %310, null
  br i1 %311, label %312, label %318

312:                                              ; preds = %309, %305
  %313 = load i32, i32* %10, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %318, label %315

315:                                              ; preds = %312
  %316 = load i32*, i32** %12, align 8
  %317 = call i32 @fputc(i8 signext 125, i32* %316)
  br label %318

318:                                              ; preds = %315, %312, %309
  ret void
}

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, i32) #1

declare dso_local i64 @CCV_TENSOR_GET_MEMORY(i32) #1

declare dso_local i64 @CCV_TENSOR_GET_DEVICE(i32) #1

declare dso_local i32 @CCV_TENSOR_GET_DEVICE_ID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
