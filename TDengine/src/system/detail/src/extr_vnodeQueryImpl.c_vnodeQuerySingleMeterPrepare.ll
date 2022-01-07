; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_vnodeQuerySingleMeterPrepare.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_vnodeQuerySingleMeterPrepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_59__ = type { i32, i32, i64, %struct.TYPE_58__ }
%struct.TYPE_58__ = type { i64, i64, i64, i64, i64, %struct.TYPE_57__, i32, i32, i32, %struct.TYPE_56__*, %struct.TYPE_52__, i32, i64 }
%struct.TYPE_57__ = type { i64 }
%struct.TYPE_56__ = type { %struct.TYPE_55__ }
%struct.TYPE_55__ = type { %struct.TYPE_54__* }
%struct.TYPE_54__ = type { %struct.TYPE_53__ }
%struct.TYPE_53__ = type { i64 }
%struct.TYPE_52__ = type { i64 }
%struct.TYPE_48__ = type { i64, i32 }
%struct.TYPE_47__ = type { i64, i64, i32, %struct.TYPE_49__, i32 }
%struct.TYPE_49__ = type { i32, i32, i64, i32, %struct.TYPE_50__*, %struct.TYPE_51__, %struct.TYPE_58__*, i32, i32 }
%struct.TYPE_50__ = type { i64 }
%struct.TYPE_51__ = type { i32 }
%struct.TYPE_46__ = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"QInfo:%p no result in time range %lld-%lld, order %d\00", align 1
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"QInfo:%p no result in query\00", align 1
@TSQL_SO_ASC = common dso_local global i32 0, align 4
@TSQL_SO_DESC = common dso_local global i32 0, align 4
@taosHashInt = common dso_local global i32 0, align 4
@QUERY_NOT_COMPLETED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vnodeQuerySingleMeterPrepare(%struct.TYPE_59__* %0, %struct.TYPE_48__* %1, %struct.TYPE_47__* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_59__*, align 8
  %7 = alloca %struct.TYPE_48__*, align 8
  %8 = alloca %struct.TYPE_47__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_58__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_46__, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_59__* %0, %struct.TYPE_59__** %6, align 8
  store %struct.TYPE_48__* %1, %struct.TYPE_48__** %7, align 8
  store %struct.TYPE_47__* %2, %struct.TYPE_47__** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %17, i32 0, i32 3
  store %struct.TYPE_58__* %18, %struct.TYPE_58__** %10, align 8
  %19 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %20 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_58__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %4
  %23 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %25, %28
  br i1 %29, label %42, label %30

30:                                               ; preds = %22, %4
  %31 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %32 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_58__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %61, label %34

34:                                               ; preds = %30
  %35 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %37, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %34, %22
  %43 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %44 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 (i8*, %struct.TYPE_59__*, ...) @dTrace(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), %struct.TYPE_59__* %43, i64 %46, i64 %49, i64 %53)
  %55 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %55, i32 0, i32 1
  %57 = call i32 @sem_post(i32* %56)
  %58 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %60, i64* %5, align 8
  br label %342

61:                                               ; preds = %34, %30
  %62 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %63 = call i32 @setScanLimitationByResultBuffer(%struct.TYPE_58__* %62)
  %64 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %65 = call i32 @changeExecuteScanOrder(%struct.TYPE_58__* %64, i32 0)
  %66 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  %68 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %68, i32 0, i32 2
  store i64 0, i64* %69, align 8
  %70 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %70, i32 0, i32 12
  store i64 0, i64* %71, align 8
  %72 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %75, i32 0, i32 2
  store i64 %74, i64* %76, align 8
  %77 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %78, i32 0, i32 8
  %80 = call i32 @vnodeInitDataBlockInfo(i32* %79)
  %81 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %82, i32 0, i32 7
  %84 = call i32 @vnodeInitLoadCompBlockInfo(i32* %83)
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %85 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %86 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %87, i32 0, i32 6
  store %struct.TYPE_58__* %85, %struct.TYPE_58__** %88, align 8
  %89 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_48__*, %struct.TYPE_48__** %7, align 8
  %92 = call i32 @vnodeCheckIfDataExists(%struct.TYPE_49__* %90, %struct.TYPE_48__* %91, i32* %12, i32* %11)
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %107, label %95

