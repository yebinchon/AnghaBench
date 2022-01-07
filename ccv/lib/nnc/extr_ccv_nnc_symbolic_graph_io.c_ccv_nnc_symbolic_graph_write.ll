; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_io.c_ccv_nnc_symbolic_graph_write.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_io.c_ccv_nnc_symbolic_graph_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_24__, %struct.TYPE_25__* }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_23__, %struct.TYPE_30__ }
%struct.TYPE_23__ = type { i8* }
%struct.TYPE_30__ = type { i32, i32, i32, i8* }
%struct.TYPE_26__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32, i32, i8* }

@SQLITE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"BEGIN\00", align 1
@__const.ccv_nnc_symbolic_graph_write.tensor_symbol_create_table_qs = private unnamed_addr constant [346 x i8] c"CREATE TABLE IF NOT EXISTS tensor_symbol (id INTEGER, graph INTEGER, assign_ref INTEGER, r_assign_ref INTEGER, bypass_ref INTEGER, r_bypass_ref INTEGER, p_ref INTEGER, alias_ref INTEGER, pair_ref INTEGER, flags INTEGER, ofs BLOB, inc BLOB, s_ref BLOB, name TEXT, type INTEGER, format INTEGER, datatype INTEGER, dim BLOB, PRIMARY KEY (id, graph))\00", align 16
@__const.ccv_nnc_symbolic_graph_write.tensor_symbol_insert_qs = private unnamed_addr constant [354 x i8] c"REPLACE INTO tensor_symbol (id, graph, assign_ref, r_assign_ref, bypass_ref, r_bypass_ref, p_ref, alias_ref, pair_ref, flags, ofs, inc, s_ref, name, type, format, datatype, dim) VALUES ($id, $graph, $assign_ref, $r_assign_ref, $bypass_ref, $r_bypass_ref, $p_ref, $alias_ref, $pair_ref, $flags, $ofs, $inc, $s_ref, $name, $type, $format, $datatype, $dim)\00", align 16
@__const.ccv_nnc_symbolic_graph_write.exec_symbol_create_table_qs = private unnamed_addr constant [533 x i8] c"CREATE TABLE IF NOT EXISTS graph_exec_symbol (id INTEGER, graph INTEGER, input_size INTEGER, output_size INTEGER, graph_ref_size INTEGER, flags INTEGER, pair_ref INTEGER, inputs BLOB, outputs BLOB, outgoings BLOB, name TEXT, cmd_cmd INTEGER, cmd_backend INTEGER, cmd_algorithm INTEGER, cmd_info BLOB, hint BLOB, graph_ref BLOB, case_of_expr INTEGER, case_of_flags INTEGER, case_of_argument_offset INTEGER, case_of_argument_size INTEGER, p_while_expr INTEGER, p_while_input_size INTEGER, p_while_inputs BLOB, PRIMARY KEY (id, graph))\00", align 16
@__const.ccv_nnc_symbolic_graph_write.exec_symbol_insert_qs = private unnamed_addr constant [652 x i8] c"REPLACE INTO graph_exec_symbol (id, graph, input_size, output_size, graph_ref_size, flags, pair_ref, inputs, outputs, outgoings, name, cmd_cmd, cmd_backend, cmd_algorithm, cmd_info, hint, graph_ref, case_of_expr, case_of_flags, case_of_argument_offset, case_of_argument_size, p_while_expr, p_while_input_size, p_while_inputs) VALUES ($id, $graph, $input_size, $output_size, $graph_ref_size, $flags, $pair_ref, $inputs, $outputs, $outgoings, $name, $cmd_cmd, $cmd_backend, $cmd_algorithm, $cmd_info, $hint, $graph_ref, $case_of_expr, $case_of_flags, $case_of_argument_offset, $case_of_argument_size, $p_while_expr, $p_while_input_size, $p_while_inputs)\00", align 16
@__const.ccv_nnc_symbolic_graph_write.graph_create_table_qs = private unnamed_addr constant [562 x i8] c"CREATE TABLE IF NOT EXISTS graph (graph INTEGER PRIMARY KEY, tensor_symbol_size INTEGER, exec_symbol_size INTEGER, sources BLOB, destinations BLOB, sub_graphs BLOB, pair INTEGER, p INTEGER, p_idx INTEGER, exec_idx INTEGER, breakpoint_size INTEGER, breakpoints BLOB, backward_tensor_symbol_size INTEGER, backward_tensor_symbol_idx BLOB, backward_exec_symbol_size INTEGER, backward_exec_symbol_idx BLOB, parallel_count INTEGER, parallel_tensor_symbol_size INTEGER, parallel_tensor_symbol_idx BLOB, parallel_exec_symbol_size INTEGER, parallel_exec_symbol_idx BLOB)\00", align 16
@__const.ccv_nnc_symbolic_graph_write.graph_insert_qs = private unnamed_addr constant [793 x i8] c"REPLACE INTO graph (graph, tensor_symbol_size, exec_symbol_size, sources, destinations, sub_graphs, pair, p, p_idx, exec_idx, breakpoint_size, breakpoints, backward_tensor_symbol_size, backward_tensor_symbol_idx, backward_exec_symbol_size, backward_exec_symbol_idx, parallel_count, parallel_tensor_symbol_size, parallel_tensor_symbol_idx, parallel_exec_symbol_size, parallel_exec_symbol_idx) VALUES ($graph, $tensor_symbol_size, $exec_symbol_size, $sources, $destinations, $sub_graphs, $pair, $p, $p_idx, $exec_idx, $breakpoint_size, $breakpoints, $backward_tensor_symbol_size, $backward_tensor_symbol_idx, $backward_exec_symbol_size, $backward_exec_symbol_idx, $parallel_count, $parallel_tensor_symbol_size, $parallel_tensor_symbol_idx, $parallel_exec_symbol_size, $parallel_exec_symbol_idx)\00", align 16
@__const.ccv_nnc_symbolic_graph_write.tensor_bind_create_table_qs = private unnamed_addr constant [161 x i8] c"CREATE TABLE IF NOT EXISTS tensor_bind (id INTEGER, graph INTEGER, type INTEGER, format INTEGER, datatype INTEGER, dim BLOB, data BLOB, PRIMARY KEY (id, graph))\00", align 16
@.str.1 = private unnamed_addr constant [24 x i8] c"DELETE FROM tensor_bind\00", align 1
@__const.ccv_nnc_symbolic_graph_write.tensor_bind_insert_qs = private unnamed_addr constant [133 x i8] c"REPLACE INTO tensor_bind (id, graph, type, format, datatype, dim, data) VALUES ($id, $graph, $type, $format, $datatype, $dim, $data)\00", align 16
@.str.2 = private unnamed_addr constant [7 x i8] c"COMMIT\00", align 1
@CCV_TENSOR_CPU_MEMORY = common dso_local global i32 0, align 4
@CCV_TENSOR_GPU_MEMORY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccv_nnc_symbolic_graph_write(%struct.TYPE_28__* %0, %struct.TYPE_27__* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [346 x i8], align 16
  %11 = alloca [354 x i8], align 16
  %12 = alloca i32*, align 8
  %13 = alloca [533 x i8], align 16
  %14 = alloca [652 x i8], align 16
  %15 = alloca i32*, align 8
  %16 = alloca [562 x i8], align 16
  %17 = alloca [793 x i8], align 16
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_29__*, align 8
  %20 = alloca %struct.TYPE_29__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca [161 x i8], align 16
  %23 = alloca [133 x i8], align 16
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_25__*, align 8
  %27 = alloca i64, align 8
  %28 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %5, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i32* null, i32** %9, align 8
  %29 = load i64, i64* @SQLITE_OK, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i64 @sqlite3_open(i8* %30, i32** %9)
  %32 = icmp ne i64 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  br label %301

34:                                               ; preds = %4
  %35 = load i64, i64* @SQLITE_OK, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = call i64 @sqlite3_exec(i32* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0)
  %38 = icmp eq i64 %35, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @SQLITE_ENFORCE(i32 %39)
  %41 = bitcast [346 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %41, i8* align 16 getelementptr inbounds ([346 x i8], [346 x i8]* @__const.ccv_nnc_symbolic_graph_write.tensor_symbol_create_table_qs, i32 0, i32 0), i64 346, i1 false)
  %42 = load i64, i64* @SQLITE_OK, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = getelementptr inbounds [346 x i8], [346 x i8]* %10, i64 0, i64 0
  %45 = call i64 @sqlite3_exec(i32* %43, i8* %44, i32 0, i32 0, i32 0)
  %46 = icmp eq i64 %42, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @SQLITE_ENFORCE(i32 %47)
  %49 = bitcast [354 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %49, i8* align 16 getelementptr inbounds ([354 x i8], [354 x i8]* @__const.ccv_nnc_symbolic_graph_write.tensor_symbol_insert_qs, i32 0, i32 0), i64 354, i1 false)
  store i32* null, i32** %12, align 8
  %50 = load i64, i64* @SQLITE_OK, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = getelementptr inbounds [354 x i8], [354 x i8]* %11, i64 0, i64 0
  %53 = call i64 @sqlite3_prepare_v2(i32* %51, i8* %52, i32 354, i32** %12, i32 0)
  %54 = icmp eq i64 %50, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @SQLITE_ENFORCE(i32 %55)
  %57 = bitcast [533 x i8]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %57, i8* align 16 getelementptr inbounds ([533 x i8], [533 x i8]* @__const.ccv_nnc_symbolic_graph_write.exec_symbol_create_table_qs, i32 0, i32 0), i64 533, i1 false)
  %58 = load i64, i64* @SQLITE_OK, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = getelementptr inbounds [533 x i8], [533 x i8]* %13, i64 0, i64 0
  %61 = call i64 @sqlite3_exec(i32* %59, i8* %60, i32 0, i32 0, i32 0)
  %62 = icmp eq i64 %58, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @SQLITE_ENFORCE(i32 %63)
  %65 = bitcast [652 x i8]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %65, i8* align 16 getelementptr inbounds ([652 x i8], [652 x i8]* @__const.ccv_nnc_symbolic_graph_write.exec_symbol_insert_qs, i32 0, i32 0), i64 652, i1 false)
  store i32* null, i32** %15, align 8
  %66 = load i64, i64* @SQLITE_OK, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds [652 x i8], [652 x i8]* %14, i64 0, i64 0
  %69 = call i64 @sqlite3_prepare_v2(i32* %67, i8* %68, i32 652, i32** %15, i32 0)
  %70 = icmp eq i64 %66, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @SQLITE_ENFORCE(i32 %71)
  %73 = bitcast [562 x i8]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %73, i8* align 16 getelementptr inbounds ([562 x i8], [562 x i8]* @__const.ccv_nnc_symbolic_graph_write.graph_create_table_qs, i32 0, i32 0), i64 562, i1 false)
  %74 = load i64, i64* @SQLITE_OK, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = getelementptr inbounds [562 x i8], [562 x i8]* %16, i64 0, i64 0
  %77 = call i64 @sqlite3_exec(i32* %75, i8* %76, i32 0, i32 0, i32 0)
  %78 = icmp eq i64 %74, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @SQLITE_ENFORCE(i32 %79)
  %81 = bitcast [793 x i8]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %81, i8* align 16 getelementptr inbounds ([793 x i8], [793 x i8]* @__const.ccv_nnc_symbolic_graph_write.graph_insert_qs, i32 0, i32 0), i64 793, i1 false)
  store i32* null, i32** %18, align 8
  %82 = load i64, i64* @SQLITE_OK, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = getelementptr inbounds [793 x i8], [793 x i8]* %17, i64 0, i64 0
  %85 = call i64 @sqlite3_prepare_v2(i32* %83, i8* %84, i32 793, i32** %18, i32 0)
  %86 = icmp eq i64 %82, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @SQLITE_ENFORCE(i32 %87)
  %89 = call %struct.TYPE_29__* @ccv_array_new(i32 8, i32 1, i32 0)
  store %struct.TYPE_29__* %89, %struct.TYPE_29__** %19, align 8
  %90 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %91 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %92 = call i32 @_ccv_nnc_symbolic_graph_push_repo(%struct.TYPE_28__* %90, %struct.TYPE_29__* %91)
  %93 = call %struct.TYPE_29__* @ccv_array_new(i32 4, i32 1, i32 0)
  store %struct.TYPE_29__* %93, %struct.TYPE_29__** %20, align 8
  store i32 0, i32* %21, align 4
  br label %94

