; ModuleID = '/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterCommand.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i32, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_24__** }
%struct.TYPE_24__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"meet\00", align 1
@C_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Invalid TCP port specified: %s\00", align 1
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Invalid node address specified: %s:%s\00", align 1
@shared = common dso_local global %struct.TYPE_22__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"nodes\00", align 1
@OBJ_STRING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"myid\00", align 1
@myself = common dso_local global %struct.TYPE_20__* null, align 8
@CLUSTER_NAMELEN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"needhelp\00", align 1
@__const.clusterCommand.statestr = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0)], align 16
@.str.9 = private unnamed_addr constant [161 x i8] c"cluster_state:%s\0D\0Acluster_known_nodes:%lu\0D\0Acluster_reachable_nodes:%d\0D\0Acluster_size:%d\0D\0Acluster_stats_messages_sent:%lld\0D\0Acluster_stats_messages_received:%lld\0D\0A\00", align 1
@server = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"saveconfig\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"error saving the cluster node config: %s\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"forget\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"Invalid node identifier\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"Unknown node %s\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"I tried hard but I can't forget myself...\00", align 1
@CLUSTER_TODO_UPDATE_STATE = common dso_local global i32 0, align 4
@CLUSTER_TODO_SAVE_CONFIG = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"hard\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"soft\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"leaving\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@CLUSTER_NODE_LEAVING = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.22 = private unnamed_addr constant [54 x i8] c"Wrong argument for CLUSTER LEAVING. Use 'yes' or 'no'\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"+yes\0D\0A\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"+no\0D\0A\00", align 1
@.str.25 = private unnamed_addr constant [48 x i8] c"Wrong CLUSTER subcommand or number of arguments\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clusterCommand(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [3 x i8*], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %14, i64 1
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @strcasecmp(i64 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %85, label %21

21:                                               ; preds = %1
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %26, label %85

26:                                               ; preds = %21
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %29, i64 3
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %32 = call i64 @getLongLongFromObject(%struct.TYPE_24__* %31, i64* %3)
  %33 = load i64, i64* @C_OK, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %26
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %39, i64 3
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = call i32 (%struct.TYPE_21__*, i8*, i8*, ...) @addReplyErrorFormat(%struct.TYPE_21__* %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  br label %442

46:                                               ; preds = %26
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %49, i64 2
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %3, align 8
  %55 = call i64 @clusterStartHandshake(i64 %53, i64 %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %80

57:                                               ; preds = %46
  %58 = load i64, i64* @errno, align 8
  %59 = load i64, i64* @EINVAL, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %80

61:                                               ; preds = %57
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %65, i64 2
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to i8*
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %73, i64 3
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i8*
  %79 = call i32 (%struct.TYPE_21__*, i8*, i8*, ...) @addReplyErrorFormat(%struct.TYPE_21__* %62, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %70, i8* %78)
  br label %84

80:                                               ; preds = %57, %46
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @shared, i32 0, i32 0), align 4
  %83 = call i32 @addReply(%struct.TYPE_21__* %81, i32 %82)
  br label %84

84:                                               ; preds = %80, %61
  br label %442

85:                                               ; preds = %21, %1
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %88, i64 1
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @strcasecmp(i64 %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %110, label %95

95:                                               ; preds = %85
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %98, 2
  br i1 %99, label %100, label %110

100:                                              ; preds = %95
  %101 = call i32 @clusterGenNodesDescription(i32 0)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* @OBJ_STRING, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call i32* @createObject(i32 %102, i32 %103)
  store i32* %104, i32** %4, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %106 = load i32*, i32** %4, align 8
  %107 = call i32 @addReplyBulk(%struct.TYPE_21__* %105, i32* %106)
  %108 = load i32*, i32** %4, align 8
  %109 = call i32 @decrRefCount(i32* %108)
  br label %441

110:                                              ; preds = %95, %85
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %113, i64 1
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @strcasecmp(i64 %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %132, label %120

120:                                              ; preds = %110
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp eq i32 %123, 2
  br i1 %124, label %125, label %132

125:                                              ; preds = %120
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** @myself, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i64, i64* @CLUSTER_NAMELEN, align 8
  %131 = call i32 @addReplyBulkCBuffer(%struct.TYPE_21__* %126, i32 %129, i64 %130)
  br label %440

132:                                              ; preds = %120, %110
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %135, i64 1
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @strcasecmp(i64 %139, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %175, label %142

142:                                              ; preds = %132
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp eq i32 %145, 2
  br i1 %146, label %147, label %175

147:                                              ; preds = %142
  %148 = bitcast [3 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %148, i8* align 16 bitcast ([3 x i8*]* @__const.clusterCommand.statestr to i8*), i64 24, i1 false)
  %149 = call i32 (...) @sdsempty()
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @server, i32 0, i32 0), align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 %152
  %154 = load i8*, i8** %153, align 8
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @server, i32 0, i32 0), align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @dictSize(i32 %157)
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @server, i32 0, i32 0), align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @server, i32 0, i32 0), align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @server, i32 0, i32 0), align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @server, i32 0, i32 0), align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @sdscatprintf(i32 %149, i8* getelementptr inbounds ([161 x i8], [161 x i8]* @.str.9, i64 0, i64 0), i8* %154, i32 %158, i32 %161, i32 %164, i32 %167, i32 %170)
  store i32 %171, i32* %7, align 4
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %173 = load i32, i32* %7, align 4
  %174 = call i32 @addReplyBulkSds(%struct.TYPE_21__* %172, i32 %173)
  br label %439

