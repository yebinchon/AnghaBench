; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_vnodeMultiMeterQueryPrepare.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_vnodeMultiMeterQueryPrepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i32, i64, i32, %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i64, i64, i32, i32, i32, i32, i64, %struct.TYPE_28__, i32, i32, i32, %struct.TYPE_27__*, i32 }
%struct.TYPE_28__ = type { i32, i32, i32, i64, i32, %struct.TYPE_26__*, %struct.TYPE_30__, i32, i32 }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_29__**, %struct.TYPE_32__* }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_32__ = type { i32* }
%struct.TYPE_33__ = type { i64, i64, i64, i64, i32, %struct.TYPE_31__, i32, i32, i32, i32, i64 }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_36__ = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"QInfo:%p no result in time range %lld-%lld, order %d\00", align 1
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@TSQL_SO_ASC = common dso_local global i32 0, align 4
@TSQL_SO_DESC = common dso_local global i32 0, align 4
@taosHashInt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"tb_metric_mmap\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"QInfo:%p failed to create file: %s on disk. %s\00", align 1
@errno = common dso_local global i32 0, align 4
@TSDB_CODE_SERV_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@DEFAULT_INTERN_BUF_SIZE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [49 x i8] c"QInfo:%p failed to map data file: %s to disk. %s\00", align 1
@TSDB_INTERPO_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vnodeMultiMeterQueryPrepare(%struct.TYPE_34__* %0, %struct.TYPE_33__* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_34__*, align 8
  %6 = alloca %struct.TYPE_33__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_35__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_32__*, align 8
  %11 = alloca %struct.TYPE_36__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %5, align 8
  store %struct.TYPE_33__* %1, %struct.TYPE_33__** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_35__*, %struct.TYPE_35__** %16, align 8
  store %struct.TYPE_35__* %17, %struct.TYPE_35__** %8, align 8
  %18 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %19 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_33__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %24, %27
  br i1 %28, label %41, label %29

29:                                               ; preds = %21, %3
  %30 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %31 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_33__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %60, label %33

33:                                               ; preds = %29
  %34 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %36, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %33, %21
  %42 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %43 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @dTrace(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), %struct.TYPE_34__* %42, i64 %45, i64 %48, i64 %52)
  %54 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %54, i32 0, i32 2
  %56 = call i32 @sem_post(i32* %55)
  %57 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %59, i64* %4, align 8
  br label %334

60:                                               ; preds = %33, %29
  %61 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  %63 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  %65 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %65, i32 0, i32 10
  store i64 0, i64* %66, align 8
  %67 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %68 = call i32 @changeExecuteScanOrder(%struct.TYPE_33__* %67, i32 1)
  %69 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %69, i32 0, i32 7
  %71 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %70, i32 0, i32 8
  %72 = call i32 @vnodeInitDataBlockInfo(i32* %71)
  %73 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %73, i32 0, i32 7
  %75 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %74, i32 0, i32 7
  %76 = call i32 @vnodeInitLoadCompBlockInfo(i32* %75)
  %77 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %78 = call i32 @setScanLimitationByResultBuffer(%struct.TYPE_33__* %77)
  %79 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  %89 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %92, i32 0, i32 2
  store i64 %91, i64* %93, align 8
  store i32* null, i32** %9, align 8
  %94 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %94, i32 0, i32 11
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_32__*, %struct.TYPE_32__** %97, align 8
  store %struct.TYPE_32__* %98, %struct.TYPE_32__** %10, align 8
  %99 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %100 = icmp ne %struct.TYPE_32__* %99, null
  br i1 %100, label %101, label %105

101:                                              ; preds = %60
  %102 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  store i32* %104, i32** %9, align 8
  br label %105

105:                                              ; preds = %101, %60
  %106 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %106, i32 0, i32 12
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %109, i32 0, i32 11
  %111 = load %struct.TYPE_27__*, %struct.TYPE_27__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %113, i64 0
  %115 = load %struct.TYPE_29__*, %struct.TYPE_29__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call %struct.TYPE_36__* @getMeterObj(i32 %108, i32 %117)
  store %struct.TYPE_36__* %118, %struct.TYPE_36__** %11, align 8
  %119 = load i8*, i8** %7, align 8
  %120 = bitcast i8* %119 to %struct.TYPE_26__*
  %121 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %121, i32 0, i32 7
  %123 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %122, i32 0, i32 5
  store %struct.TYPE_26__* %120, %struct.TYPE_26__** %123, align 8
  %124 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %124, i32 0, i32 7
  %126 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %125, i32 0, i32 6
  %127 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %126, i32 0, i32 0
  store i32 -1, i32* %127, align 8
  %128 = load i8*, i8** %7, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %154