94:                                               ; preds = %113, %34
  %95 = load i32, i32* %21, align 4
  %96 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %97 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %116

100:                                              ; preds = %94
  %101 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %102 = load i32, i32* %21, align 4
  %103 = call i64 @ccv_array_get(%struct.TYPE_29__* %101, i32 %102)
  %104 = inttoptr i64 %103 to %struct.TYPE_28__**
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %104, align 8
  %106 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %107 = load i32, i32* %21, align 4
  %108 = load i32*, i32** %12, align 8
  %109 = load i32*, i32** %15, align 8
  %110 = load i32*, i32** %18, align 8
  %111 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %112 = call i32 @_ccv_nnc_symbolic_graph_write(%struct.TYPE_28__* %105, %struct.TYPE_29__* %106, i32 %107, i32* %108, i32* %109, i32* %110, %struct.TYPE_29__* %111)
  br label %113

113:                                              ; preds = %100
  %114 = load i32, i32* %21, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %21, align 4
  br label %94

116:                                              ; preds = %94
  %117 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %118 = call i32 @ccv_array_free(%struct.TYPE_29__* %117)
  %119 = load i32*, i32** %12, align 8
  %120 = call i32 @sqlite3_finalize(i32* %119)
  %121 = load i32*, i32** %15, align 8
  %122 = call i32 @sqlite3_finalize(i32* %121)
  %123 = load i32*, i32** %18, align 8
  %124 = call i32 @sqlite3_finalize(i32* %123)
  %125 = bitcast [161 x i8]* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %125, i8* align 16 getelementptr inbounds ([161 x i8], [161 x i8]* @__const.ccv_nnc_symbolic_graph_write.tensor_bind_create_table_qs, i32 0, i32 0), i64 161, i1 false)
  %126 = load i64, i64* @SQLITE_OK, align 8
  %127 = load i32*, i32** %9, align 8
  %128 = getelementptr inbounds [161 x i8], [161 x i8]* %22, i64 0, i64 0
  %129 = call i64 @sqlite3_exec(i32* %127, i8* %128, i32 0, i32 0, i32 0)
  %130 = icmp eq i64 %126, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 @SQLITE_ENFORCE(i32 %131)
  %133 = load i64, i64* @SQLITE_OK, align 8
  %134 = load i32*, i32** %9, align 8
  %135 = call i64 @sqlite3_exec(i32* %134, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0, i32 0)
  %136 = icmp eq i64 %133, %135
  %137 = zext i1 %136 to i32
  %138 = call i32 @SQLITE_ENFORCE(i32 %137)
  %139 = bitcast [133 x i8]* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %139, i8* align 16 getelementptr inbounds ([133 x i8], [133 x i8]* @__const.ccv_nnc_symbolic_graph_write.tensor_bind_insert_qs, i32 0, i32 0), i64 133, i1 false)
  store i32* null, i32** %24, align 8
  %140 = load i64, i64* @SQLITE_OK, align 8
  %141 = load i32*, i32** %9, align 8
  %142 = getelementptr inbounds [133 x i8], [133 x i8]* %23, i64 0, i64 0
  %143 = call i64 @sqlite3_prepare_v2(i32* %141, i8* %142, i32 133, i32** %24, i32 0)
  %144 = icmp eq i64 %140, %143
  %145 = zext i1 %144 to i32
  %146 = call i32 @SQLITE_ENFORCE(i32 %145)
  store i32 0, i32* %21, align 4
  br label %147

