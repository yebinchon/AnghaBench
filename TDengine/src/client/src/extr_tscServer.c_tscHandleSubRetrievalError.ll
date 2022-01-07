; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscServer.c_tscHandleSubRetrievalError.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscServer.c_tscHandleSubRetrievalError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64, %struct.TYPE_23__*, i32, i32, i32*, i64, %struct.TYPE_26__*, i32, %struct.TYPE_22__* }
%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_26__ = type { %struct.TYPE_25__, i32, i32 (i32, %struct.TYPE_26__*, i32)*, %struct.TYPE_24__, i32, i32 }
%struct.TYPE_25__ = type { i32, i64 }
%struct.TYPE_24__ = type { i32, i32 }

@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4
@MAX_NUM_OF_SUBQUERY_RETRY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [69 x i8] c"%p query is cancelled, sub:%p, orderOfSub:%d abort retrieve, code:%d\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"%p sub:%p retrieve numOfRows:%d,orderOfSub:%d\00", align 1
@.str.2 = private unnamed_addr constant [85 x i8] c"%p sub:%p abort further retrieval due to other queries failure,orderOfSub:%d,code:%d\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"%p sub:%p retrieve failed, code:%d, orderOfSub:%d, retry:%d\00", align 1
@.str.4 = private unnamed_addr constant [81 x i8] c"%p sub:%p failed to create new subquery sqlobj due to out of memory, abort retry\00", align 1
@TSDB_CODE_CLI_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [88 x i8] c"%p sub:%p retrieve failed,code:%d,orderOfSub:%d failed.no more retry,set global code:%d\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"%p retrieve from %d vnode(s) completed,code:%d.FAILED.\00", align 1
@TSDB_SQL_RETRIEVE_METRIC = common dso_local global i32 0, align 4
@TSDB_QUERY_TYPE_JOIN_SEC_STAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_27__*, %struct.TYPE_26__*, i32)* @tscHandleSubRetrievalError to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tscHandleSubRetrievalError(%struct.TYPE_27__* %0, %struct.TYPE_26__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 6
  %12 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  store %struct.TYPE_26__* %12, %struct.TYPE_26__** %7, align 8
  %13 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %17 = icmp ne %struct.TYPE_26__* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %65

27:                                               ; preds = %3
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %65

34:                                               ; preds = %27
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 0, %38
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 4
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load i64, i64* @MAX_NUM_OF_SUBQUERY_RETRY, align 8
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %48, i32 0, i32 5
  store i64 %47, i64* %49, align 8
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %50, i32 0, i32 6
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %51, align 8
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %54 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = call i32 (i8*, %struct.TYPE_26__*, %struct.TYPE_26__*, i32, i64, ...) @tscTrace(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), %struct.TYPE_26__* %52, %struct.TYPE_26__* %53, i32 %57, i64 %63)
  br label %65

65:                                               ; preds = %34, %27, %3
  %66 = load i32, i32* %6, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %65
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i64, i64* %8, align 8
  %73 = call i32 (i8*, %struct.TYPE_26__*, %struct.TYPE_26__*, i32, i64, ...) @tscTrace(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_26__* %69, %struct.TYPE_26__* %70, i32 %71, i64 %72)
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %75 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i8*, %struct.TYPE_26__*, %struct.TYPE_26__*, ...) @tscError(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_26__* %74, %struct.TYPE_26__* %75, i64 %76, i32 %81)
  br label %167

83:                                               ; preds = %65
  %84 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %85, align 8
  %88 = load i64, i64* @MAX_NUM_OF_SUBQUERY_RETRY, align 8
  %89 = icmp slt i64 %86, %88
  br i1 %89, label %90, label %148

90:                                               ; preds = %83
  %91 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %148

98:                                               ; preds = %90
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 4
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* %8, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @tExtMemBufferClear(i32 %104)
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %106, i32 0, i32 8
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 0
  store i64 0, i64* %109, align 8
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %110, i32 0, i32 7
  %112 = call i32 @pthread_mutex_unlock(i32* %111)
  %113 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %113, i32 0, i32 6
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %114, align 8
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %117 = load i32, i32* %6, align 4
  %118 = load i64, i64* %8, align 8
  %119 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %119, i32 0, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = call i32 (i8*, %struct.TYPE_26__*, %struct.TYPE_26__*, i32, i64, ...) @tscTrace(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_26__* %115, %struct.TYPE_26__* %116, i32 %117, i64 %118, i64 %121)
  %123 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %123, i32 0, i32 6
  %125 = load %struct.TYPE_26__*, %struct.TYPE_26__** %124, align 8
  %126 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %128 = call %struct.TYPE_26__* @tscCreateSqlObjForSubquery(%struct.TYPE_26__* %125, %struct.TYPE_27__* %126, %struct.TYPE_26__* %127)
  store %struct.TYPE_26__* %128, %struct.TYPE_26__** %9, align 8
  %129 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %130 = icmp eq %struct.TYPE_26__* %129, null
  br i1 %130, label %131, label %145

131:                                              ; preds = %98
  %132 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %132, i32 0, i32 6
  %134 = load %struct.TYPE_26__*, %struct.TYPE_26__** %133, align 8
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %136 = call i32 (i8*, %struct.TYPE_26__*, %struct.TYPE_26__*, ...) @tscError(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_26__* %134, %struct.TYPE_26__* %135)
  %137 = load i32, i32* @TSDB_CODE_CLI_OUT_OF_MEMORY, align 4
  %138 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 0
  store i32 %137, i32* %141, align 4
  %142 = load i64, i64* @MAX_NUM_OF_SUBQUERY_RETRY, align 8
  %143 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %143, i32 0, i32 5
  store i64 %142, i64* %144, align 8
  br label %279