130:                                              ; preds = %105
  %131 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %131, i32 0, i32 5
  %133 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %135, i32 0, i32 7
  %137 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %136, i32 0, i32 5
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp eq i64 %134, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %130
  %143 = load i32, i32* @TSQL_SO_ASC, align 4
  br label %146

144:                                              ; preds = %130
  %145 = load i32, i32* @TSQL_SO_DESC, align 4
  br label %146

146:                                              ; preds = %144, %142
  %147 = phi i32 [ %143, %142 ], [ %145, %144 ]
  store i32 %147, i32* %12, align 4
  %148 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %148, i32 0, i32 7
  %150 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %149, i32 0, i32 5
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %150, align 8
  %152 = load i32, i32* %12, align 4
  %153 = call i32 @tsBufSetTraverseOrder(%struct.TYPE_26__* %151, i32 %152)
  br label %154

154:                                              ; preds = %146, %105
  %155 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %156 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %157 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %157, i32 0, i32 7
  %159 = load i32*, i32** %9, align 8
  %160 = load i32, i32* @TSQL_SO_ASC, align 4
  %161 = call i64 @setupQueryRuntimeEnv(%struct.TYPE_36__* %155, %struct.TYPE_33__* %156, %struct.TYPE_28__* %158, i32* %159, i32 %160, i32 1)
  store i64 %161, i64* %13, align 8
  %162 = load i64, i64* %13, align 8
  %163 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %154
  %166 = load i64, i64* %13, align 8
  store i64 %166, i64* %4, align 8
  br label %334

167:                                              ; preds = %154
  %168 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %168, i32 0, i32 11
  %170 = load %struct.TYPE_27__*, %struct.TYPE_27__** %169, align 8
  %171 = call i32 @tSidSetSort(%struct.TYPE_27__* %170)
  %172 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %173 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @vnodeOpenAllFiles(%struct.TYPE_34__* %172, i32 %175)
  %177 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %178 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %179 = call i64 @allocateOutputBufForGroup(%struct.TYPE_35__* %177, %struct.TYPE_33__* %178, i32 1)
  store i64 %179, i64* %13, align 8
  %180 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %167
  %183 = load i64, i64* %13, align 8
  store i64 %183, i64* %4, align 8
  br label %334