147:                                              ; preds = %285, %116
  %148 = load i32, i32* %21, align 4
  %149 = load i32, i32* %7, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %288

151:                                              ; preds = %147
  %152 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %153 = load i32, i32* %21, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %160 = call i32 @_ccv_nnc_symbolic_graph_index_in_repo(i32 %158, %struct.TYPE_29__* %159)
  store i32 %160, i32* %25, align 4
  %161 = load i32, i32* %25, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %151
  br label %285

164:                                              ; preds = %151
  %165 = load i32*, i32** %24, align 8
  %166 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %167 = load i32, i32* %21, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @sqlite3_bind_int(i32* %165, i32 1, i32 %172)
  %174 = load i32*, i32** %24, align 8
  %175 = load i32, i32* %25, align 4
  %176 = call i32 @sqlite3_bind_int(i32* %174, i32 2, i32 %175)
  %177 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %178 = load i32, i32* %21, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_25__*, %struct.TYPE_25__** %181, align 8
  %183 = icmp ne %struct.TYPE_25__* %182, null
  br i1 %183, label %184, label %231

184:                                              ; preds = %164
  %185 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %186 = load i32, i32* %21, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_25__*, %struct.TYPE_25__** %189, align 8
  store %struct.TYPE_25__* %190, %struct.TYPE_25__** %26, align 8
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %26, align 8
  %192 = call i32 @CCV_IS_TENSOR_VIEW(%struct.TYPE_25__* %191)
  %193 = icmp ne i32 %192, 0
  %194 = xor i1 %193, true
  %195 = zext i1 %194 to i32
  %196 = call i32 @assert(i32 %195)
  %197 = load i32*, i32** %24, align 8
  %198 = load %struct.TYPE_25__*, %struct.TYPE_25__** %26, align 8
  %199 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @sqlite3_bind_int(i32* %197, i32 3, i32 %201)
  %203 = load i32*, i32** %24, align 8
  %204 = load %struct.TYPE_25__*, %struct.TYPE_25__** %26, align 8
  %205 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @sqlite3_bind_int(i32* %203, i32 4, i32 %207)
  %209 = load i32*, i32** %24, align 8
  %210 = load %struct.TYPE_25__*, %struct.TYPE_25__** %26, align 8
  %211 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @sqlite3_bind_int(i32* %209, i32 5, i32 %213)
  %215 = load i32*, i32** %24, align 8
  %216 = load %struct.TYPE_25__*, %struct.TYPE_25__** %26, align 8
  %217 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %217, i32 0, i32 3
  %219 = load i8*, i8** %218, align 8
  %220 = call i32 @sqlite3_bind_blob(i32* %215, i32 6, i8* %219, i64 8, i32 0)
  %221 = load %struct.TYPE_25__*, %struct.TYPE_25__** %26, align 8
  %222 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %221, i32 0, i32 1
  %223 = call i64 @ccv_nnc_tensor_data_size(%struct.TYPE_30__* byval(%struct.TYPE_30__) align 8 %222)
  store i64 %223, i64* %27, align 8
  %224 = load i32*, i32** %24, align 8
  %225 = load %struct.TYPE_25__*, %struct.TYPE_25__** %26, align 8
  %226 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %226, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  %229 = load i64, i64* %27, align 8
  %230 = call i32 @sqlite3_bind_blob(i32* %224, i32 7, i8* %228, i64 %229, i32 0)
  br label %278