175:                                              ; preds = %142, %132
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %178, i64 1
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @strcasecmp(i64 %182, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %204, label %185

185:                                              ; preds = %175
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp eq i32 %188, 2
  br i1 %189, label %190, label %204

190:                                              ; preds = %185
  %191 = call i32 @clusterSaveConfig(i32 1)
  store i32 %191, i32* %8, align 4
  %192 = load i32, i32* %8, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %190
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %196 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @shared, i32 0, i32 0), align 4
  %197 = call i32 @addReply(%struct.TYPE_21__* %195, i32 %196)
  br label %203

198:                                              ; preds = %190
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %200 = load i64, i64* @errno, align 8
  %201 = call i8* @strerror(i64 %200)
  %202 = call i32 (%struct.TYPE_21__*, i8*, i8*, ...) @addReplyErrorFormat(%struct.TYPE_21__* %199, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i8* %201)
  br label %203

203:                                              ; preds = %198, %194
  br label %438

204:                                              ; preds = %185, %175
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %207, i64 1
  %209 = load %struct.TYPE_24__*, %struct.TYPE_24__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = call i32 @strcasecmp(i64 %211, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %276, label %214

214:                                              ; preds = %204
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp eq i32 %217, 3
  br i1 %218, label %219, label %276

219:                                              ; preds = %214
  %220 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %222, i64 2
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = call i64 @sdslen(i64 %226)
  %228 = load i64, i64* @CLUSTER_NAMELEN, align 8
  %229 = icmp ne i64 %227, %228
  br i1 %229, label %230, label %233

230:                                              ; preds = %219
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %232 = call i32 @addReplyError(%struct.TYPE_21__* %231, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  br label %442

233:                                              ; preds = %219
  %234 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %235 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %234, i32 0, i32 1
  %236 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %236, i64 2
  %238 = load %struct.TYPE_24__*, %struct.TYPE_24__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = call %struct.TYPE_20__* @clusterLookupNode(i64 %240)
  store %struct.TYPE_20__* %241, %struct.TYPE_20__** %9, align 8
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %243 = icmp ne %struct.TYPE_20__* %242, null
  br i1 %243, label %255, label %244

244:                                              ; preds = %233
  %245 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %246 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %246, i32 0, i32 1
  %248 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %248, i64 2
  %250 = load %struct.TYPE_24__*, %struct.TYPE_24__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = inttoptr i64 %252 to i8*
  %254 = call i32 (%struct.TYPE_21__*, i8*, i8*, ...) @addReplyErrorFormat(%struct.TYPE_21__* %245, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* %253)
  br label %442

255:                                              ; preds = %233
  %256 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %257 = load %struct.TYPE_20__*, %struct.TYPE_20__** @myself, align 8
  %258 = icmp eq %struct.TYPE_20__* %256, %257
  br i1 %258, label %259, label %262

259:                                              ; preds = %255
  %260 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %261 = call i32 @addReplyError(%struct.TYPE_21__* %260, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0))
  br label %442

262:                                              ; preds = %255
  br label %263

263:                                              ; preds = %262
  %264 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %265 = call i32 @clusterBlacklistAddNode(%struct.TYPE_20__* %264)
  %266 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %267 = call i32 @clusterDelNode(%struct.TYPE_20__* %266)
  %268 = call i32 (...) @clusterUpdateReachableNodes()
  %269 = load i32, i32* @CLUSTER_TODO_UPDATE_STATE, align 4
  %270 = load i32, i32* @CLUSTER_TODO_SAVE_CONFIG, align 4
  %271 = or i32 %269, %270
  %272 = call i32 @clusterDoBeforeSleep(i32 %271)
  %273 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %274 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @shared, i32 0, i32 0), align 4
  %275 = call i32 @addReply(%struct.TYPE_21__* %273, i32 %274)
  br label %437