184:                                              ; preds = %167
  %185 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %185, i32 0, i32 9
  %187 = load i32, i32* %186, align 4
  %188 = call i64 @isGroupbyNormalCol(i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %205

190:                                              ; preds = %184
  %191 = load i32, i32* @taosHashInt, align 4
  %192 = call i32 @taosInitIntHash(i32 10039, i32 8, i32 %191)
  %193 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %193, i32 0, i32 7
  %195 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %194, i32 0, i32 4
  store i32 %192, i32* %195, align 8
  %196 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %196, i32 0, i32 7
  %198 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %197, i32 0, i32 3
  store i64 0, i64* %198, align 8
  %199 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %199, i32 0, i32 10
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %202, i32 0, i32 7
  %204 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %203, i32 0, i32 2
  store i32 %201, i32* %204, align 8
  br label %205

205:                                              ; preds = %190, %184
  %206 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %206, i32 0, i32 3
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %302

210:                                              ; preds = %205
  %211 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %211, i32 0, i32 8
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @getTmpfilePath(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %213)
  %215 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %215, i32 0, i32 8
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @O_CREAT, align 4
  %219 = load i32, i32* @O_RDWR, align 4
  %220 = or i32 %218, %219
  %221 = call i32 @open(i32 %217, i32 %220, i32 438)
  %222 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %222, i32 0, i32 9
  store i32 %221, i32* %223, align 4
  %224 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %224, i32 0, i32 9
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @VALIDFD(i32 %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %238, label %229

229:                                              ; preds = %210
  %230 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %231 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %231, i32 0, i32 8
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @errno, align 4
  %235 = call i32 @strerror(i32 %234)
  %236 = call i32 @dError(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_34__* %230, i32 %233, i32 %235)
  %237 = load i64, i64* @TSDB_CODE_SERV_OUT_OF_MEMORY, align 8
  store i64 %237, i64* %4, align 8
  br label %334

238:                                              ; preds = %210
  %239 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %242, i32 0, i32 2
  store i32 %241, i32* %243, align 8
  %244 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %244, i32 0, i32 9
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @DEFAULT_INTERN_BUF_SIZE, align 4
  %251 = mul nsw i32 %249, %250
  %252 = call i32 @ftruncate(i32 %246, i32 %251)
  %253 = load i32, i32* @DEFAULT_INTERN_BUF_SIZE, align 4
  %254 = sext i32 %253 to i64
  %255 = sub i64 %254, 4
  %256 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 8
  %259 = sext i32 %258 to i64
  %260 = udiv i64 %255, %259
  %261 = trunc i64 %260 to i32
  %262 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %262, i32 0, i32 7
  %264 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %263, i32 0, i32 0
  store i32 %261, i32* %264, align 8
  %265 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %265, i32 0, i32 4
  store i32 -1, i32* %266, align 8
  %267 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %268 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* @DEFAULT_INTERN_BUF_SIZE, align 4
  %271 = mul nsw i32 %269, %270
  %272 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %273 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %272, i32 0, i32 5
  store i32 %271, i32* %273, align 4
  %274 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %275 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %274, i32 0, i32 5
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @PROT_READ, align 4
  %278 = load i32, i32* @PROT_WRITE, align 4
  %279 = or i32 %277, %278
  %280 = load i32, i32* @MAP_SHARED, align 4
  %281 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %282 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %281, i32 0, i32 9
  %283 = load i32, i32* %282, align 4
  %284 = call i64 @mmap(i32* null, i32 %276, i32 %279, i32 %280, i32 %283, i32 0)
  %285 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %286 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %285, i32 0, i32 6
  store i64 %284, i64* %286, align 8
  %287 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %288 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %287, i32 0, i32 6
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* @MAP_FAILED, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %292, label %301

292:                                              ; preds = %238
  %293 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %294 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %294, i32 0, i32 8
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* @errno, align 4
  %298 = call i32 @strerror(i32 %297)
  %299 = call i32 @dError(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_34__* %293, i32 %296, i32 %298)
  %300 = load i64, i64* @TSDB_CODE_SERV_OUT_OF_MEMORY, align 8
  store i64 %300, i64* %4, align 8
  br label %334

301:                                              ; preds = %238
  br label %302

302:                                              ; preds = %301, %205
  %303 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %304 = call i32 @isPointInterpoQuery(%struct.TYPE_33__* %303)
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %310, label %306

306:                                              ; preds = %302
  %307 = load i32, i32* @TSDB_INTERPO_NONE, align 4
  %308 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %308, i32 0, i32 8
  store i32 %307, i32* %309, align 8
  br label %310

310:                                              ; preds = %306, %302
  %311 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %312 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %314, i32 0, i32 3
  %316 = load i64, i64* %315, align 8
  %317 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %318 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %317, i32 0, i32 7
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %321 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %320, i32 0, i32 6
  %322 = load i32, i32* %321, align 8
  %323 = call i32 @taosGetIntervalStartTimestamp(i64 %313, i64 %316, i32 %319, i32 %322)
  store i32 %323, i32* %14, align 4
  %324 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %325 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %324, i32 0, i32 7
  %326 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %325, i32 0, i32 1
  %327 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %328 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %327, i32 0, i32 5
  %329 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = load i32, i32* %14, align 4
  %332 = call i32 @taosInitInterpoInfo(i32* %326, i64 %330, i32 %331, i32 0, i32 0)
  %333 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %333, i64* %4, align 8
  br label %334

334:                                              ; preds = %310, %292, %229, %182, %165, %41
  %335 = load i64, i64* %4, align 8
  ret i64 %335
}

declare dso_local i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_33__*) #1

declare dso_local i32 @dTrace(i8*, %struct.TYPE_34__*, i64, i64, i64) #1

declare dso_local i32 @sem_post(i32*) #1

declare dso_local i32 @changeExecuteScanOrder(%struct.TYPE_33__*, i32) #1

declare dso_local i32 @vnodeInitDataBlockInfo(i32*) #1

declare dso_local i32 @vnodeInitLoadCompBlockInfo(i32*) #1

declare dso_local i32 @setScanLimitationByResultBuffer(%struct.TYPE_33__*) #1

declare dso_local %struct.TYPE_36__* @getMeterObj(i32, i32) #1

declare dso_local i32 @tsBufSetTraverseOrder(%struct.TYPE_26__*, i32) #1

declare dso_local i64 @setupQueryRuntimeEnv(%struct.TYPE_36__*, %struct.TYPE_33__*, %struct.TYPE_28__*, i32*, i32, i32) #1

declare dso_local i32 @tSidSetSort(%struct.TYPE_27__*) #1

declare dso_local i32 @vnodeOpenAllFiles(%struct.TYPE_34__*, i32) #1

declare dso_local i64 @allocateOutputBufForGroup(%struct.TYPE_35__*, %struct.TYPE_33__*, i32) #1

declare dso_local i64 @isGroupbyNormalCol(i32) #1

declare dso_local i32 @taosInitIntHash(i32, i32, i32) #1

declare dso_local i32 @getTmpfilePath(i8*, i32) #1

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @VALIDFD(i32) #1

declare dso_local i32 @dError(i8*, %struct.TYPE_34__*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @ftruncate(i32, i32) #1

declare dso_local i64 @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @isPointInterpoQuery(%struct.TYPE_33__*) #1

declare dso_local i32 @taosGetIntervalStartTimestamp(i64, i64, i32, i32) #1

declare dso_local i32 @taosInitInterpoInfo(i32*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