95:                                               ; preds = %61
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %107, label %98

98:                                               ; preds = %95
  %99 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %100 = call i32 (i8*, %struct.TYPE_59__*, ...) @dTrace(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_59__* %99)
  %101 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %101, i32 0, i32 1
  %103 = call i32 @sem_post(i32* %102)
  %104 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %104, i32 0, i32 0
  store i32 1, i32* %105, align 8
  %106 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %106, i64* %5, align 8
  br label %342

107:                                              ; preds = %95, %61
  %108 = load i8*, i8** %9, align 8
  %109 = bitcast i8* %108 to %struct.TYPE_50__*
  %110 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %111, i32 0, i32 4
  store %struct.TYPE_50__* %109, %struct.TYPE_50__** %112, align 8
  %113 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %115, i32 0, i32 0
  store i32 -1, i32* %116, align 8
  %117 = load i8*, i8** %9, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %143

119:                                              ; preds = %107
  %120 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %120, i32 0, i32 5
  %122 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %125, i32 0, i32 4
  %127 = load %struct.TYPE_50__*, %struct.TYPE_50__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %123, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %119
  %132 = load i32, i32* @TSQL_SO_ASC, align 4
  br label %135

133:                                              ; preds = %119
  %134 = load i32, i32* @TSQL_SO_DESC, align 4
  br label %135

135:                                              ; preds = %133, %131
  %136 = phi i32 [ %132, %131 ], [ %134, %133 ]
  store i32 %136, i32* %13, align 4
  %137 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %138, i32 0, i32 4
  %140 = load %struct.TYPE_50__*, %struct.TYPE_50__** %139, align 8
  %141 = load i32, i32* %13, align 4
  %142 = call i32 @tsBufSetTraverseOrder(%struct.TYPE_50__* %140, i32 %141)
  br label %143

143:                                              ; preds = %135, %107
  %144 = load %struct.TYPE_48__*, %struct.TYPE_48__** %7, align 8
  %145 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %146 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %146, i32 0, i32 3
  %148 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %148, i32 0, i32 5
  %150 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = call i64 @setupQueryRuntimeEnv(%struct.TYPE_48__* %144, %struct.TYPE_58__* %145, %struct.TYPE_49__* %147, i32* null, i64 %151, i32 0)
  store i64 %152, i64* %14, align 8
  %153 = load i64, i64* %14, align 8
  %154 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %143
  %157 = load i64, i64* %14, align 8
  store i64 %157, i64* %5, align 8
  br label %342

