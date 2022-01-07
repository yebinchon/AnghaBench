; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_graph_run.c__ccv_nnc_graph_exec_run_task.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_graph_run.c__ccv_nnc_graph_exec_run_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i32*, i32**, i32 }
%struct.TYPE_35__ = type { i32, i32, i32, %struct.TYPE_29__, i32, %struct.TYPE_27__, i32, i32, %struct.TYPE_31__** }
%struct.TYPE_29__ = type { i32, i32, i64* }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_31__ = type { %struct.TYPE_30__, %struct.TYPE_28__ }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_32__ = type { i32, i32, i32*, i32*, %struct.TYPE_35__*, %struct.TYPE_33__*, %struct.TYPE_31__** }
%struct.TYPE_34__ = type { i32*, %struct.TYPE_35__*, %struct.TYPE_33__* }

@CCV_NNC_GRAPH_FORWARD = common dso_local global i64 0, align 8
@CCV_NNC_GRAPH_BACKWARD = common dso_local global i64 0, align 8
@CCV_NNC_GRAPH_EXEC_CASE_OF = common dso_local global i32 0, align 4
@_ccv_nnc_graph_exec_cases_of_coro = common dso_local global i32 0, align 4
@CCV_NNC_GRAPH_EXEC_P_WHILE = common dso_local global i32 0, align 4
@_ccv_nnc_graph_topsorted_run_coro = common dso_local global i32 0, align 4
@CCV_CLI_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s [%d]: [%d] -> [%d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"|-> %d. %p (%p:%d)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ccv_nnc_graph_neighbor_context_discovery = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"|<- %d. %p (%p:%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_33__*, %struct.TYPE_35__*, i32, i32*, i32*, i32)* @_ccv_nnc_graph_exec_run_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @_ccv_nnc_graph_exec_run_task(%struct.TYPE_33__* %0, %struct.TYPE_35__* %1, i32 %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_33__*, align 8
  %9 = alloca %struct.TYPE_35__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_31__**, align 8
  %15 = alloca %struct.TYPE_31__**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_32__, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_33__*, align 8
  %20 = alloca %struct.TYPE_32__, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.TYPE_34__, align 8
  %27 = alloca i32*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %8, align 8
  store %struct.TYPE_35__* %1, %struct.TYPE_35__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %28 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %29 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %30 = call i32 @_ccv_nnc_graph_exec_unwrap_io(%struct.TYPE_33__* %28, %struct.TYPE_35__* %29)
  %31 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %31, i32 0, i32 8
  %33 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %32, align 8
  store %struct.TYPE_31__** %33, %struct.TYPE_31__*** %14, align 8
  %34 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %14, align 8
  %35 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %34, i64 %38
  store %struct.TYPE_31__** %39, %struct.TYPE_31__*** %15, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %60

42:                                               ; preds = %6
  %43 = load i32*, i32** %11, align 8
  %44 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %45 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %14, align 8
  %49 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %15, align 8
  %56 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ccv_nnc_tensor_tape_io(i32* %43, %struct.TYPE_33__* %44, i32 %47, %struct.TYPE_31__** %48, i32 %51, i32 %54, %struct.TYPE_31__** %55, i32 %58)
  br label %60

60:                                               ; preds = %42, %6
  %61 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %62 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %63 = call i32 @_ccv_nnc_graph_exec_begin_synchronize_multiviews(%struct.TYPE_33__* %61, %struct.TYPE_35__* %62)
  %64 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @CCV_NNC_GRAPH_FORWARD, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %77, label %70

70:                                               ; preds = %60
  %71 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @CCV_NNC_GRAPH_BACKWARD, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %197

77:                                               ; preds = %70, %60
  %78 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @CCV_NNC_GRAPH_EXEC_CASE_OF, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %120

84:                                               ; preds = %77
  %85 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %85, i32 0, i32 1
  %87 = load i32**, i32*** %86, align 8
  %88 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %88, i32 0, i32 3
  %90 = bitcast %struct.TYPE_29__* %89 to { i64, i64* }*
  %91 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %90, i32 0, i32 1
  %94 = load i64*, i64** %93, align 8
  %95 = call i64* @SCHEDULE_STREAMS(i64 %92, i64* %94)
  %96 = getelementptr inbounds i64, i64* %95, i64 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds i32*, i32** %87, i64 %97
  %99 = load i32*, i32** %98, align 8
  store i32* %99, i32** %16, align 8
  %100 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %17, i32 0, i32 0
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %17, i32 0, i32 1
  %103 = load i32, i32* %13, align 4
  store i32 %103, i32* %102, align 4
  %104 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %17, i32 0, i32 2
  %105 = load i32*, i32** %16, align 8
  store i32* %105, i32** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %17, i32 0, i32 3
  %107 = load i32*, i32** %11, align 8
  store i32* %107, i32** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %17, i32 0, i32 4
  %109 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  store %struct.TYPE_35__* %109, %struct.TYPE_35__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %17, i32 0, i32 5
  %111 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  store %struct.TYPE_33__* %111, %struct.TYPE_33__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %17, i32 0, i32 6
  %113 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %14, align 8
  store %struct.TYPE_31__** %113, %struct.TYPE_31__*** %112, align 8
  %114 = load i32*, i32** %12, align 8
  %115 = load i32, i32* @_ccv_nnc_graph_exec_cases_of_coro, align 4
  %116 = call i32* @ccv_nnc_stream_task_new(i32* %114, i32 %115, %struct.TYPE_32__* %17, i32 0)
  store i32* %116, i32** %18, align 8
  %117 = load i32*, i32** %18, align 8
  %118 = call i32 @ccv_nnc_stream_task_resume(i32* %117)
  %119 = load i32*, i32** %18, align 8
  store i32* %119, i32** %7, align 8
  br label %528

120:                                              ; preds = %77
  %121 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @CCV_NNC_GRAPH_EXEC_P_WHILE, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %195

127:                                              ; preds = %120
  %128 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %132 = call i64* @CCV_NNC_GRAPH_REF(%struct.TYPE_35__* %131)
  %133 = getelementptr inbounds i64, i64* %132, i64 0
  %134 = load i64, i64* %133, align 8
  %135 = sub nsw i64 %134, 1
  %136 = call i64 @ccv_array_get(i32 %130, i64 %135)
  %137 = inttoptr i64 %136 to %struct.TYPE_33__**
  %138 = load %struct.TYPE_33__*, %struct.TYPE_33__** %137, align 8
  store %struct.TYPE_33__* %138, %struct.TYPE_33__** %19, align 8
  %139 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %139, i32 0, i32 1
  %141 = load i32**, i32*** %140, align 8
  %142 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %142, i32 0, i32 3
  %144 = bitcast %struct.TYPE_29__* %143 to { i64, i64* }*
  %145 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %144, i32 0, i32 1
  %148 = load i64*, i64** %147, align 8
  %149 = call i64* @SCHEDULE_STREAMS(i64 %146, i64* %148)
  %150 = getelementptr inbounds i64, i64* %149, i64 0
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds i32*, i32** %141, i64 %151
  %153 = load i32*, i32** %152, align 8
  %154 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %155 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %154, i32 0, i32 1
  %156 = load i32**, i32*** %155, align 8
  %157 = getelementptr inbounds i32*, i32** %156, i64 0
  %158 = load i32*, i32** %157, align 8
  %159 = icmp eq i32* %153, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 @assert(i32 %160)
  %162 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %20, i32 0, i32 0
  %163 = load i32, i32* %10, align 4
  store i32 %163, i32* %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %20, i32 0, i32 1
  %165 = load i32, i32* %13, align 4
  store i32 %165, i32* %164, align 4
  %166 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %20, i32 0, i32 2
  %167 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %167, i32 0, i32 1
  %169 = load i32**, i32*** %168, align 8
  %170 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %170, i32 0, i32 3
  %172 = bitcast %struct.TYPE_29__* %171 to { i64, i64* }*
  %173 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %172, i32 0, i32 1
  %176 = load i64*, i64** %175, align 8
  %177 = call i64* @SCHEDULE_STREAMS(i64 %174, i64* %176)
  %178 = getelementptr inbounds i64, i64* %177, i64 0
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds i32*, i32** %169, i64 %179
  %181 = load i32*, i32** %180, align 8
  store i32* %181, i32** %166, align 8
  %182 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %20, i32 0, i32 3
  %183 = load i32*, i32** %11, align 8
  store i32* %183, i32** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %20, i32 0, i32 4
  %185 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  store %struct.TYPE_35__* %185, %struct.TYPE_35__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %20, i32 0, i32 5
  %187 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  store %struct.TYPE_33__* %187, %struct.TYPE_33__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %20, i32 0, i32 6
  store %struct.TYPE_31__** null, %struct.TYPE_31__*** %188, align 8
  %189 = load i32*, i32** %12, align 8
  %190 = load i32, i32* @_ccv_nnc_graph_topsorted_run_coro, align 4
  %191 = call i32* @ccv_nnc_stream_task_new(i32* %189, i32 %190, %struct.TYPE_32__* %20, i32 0)
  store i32* %191, i32** %21, align 8
  %192 = load i32*, i32** %21, align 8
  %193 = call i32 @ccv_nnc_stream_task_resume(i32* %192)
  %194 = load i32*, i32** %21, align 8
  store i32* %194, i32** %7, align 8
  br label %528

195:                                              ; preds = %120
  br label %196

196:                                              ; preds = %195
  br label %527

197:                                              ; preds = %70
  store i32 0, i32* %22, align 4
  br label %198

198:                                              ; preds = %250, %197
  %199 = load i32, i32* %22, align 4
  %200 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = icmp slt i32 %199, %203
  br i1 %204, label %205, label %253

205:                                              ; preds = %198
  %206 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %206, i32 0, i32 1
  %208 = load i32**, i32*** %207, align 8
  %209 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %209, i32 0, i32 3
  %211 = bitcast %struct.TYPE_29__* %210 to { i64, i64* }*
  %212 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %211, i32 0, i32 1
  %215 = load i64*, i64** %214, align 8
  %216 = call i64* @SCHEDULE_STREAMS(i64 %213, i64* %215)
  %217 = load i32, i32* %22, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i64, i64* %216, i64 %218
  %220 = load i64, i64* %219, align 8
  %221 = getelementptr inbounds i32*, i32** %208, i64 %220
  %222 = load i32*, i32** %221, align 8
  store i32* %222, i32** %24, align 8
  store i32 0, i32* %23, align 4
  br label %223

223:                                              ; preds = %246, %205
  %224 = load i32, i32* %23, align 4
  %225 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = icmp slt i32 %224, %228
  br i1 %229, label %230, label %249

230:                                              ; preds = %223
  %231 = load i32*, i32** %24, align 8
  %232 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %236 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %235, i32 0, i32 3
  %237 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %236, i32 0, i32 2
  %238 = load i64*, i64** %237, align 8
  %239 = load i32, i32* %23, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i64, i64* %238, i64 %240
  %242 = load i64, i64* %241, align 8
  %243 = getelementptr inbounds i32, i32* %234, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @ccv_nnc_stream_context_wait_signal(i32* %231, i32 %244)
  br label %246

246:                                              ; preds = %230
  %247 = load i32, i32* %23, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %23, align 4
  br label %223

249:                                              ; preds = %223
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %22, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %22, align 4
  br label %198

253:                                              ; preds = %198
  %254 = load i32, i32* @CCV_CLI_VERBOSE, align 4
  %255 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %255, i32 0, i32 5
  %257 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = call i32 @ccv_nnc_cmd_name(i64 %258)
  %260 = load i32, i32* %10, align 4
  %261 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %262 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %265 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = call i32 (i32, i8*, ...) @PRINT(i32 %254, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %259, i32 %260, i32 %263, i32 %266)
  store i32 0, i32* %22, align 4
  br label %268

268:                                              ; preds = %341, %253
  %269 = load i32, i32* %22, align 4
  %270 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %271 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = icmp slt i32 %269, %272
  br i1 %273, label %274, label %344

274:                                              ; preds = %268
  %275 = load i32, i32* @CCV_CLI_VERBOSE, align 4
  %276 = load i32, i32* %22, align 4
  %277 = add nsw i32 %276, 1
  %278 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %14, align 8
  %279 = load i32, i32* %22, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %278, i64 %280
  %282 = load %struct.TYPE_31__*, %struct.TYPE_31__** %281, align 8
  %283 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %14, align 8
  %284 = load i32, i32* %22, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %283, i64 %285
  %287 = load %struct.TYPE_31__*, %struct.TYPE_31__** %286, align 8
  %288 = icmp ne %struct.TYPE_31__* %287, null
  br i1 %288, label %289, label %298

289:                                              ; preds = %274
  %290 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %14, align 8
  %291 = load i32, i32* %22, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %290, i64 %292
  %294 = load %struct.TYPE_31__*, %struct.TYPE_31__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  br label %299

298:                                              ; preds = %274
  br label %299

299:                                              ; preds = %298, %289
  %300 = phi i32 [ %297, %289 ], [ 0, %298 ]
  %301 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %14, align 8
  %302 = load i32, i32* %22, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %301, i64 %303
  %305 = load %struct.TYPE_31__*, %struct.TYPE_31__** %304, align 8
  %306 = icmp ne %struct.TYPE_31__* %305, null
  br i1 %306, label %307, label %317

307:                                              ; preds = %299
  %308 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %14, align 8
  %309 = load i32, i32* %22, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %308, i64 %310
  %312 = load %struct.TYPE_31__*, %struct.TYPE_31__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @CCV_TENSOR_GET_DEVICE_ID(i32 %315)
  br label %318

317:                                              ; preds = %299
  br label %318

318:                                              ; preds = %317, %307
  %319 = phi i32 [ %316, %307 ], [ -1, %317 ]
  %320 = call i32 (i32, i8*, ...) @PRINT(i32 %275, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %277, %struct.TYPE_31__* %282, i32 %300, i32 %319)
  %321 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %14, align 8
  %322 = load i32, i32* %22, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %321, i64 %323
  %325 = load %struct.TYPE_31__*, %struct.TYPE_31__** %324, align 8
  %326 = icmp ne %struct.TYPE_31__* %325, null
  br i1 %326, label %327, label %338

327:                                              ; preds = %318
  %328 = load i32, i32* @CCV_CLI_VERBOSE, align 4
  %329 = call i64 @CCV_CLI_OUTPUT_LEVEL_IS(i32 %328)
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %338

331:                                              ; preds = %327
  %332 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %14, align 8
  %333 = load i32, i32* %22, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %332, i64 %334
  %336 = load %struct.TYPE_31__*, %struct.TYPE_31__** %335, align 8
  %337 = call i32 @_ccv_nnc_print_tensor_verbose(%struct.TYPE_31__* %336)
  br label %338

338:                                              ; preds = %331, %327, %318
  %339 = load i32, i32* @CCV_CLI_VERBOSE, align 4
  %340 = call i32 (i32, i8*, ...) @PRINT(i32 %339, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %341

341:                                              ; preds = %338
  %342 = load i32, i32* %22, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %22, align 4
  br label %268

344:                                              ; preds = %268
  %345 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %346 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %345, i32 0, i32 1
  %347 = load i32**, i32*** %346, align 8
  %348 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %349 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %348, i32 0, i32 3
  %350 = bitcast %struct.TYPE_29__* %349 to { i64, i64* }*
  %351 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %350, i32 0, i32 0
  %352 = load i64, i64* %351, align 8
  %353 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %350, i32 0, i32 1
  %354 = load i64*, i64** %353, align 8
  %355 = call i64* @SCHEDULE_STREAMS(i64 %352, i64* %354)
  %356 = getelementptr inbounds i64, i64* %355, i64 0
  %357 = load i64, i64* %356, align 8
  %358 = getelementptr inbounds i32*, i32** %347, i64 %357
  %359 = load i32*, i32** %358, align 8
  store i32* %359, i32** %25, align 8
  %360 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %26, i32 0, i32 0
  %361 = load i32*, i32** %25, align 8
  store i32* %361, i32** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %26, i32 0, i32 1
  %363 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  store %struct.TYPE_35__* %363, %struct.TYPE_35__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %26, i32 0, i32 2
  %365 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  store %struct.TYPE_33__* %365, %struct.TYPE_33__** %364, align 8
  %366 = load i32*, i32** %25, align 8
  %367 = load i32, i32* @_ccv_nnc_graph_neighbor_context_discovery, align 4
  %368 = call i32 @ccv_nnc_stream_context_set_neighbor_discovery(i32* %366, i32 %367, %struct.TYPE_34__* %26)
  %369 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %370 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %369, i32 0, i32 5
  %371 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %372 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %371, i32 0, i32 4
  %373 = load i32, i32* %372, align 8
  %374 = load i32, i32* %13, align 4
  %375 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %14, align 8
  %376 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %377 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %15, align 8
  %380 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %381 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 4
  %383 = load i32*, i32** %25, align 8
  %384 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %370, i32 0, i32 0
  %385 = load i64, i64* %384, align 8
  %386 = call i32 @ccv_nnc_cmd_exec(i64 %385, i32 %373, i32 %374, %struct.TYPE_31__** %375, i32 %378, %struct.TYPE_31__** %379, i32 %382, i32* %383)
  store i32 0, i32* %22, align 4
  br label %387

387:                                              ; preds = %460, %344
  %388 = load i32, i32* %22, align 4
  %389 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %390 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 4
  %392 = icmp slt i32 %388, %391
  br i1 %392, label %393, label %463

393:                                              ; preds = %387
  %394 = load i32, i32* @CCV_CLI_VERBOSE, align 4
  %395 = load i32, i32* %22, align 4
  %396 = add nsw i32 %395, 1
  %397 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %15, align 8
  %398 = load i32, i32* %22, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %397, i64 %399
  %401 = load %struct.TYPE_31__*, %struct.TYPE_31__** %400, align 8
  %402 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %15, align 8
  %403 = load i32, i32* %22, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %402, i64 %404
  %406 = load %struct.TYPE_31__*, %struct.TYPE_31__** %405, align 8
  %407 = icmp ne %struct.TYPE_31__* %406, null
  br i1 %407, label %408, label %417

408:                                              ; preds = %393
  %409 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %15, align 8
  %410 = load i32, i32* %22, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %409, i64 %411
  %413 = load %struct.TYPE_31__*, %struct.TYPE_31__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %413, i32 0, i32 1
  %415 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 4
  br label %418

417:                                              ; preds = %393
  br label %418

418:                                              ; preds = %417, %408
  %419 = phi i32 [ %416, %408 ], [ 0, %417 ]
  %420 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %15, align 8
  %421 = load i32, i32* %22, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %420, i64 %422
  %424 = load %struct.TYPE_31__*, %struct.TYPE_31__** %423, align 8
  %425 = icmp ne %struct.TYPE_31__* %424, null
  br i1 %425, label %426, label %436

426:                                              ; preds = %418
  %427 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %15, align 8
  %428 = load i32, i32* %22, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %427, i64 %429
  %431 = load %struct.TYPE_31__*, %struct.TYPE_31__** %430, align 8
  %432 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %431, i32 0, i32 0
  %433 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 4
  %435 = call i32 @CCV_TENSOR_GET_DEVICE_ID(i32 %434)
  br label %437

436:                                              ; preds = %418
  br label %437

437:                                              ; preds = %436, %426
  %438 = phi i32 [ %435, %426 ], [ -1, %436 ]
  %439 = call i32 (i32, i8*, ...) @PRINT(i32 %394, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %396, %struct.TYPE_31__* %401, i32 %419, i32 %438)
  %440 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %15, align 8
  %441 = load i32, i32* %22, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %440, i64 %442
  %444 = load %struct.TYPE_31__*, %struct.TYPE_31__** %443, align 8
  %445 = icmp ne %struct.TYPE_31__* %444, null
  br i1 %445, label %446, label %457

446:                                              ; preds = %437
  %447 = load i32, i32* @CCV_CLI_VERBOSE, align 4
  %448 = call i64 @CCV_CLI_OUTPUT_LEVEL_IS(i32 %447)
  %449 = icmp ne i64 %448, 0
  br i1 %449, label %450, label %457

450:                                              ; preds = %446
  %451 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %15, align 8
  %452 = load i32, i32* %22, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %451, i64 %453
  %455 = load %struct.TYPE_31__*, %struct.TYPE_31__** %454, align 8
  %456 = call i32 @_ccv_nnc_print_tensor_verbose(%struct.TYPE_31__* %455)
  br label %457

457:                                              ; preds = %450, %446, %437
  %458 = load i32, i32* @CCV_CLI_VERBOSE, align 4
  %459 = call i32 (i32, i8*, ...) @PRINT(i32 %458, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %460

460:                                              ; preds = %457
  %461 = load i32, i32* %22, align 4
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* %22, align 4
  br label %387

463:                                              ; preds = %387
  store i32 0, i32* %22, align 4
  br label %464

464:                                              ; preds = %523, %463
  %465 = load i32, i32* %22, align 4
  %466 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %467 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %466, i32 0, i32 3
  %468 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 8
  %470 = icmp slt i32 %465, %469
  br i1 %470, label %471, label %526

471:                                              ; preds = %464
  %472 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %473 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %472, i32 0, i32 3
  %474 = bitcast %struct.TYPE_29__* %473 to { i64, i64* }*
  %475 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %474, i32 0, i32 0
  %476 = load i64, i64* %475, align 8
  %477 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %474, i32 0, i32 1
  %478 = load i64*, i64** %477, align 8
  %479 = call i64* @SCHEDULE_SIGNALS(i64 %476, i64* %478)
  %480 = load i32, i32* %22, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i64, i64* %479, i64 %481
  %483 = load i64, i64* %482, align 8
  %484 = icmp uge i64 %483, 0
  br i1 %484, label %485, label %522

485:                                              ; preds = %471
  %486 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %487 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %486, i32 0, i32 1
  %488 = load i32**, i32*** %487, align 8
  %489 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %490 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %489, i32 0, i32 3
  %491 = bitcast %struct.TYPE_29__* %490 to { i64, i64* }*
  %492 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %491, i32 0, i32 0
  %493 = load i64, i64* %492, align 8
  %494 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %491, i32 0, i32 1
  %495 = load i64*, i64** %494, align 8
  %496 = call i64* @SCHEDULE_STREAMS(i64 %493, i64* %495)
  %497 = load i32, i32* %22, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds i64, i64* %496, i64 %498
  %500 = load i64, i64* %499, align 8
  %501 = getelementptr inbounds i32*, i32** %488, i64 %500
  %502 = load i32*, i32** %501, align 8
  store i32* %502, i32** %27, align 8
  %503 = load i32*, i32** %27, align 8
  %504 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %505 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %504, i32 0, i32 0
  %506 = load i32*, i32** %505, align 8
  %507 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %508 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %507, i32 0, i32 3
  %509 = bitcast %struct.TYPE_29__* %508 to { i64, i64* }*
  %510 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %509, i32 0, i32 0
  %511 = load i64, i64* %510, align 8
  %512 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %509, i32 0, i32 1
  %513 = load i64*, i64** %512, align 8
  %514 = call i64* @SCHEDULE_SIGNALS(i64 %511, i64* %513)
  %515 = load i32, i32* %22, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds i64, i64* %514, i64 %516
  %518 = load i64, i64* %517, align 8
  %519 = getelementptr inbounds i32, i32* %506, i64 %518
  %520 = load i32, i32* %519, align 4
  %521 = call i32 @ccv_nnc_stream_context_emit_signal(i32* %503, i32 %520)
  br label %522

522:                                              ; preds = %485, %471
  br label %523

523:                                              ; preds = %522
  %524 = load i32, i32* %22, align 4
  %525 = add nsw i32 %524, 1
  store i32 %525, i32* %22, align 4
  br label %464

526:                                              ; preds = %464
  br label %527

527:                                              ; preds = %526, %196
  store i32* null, i32** %7, align 8
  br label %528

528:                                              ; preds = %527, %127, %84
  %529 = load i32*, i32** %7, align 8
  ret i32* %529
}

declare dso_local i32 @_ccv_nnc_graph_exec_unwrap_io(%struct.TYPE_33__*, %struct.TYPE_35__*) #1

declare dso_local i32 @ccv_nnc_tensor_tape_io(i32*, %struct.TYPE_33__*, i32, %struct.TYPE_31__**, i32, i32, %struct.TYPE_31__**, i32) #1

declare dso_local i32 @_ccv_nnc_graph_exec_begin_synchronize_multiviews(%struct.TYPE_33__*, %struct.TYPE_35__*) #1

declare dso_local i64* @SCHEDULE_STREAMS(i64, i64*) #1

declare dso_local i32* @ccv_nnc_stream_task_new(i32*, i32, %struct.TYPE_32__*, i32) #1

declare dso_local i32 @ccv_nnc_stream_task_resume(i32*) #1

declare dso_local i64 @ccv_array_get(i32, i64) #1

declare dso_local i64* @CCV_NNC_GRAPH_REF(%struct.TYPE_35__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ccv_nnc_stream_context_wait_signal(i32*, i32) #1

declare dso_local i32 @PRINT(i32, i8*, ...) #1

declare dso_local i32 @ccv_nnc_cmd_name(i64) #1

declare dso_local i32 @CCV_TENSOR_GET_DEVICE_ID(i32) #1

declare dso_local i64 @CCV_CLI_OUTPUT_LEVEL_IS(i32) #1

declare dso_local i32 @_ccv_nnc_print_tensor_verbose(%struct.TYPE_31__*) #1

declare dso_local i32 @ccv_nnc_stream_context_set_neighbor_discovery(i32*, i32, %struct.TYPE_34__*) #1

declare dso_local i32 @ccv_nnc_cmd_exec(i64, i32, i32, %struct.TYPE_31__**, i32, %struct.TYPE_31__**, i32, i32*) #1

declare dso_local i64* @SCHEDULE_SIGNALS(i64, i64*) #1

declare dso_local i32 @ccv_nnc_stream_context_emit_signal(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
