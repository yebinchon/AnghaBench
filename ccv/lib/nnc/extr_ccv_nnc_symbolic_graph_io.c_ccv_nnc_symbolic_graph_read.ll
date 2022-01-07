; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_io.c_ccv_nnc_symbolic_graph_read.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_io.c_ccv_nnc_symbolic_graph_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_20__*, %struct.TYPE_16__ }
%struct.TYPE_20__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32*, i8* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i8*, i32, i8*, i8* }

@SQLITE_OK = common dso_local global i64 0, align 8
@__const.ccv_nnc_symbolic_graph_read.graph_select_qs = private unnamed_addr constant [404 x i8] c"SELECT graph, tensor_symbol_size, exec_symbol_size, sources, destinations, sub_graphs, pair, p, p_idx, exec_idx, breakpoint_size, breakpoints, backward_tensor_symbol_size, backward_tensor_symbol_idx, backward_exec_symbol_size, backward_exec_symbol_idx, parallel_count, parallel_tensor_symbol_size, parallel_tensor_symbol_idx, parallel_exec_symbol_size, parallel_exec_symbol_idx FROM graph ORDER BY graph\00", align 16
@__const.ccv_nnc_symbolic_graph_read.tensor_symbol_select_qs = private unnamed_addr constant [199 x i8] c"SELECT id, assign_ref, r_assign_ref, bypass_ref, r_bypass_ref, p_ref, alias_ref, pair_ref, flags, ofs, inc, s_ref, name, type, format, datatype, dim FROM tensor_symbol WHERE graph=$graph ORDER BY id\00", align 16
@__const.ccv_nnc_symbolic_graph_read.exec_symbol_select_qs = private unnamed_addr constant [347 x i8] c"SELECT id, input_size, output_size, graph_ref_size, flags, pair_ref, inputs, outputs, outgoings, name, cmd_cmd, cmd_backend, cmd_algorithm, cmd_info, hint, graph_ref, case_of_expr, case_of_flags, case_of_argument_offset, case_of_argument_size, p_while_expr, p_while_input_size, p_while_inputs FROM graph_exec_symbol WHERE graph=$graph ORDER BY id\00", align 16
@SQLITE_ROW = common dso_local global i64 0, align 8
@__const.ccv_nnc_symbolic_graph_read.tensor_bind_count_qs = private unnamed_addr constant [33 x i8] c"SELECT COUNT(*) FROM tensor_bind\00", align 16
@__const.ccv_nnc_symbolic_graph_read.tensor_bind_select_qs = private unnamed_addr constant [69 x i8] c"SELECT id, graph, type, format, datatype, dim, data FROM tensor_bind\00", align 16
@CCV_NNC_NO_TENSOR_SYMBOL = common dso_local global i8* null, align 8
@CCV_TENSOR_CPU_MEMORY = common dso_local global i32 0, align 4
@CCV_TENSOR_GPU_MEMORY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccv_nnc_symbolic_graph_read(i8* %0, i32** %1, %struct.TYPE_18__** %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_18__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca [404 x i8], align 16
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca [199 x i8], align 16
  %15 = alloca [347 x i8], align 16
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [33 x i8], align 16
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca [69 x i8], align 16
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_18__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_17__, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32** %1, i32*** %6, align 8
  store %struct.TYPE_18__** %2, %struct.TYPE_18__*** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %31 = load i64, i64* @SQLITE_OK, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @sqlite3_open(i8* %32, i32** %9)
  %34 = icmp ne i64 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %4
  br label %331

36:                                               ; preds = %4
  %37 = call %struct.TYPE_19__* @ccv_array_new(i32 8, i32 1, i32 0)
  store %struct.TYPE_19__* %37, %struct.TYPE_19__** %10, align 8
  %38 = bitcast [404 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %38, i8* align 16 getelementptr inbounds ([404 x i8], [404 x i8]* @__const.ccv_nnc_symbolic_graph_read.graph_select_qs, i32 0, i32 0), i64 404, i1 false)
  store i32* null, i32** %12, align 8
  %39 = load i64, i64* @SQLITE_OK, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = getelementptr inbounds [404 x i8], [404 x i8]* %11, i64 0, i64 0
  %42 = call i64 @sqlite3_prepare_v2(i32* %40, i8* %41, i32 404, i32** %12, i32 0)
  %43 = icmp eq i64 %39, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @SQLITE_ENFORCE(i32 %44)
  store i32* null, i32** %13, align 8
  %46 = bitcast [199 x i8]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %46, i8* align 16 getelementptr inbounds ([199 x i8], [199 x i8]* @__const.ccv_nnc_symbolic_graph_read.tensor_symbol_select_qs, i32 0, i32 0), i64 199, i1 false)
  %47 = load i64, i64* @SQLITE_OK, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds [199 x i8], [199 x i8]* %14, i64 0, i64 0
  %50 = call i64 @sqlite3_prepare_v2(i32* %48, i8* %49, i32 199, i32** %13, i32 0)
  %51 = icmp eq i64 %47, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @SQLITE_ENFORCE(i32 %52)
  %54 = bitcast [347 x i8]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %54, i8* align 16 getelementptr inbounds ([347 x i8], [347 x i8]* @__const.ccv_nnc_symbolic_graph_read.exec_symbol_select_qs, i32 0, i32 0), i64 347, i1 false)
  store i32* null, i32** %16, align 8
  %55 = load i64, i64* @SQLITE_OK, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = getelementptr inbounds [347 x i8], [347 x i8]* %15, i64 0, i64 0
  %58 = call i64 @sqlite3_prepare_v2(i32* %56, i8* %57, i32 347, i32** %16, i32 0)
  %59 = icmp eq i64 %55, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @SQLITE_ENFORCE(i32 %60)
  br label %62

