; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtDb.c_mgmtAlterDb.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtDb.c_mgmtAlterDb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_11__*, i32, %struct.TYPE_10__, %struct.TYPE_11__*, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4
@dbSdb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"db:%s is not exist\00", align 1
@TSDB_CODE_INVALID_DB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"db:%s daysToKeep:%d change to %d\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"db:%s replica:%d change to %d\00", align 1
@TSDB_REPLICA_MIN_NUM = common dso_local global i32 0, align 4
@TSDB_REPLICA_MAX_NUM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"invalid db option replica: %d valid range: %d--%d\00", align 1
@TSDB_CODE_INVALID_OPTION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"db:%s tables:%d change to %d\00", align 1
@TSDB_MIN_TABLES_PER_VNODE = common dso_local global i32 0, align 4
@TSDB_MAX_TABLES_PER_VNODE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"invalid db option tables: %d valid range: %d--%d\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"invalid db option tables: %d should larger than original:%d\00", align 1
@.str.7 = private unnamed_addr constant [75 x i8] c"db:%s alter msg, replica:%d, keep:%d, tables:%d, origin replica:%d keep:%d\00", align 1
@tsDbUpdateSize = common dso_local global i32 0, align 4
@TSDB_CODE_SDB_ERROR = common dso_local global i32 0, align 4
@LB_VGROUP_STATE_UPDATE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [46 x i8] c"db:%s vgroup:%d not enough dnode to add vnode\00", align 1
@TSDB_CODE_NO_ENOUGH_DNODES = common dso_local global i32 0, align 4
@vgSdb = common dso_local global i32 0, align 4
@tsVgUpdateSize = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmtAlterDb(i32* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %10 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @dbSdb, align 4
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @sdbGetRow(i32 %11, i32 %14)
  %16 = inttoptr i64 %15 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %6, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %18 = icmp eq %struct.TYPE_11__* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, i32, ...) @mTrace(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @TSDB_CODE_INVALID_DB, align 4
  store i32 %24, i32* %3, align 4
  br label %234

25:                                               ; preds = %2
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %25
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i8*, i32, ...) @mTrace(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %41, i32 %44)
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  br label %176

52:                                               ; preds = %25
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %95

57:                                               ; preds = %52
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i8*, i32, ...) @mTrace(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32 %64, i32 %67)
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @TSDB_REPLICA_MIN_NUM, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %80, label %74

74:                                               ; preds = %57
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @TSDB_REPLICA_MAX_NUM, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %74, %57
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @TSDB_REPLICA_MIN_NUM, align 4
  %85 = load i32, i32* @TSDB_REPLICA_MAX_NUM, align 4
  %86 = call i32 (i8*, i32, i32, ...) @mError(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %83, i32 %84, i32 %85)
  %87 = load i32, i32* @TSDB_CODE_INVALID_OPTION, align 4
  store i32 %87, i32* %3, align 4
  br label %234

88:                                               ; preds = %74
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 4
  br label %175

95:                                               ; preds = %52
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %152

100:                                              ; preds = %95
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (i8*, i32, ...) @mTrace(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %103, i32 %107, i32 %110)
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @TSDB_MIN_TABLES_PER_VNODE, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %123, label %117

117:                                              ; preds = %100
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @TSDB_MAX_TABLES_PER_VNODE, align 4
  %122 = icmp sgt i32 %120, %121
  br i1 %122, label %123, label %131

123:                                              ; preds = %117, %100
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @TSDB_MIN_TABLES_PER_VNODE, align 4
  %128 = load i32, i32* @TSDB_MAX_TABLES_PER_VNODE, align 4
  %129 = call i32 (i8*, i32, i32, ...) @mError(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %126, i32 %127, i32 %128)
  %130 = load i32, i32* @TSDB_CODE_INVALID_OPTION, align 4
  store i32 %130, i32* %3, align 4
  br label %234

131:                                              ; preds = %117
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = icmp slt i32 %134, %138
  br i1 %139, label %140, label %150