231:                                              ; preds = %164
  %232 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %233 = load i32, i32* %21, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = icmp sge i32 %238, 0
  %240 = zext i1 %239 to i32
  %241 = call i32 @assert(i32 %240)
  %242 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_29__*, %struct.TYPE_29__** %243, align 8
  %245 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %246 = load i32, i32* %21, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = call i64 @ccv_array_get(%struct.TYPE_29__* %244, i32 %251)
  %253 = inttoptr i64 %252 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %253, %struct.TYPE_26__** %28, align 8
  %254 = load i32*, i32** %24, align 8
  %255 = load %struct.TYPE_26__*, %struct.TYPE_26__** %28, align 8
  %256 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @sqlite3_bind_int(i32* %254, i32 3, i32 %258)
  %260 = load i32*, i32** %24, align 8
  %261 = load %struct.TYPE_26__*, %struct.TYPE_26__** %28, align 8
  %262 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @sqlite3_bind_int(i32* %260, i32 4, i32 %264)
  %266 = load i32*, i32** %24, align 8
  %267 = load %struct.TYPE_26__*, %struct.TYPE_26__** %28, align 8
  %268 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @sqlite3_bind_int(i32* %266, i32 5, i32 %270)
  %272 = load i32*, i32** %24, align 8
  %273 = load %struct.TYPE_26__*, %struct.TYPE_26__** %28, align 8
  %274 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %274, i32 0, i32 3
  %276 = load i8*, i8** %275, align 8
  %277 = call i32 @sqlite3_bind_blob(i32* %272, i32 6, i8* %276, i64 8, i32 0)
  br label %278

