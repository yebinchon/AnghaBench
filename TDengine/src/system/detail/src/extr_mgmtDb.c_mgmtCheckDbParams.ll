; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtDb.c_mgmtCheckDbParams.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtDb.c_mgmtCheckDbParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@tsSessionsPerVnode = common dso_local global i64 0, align 8
@tsCacheBlockSize = common dso_local global i64 0, align 8
@tsDaysPerFile = common dso_local global i64 0, align 8
@tsDaysToKeep = common dso_local global i64 0, align 8
@tsCommitTime = common dso_local global i64 0, align 8
@tsCompression = common dso_local global i64 0, align 8
@tsCommitLog = common dso_local global i32 0, align 4
@tsReplications = common dso_local global i32 0, align 4
@tsRowsInFileBlock = common dso_local global i64 0, align 8
@tsAverageCacheBlocks = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"invalid db option commitLog: %d\00", align 1
@TSDB_CODE_INVALID_OPTION = common dso_local global i32 0, align 4
@TSDB_REPLICA_MIN_NUM = common dso_local global i32 0, align 4
@TSDB_REPLICA_MAX_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"invalid db option replications: %d\00", align 1
@TSDB_FILE_MIN_PARTITION_RANGE = common dso_local global i64 0, align 8
@TSDB_FILE_MAX_PARTITION_RANGE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [54 x i8] c"invalid db option daysPerFile: %d valid range: %d--%d\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"invalid db option daystokeep1: %d, daystokeep2: %d, daystokeep: %d\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"invalid db option daystokeep: %d\00", align 1
@TSDB_MIN_ROWS_IN_FILEBLOCK = common dso_local global i64 0, align 8
@TSDB_MAX_ROWS_IN_FILEBLOCK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [58 x i8] c"invalid db option rowsInFileBlock: %d valid range: %d--%d\00", align 1
@TSDB_MIN_CACHE_BLOCK_SIZE = common dso_local global i64 0, align 8
@TSDB_MAX_CACHE_BLOCK_SIZE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [57 x i8] c"invalid db option cacheBlockSize: %d valid range: %d--%d\00", align 1
@TSDB_MIN_TABLES_PER_VNODE = common dso_local global i64 0, align 8
@TSDB_MAX_TABLES_PER_VNODE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [54 x i8] c"invalid db option maxSessions: %d valid range: %d--%d\00", align 1
@TSDB_TIME_PRECISION_MILLI = common dso_local global i64 0, align 8
@TSDB_TIME_PRECISION_MICRO = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [55 x i8] c"invalid db option timePrecision: %d valid value: %d,%d\00", align 1
@TSDB_MAX_AVG_BLOCKS = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [49 x i8] c"invalid db option ablocks: %d valid value: %d,%d\00", align 1
@TSDB_MAX_CACHE_BLOCKS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [55 x i8] c"invalid db option cacheNumOfBlocks: %d valid range: %d\00", align 1
@TSDB_MIN_COMMIT_TIME_INTERVAL = common dso_local global i64 0, align 8
@TSDB_MAX_COMMIT_TIME_INTERVAL = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [52 x i8] c"invalid db option commitTime: %d valid range: %d-%d\00", align 1
@TSDB_MAX_COMPRESSION_LEVEL = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [34 x i8] c"invalid db option compression: %d\00", align 1
@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4
@TSDB_VNODES_SUPPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmtCheckDbParams(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i64, i64* @tsSessionsPerVnode, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i64, i64* @tsCacheBlockSize, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  br label %21

21:                                               ; preds = %17, %12
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i64, i64* @tsDaysPerFile, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %26, %21
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i64, i64* @tsDaysToKeep, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 3
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %35, %30
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 4
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %44, %39
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 5
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %55, %50
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 6
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i64, i64* @tsCommitTime, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 6
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %66, %61
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 7
  %73 = load i64, i64* %72, align 8
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i64, i64* @tsCompression, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 7
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %75, %70
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 8
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i32, i32* @tsCommitLog, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 8
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %84, %79
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 9
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i32, i32* @tsReplications, align 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 9
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %93, %88
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 10
  %100 = load i64, i64* %99, align 8
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load i64, i64* @tsRowsInFileBlock, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 10
  store i64 %103, i64* %105, align 8
  br label %106

106:                                              ; preds = %102, %97
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 13
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %106
  %113 = load i64, i64* @tsAverageCacheBlocks, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 13
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  store i64 %113, i64* %116, align 8
  br label %117

117:                                              ; preds = %112, %106
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 9
  store i32 1, i32* %119, align 4
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 8
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %117
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 8
  %127 = load i32, i32* %126, align 8
  %128 = icmp sgt i32 %127, 1
  br i1 %128, label %129, label %136

129:                                              ; preds = %124, %117
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 8
  %132 = load i32, i32* %131, align 8
  %133 = sext i32 %132 to i64
  %134 = call i32 (i8*, i64, ...) @mTrace(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %133)
  %135 = load i32, i32* @TSDB_CODE_INVALID_OPTION, align 4
  store i32 %135, i32* %2, align 4
  br label %433

136:                                              ; preds = %124
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 9
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @TSDB_REPLICA_MIN_NUM, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %148, label %142

142:                                              ; preds = %136
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 9
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @TSDB_REPLICA_MAX_NUM, align 4
  %147 = icmp sgt i32 %145, %146
  br i1 %147, label %148, label %155

148:                                              ; preds = %142, %136
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 9
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = call i32 (i8*, i64, ...) @mTrace(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %152)
  %154 = load i32, i32* @TSDB_CODE_INVALID_OPTION, align 4
  store i32 %154, i32* %2, align 4
  br label %433

155:                                              ; preds = %142
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @TSDB_FILE_MIN_PARTITION_RANGE, align 8
  %160 = icmp slt i64 %158, %159
  br i1 %160, label %167, label %161

161:                                              ; preds = %155
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @TSDB_FILE_MAX_PARTITION_RANGE, align 8
  %166 = icmp sgt i64 %164, %165
  br i1 %166, label %167, label %175

167:                                              ; preds = %161, %155
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @TSDB_FILE_MIN_PARTITION_RANGE, align 8
  %172 = load i64, i64* @TSDB_FILE_MAX_PARTITION_RANGE, align 8
  %173 = call i32 (i8*, i64, ...) @mTrace(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i64 %170, i64 %171, i64 %172)
  %174 = load i32, i32* @TSDB_CODE_INVALID_OPTION, align 4
  store i32 %174, i32* %2, align 4
  br label %433

175:                                              ; preds = %161
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 4
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 5
  %181 = load i64, i64* %180, align 8
  %182 = icmp sgt i64 %178, %181
  br i1 %182, label %191, label %183

183:                                              ; preds = %175
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 5
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = icmp sgt i64 %186, %189
  br i1 %190, label %191, label %203

191:                                              ; preds = %183, %175
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 4
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 5
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = call i32 (i8*, i64, ...) @mTrace(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i64 %194, i64 %197, i64 %200)
  %202 = load i32, i32* @TSDB_CODE_INVALID_OPTION, align 4
  store i32 %202, i32* %2, align 4
  br label %433

203:                                              ; preds = %183
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 4
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @TSDB_FILE_MIN_PARTITION_RANGE, align 8
  %208 = icmp slt i64 %206, %207
  br i1 %208, label %217, label %209

209:                                              ; preds = %203
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 4
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = icmp slt i64 %212, %215
  br i1 %216, label %217, label %223

217:                                              ; preds = %209, %203
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 3
  %220 = load i64, i64* %219, align 8
  %221 = call i32 (i8*, i64, ...) @mTrace(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i64 %220)
  %222 = load i32, i32* @TSDB_CODE_INVALID_OPTION, align 4
  store i32 %222, i32* %2, align 4
  br label %433

223:                                              ; preds = %209
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 10
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @TSDB_MIN_ROWS_IN_FILEBLOCK, align 8
  %228 = icmp slt i64 %226, %227
  br i1 %228, label %235, label %229

229:                                              ; preds = %223
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 10
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @TSDB_MAX_ROWS_IN_FILEBLOCK, align 8
  %234 = icmp sgt i64 %232, %233
  br i1 %234, label %235, label %243

235:                                              ; preds = %229, %223
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 10
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @TSDB_MIN_ROWS_IN_FILEBLOCK, align 8
  %240 = load i64, i64* @TSDB_MAX_ROWS_IN_FILEBLOCK, align 8
  %241 = call i32 (i8*, i64, ...) @mTrace(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i64 %238, i64 %239, i64 %240)
  %242 = load i32, i32* @TSDB_CODE_INVALID_OPTION, align 4
  store i32 %242, i32* %2, align 4
  br label %433

243:                                              ; preds = %229
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @TSDB_MIN_CACHE_BLOCK_SIZE, align 8
  %248 = icmp slt i64 %246, %247
  br i1 %248, label %255, label %249

249:                                              ; preds = %243
  %250 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @TSDB_MAX_CACHE_BLOCK_SIZE, align 8
  %254 = icmp sgt i64 %252, %253
  br i1 %254, label %255, label %263

255:                                              ; preds = %249, %243
  %256 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @TSDB_MIN_CACHE_BLOCK_SIZE, align 8
  %260 = load i64, i64* @TSDB_MAX_CACHE_BLOCK_SIZE, align 8
  %261 = call i32 (i8*, i64, ...) @mTrace(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0), i64 %258, i64 %259, i64 %260)
  %262 = load i32, i32* @TSDB_CODE_INVALID_OPTION, align 4
  store i32 %262, i32* %2, align 4
  br label %433

