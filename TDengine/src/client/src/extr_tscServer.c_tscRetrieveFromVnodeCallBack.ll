; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscServer.c_tscRetrieveFromVnodeCallBack.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscServer.c_tscRetrieveFromVnodeCallBack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_50__ = type { i64, %struct.TYPE_44__*, i32, %struct.TYPE_40__**, %struct.TYPE_41__*, i32, %struct.TYPE_42__*, %struct.TYPE_48__* }
%struct.TYPE_44__ = type { i64, i32, i32, i32 }
%struct.TYPE_40__ = type { i32, i64 }
%struct.TYPE_41__ = type { i32, i32 }
%struct.TYPE_42__ = type { %struct.TYPE_43__* }
%struct.TYPE_43__ = type { i32 }
%struct.TYPE_48__ = type { i32, i32 (i32, %struct.TYPE_48__*, i32)*, %struct.TYPE_47__, %struct.TYPE_49__, i32, i32 }
%struct.TYPE_47__ = type { i64, i32, i64, i32, i32 }
%struct.TYPE_49__ = type { i64, i32, %struct.TYPE_39__ }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_51__ = type { i32 }
%struct.TYPE_45__ = type { i64, %struct.TYPE_46__* }
%struct.TYPE_46__ = type { i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"%p subquery has been released, idx:%d, abort\00", align 1
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [82 x i8] c"%p sub:%p retrieve numOfRows:%d totalNumOfRows:%d from ip:%u,vid:%d,orderOfSub:%d\00", align 1
@tsTotalTmpDirGB = common dso_local global i64 0, align 8
@tsAvailTmpDirGB = common dso_local global i64 0, align 8
@tsMinimalTmpDirGB = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [78 x i8] c"%p sub:%p client disk space remain %.3f GB, need at least %.3f GB, stop query\00", align 1
@TSDB_CODE_CLI_NO_DISKSPACE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [76 x i8] c"%p sub:%p all data retrieved from ip:%u,vid:%d, numOfRows:%d, orderOfSub:%d\00", align 1
@.str.4 = private unnamed_addr constant [82 x i8] c"%p retrieve from %d vnodes completed.final NumOfRows:%d,start to build loser tree\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"%p build loser tree completed\00", align 1
@TSDB_SQL_RETRIEVE_METRIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tscRetrieveFromVnodeCallBack(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_50__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_48__*, align 8
  %10 = alloca %struct.TYPE_42__*, align 8
  %11 = alloca %struct.TYPE_48__*, align 8
  %12 = alloca %struct.TYPE_47__*, align 8
  %13 = alloca %struct.TYPE_49__*, align 8
  %14 = alloca %struct.TYPE_51__*, align 8
  %15 = alloca %struct.TYPE_45__*, align 8
  %16 = alloca %struct.TYPE_46__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_50__*
  store %struct.TYPE_50__* %21, %struct.TYPE_50__** %7, align 8
  %22 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %8, align 8
  %25 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %25, i32 0, i32 7
  %27 = load %struct.TYPE_48__*, %struct.TYPE_48__** %26, align 8
  store %struct.TYPE_48__* %27, %struct.TYPE_48__** %9, align 8
  %28 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %28, i32 0, i32 6
  %30 = load %struct.TYPE_42__*, %struct.TYPE_42__** %29, align 8
  store %struct.TYPE_42__* %30, %struct.TYPE_42__** %10, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = bitcast i32* %31 to %struct.TYPE_48__*
  store %struct.TYPE_48__* %32, %struct.TYPE_48__** %11, align 8
  %33 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %34 = icmp eq %struct.TYPE_48__* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %3
  %36 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i32 (i8*, %struct.TYPE_48__*, ...) @tscTrace(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.TYPE_48__* %36, i64 %37)
  br label %365

39:                                               ; preds = %3
  %40 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %40, i32 0, i32 5
  %42 = call i32 @pthread_mutex_lock(i32* %41)
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %39
  %46 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_44__*, %struct.TYPE_44__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %45
  %53 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %52, %45, %39
  %60 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %61 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %62 = load i32, i32* %6, align 4
  call void @tscHandleSubRetrievalError(%struct.TYPE_50__* %60, %struct.TYPE_48__* %61, i32 %62)
  br label %365

63:                                               ; preds = %52
  %64 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %64, i32 0, i32 2
  store %struct.TYPE_47__* %65, %struct.TYPE_47__** %12, align 8
  %66 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %66, i32 0, i32 3
  store %struct.TYPE_49__* %67, %struct.TYPE_49__** %13, align 8
  %68 = load %struct.TYPE_49__*, %struct.TYPE_49__** %13, align 8
  %69 = call %struct.TYPE_51__* @tscGetMeterMetaInfo(%struct.TYPE_49__* %68, i32 0)
  store %struct.TYPE_51__* %69, %struct.TYPE_51__** %14, align 8
  %70 = load %struct.TYPE_51__*, %struct.TYPE_51__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* %8, align 8
  %74 = call %struct.TYPE_45__* @tscGetVnodeSidList(i32 %72, i64 %73)
  store %struct.TYPE_45__* %74, %struct.TYPE_45__** %15, align 8
  %75 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_46__*, %struct.TYPE_46__** %76, align 8
  %78 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %77, i64 %80
  store %struct.TYPE_46__* %81, %struct.TYPE_46__** %16, align 8
  %82 = load i32, i32* %6, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %167

84:                                               ; preds = %63
  %85 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = icmp eq i32 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_44__*, %struct.TYPE_44__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %94, i32 0, i32 3
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @atomic_add_fetch_64(i32* %95, i32 %96)
  %98 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %99 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %100 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_44__*, %struct.TYPE_44__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_46__*, %struct.TYPE_46__** %16, align 8
  %109 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_46__*, %struct.TYPE_46__** %16, align 8
  %112 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i64, i64* %8, align 8
  %115 = call i32 (i8*, %struct.TYPE_48__*, ...) @tscTrace(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_48__* %98, %struct.TYPE_48__* %99, i32 %102, i32 %107, i32 %110, i32 %113, i64 %114)
  %116 = load i64, i64* @tsTotalTmpDirGB, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %84
  %119 = load i64, i64* @tsAvailTmpDirGB, align 8
  %120 = load i64, i64* @tsMinimalTmpDirGB, align 8
  %121 = icmp slt i64 %119, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %118
  %123 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %124 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %125 = load i64, i64* @tsAvailTmpDirGB, align 8
  %126 = load i64, i64* @tsMinimalTmpDirGB, align 8
  %127 = call i32 @tscError(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_48__* %123, %struct.TYPE_48__* %124, i64 %125, i64 %126)
  %128 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %129 = load i32*, i32** %5, align 8
  %130 = load i32, i32* @TSDB_CODE_CLI_NO_DISKSPACE, align 4
  call void @tscAbortFurtherRetryRetrieval(%struct.TYPE_50__* %128, i32* %129, i32 %130)
  br label %365

131:                                              ; preds = %118, %84
  %132 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %132, i32 0, i32 3
  %134 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %133, align 8
  %135 = load i64, i64* %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %134, i64 %135
  %137 = load %struct.TYPE_40__*, %struct.TYPE_40__** %136, align 8
  %138 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %139 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %139, i32 0, i32 4
  %141 = load %struct.TYPE_41__*, %struct.TYPE_41__** %140, align 8
  %142 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_49__*, %struct.TYPE_49__** %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @saveToBuffer(%struct.TYPE_40__* %137, %struct.TYPE_42__* %138, %struct.TYPE_41__* %141, i32 %144, i32 %147, i32 %151)
  store i64 %152, i64* %17, align 8
  %153 = load i64, i64* %17, align 8
  %154 = icmp ult i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %131
  %156 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %157 = load i32*, i32** %5, align 8
  %158 = load i32, i32* @TSDB_CODE_CLI_NO_DISKSPACE, align 4
  call void @tscAbortFurtherRetryRetrieval(%struct.TYPE_50__* %156, i32* %157, i32 %158)
  br label %166

159:                                              ; preds = %131
  %160 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %160, i32 0, i32 5
  %162 = call i32 @pthread_mutex_unlock(i32* %161)
  %163 = load i32*, i32** %5, align 8
  %164 = load i8*, i8** %4, align 8
  %165 = call i32 @taos_fetch_rows_a(i32* %163, void (i8*, i32*, i32)* @tscRetrieveFromVnodeCallBack, i8* %164)
  br label %166

166:                                              ; preds = %159, %155
  br label %365

167:                                              ; preds = %63
  %168 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %168, i32 0, i32 3
  %170 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %169, align 8
  %171 = load %struct.TYPE_49__*, %struct.TYPE_49__** %13, align 8
  %172 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %170, i64 %173
  %175 = load %struct.TYPE_40__*, %struct.TYPE_40__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %178, i32 0, i32 4
  %180 = load %struct.TYPE_41__*, %struct.TYPE_41__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = sext i32 %182 to i64
  %184 = add nsw i64 %177, %183
  store i64 %184, i64* %18, align 8
  %185 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %186 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %187 = load %struct.TYPE_46__*, %struct.TYPE_46__** %16, align 8
  %188 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_46__*, %struct.TYPE_46__** %16, align 8
  %191 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i64, i64* %18, align 8
  %194 = load i64, i64* %8, align 8
  %195 = call i32 (i8*, %struct.TYPE_48__*, ...) @tscTrace(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_48__* %185, %struct.TYPE_48__* %186, i32 %189, i32 %192, i64 %193, i64 %194)
  %196 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_43__*, %struct.TYPE_43__** %197, align 8
  %199 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %199, i32 0, i32 4
  %201 = load %struct.TYPE_41__*, %struct.TYPE_41__** %200, align 8
  %202 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_43__*, %struct.TYPE_43__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @tColModelCompact(%struct.TYPE_43__* %198, %struct.TYPE_41__* %201, i32 %206)
  %208 = load i64, i64* @tsTotalTmpDirGB, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %223

210:                                              ; preds = %167
  %211 = load i64, i64* @tsAvailTmpDirGB, align 8
  %212 = load i64, i64* @tsMinimalTmpDirGB, align 8
  %213 = icmp slt i64 %211, %212
  br i1 %213, label %214, label %223

214:                                              ; preds = %210
  %215 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %216 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %217 = load i64, i64* @tsAvailTmpDirGB, align 8
  %218 = load i64, i64* @tsMinimalTmpDirGB, align 8
  %219 = call i32 @tscError(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_48__* %215, %struct.TYPE_48__* %216, i64 %217, i64 %218)
  %220 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %221 = load i32*, i32** %5, align 8
  %222 = load i32, i32* @TSDB_CODE_CLI_NO_DISKSPACE, align 4
  call void @tscAbortFurtherRetryRetrieval(%struct.TYPE_50__* %220, i32* %221, i32 %222)
  br label %365

223:                                              ; preds = %210, %167
  %224 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %224, i32 0, i32 3
  %226 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %225, align 8
  %227 = load i64, i64* %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %226, i64 %227
  %229 = load %struct.TYPE_40__*, %struct.TYPE_40__** %228, align 8
  %230 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %231 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %231, i32 0, i32 4
  %233 = load %struct.TYPE_41__*, %struct.TYPE_41__** %232, align 8
  %234 = load %struct.TYPE_49__*, %struct.TYPE_49__** %13, align 8
  %235 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = call i64 @tscFlushTmpBuffer(%struct.TYPE_40__* %229, %struct.TYPE_42__* %230, %struct.TYPE_41__* %233, i32 %237)
  store i64 %238, i64* %19, align 8
  %239 = load i64, i64* %19, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %223
  %242 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %243 = load i32*, i32** %5, align 8
  %244 = load i32, i32* @TSDB_CODE_CLI_NO_DISKSPACE, align 4
  call void @tscAbortFurtherRetryRetrieval(%struct.TYPE_50__* %242, i32* %243, i32 %244)
  br label %365

245:                                              ; preds = %223
  %246 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %246, i32 0, i32 1
  %248 = load %struct.TYPE_44__*, %struct.TYPE_44__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %248, i32 0, i32 2
  %250 = call i32 @atomic_add_fetch_32(i32* %249, i32 1)
  %251 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %251, i32 0, i32 1
  %253 = load %struct.TYPE_44__*, %struct.TYPE_44__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = icmp slt i32 %250, %255
  br i1 %256, label %257, label %260

257:                                              ; preds = %245
  %258 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %259 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  call void @tscFreeSubSqlObj(%struct.TYPE_50__* %258, %struct.TYPE_48__* %259)
  br label %365

260:                                              ; preds = %245
  %261 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %261, i32 0, i32 3
  %263 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %262, align 8
  %264 = load i64, i64* %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %263, i64 %264
  %266 = load %struct.TYPE_40__*, %struct.TYPE_40__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %270 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %269, i32 0, i32 0
  %271 = load %struct.TYPE_43__*, %struct.TYPE_43__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %271, i32 0, i32 0
  store i32 %268, i32* %272, align 4
  %273 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %274 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %275 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %274, i32 0, i32 1
  %276 = load %struct.TYPE_44__*, %struct.TYPE_44__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %279, i32 0, i32 1
  %281 = load %struct.TYPE_44__*, %struct.TYPE_44__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 4
  %284 = call i32 (i8*, %struct.TYPE_48__*, ...) @tscTrace(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_48__* %273, i32 %278, i32 %283)
  %285 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %286 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %285, i32 0, i32 3
  %287 = call i32 @tscClearInterpInfo(%struct.TYPE_49__* %286)
  %288 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %288, i32 0, i32 3
  %290 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %289, align 8
  %291 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %291, i32 0, i32 1
  %293 = load %struct.TYPE_44__*, %struct.TYPE_44__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %297 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %298 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 8
  %300 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %301 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %300, i32 0, i32 3
  %302 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %303 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %302, i32 0, i32 2
  %304 = call i32 @tscCreateLocalReducer(%struct.TYPE_40__** %290, i32 %295, %struct.TYPE_42__* %296, i32 %299, %struct.TYPE_49__* %301, %struct.TYPE_47__* %303)
  %305 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %306 = call i32 (i8*, %struct.TYPE_48__*, ...) @tscTrace(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_48__* %305)
  %307 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %308 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %307, i32 0, i32 2
  %309 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %308, i32 0, i32 3
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %312 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %311, i32 0, i32 2
  %313 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %312, i32 0, i32 3
  store i32 %310, i32* %313, align 8
  %314 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %315 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %314, i32 0, i32 2
  %316 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %315, i32 0, i32 1
  store i32 0, i32* %316, align 8
  %317 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %318 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %317, i32 0, i32 2
  %319 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %318, i32 0, i32 2
  store i64 0, i64* %319, align 8
  %320 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %321 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %320, i32 0, i32 1
  %322 = load %struct.TYPE_44__*, %struct.TYPE_44__** %321, align 8
  %323 = call i32 @free(%struct.TYPE_44__* %322)
  %324 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %325 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  call void @tscFreeSubSqlObj(%struct.TYPE_50__* %324, %struct.TYPE_48__* %325)
  %326 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %327 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %326, i32 0, i32 1
  %328 = load i32 (i32, %struct.TYPE_48__*, i32)*, i32 (i32, %struct.TYPE_48__*, i32)** %327, align 8
  %329 = icmp eq i32 (i32, %struct.TYPE_48__*, i32)* %328, null
  br i1 %329, label %330, label %340

330:                                              ; preds = %260
  %331 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %332 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %331, i32 0, i32 5
  %333 = call i32 @tsem_wait(i32* %332)
  %334 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %335 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %334, i32 0, i32 5
  %336 = call i32 @tsem_wait(i32* %335)
  %337 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %338 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %337, i32 0, i32 4
  %339 = call i32 @tsem_post(i32* %338)
  br label %364

340:                                              ; preds = %260
  %341 = load i32, i32* @TSDB_SQL_RETRIEVE_METRIC, align 4
  %342 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %343 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %342, i32 0, i32 3
  %344 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %343, i32 0, i32 1
  store i32 %341, i32* %344, align 8
  %345 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %346 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %345, i32 0, i32 2
  %347 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %350 = icmp eq i64 %348, %349
  br i1 %350, label %351, label %360

351:                                              ; preds = %340
  %352 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %353 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %352, i32 0, i32 1
  %354 = load i32 (i32, %struct.TYPE_48__*, i32)*, i32 (i32, %struct.TYPE_48__*, i32)** %353, align 8
  %355 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %356 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %359 = call i32 %354(i32 %357, %struct.TYPE_48__* %358, i32 0)
  br label %363

360:                                              ; preds = %340
  %361 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %362 = call i32 @tscQueueAsyncRes(%struct.TYPE_48__* %361)
  br label %363

363:                                              ; preds = %360, %351
  br label %364

364:                                              ; preds = %363, %330
  br label %365

365:                                              ; preds = %35, %59, %122, %214, %241, %257, %364, %166
  ret void
}

declare dso_local i32 @tscTrace(i8*, %struct.TYPE_48__*, ...) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local void @tscHandleSubRetrievalError(%struct.TYPE_50__*, %struct.TYPE_48__*, i32) #1

declare dso_local %struct.TYPE_51__* @tscGetMeterMetaInfo(%struct.TYPE_49__*, i32) #1

declare dso_local %struct.TYPE_45__* @tscGetVnodeSidList(i32, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @atomic_add_fetch_64(i32*, i32) #1

declare dso_local i32 @tscError(i8*, %struct.TYPE_48__*, %struct.TYPE_48__*, i64, i64) #1

declare dso_local void @tscAbortFurtherRetryRetrieval(%struct.TYPE_50__*, i32*, i32) #1

declare dso_local i64 @saveToBuffer(%struct.TYPE_40__*, %struct.TYPE_42__*, %struct.TYPE_41__*, i32, i32, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @taos_fetch_rows_a(i32*, void (i8*, i32*, i32)*, i8*) #1

declare dso_local i32 @tColModelCompact(%struct.TYPE_43__*, %struct.TYPE_41__*, i32) #1

declare dso_local i64 @tscFlushTmpBuffer(%struct.TYPE_40__*, %struct.TYPE_42__*, %struct.TYPE_41__*, i32) #1

declare dso_local i32 @atomic_add_fetch_32(i32*, i32) #1

declare dso_local void @tscFreeSubSqlObj(%struct.TYPE_50__*, %struct.TYPE_48__*) #1

declare dso_local i32 @tscClearInterpInfo(%struct.TYPE_49__*) #1

declare dso_local i32 @tscCreateLocalReducer(%struct.TYPE_40__**, i32, %struct.TYPE_42__*, i32, %struct.TYPE_49__*, %struct.TYPE_47__*) #1

declare dso_local i32 @free(%struct.TYPE_44__*) #1

declare dso_local i32 @tsem_wait(i32*) #1

declare dso_local i32 @tsem_post(i32*) #1

declare dso_local i32 @tscQueueAsyncRes(%struct.TYPE_48__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