276:                                              ; preds = %214, %204
  %277 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %278 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %277, i32 0, i32 1
  %279 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %279, i64 1
  %281 = load %struct.TYPE_24__*, %struct.TYPE_24__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = call i32 @strcasecmp(i64 %283, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %335, label %286

286:                                              ; preds = %276
  %287 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %288 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = icmp eq i32 %289, 2
  br i1 %290, label %296, label %291

291:                                              ; preds = %286
  %292 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %293 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = icmp eq i32 %294, 3
  br i1 %295, label %296, label %335

296:                                              ; preds = %291, %286
  store i32 0, i32* %10, align 4
  %297 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %298 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = icmp eq i32 %299, 3
  br i1 %300, label %301, label %329

301:                                              ; preds = %296
  %302 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %303 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %302, i32 0, i32 1
  %304 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %304, i64 2
  %306 = load %struct.TYPE_24__*, %struct.TYPE_24__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = call i32 @strcasecmp(i64 %308, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %312, label %311

311:                                              ; preds = %301
  store i32 1, i32* %10, align 4
  br label %328

312:                                              ; preds = %301
  %313 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %314 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %313, i32 0, i32 1
  %315 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %315, i64 2
  %317 = load %struct.TYPE_24__*, %struct.TYPE_24__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = call i32 @strcasecmp(i64 %319, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %323, label %322

322:                                              ; preds = %312
  store i32 0, i32* %10, align 4
  br label %327

323:                                              ; preds = %312
  %324 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %325 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @shared, i32 0, i32 1), align 4
  %326 = call i32 @addReply(%struct.TYPE_21__* %324, i32 %325)
  br label %442

327:                                              ; preds = %322
  br label %328

328:                                              ; preds = %327, %311
  br label %329

329:                                              ; preds = %328, %296
  %330 = load i32, i32* %10, align 4
  %331 = call i32 @clusterReset(i32 %330)
  %332 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %333 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @shared, i32 0, i32 0), align 4
  %334 = call i32 @addReply(%struct.TYPE_21__* %332, i32 %333)
  br label %436

335:                                              ; preds = %291, %276
  %336 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %337 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %336, i32 0, i32 1
  %338 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %338, i64 1
  %340 = load %struct.TYPE_24__*, %struct.TYPE_24__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = call i32 @strcasecmp(i64 %342, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %432, label %345

345:                                              ; preds = %335
  %346 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %347 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = icmp eq i32 %348, 2
  br i1 %349, label %355, label %350

350:                                              ; preds = %345
  %351 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %352 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = icmp eq i32 %353, 3
  br i1 %354, label %355, label %432

355:                                              ; preds = %350, %345
  %356 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %357 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = icmp eq i32 %358, 3
  br i1 %359, label %360, label %416

360:                                              ; preds = %355
  %361 = load %struct.TYPE_20__*, %struct.TYPE_20__** @myself, align 8
  %362 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 4
  store i32 %363, i32* %11, align 4
  %364 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %365 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %364, i32 0, i32 1
  %366 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %366, i64 2
  %368 = load %struct.TYPE_24__*, %struct.TYPE_24__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = call i32 @strcasecmp(i64 %370, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %382, label %373

373:                                              ; preds = %360
  %374 = load i32, i32* @CLUSTER_NODE_LEAVING, align 4
  %375 = load %struct.TYPE_20__*, %struct.TYPE_20__** @myself, align 8
  %376 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 4
  %378 = or i32 %377, %374
  store i32 %378, i32* %376, align 4
  %379 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %380 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @shared, i32 0, i32 0), align 4
  %381 = call i32 @addReply(%struct.TYPE_21__* %379, i32 %380)
  br label %406

382:                                              ; preds = %360
  %383 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %384 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %383, i32 0, i32 1
  %385 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %385, i64 2
  %387 = load %struct.TYPE_24__*, %struct.TYPE_24__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %387, i32 0, i32 0
  %389 = load i64, i64* %388, align 8
  %390 = call i32 @strcasecmp(i64 %389, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0))
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %402, label %392

392:                                              ; preds = %382
  %393 = load i32, i32* @CLUSTER_NODE_LEAVING, align 4
  %394 = xor i32 %393, -1
  %395 = load %struct.TYPE_20__*, %struct.TYPE_20__** @myself, align 8
  %396 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 4
  %398 = and i32 %397, %394
  store i32 %398, i32* %396, align 4
  %399 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %400 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @shared, i32 0, i32 0), align 4
  %401 = call i32 @addReply(%struct.TYPE_21__* %399, i32 %400)
  br label %405