263:                                              ; preds = %249
  %264 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @TSDB_MIN_TABLES_PER_VNODE, align 8
  %268 = icmp slt i64 %266, %267
  br i1 %268, label %275, label %269

269:                                              ; preds = %263
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @TSDB_MAX_TABLES_PER_VNODE, align 8
  %274 = icmp sgt i64 %272, %273
  br i1 %274, label %275, label %283

275:                                              ; preds = %269, %263
  %276 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @TSDB_MIN_TABLES_PER_VNODE, align 8
  %280 = load i64, i64* @TSDB_MAX_TABLES_PER_VNODE, align 8
  %281 = call i32 (i8*, i64, ...) @mTrace(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i64 %278, i64 %279, i64 %280)
  %282 = load i32, i32* @TSDB_CODE_INVALID_OPTION, align 4
  store i32 %282, i32* %2, align 4
  br label %433

283:                                              ; preds = %269
  %284 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %284, i32 0, i32 11
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @TSDB_TIME_PRECISION_MILLI, align 8
  %288 = icmp ne i64 %286, %287
  br i1 %288, label %289, label %303

289:                                              ; preds = %283
  %290 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i32 0, i32 11
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* @TSDB_TIME_PRECISION_MICRO, align 8
  %294 = icmp ne i64 %292, %293
  br i1 %294, label %295, label %303