62:                                               ; preds = %67, %36
  %63 = load i64, i64* @SQLITE_ROW, align 8
  %64 = load i32*, i32** %12, align 8
  %65 = call i64 @sqlite3_step(i32* %64)
  %66 = icmp eq i64 %63, %65
  br i1 %66, label %67, label %87

67:                                               ; preds = %62
  %68 = call i32* (...) @ccv_nnc_symbolic_graph_new()
  store i32* %68, i32** %17, align 8
  %69 = load i32*, i32** %12, align 8
  %70 = call i8* @sqlite3_column_int(i32* %69, i32 0)
  %71 = ptrtoint i8* %70 to i32
  store i32 %71, i32* %18, align 4
  %72 = load i32, i32* %18, align 4
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %72, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %80 = call i32 @ccv_array_push(%struct.TYPE_19__* %79, i32** %17)
  %81 = load i32, i32* %18, align 4
  %82 = load i32*, i32** %12, align 8
  %83 = load i32*, i32** %13, align 8
  %84 = load i32*, i32** %16, align 8
  %85 = load i32*, i32** %17, align 8
  %86 = call i32 @_ccv_nnc_symbolic_graph_read(i32 %81, i32* %82, i32* %83, i32* %84, i32* %85)
  br label %62

87:                                               ; preds = %62
  store i32 0, i32* %19, align 4
  br label %88

88:                                               ; preds = %102, %87
  %89 = load i32, i32* %19, align 4
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %88
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %97 = load i32, i32* %19, align 4
  %98 = call i64 @ccv_array_get(%struct.TYPE_19__* %96, i32 %97)
  %99 = inttoptr i64 %98 to i32**
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @_ccv_nnc_symbolic_graph_rewire(%struct.TYPE_19__* %95, i32* %100)
  br label %102

102:                                              ; preds = %94
  %103 = load i32, i32* %19, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %19, align 4
  br label %88

105:                                              ; preds = %88
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %112 = call i64 @ccv_array_get(%struct.TYPE_19__* %111, i32 0)
  %113 = inttoptr i64 %112 to i32**
  %114 = load i32*, i32** %113, align 8
  br label %116

115:                                              ; preds = %105
  br label %116