402:                                              ; preds = %382
  %403 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %404 = call i32 @addReplyError(%struct.TYPE_21__* %403, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.22, i64 0, i64 0))
  br label %405

405:                                              ; preds = %402, %392
  br label %406

406:                                              ; preds = %405, %373
  %407 = load i32, i32* %11, align 4
  %408 = load %struct.TYPE_20__*, %struct.TYPE_20__** @myself, align 8
  %409 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 4
  %411 = icmp ne i32 %407, %410
  br i1 %411, label %412, label %415

412:                                              ; preds = %406
  %413 = load i32, i32* @CLUSTER_TODO_SAVE_CONFIG, align 4
  %414 = call i32 @clusterDoBeforeSleep(i32 %413)
  br label %415

415:                                              ; preds = %412, %406
  br label %431

416:                                              ; preds = %355
  %417 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %418 = load %struct.TYPE_20__*, %struct.TYPE_20__** @myself, align 8
  %419 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 4
  %421 = load i32, i32* @CLUSTER_NODE_LEAVING, align 4
  %422 = and i32 %420, %421
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %426

424:                                              ; preds = %416
  %425 = call i32 @sdsnew(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  br label %428

426:                                              ; preds = %416
  %427 = call i32 @sdsnew(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0))
  br label %428

428:                                              ; preds = %426, %424
  %429 = phi i32 [ %425, %424 ], [ %427, %426 ]
  %430 = call i32 @addReplySds(%struct.TYPE_21__* %417, i32 %429)
  br label %431

431:                                              ; preds = %428, %415
  br label %435

432:                                              ; preds = %350, %335
  %433 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %434 = call i32 @addReplyError(%struct.TYPE_21__* %433, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.25, i64 0, i64 0))
  br label %435

435:                                              ; preds = %432, %431
  br label %436

436:                                              ; preds = %435, %329
  br label %437

437:                                              ; preds = %436, %263
  br label %438

438:                                              ; preds = %437, %203
  br label %439

439:                                              ; preds = %438, %147
  br label %440

440:                                              ; preds = %439, %125
  br label %441

441:                                              ; preds = %440, %100
  br label %442

442:                                              ; preds = %35, %230, %244, %259, %323, %441, %84
  ret void
}

declare dso_local i32 @strcasecmp(i64, i8*) #1

declare dso_local i64 @getLongLongFromObject(%struct.TYPE_24__*, i64*) #1

declare dso_local i32 @addReplyErrorFormat(%struct.TYPE_21__*, i8*, i8*, ...) #1

declare dso_local i64 @clusterStartHandshake(i64, i64) #1

declare dso_local i32 @addReply(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @clusterGenNodesDescription(i32) #1

declare dso_local i32* @createObject(i32, i32) #1

declare dso_local i32 @addReplyBulk(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @decrRefCount(i32*) #1

declare dso_local i32 @addReplyBulkCBuffer(%struct.TYPE_21__*, i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sdscatprintf(i32, i8*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @dictSize(i32) #1

declare dso_local i32 @addReplyBulkSds(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @clusterSaveConfig(i32) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local i64 @sdslen(i64) #1

declare dso_local i32 @addReplyError(%struct.TYPE_21__*, i8*) #1

declare dso_local %struct.TYPE_20__* @clusterLookupNode(i64) #1

declare dso_local i32 @clusterBlacklistAddNode(%struct.TYPE_20__*) #1

declare dso_local i32 @clusterDelNode(%struct.TYPE_20__*) #1

declare dso_local i32 @clusterUpdateReachableNodes(...) #1

declare dso_local i32 @clusterDoBeforeSleep(i32) #1

declare dso_local i32 @clusterReset(i32) #1

declare dso_local i32 @addReplySds(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @sdsnew(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