295:                                              ; preds = %289
  %296 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %297 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %296, i32 0, i32 11
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @TSDB_TIME_PRECISION_MILLI, align 8
  %300 = load i64, i64* @TSDB_TIME_PRECISION_MICRO, align 8
  %301 = call i32 (i8*, i64, ...) @mTrace(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0), i64 %298, i64 %299, i64 %300)
  %302 = load i32, i32* @TSDB_CODE_INVALID_OPTION, align 4
  store i32 %302, i32* %2, align 4
  br label %433

303:                                              ; preds = %289, %283
  %304 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %304, i32 0, i32 13
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = icmp slt i64 %307, 0
  br i1 %308, label %316, label %309

309:                                              ; preds = %303
  %310 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %310, i32 0, i32 13
  %312 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = load i64, i64* @TSDB_MAX_AVG_BLOCKS, align 8
  %315 = icmp sgt i64 %313, %314
  br i1 %315, label %316, label %323

316:                                              ; preds = %309, %303
  %317 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %317, i32 0, i32 11
  %319 = load i64, i64* %318, align 8
  %320 = load i64, i64* @TSDB_MAX_AVG_BLOCKS, align 8
  %321 = call i32 (i8*, i64, ...) @mTrace(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i64 %319, i32 0, i64 %320)
  %322 = load i32, i32* @TSDB_CODE_INVALID_OPTION, align 4
  store i32 %322, i32* %2, align 4
  br label %433

323:                                              ; preds = %309
  %324 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %324, i32 0, i32 13
  %326 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %329 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = mul nsw i64 %327, %330
  %332 = trunc i64 %331 to i32
  %333 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %334 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %333, i32 0, i32 13
  %335 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %334, i32 0, i32 1
  store i32 %332, i32* %335, align 8
  br label %336

336:                                              ; preds = %323
  %337 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %338 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %337, i32 0, i32 13
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 8
  %341 = load i32, i32* @TSDB_MAX_CACHE_BLOCKS, align 4
  %342 = icmp sgt i32 %340, %341
  br i1 %342, label %343, label %352

343:                                              ; preds = %336
  %344 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %345 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %344, i32 0, i32 13
  %346 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 8
  %348 = sext i32 %347 to i64
  %349 = load i32, i32* @TSDB_MAX_CACHE_BLOCKS, align 4
  %350 = call i32 (i8*, i64, ...) @mTrace(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i64 0, i64 0), i64 %348, i32 %349)
  %351 = load i32, i32* @TSDB_CODE_INVALID_OPTION, align 4
  store i32 %351, i32* %2, align 4
  br label %433