116:                                              ; preds = %115, %110
  %117 = phi i32* [ %114, %110 ], [ null, %115 ]
  %118 = load i32**, i32*** %6, align 8
  store i32* %117, i32** %118, align 8
  %119 = load i32*, i32** %8, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %123 = icmp ne %struct.TYPE_18__** %122, null
  br i1 %123, label %133, label %124

124:                                              ; preds = %121, %116
  %125 = load i32*, i32** %8, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %131, label %127

127:                                              ; preds = %124
  %128 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %129 = icmp ne %struct.TYPE_18__** %128, null
  %130 = xor i1 %129, true
  br label %131

131:                                              ; preds = %127, %124
  %132 = phi i1 [ false, %124 ], [ %130, %127 ]
  br label %133

133:                                              ; preds = %131, %121
  %134 = phi i1 [ true, %121 ], [ %132, %131 ]
  %135 = zext i1 %134 to i32
  %136 = call i32 @assert(i32 %135)
  %137 = load i32*, i32** %8, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %320

139:                                              ; preds = %133
  %140 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %141 = icmp ne %struct.TYPE_18__** %140, null
  br i1 %141, label %142, label %320

142:                                              ; preds = %139
  %143 = bitcast [33 x i8]* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %143, i8* align 16 getelementptr inbounds ([33 x i8], [33 x i8]* @__const.ccv_nnc_symbolic_graph_read.tensor_bind_count_qs, i32 0, i32 0), i64 33, i1 false)
  store i32* null, i32** %21, align 8
  %144 = load i64, i64* @SQLITE_OK, align 8
  %145 = load i32*, i32** %9, align 8
  %146 = getelementptr inbounds [33 x i8], [33 x i8]* %20, i64 0, i64 0
  %147 = call i64 @sqlite3_prepare_v2(i32* %145, i8* %146, i32 33, i32** %21, i32 0)
  %148 = icmp eq i64 %144, %147
  %149 = zext i1 %148 to i32
  %150 = call i32 @SQLITE_ENFORCE(i32 %149)
  %151 = load i32*, i32** %21, align 8
  %152 = call i64 @sqlite3_step(i32* %151)
  %153 = load i32*, i32** %21, align 8
  %154 = call i8* @sqlite3_column_int(i32* %153, i32 0)
  %155 = ptrtoint i8* %154 to i32
  %156 = load i32*, i32** %8, align 8
  store i32 %155, i32* %156, align 4
  store i32 %155, i32* %22, align 4
  %157 = load i32*, i32** %21, align 8
  %158 = call i32 @sqlite3_finalize(i32* %157)
  %159 = load i32, i32* %22, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %142
  %162 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %162, align 8
  br label %319

163:                                              ; preds = %142
  %164 = bitcast [69 x i8]* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %164, i8* align 16 getelementptr inbounds ([69 x i8], [69 x i8]* @__const.ccv_nnc_symbolic_graph_read.tensor_bind_select_qs, i32 0, i32 0), i64 69, i1 false)
  store i32* null, i32** %24, align 8
  %165 = load i32, i32* %22, align 4
  %166 = sext i32 %165 to i64
  %167 = mul i64 24, %166
  %168 = trunc i64 %167 to i32
  %169 = call i64 @ccmalloc(i32 %168)
  %170 = inttoptr i64 %169 to %struct.TYPE_18__*
  %171 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  store %struct.TYPE_18__* %170, %struct.TYPE_18__** %171, align 8
  store %struct.TYPE_18__* %170, %struct.TYPE_18__** %25, align 8
  %172 = load i64, i64* @SQLITE_OK, align 8
  %173 = load i32*, i32** %9, align 8
  %174 = getelementptr inbounds [69 x i8], [69 x i8]* %23, i64 0, i64 0
  %175 = call i64 @sqlite3_prepare_v2(i32* %173, i8* %174, i32 69, i32** %24, i32 0)
  %176 = icmp eq i64 %172, %175
  %177 = zext i1 %176 to i32
  %178 = call i32 @SQLITE_ENFORCE(i32 %177)
  store i32 0, i32* %19, align 4
  br label %179