158:                                              ; preds = %143
  %159 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %160 = load %struct.TYPE_48__*, %struct.TYPE_48__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @vnodeOpenAllFiles(%struct.TYPE_59__* %159, i32 %162)
  %164 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %164, i32 0, i32 11
  %166 = load i32, i32* %165, align 8
  %167 = call i64 @isGroupbyNormalCol(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %192

169:                                              ; preds = %158
  %170 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %171 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %172 = call i64 @allocateOutputBufForGroup(%struct.TYPE_47__* %170, %struct.TYPE_58__* %171, i32 0)
  store i64 %172, i64* %14, align 8
  %173 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %169
  %176 = load i64, i64* %14, align 8
  store i64 %176, i64* %5, align 8
  br label %342

177:                                              ; preds = %169
  %178 = load i32, i32* @taosHashInt, align 4
  %179 = call i32 @taosInitIntHash(i32 10039, i32 8, i32 %178)
  %180 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %181, i32 0, i32 3
  store i32 %179, i32* %182, align 8
  %183 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %184, i32 0, i32 2
  store i64 0, i64* %185, align 8
  %186 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %190, i32 0, i32 1
  store i32 %188, i32* %191, align 4
  br label %192

192:                                              ; preds = %177, %158
  %193 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %194 = call i64 @isFirstLastRowQuery(%struct.TYPE_58__* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %212

196:                                              ; preds = %192
  %197 = load %struct.TYPE_48__*, %struct.TYPE_48__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %200, i32 0, i32 0
  store i64 %199, i64* %201, align 8
  %202 = load %struct.TYPE_48__*, %struct.TYPE_48__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %205, i32 0, i32 1
  store i64 %204, i64* %206, align 8
  %207 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %208 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %211 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %210, i32 0, i32 2
  store i64 %209, i64* %211, align 8
  br label %212

212:                                              ; preds = %196, %192
  %213 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %216, i32 0, i32 0
  store i64 %215, i64* %217, align 8
  %218 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %221, i32 0, i32 1
  store i64 %220, i64* %222, align 8
  %223 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %223, i32 0, i32 2
  store i32 1, i32* %224, align 8
  %225 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %226 = load i32, i32* @QUERY_NOT_COMPLETED, align 4
  %227 = call i32 @setQueryStatus(%struct.TYPE_58__* %225, i32 %226)
  %228 = bitcast %struct.TYPE_46__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %228, i8 0, i64 4, i1 false)
  %229 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %230 = call i32 @pointInterpSupporterInit(%struct.TYPE_58__* %229, %struct.TYPE_46__* %15)
  %231 = load i32, i32* %12, align 4
  %232 = load i32, i32* %11, align 4
  %233 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %234 = call i32 @normalizedFirstQueryRange(i32 %231, i32 %232, %struct.TYPE_47__* %233, %struct.TYPE_46__* %15)
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %271, label %236

236:                                              ; preds = %212
  %237 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %238 = call i64 @isFixedOutputQuery(%struct.TYPE_58__* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %250

240:                                              ; preds = %236
  %241 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %242 = call i64 @isTopBottomQuery(%struct.TYPE_58__* %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %250, label %244

244:                                              ; preds = %240
  %245 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %246 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %245, i32 0, i32 10
  %247 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = icmp sgt i64 %248, 0
  br i1 %249, label %271, label %250

250:                                              ; preds = %244, %240, %236
  %251 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %252 = call i64 @isTopBottomQuery(%struct.TYPE_58__* %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %279

254:                                              ; preds = %250
  %255 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %256 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %255, i32 0, i32 10
  %257 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %260 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %259, i32 0, i32 9
  %261 = load %struct.TYPE_56__*, %struct.TYPE_56__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %261, i64 1
  %263 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %263, i32 0, i32 0
  %265 = load %struct.TYPE_54__*, %struct.TYPE_54__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %265, i64 0
  %267 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = icmp sge i64 %258, %269
  br i1 %270, label %271, label %279

271:                                              ; preds = %254, %244, %212
  %272 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %272, i32 0, i32 1
  %274 = call i32 @sem_post(i32* %273)
  %275 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %275, i32 0, i32 0
  store i32 1, i32* %276, align 8
  %277 = call i32 @pointInterpSupporterDestroy(%struct.TYPE_46__* %15)
  %278 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %278, i64* %5, align 8
  br label %342

279:                                              ; preds = %254, %250
  %280 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %281 = call i32 @pointInterpSupporterSetData(%struct.TYPE_59__* %280, %struct.TYPE_46__* %15)
  %282 = call i32 @pointInterpSupporterDestroy(%struct.TYPE_46__* %15)
  %283 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %284 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %285 = load i32, i32* %12, align 4
  %286 = load i32, i32* %11, align 4
  %287 = call i32 @forwardQueryStartPosIfNeeded(%struct.TYPE_59__* %283, %struct.TYPE_47__* %284, i32 %285, i32 %286)
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %291, label %289

289:                                              ; preds = %279
  %290 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %290, i64* %5, align 8
  br label %342

291:                                              ; preds = %279
  %292 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %293 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %296 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %295, i32 0, i32 8
  %297 = load i32, i32* %296, align 8
  %298 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %299 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %298, i32 0, i32 7
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %302 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %301, i32 0, i32 6
  %303 = load i32, i32* %302, align 8
  %304 = call i32 @taosGetIntervalStartTimestamp(i64 %294, i32 %297, i32 %300, i32 %303)
  store i32 %304, i32* %16, align 4
  %305 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %306 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %305, i32 0, i32 3
  %307 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %306, i32 0, i32 0
  %308 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %309 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %308, i32 0, i32 5
  %310 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = load i32, i32* %16, align 4
  %313 = call i32 @taosInitInterpoInfo(i32* %307, i64 %311, i32 %312, i32 0, i32 0)
  %314 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %315 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %316 = load %struct.TYPE_48__*, %struct.TYPE_48__** %7, align 8
  %317 = call i32 @allocMemForInterpo(%struct.TYPE_47__* %314, %struct.TYPE_58__* %315, %struct.TYPE_48__* %316)
  %318 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %319 = call i32 @isPointInterpoQuery(%struct.TYPE_58__* %318)
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %335, label %321

321:                                              ; preds = %291
  %322 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %323 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %322, i32 0, i32 3
  %324 = load i64, i64* %323, align 8
  %325 = icmp sge i64 %324, 0
  br i1 %325, label %326, label %331

326:                                              ; preds = %321
  %327 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %328 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %327, i32 0, i32 4
  %329 = load i64, i64* %328, align 8
  %330 = icmp sge i64 %329, 0
  br label %331

331:                                              ; preds = %326, %321
  %332 = phi i1 [ false, %321 ], [ %330, %326 ]
  %333 = zext i1 %332 to i32
  %334 = call i32 @assert(i32 %333)
  br label %335

335:                                              ; preds = %331, %291
  %336 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %337 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %336, i32 0, i32 0
  %338 = load i64, i64* %337, align 8
  %339 = load %struct.TYPE_58__*, %struct.TYPE_58__** %10, align 8
  %340 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %339, i32 0, i32 2
  store i64 %338, i64* %340, align 8
  %341 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %341, i64* %5, align 8
  br label %342

342:                                              ; preds = %335, %289, %271, %175, %156, %98, %42
  %343 = load i64, i64* %5, align 8
  ret i64 %343
}

declare dso_local i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_58__*) #1

declare dso_local i32 @dTrace(i8*, %struct.TYPE_59__*, ...) #1

declare dso_local i32 @sem_post(i32*) #1

declare dso_local i32 @setScanLimitationByResultBuffer(%struct.TYPE_58__*) #1

declare dso_local i32 @changeExecuteScanOrder(%struct.TYPE_58__*, i32) #1

declare dso_local i32 @vnodeInitDataBlockInfo(i32*) #1

declare dso_local i32 @vnodeInitLoadCompBlockInfo(i32*) #1

declare dso_local i32 @vnodeCheckIfDataExists(%struct.TYPE_49__*, %struct.TYPE_48__*, i32*, i32*) #1

declare dso_local i32 @tsBufSetTraverseOrder(%struct.TYPE_50__*, i32) #1

declare dso_local i64 @setupQueryRuntimeEnv(%struct.TYPE_48__*, %struct.TYPE_58__*, %struct.TYPE_49__*, i32*, i64, i32) #1

declare dso_local i32 @vnodeOpenAllFiles(%struct.TYPE_59__*, i32) #1

declare dso_local i64 @isGroupbyNormalCol(i32) #1

declare dso_local i64 @allocateOutputBufForGroup(%struct.TYPE_47__*, %struct.TYPE_58__*, i32) #1

declare dso_local i32 @taosInitIntHash(i32, i32, i32) #1

declare dso_local i64 @isFirstLastRowQuery(%struct.TYPE_58__*) #1

declare dso_local i32 @setQueryStatus(%struct.TYPE_58__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @pointInterpSupporterInit(%struct.TYPE_58__*, %struct.TYPE_46__*) #1

declare dso_local i32 @normalizedFirstQueryRange(i32, i32, %struct.TYPE_47__*, %struct.TYPE_46__*) #1

declare dso_local i64 @isFixedOutputQuery(%struct.TYPE_58__*) #1

declare dso_local i64 @isTopBottomQuery(%struct.TYPE_58__*) #1

declare dso_local i32 @pointInterpSupporterDestroy(%struct.TYPE_46__*) #1

declare dso_local i32 @pointInterpSupporterSetData(%struct.TYPE_59__*, %struct.TYPE_46__*) #1

declare dso_local i32 @forwardQueryStartPosIfNeeded(%struct.TYPE_59__*, %struct.TYPE_47__*, i32, i32) #1

declare dso_local i32 @taosGetIntervalStartTimestamp(i64, i32, i32, i32) #1

declare dso_local i32 @taosInitInterpoInfo(i32*, i64, i32, i32, i32) #1

declare dso_local i32 @allocMemForInterpo(%struct.TYPE_47__*, %struct.TYPE_58__*, %struct.TYPE_48__*) #1

declare dso_local i32 @isPointInterpoQuery(%struct.TYPE_58__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