352:                                              ; preds = %336
  %353 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %354 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %353, i32 0, i32 6
  %355 = load i64, i64* %354, align 8
  %356 = load i64, i64* @TSDB_MIN_COMMIT_TIME_INTERVAL, align 8
  %357 = icmp slt i64 %355, %356
  br i1 %357, label %364, label %358

358:                                              ; preds = %352
  %359 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %360 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %359, i32 0, i32 6
  %361 = load i64, i64* %360, align 8
  %362 = load i64, i64* @TSDB_MAX_COMMIT_TIME_INTERVAL, align 8
  %363 = icmp sgt i64 %361, %362
  br i1 %363, label %364, label %372

364:                                              ; preds = %358, %352
  %365 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %366 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %365, i32 0, i32 6
  %367 = load i64, i64* %366, align 8
  %368 = load i64, i64* @TSDB_MIN_COMMIT_TIME_INTERVAL, align 8
  %369 = load i64, i64* @TSDB_MAX_COMMIT_TIME_INTERVAL, align 8
  %370 = call i32 (i8*, i64, ...) @mTrace(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i64 0, i64 0), i64 %367, i64 %368, i64 %369)
  %371 = load i32, i32* @TSDB_CODE_INVALID_OPTION, align 4
  store i32 %371, i32* %2, align 4
  br label %433

372:                                              ; preds = %358
  %373 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %374 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %373, i32 0, i32 7
  %375 = load i64, i64* %374, align 8
  %376 = load i64, i64* @TSDB_MAX_COMPRESSION_LEVEL, align 8
  %377 = icmp sgt i64 %375, %376
  br i1 %377, label %378, label %386

378:                                              ; preds = %372
  %379 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %380 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %379, i32 0, i32 7
  %381 = load i64, i64* %380, align 8
  %382 = load i64, i64* @TSDB_MIN_COMMIT_TIME_INTERVAL, align 8
  %383 = load i64, i64* @TSDB_MAX_COMMIT_TIME_INTERVAL, align 8
  %384 = call i32 (i8*, i64, ...) @mTrace(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i64 %381, i64 %382, i64 %383)
  %385 = load i32, i32* @TSDB_CODE_INVALID_OPTION, align 4
  store i32 %385, i32* %2, align 4
  br label %433

386:                                              ; preds = %372
  %387 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %388 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %387, i32 0, i32 12
  %389 = load i32, i32* %388, align 8
  %390 = icmp slt i32 %389, 0
  br i1 %390, label %391, label %399

391:                                              ; preds = %386
  %392 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %393 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %392, i32 0, i32 13
  %394 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 8
  %396 = sdiv i32 %395, 4
  %397 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %398 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %397, i32 0, i32 12
  store i32 %396, i32* %398, align 8
  br label %399

399:                                              ; preds = %391, %386
  %400 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %401 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %400, i32 0, i32 12
  %402 = load i32, i32* %401, align 8
  %403 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %404 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %403, i32 0, i32 13
  %405 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 8
  %407 = mul nsw i32 %406, 3
  %408 = sdiv i32 %407, 4
  %409 = icmp sgt i32 %402, %408
  br i1 %409, label %410, label %419

410:                                              ; preds = %399
  %411 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %412 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %411, i32 0, i32 13
  %413 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %412, i32 0, i32 1
  %414 = load i32, i32* %413, align 8
  %415 = mul nsw i32 %414, 3
  %416 = sdiv i32 %415, 4
  %417 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %418 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %417, i32 0, i32 12
  store i32 %416, i32* %418, align 8
  br label %419

419:                                              ; preds = %410, %399
  %420 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %421 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %420, i32 0, i32 12
  %422 = load i32, i32* %421, align 8
  %423 = icmp slt i32 %422, 4
  br i1 %423, label %424, label %427

424:                                              ; preds = %419
  %425 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %426 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %425, i32 0, i32 12
  store i32 4, i32* %426, align 8
  br label %427

427:                                              ; preds = %424, %419
  %428 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %429 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %428, i32 0, i32 0
  %430 = load i64, i64* %429, align 8
  %431 = add nsw i64 %430, 1
  store i64 %431, i64* %429, align 8
  %432 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %432, i32* %2, align 4
  br label %433

433:                                              ; preds = %427, %378, %364, %343, %316, %295, %275, %255, %235, %217, %191, %167, %148, %129
  %434 = load i32, i32* %2, align 4
  ret i32 %434
}

declare dso_local i32 @mTrace(i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