179:                                              ; preds = %286, %163
  %180 = load i64, i64* @SQLITE_ROW, align 8
  %181 = load i32*, i32** %24, align 8
  %182 = call i64 @sqlite3_step(i32* %181)
  %183 = icmp eq i64 %180, %182
  br i1 %183, label %184, label %289

184:                                              ; preds = %179
  %185 = load i32, i32* %19, align 4
  %186 = load i32, i32* %22, align 4
  %187 = icmp slt i32 %185, %186
  %188 = zext i1 %187 to i32
  %189 = call i32 @assert(i32 %188)
  %190 = load i32*, i32** %24, align 8
  %191 = call i8* @sqlite3_column_int(i32* %190, i32 0)
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %193 = load i32, i32* %19, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 1
  store i8* %191, i8** %197, align 8
  %198 = load i32*, i32** %24, align 8
  %199 = call i8* @sqlite3_column_int(i32* %198, i32 1)
  %200 = ptrtoint i8* %199 to i32
  store i32 %200, i32* %26, align 4
  %201 = load i32, i32* %26, align 4
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = icmp slt i32 %201, %204
  %206 = zext i1 %205 to i32
  %207 = call i32 @assert(i32 %206)
  %208 = load i32, i32* %26, align 4
  %209 = icmp sge i32 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %184
  %211 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %212 = load i32, i32* %26, align 4
  %213 = call i64 @ccv_array_get(%struct.TYPE_19__* %211, i32 %212)
  %214 = inttoptr i64 %213 to i32**
  %215 = load i32*, i32** %214, align 8
  br label %217

216:                                              ; preds = %184
  br label %217

217:                                              ; preds = %216, %210
  %218 = phi i32* [ %215, %210 ], [ null, %216 ]
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %220 = load i32, i32* %19, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 0
  store i32* %218, i32** %224, align 8
  %225 = load i32*, i32** %24, align 8
  %226 = call i8* @sqlite3_column_int(i32* %225, i32 2)
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  store i8* %226, i8** %227, align 8
  %228 = load i32*, i32** %24, align 8
  %229 = call i8* @sqlite3_column_int(i32* %228, i32 3)
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 3
  store i8* %229, i8** %230, align 8
  %231 = load i32*, i32** %24, align 8
  %232 = call i8* @sqlite3_column_int(i32* %231, i32 4)
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 2
  store i8* %232, i8** %233, align 8
  %234 = load i32*, i32** %24, align 8
  %235 = call i8* @sqlite3_column_blob(i32* %234, i32 5)
  %236 = bitcast i8* %235 to i32*
  store i32* %236, i32** %28, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @memset(i32 %238, i32 0, i32 4)
  %240 = load i32*, i32** %28, align 8
  %241 = icmp ne i32* %240, null
  br i1 %241, label %242, label %251

242:                                              ; preds = %217
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = load i32*, i32** %28, align 8
  %246 = bitcast i32* %245 to i8*
  %247 = load i32*, i32** %24, align 8
  %248 = call i32 @sqlite3_column_bytes(i32* %247, i32 5)
  %249 = call i32 @ccv_min(i64 4, i32 %248)
  %250 = call i32 @memcpy(i32 %244, i8* %246, i32 %249)
  br label %251

251:                                              ; preds = %242, %217
  %252 = load i32*, i32** %24, align 8
  %253 = call i8* @sqlite3_column_blob(i32* %252, i32 6)
  store i8* %253, i8** %29, align 8
  %254 = load i8*, i8** %29, align 8
  %255 = icmp ne i8* %254, null
  br i1 %255, label %262, label %256

256:                                              ; preds = %251
  %257 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %258 = load i32, i32* %19, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %260, i32 0, i32 0
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %261, align 8
  br label %285