145:                                              ; preds = %98
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %147 = call i32 @tscProcessSql(%struct.TYPE_26__* %146)
  br label %279

148:                                              ; preds = %90, %83
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 0
  %153 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %154 = load i32, i32* %6, align 4
  %155 = call i32 @atomic_val_compare_exchange_32(i32* %152, i32 %153, i32 %154)
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %158 = load i32, i32* %6, align 4
  %159 = load i64, i64* %8, align 8
  %160 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 (i8*, %struct.TYPE_26__*, %struct.TYPE_26__*, ...) @tscError(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_26__* %156, %struct.TYPE_26__* %157, i32 %158, i64 %159, i32 %164)
  br label %166

166:                                              ; preds = %148
  br label %167

167:                                              ; preds = %166, %68
  %168 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 2
  %172 = call i32 @atomic_add_fetch_32(i32* %171, i32 1)
  %173 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = icmp slt i32 %172, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %167
  %180 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %181 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  call void @tscFreeSubSqlObj(%struct.TYPE_27__* %180, %struct.TYPE_26__* %181)
  br label %279

182:                                              ; preds = %167
  %183 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %184 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = sext i32 %188 to i64
  %190 = inttoptr i64 %189 to %struct.TYPE_26__*
  %191 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_23__*, %struct.TYPE_23__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 (i8*, %struct.TYPE_26__*, %struct.TYPE_26__*, ...) @tscError(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_26__* %183, %struct.TYPE_26__* %190, i32 %195)
  %197 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = sub nsw i32 0, %201
  %203 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %204, i32 0, i32 0
  store i32 %202, i32* %205, align 8
  %206 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %206, i32 0, i32 4
  %208 = load i32*, i32** %207, align 8
  %209 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %215, i32 0, i32 1
  %217 = load %struct.TYPE_23__*, %struct.TYPE_23__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @tscLocalReducerEnvDestroy(i32* %208, i32 %211, i32 %214, i32 %219)
  %221 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %221, i32 0, i32 1
  %223 = load %struct.TYPE_23__*, %struct.TYPE_23__** %222, align 8
  %224 = call i32 @tfree(%struct.TYPE_23__* %223)
  %225 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %226 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  call void @tscFreeSubSqlObj(%struct.TYPE_27__* %225, %struct.TYPE_26__* %226)
  %227 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %227, i32 0, i32 2
  %229 = load i32 (i32, %struct.TYPE_26__*, i32)*, i32 (i32, %struct.TYPE_26__*, i32)** %228, align 8
  %230 = icmp eq i32 (i32, %struct.TYPE_26__*, i32)* %229, null
  br i1 %230, label %231, label %245

231:                                              ; preds = %182
  %232 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %232, i32 0, i32 5
  %234 = call i32 @tsem_wait(i32* %233)
  %235 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %235, i32 0, i32 5
  %237 = call i32 @tsem_wait(i32* %236)
  %238 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %238, i32 0, i32 4
  %240 = call i32 @tsem_post(i32* %239)
  %241 = load i32, i32* @TSDB_SQL_RETRIEVE_METRIC, align 4
  %242 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %242, i32 0, i32 3
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %243, i32 0, i32 1
  store i32 %241, i32* %244, align 4
  br label %279

245:                                              ; preds = %182
  %246 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %246, i32 0, i32 3
  %248 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @TSDB_QUERY_TYPE_JOIN_SEC_STAGE, align 4
  %251 = and i32 %249, %250
  %252 = load i32, i32* @TSDB_QUERY_TYPE_JOIN_SEC_STAGE, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %254, label %267

254:                                              ; preds = %245
  %255 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %255, i32 0, i32 2
  %257 = load i32 (i32, %struct.TYPE_26__*, i32)*, i32 (i32, %struct.TYPE_26__*, i32)** %256, align 8
  %258 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %262 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = call i32 %257(i32 %260, %struct.TYPE_26__* %261, i32 %265)
  br label %278

267:                                              ; preds = %245
  %268 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %273 = icmp ne i32 %271, %272
  br i1 %273, label %274, label %277

274:                                              ; preds = %267
  %275 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %276 = call i32 @tscQueueAsyncRes(%struct.TYPE_26__* %275)
  br label %277

277:                                              ; preds = %274, %267
  br label %278

278:                                              ; preds = %277, %254
  br label %279

279:                                              ; preds = %131, %145, %179, %278, %231
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tscTrace(i8*, %struct.TYPE_26__*, %struct.TYPE_26__*, i32, i64, ...) #1

declare dso_local i32 @tscError(i8*, %struct.TYPE_26__*, %struct.TYPE_26__*, ...) #1

declare dso_local i32 @tExtMemBufferClear(i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local %struct.TYPE_26__* @tscCreateSqlObjForSubquery(%struct.TYPE_26__*, %struct.TYPE_27__*, %struct.TYPE_26__*) #1

declare dso_local i32 @tscProcessSql(%struct.TYPE_26__*) #1

declare dso_local i32 @atomic_val_compare_exchange_32(i32*, i32, i32) #1

declare dso_local i32 @atomic_add_fetch_32(i32*, i32) #1

declare dso_local void @tscFreeSubSqlObj(%struct.TYPE_27__*, %struct.TYPE_26__*) #1

declare dso_local i32 @tscLocalReducerEnvDestroy(i32*, i32, i32, i32) #1

declare dso_local i32 @tfree(%struct.TYPE_23__*) #1

declare dso_local i32 @tsem_wait(i32*) #1

declare dso_local i32 @tsem_post(i32*) #1

declare dso_local i32 @tscQueueAsyncRes(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