278:                                              ; preds = %231, %184
  %279 = load i32*, i32** %24, align 8
  %280 = call i32 @sqlite3_step(i32* %279)
  %281 = load i32*, i32** %24, align 8
  %282 = call i32 @sqlite3_reset(i32* %281)
  %283 = load i32*, i32** %24, align 8
  %284 = call i32 @sqlite3_clear_bindings(i32* %283)
  br label %285

285:                                              ; preds = %278, %163
  %286 = load i32, i32* %21, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %21, align 4
  br label %147

288:                                              ; preds = %147
  %289 = load i32*, i32** %24, align 8
  %290 = call i32 @sqlite3_finalize(i32* %289)
  %291 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %292 = call i32 @ccv_array_free(%struct.TYPE_29__* %291)
  %293 = load i64, i64* @SQLITE_OK, align 8
  %294 = load i32*, i32** %9, align 8
  %295 = call i64 @sqlite3_exec(i32* %294, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0, i32 0)
  %296 = icmp eq i64 %293, %295
  %297 = zext i1 %296 to i32
  %298 = call i32 @SQLITE_ENFORCE(i32 %297)
  %299 = load i32*, i32** %9, align 8
  %300 = call i32 @sqlite3_close(i32* %299)
  br label %301

301:                                              ; preds = %288, %33
  ret void
}