140:                                              ; preds = %131
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = call i32 (i8*, i32, i32, ...) @mError(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0), i32 %143, i32 %147)
  %149 = load i32, i32* @TSDB_CODE_INVALID_OPTION, align 4
  store i32 %149, i32* %3, align 4
  br label %234

150:                                              ; preds = %131
  %151 = load i32, i32* @TSDB_CODE_INVALID_OPTION, align 4
  store i32 %151, i32* %3, align 4
  br label %234

152:                                              ; preds = %95
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 (i8*, i32, i32, ...) @mError(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.7, i64 0, i64 0), i32 %155, i32 %158, i32 %161, i32 %164, i32 %168, i32 %172)
  %174 = load i32, i32* @TSDB_CODE_INVALID_OPTION, align 4
  store i32 %174, i32* %3, align 4
  br label %234

175:                                              ; preds = %88
  br label %176

176:                                              ; preds = %175, %34
  %177 = load i32, i32* @dbSdb, align 4
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %179 = load i32, i32* @tsDbUpdateSize, align 4
  %180 = call i64 @sdbUpdateRow(i32 %177, %struct.TYPE_11__* %178, i32 %179, i32 1)
  %181 = icmp slt i64 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %176
  %183 = load i32, i32* @TSDB_CODE_SDB_ERROR, align 4
  store i32 %183, i32* %3, align 4
  br label %234

184:                                              ; preds = %176
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 3
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %186, align 8
  store %struct.TYPE_11__* %187, %struct.TYPE_11__** %9, align 8
  br label %188

188:                                              ; preds = %225, %184
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %190 = icmp ne %struct.TYPE_11__* %189, null
  br i1 %190, label %191, label %231

191:                                              ; preds = %188
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %193 = load i32, i32* @LB_VGROUP_STATE_UPDATE, align 4
  %194 = call i32 @mgmtUpdateVgroupState(%struct.TYPE_11__* %192, i32 %193, i32 0)
  %195 = load i32, i32* %8, align 4
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = icmp slt i32 %195, %199
  br i1 %200, label %201, label %215

201:                                              ; preds = %191
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %203 = call i32 @mgmtAddVnode(%struct.TYPE_11__* %202, i32* null, i32* null)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %214, label %205

205:                                              ; preds = %201
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @mWarn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i32 %208, i32 %211)
  %213 = load i32, i32* @TSDB_CODE_NO_ENOUGH_DNODES, align 4
  store i32 %213, i32* %7, align 4
  br label %214

214:                                              ; preds = %205, %201
  br label %215

215:                                              ; preds = %214, %191
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = icmp sgt i32 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %215
  %221 = load i32, i32* @vgSdb, align 4
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %223 = load i32, i32* @tsVgUpdateSize, align 4
  %224 = call i64 @sdbUpdateRow(i32 %221, %struct.TYPE_11__* %222, i32 %223, i32 0)
  br label %225

225:                                              ; preds = %220, %215
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %227 = call i32 @mgmtSendVPeersMsg(%struct.TYPE_11__* %226)
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 0
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %229, align 8
  store %struct.TYPE_11__* %230, %struct.TYPE_11__** %9, align 8
  br label %188

231:                                              ; preds = %188
  %232 = call i32 @mgmtStartBalanceTimer(i32 10)
  %233 = load i32, i32* %7, align 4
  store i32 %233, i32* %3, align 4
  br label %234

234:                                              ; preds = %231, %182, %152, %150, %140, %123, %80, %19
  %235 = load i32, i32* %3, align 4
  ret i32 %235
}

declare dso_local i64 @sdbGetRow(i32, i32) #1

declare dso_local i32 @mTrace(i8*, i32, ...) #1

declare dso_local i32 @mError(i8*, i32, i32, ...) #1

declare dso_local i64 @sdbUpdateRow(i32, %struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @mgmtUpdateVgroupState(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @mgmtAddVnode(%struct.TYPE_11__*, i32*, i32*) #1

declare dso_local i32 @mWarn(i8*, i32, i32) #1

declare dso_local i32 @mgmtSendVPeersMsg(%struct.TYPE_11__*) #1

declare dso_local i32 @mgmtStartBalanceTimer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