262:                                              ; preds = %251
  %263 = call %struct.TYPE_20__* @ccv_nnc_tensor_new(i32 0, %struct.TYPE_17__* byval(%struct.TYPE_17__) align 8 %27, i32 0)
  %264 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %265 = load i32, i32* %19, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %267, i32 0, i32 0
  store %struct.TYPE_20__* %263, %struct.TYPE_20__** %268, align 8
  %269 = call i64 @ccv_nnc_tensor_data_size(%struct.TYPE_17__* byval(%struct.TYPE_17__) align 8 %27)
  store i64 %269, i64* %30, align 8
  %270 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %271 = load i32, i32* %19, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_20__*, %struct.TYPE_20__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load i8*, i8** %29, align 8
  %280 = load i64, i64* %30, align 8
  %281 = load i32*, i32** %24, align 8
  %282 = call i32 @sqlite3_column_bytes(i32* %281, i32 6)
  %283 = call i32 @ccv_min(i64 %280, i32 %282)
  %284 = call i32 @memcpy(i32 %278, i8* %279, i32 %283)
  br label %285

285:                                              ; preds = %262, %256
  br label %286

286:                                              ; preds = %285
  %287 = load i32, i32* %19, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %19, align 4
  br label %179

289:                                              ; preds = %179
  br label %290

290:                                              ; preds = %313, %289
  %291 = load i32, i32* %19, align 4
  %292 = load i32, i32* %22, align 4
  %293 = icmp slt i32 %291, %292
  br i1 %293, label %294, label %316

294:                                              ; preds = %290
  %295 = load i8*, i8** @CCV_NNC_NO_TENSOR_SYMBOL, align 8
  %296 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %297 = load i32, i32* %19, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %296, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 1
  store i8* %295, i8** %301, align 8
  %302 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %303 = load i32, i32* %19, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %302, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %306, i32 0, i32 0
  store i32* null, i32** %307, align 8
  %308 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %309 = load i32, i32* %19, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %308, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %311, i32 0, i32 0
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %312, align 8
  br label %313

313:                                              ; preds = %294
  %314 = load i32, i32* %19, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %19, align 4
  br label %290

316:                                              ; preds = %290
  %317 = load i32*, i32** %24, align 8
  %318 = call i32 @sqlite3_finalize(i32* %317)
  br label %319

319:                                              ; preds = %316, %161
  br label %320

320:                                              ; preds = %319, %139, %133
  %321 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %322 = call i32 @ccv_array_free(%struct.TYPE_19__* %321)
  %323 = load i32*, i32** %12, align 8
  %324 = call i32 @sqlite3_finalize(i32* %323)
  %325 = load i32*, i32** %13, align 8
  %326 = call i32 @sqlite3_finalize(i32* %325)
  %327 = load i32*, i32** %16, align 8
  %328 = call i32 @sqlite3_finalize(i32* %327)
  %329 = load i32*, i32** %9, align 8
  %330 = call i32 @sqlite3_close(i32* %329)
  br label %331

331:                                              ; preds = %320, %35
  ret void
}

declare dso_local i64 @sqlite3_open(i8*, i32**) #1

declare dso_local %struct.TYPE_19__* @ccv_array_new(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SQLITE_ENFORCE(i32) #1

declare dso_local i64 @sqlite3_prepare_v2(i32*, i8*, i32, i32**, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32* @ccv_nnc_symbolic_graph_new(...) #1

declare dso_local i8* @sqlite3_column_int(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ccv_array_push(%struct.TYPE_19__*, i32**) #1

declare dso_local i32 @_ccv_nnc_symbolic_graph_read(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @_ccv_nnc_symbolic_graph_rewire(%struct.TYPE_19__*, i32*) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i64 @ccmalloc(i32) #1

declare dso_local i8* @sqlite3_column_blob(i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @ccv_min(i64, i32) #1

declare dso_local i32 @sqlite3_column_bytes(i32*, i32) #1

declare dso_local %struct.TYPE_20__* @ccv_nnc_tensor_new(i32, %struct.TYPE_17__* byval(%struct.TYPE_17__) align 8, i32) #1

declare dso_local i64 @ccv_nnc_tensor_data_size(%struct.TYPE_17__* byval(%struct.TYPE_17__) align 8) #1

declare dso_local i32 @ccv_array_free(%struct.TYPE_19__*) #1

declare dso_local i32 @sqlite3_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