declare dso_local i64 @sqlite3_open(i8*, i32**) #1

declare dso_local i32 @SQLITE_ENFORCE(i32) #1

declare dso_local i64 @sqlite3_exec(i32*, i8*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @sqlite3_prepare_v2(i32*, i8*, i32, i32**, i32) #1

declare dso_local %struct.TYPE_29__* @ccv_array_new(i32, i32, i32) #1

declare dso_local i32 @_ccv_nnc_symbolic_graph_push_repo(%struct.TYPE_28__*, %struct.TYPE_29__*) #1

declare dso_local i32 @_ccv_nnc_symbolic_graph_write(%struct.TYPE_28__*, %struct.TYPE_29__*, i32, i32*, i32*, i32*, %struct.TYPE_29__*) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @ccv_array_free(%struct.TYPE_29__*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @_ccv_nnc_symbolic_graph_index_in_repo(i32, %struct.TYPE_29__*) #1

declare dso_local i32 @sqlite3_bind_int(i32*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CCV_IS_TENSOR_VIEW(%struct.TYPE_25__*) #1

declare dso_local i32 @sqlite3_bind_blob(i32*, i32, i8*, i64, i32) #1

declare dso_local i64 @ccv_nnc_tensor_data_size(%struct.TYPE_30__* byval(%struct.TYPE_30__) align 8) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

declare dso_local i32 @sqlite3_clear_bindings(i32*) #1

declare dso_local i32 @sqlite3_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
