; ModuleID = '/home/carl/AnghaBench/disque/src/extr_job.c_addjobCommand.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_job.c_addjobCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i64, i64, %struct.TYPE_38__* }
%struct.TYPE_38__ = type { i32, i32 }
%struct.TYPE_42__ = type { i32 }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_41__ = type { i32, %struct.TYPE_37__, %struct.TYPE_36__** }
%struct.TYPE_37__ = type { i32, %struct.TYPE_40__*, i32 }
%struct.TYPE_40__ = type { i64, i32, i64, i64, i32, i32, i32, i64, i32, i64, %struct.TYPE_36__* }
%struct.TYPE_36__ = type { i8* }
%struct.TYPE_39__ = type { i32 }

@server = common dso_local global %struct.TYPE_34__ zeroinitializer, align 8
@addjobCommand.prev_ctime = internal global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"replicate\00", align 1
@C_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"REPLICATE must be between 1 and 65535\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ttl\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"TTL must be a number > 0\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"retry\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"RETRY time must be a non negative number\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"delay\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"DELAY time must be a non negative number\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"maxlen\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"MAXLEN must be a positive number\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"async\00", align 1
@shared = common dso_local global %struct.TYPE_42__ zeroinitializer, align 4
@UNIT_MILLISECONDS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [82 x i8] c"With RETRY set to 0 please explicitly set  REPLICATE to 1 (at-most-once delivery)\00", align 1
@.str.12 = private unnamed_addr constant [84 x i8] c"The specified DELAY is greater than TTL. Job refused since would never be delivered\00", align 1
@JOB_DEFAULT_RETRY_MAX = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [150 x i8] c"-NOREPL Not enough reachable nodes for the requested replication level, since I'm unable to hold a copy of the message for the following reason: %s\0D\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"I'm leaving the cluster\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"I'm out of memory\00", align 1
@.str.16 = private unnamed_addr constant [73 x i8] c"-NOREPL Not enough reachable nodes for the requested replication level\0D\0A\00", align 1
@.str.17 = private unnamed_addr constant [66 x i8] c"-MAXLEN Queue is already longer than the specified MAXLEN count\0D\0A\00", align 1
@QUEUE_FLAG_PAUSED_IN = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [43 x i8] c"-PAUSED Queue paused in input, try later\0D\0A\00", align 1
@JOB_STATE_WAIT_REPL = common dso_local global i32 0, align 4
@myself = common dso_local global %struct.TYPE_35__* null, align 8
@C_ERR = common dso_local global i64 0, align 8
@LL_WARNING = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [39 x i8] c"ID already existing in ADDJOB command!\00", align 1
@.str.20 = private unnamed_addr constant [51 x i8] c"Internal error creating the job, check server logs\00", align 1
@BLOCKED_JOB_REPL = common dso_local global i32 0, align 4
@clusterNodesDictType = common dso_local global i32 0, align 4
@JOB_STATE_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addjobCommand(%struct.TYPE_41__* %0) #0 {
  %2 = alloca %struct.TYPE_41__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_39__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_40__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  store %struct.TYPE_41__* %0, %struct.TYPE_41__** %2, align 8
  %22 = load %struct.TYPE_38__*, %struct.TYPE_38__** getelementptr inbounds (%struct.TYPE_34__, %struct.TYPE_34__* @server, i32 0, i32 2), align 8
  %23 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %24, 3
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %31

27:                                               ; preds = %1
  %28 = load %struct.TYPE_38__*, %struct.TYPE_38__** getelementptr inbounds (%struct.TYPE_34__, %struct.TYPE_34__* @server, i32 0, i32 2), align 8
  %29 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  br label %31

31:                                               ; preds = %27, %26
  %32 = phi i32 [ 3, %26 ], [ %30, %27 ]
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %3, align 8
  store i64 86400, i64* %4, align 8
  store i64 -1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %11, align 4
  %34 = call i64 (...) @getMemoryWarningLevel()
  %35 = icmp sgt i64 %34, 0
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %12, align 4
  %37 = call i32 (...) @myselfLeaving()
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  store i32 1, i32* %12, align 4
  br label %41

41:                                               ; preds = %40, %31
  store i32 4, i32* %9, align 4
  br label %42

42:                                               ; preds = %227, %41
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %230

48:                                               ; preds = %42
  %49 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %51, i64 %53
  %55 = load %struct.TYPE_36__*, %struct.TYPE_36__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %14, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %61, 1
  %63 = icmp eq i32 %58, %62
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %15, align 4
  %65 = load i8*, i8** %14, align 8
  %66 = call i32 @strcasecmp(i8* %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %96, label %68

68:                                               ; preds = %48
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %96, label %71

71:                                               ; preds = %68
  %72 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %74, i64 %77
  %79 = load %struct.TYPE_36__*, %struct.TYPE_36__** %78, align 8
  %80 = call i32 @getLongLongFromObject(%struct.TYPE_36__* %79, i64* %3)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @C_OK, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %71
  %85 = load i64, i64* %3, align 8
  %86 = icmp sle i64 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load i64, i64* %3, align 8
  %89 = icmp sgt i64 %88, 65535
  br i1 %89, label %90, label %93

90:                                               ; preds = %87, %84, %71
  %91 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %92 = call i32 @addReplyError(%struct.TYPE_41__* %91, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %565

93:                                               ; preds = %87
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %226

96:                                               ; preds = %68, %48
  %97 = load i8*, i8** %14, align 8
  %98 = call i32 @strcasecmp(i8* %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %125, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %15, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %125, label %103

103:                                              ; preds = %100
  %104 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %106, i64 %109
  %111 = load %struct.TYPE_36__*, %struct.TYPE_36__** %110, align 8
  %112 = call i32 @getLongLongFromObject(%struct.TYPE_36__* %111, i64* %4)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @C_OK, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %119, label %116

116:                                              ; preds = %103
  %117 = load i64, i64* %4, align 8
  %118 = icmp sle i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %116, %103
  %120 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %121 = call i32 @addReplyError(%struct.TYPE_41__* %120, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %565

122:                                              ; preds = %116
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  br label %225

125:                                              ; preds = %100, %96
  %126 = load i8*, i8** %14, align 8
  %127 = call i32 @strcasecmp(i8* %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %154, label %129

129:                                              ; preds = %125
  %130 = load i32, i32* %15, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %154, label %132

132:                                              ; preds = %129
  %133 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %135, i64 %138
  %140 = load %struct.TYPE_36__*, %struct.TYPE_36__** %139, align 8
  %141 = call i32 @getLongLongFromObject(%struct.TYPE_36__* %140, i64* %5)
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* @C_OK, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %148, label %145

145:                                              ; preds = %132
  %146 = load i64, i64* %5, align 8
  %147 = icmp slt i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %145, %132
  %149 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %150 = call i32 @addReplyError(%struct.TYPE_41__* %149, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  br label %565

151:                                              ; preds = %145
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %9, align 4
  br label %224

154:                                              ; preds = %129, %125
  %155 = load i8*, i8** %14, align 8
  %156 = call i32 @strcasecmp(i8* %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %183, label %158

158:                                              ; preds = %154
  %159 = load i32, i32* %15, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %183, label %161

161:                                              ; preds = %158
  %162 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %163, align 8
  %165 = load i32, i32* %9, align 4
  %166 = add nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %164, i64 %167
  %169 = load %struct.TYPE_36__*, %struct.TYPE_36__** %168, align 8
  %170 = call i32 @getLongLongFromObject(%struct.TYPE_36__* %169, i64* %6)
  store i32 %170, i32* %10, align 4
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* @C_OK, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %177, label %174

174:                                              ; preds = %161
  %175 = load i64, i64* %6, align 8
  %176 = icmp slt i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %174, %161
  %178 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %179 = call i32 @addReplyError(%struct.TYPE_41__* %178, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  br label %565

180:                                              ; preds = %174
  %181 = load i32, i32* %9, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %9, align 4
  br label %223

183:                                              ; preds = %158, %154
  %184 = load i8*, i8** %14, align 8
  %185 = call i32 @strcasecmp(i8* %184, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %212, label %187

187:                                              ; preds = %183
  %188 = load i32, i32* %15, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %212, label %190

190:                                              ; preds = %187
  %191 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %191, i32 0, i32 2
  %193 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %192, align 8
  %194 = load i32, i32* %9, align 4
  %195 = add nsw i32 %194, 1
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %193, i64 %196
  %198 = load %struct.TYPE_36__*, %struct.TYPE_36__** %197, align 8
  %199 = call i32 @getLongLongFromObject(%struct.TYPE_36__* %198, i64* %7)
  store i32 %199, i32* %10, align 4
  %200 = load i32, i32* %10, align 4
  %201 = load i32, i32* @C_OK, align 4
  %202 = icmp ne i32 %200, %201
  br i1 %202, label %206, label %203

203:                                              ; preds = %190
  %204 = load i64, i64* %7, align 8
  %205 = icmp sle i64 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %203, %190
  %207 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %208 = call i32 @addReplyError(%struct.TYPE_41__* %207, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  br label %565

209:                                              ; preds = %203
  %210 = load i32, i32* %9, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %9, align 4
  br label %222

212:                                              ; preds = %187, %183
  %213 = load i8*, i8** %14, align 8
  %214 = call i32 @strcasecmp(i8* %213, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %217, label %216

216:                                              ; preds = %212
  store i32 1, i32* %11, align 4
  br label %221

217:                                              ; preds = %212
  %218 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %219 = load i32, i32* getelementptr inbounds (%struct.TYPE_42__, %struct.TYPE_42__* @shared, i32 0, i32 0), align 4
  %220 = call i32 @addReply(%struct.TYPE_41__* %218, i32 %219)
  br label %565

221:                                              ; preds = %216
  br label %222

222:                                              ; preds = %221, %209
  br label %223

223:                                              ; preds = %222, %180
  br label %224

224:                                              ; preds = %223, %151
  br label %225

225:                                              ; preds = %224, %122
  br label %226

226:                                              ; preds = %225, %93
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %9, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %9, align 4
  br label %42

230:                                              ; preds = %42
  %231 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %232 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %233 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %232, i32 0, i32 2
  %234 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %234, i64 3
  %236 = load %struct.TYPE_36__*, %struct.TYPE_36__** %235, align 8
  %237 = load i32, i32* @UNIT_MILLISECONDS, align 4
  %238 = call i32 @getTimeoutFromObjectOrReply(%struct.TYPE_41__* %231, %struct.TYPE_36__* %236, i32* %8, i32 %237)
  %239 = load i32, i32* @C_OK, align 4
  %240 = icmp ne i32 %238, %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %230
  br label %565

242:                                              ; preds = %230
  %243 = load i64, i64* %3, align 8
  %244 = icmp sgt i64 %243, 1
  br i1 %244, label %245, label %251

245:                                              ; preds = %242
  %246 = load i64, i64* %5, align 8
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %245
  %249 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %250 = call i32 @addReplyError(%struct.TYPE_41__* %249, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.11, i64 0, i64 0))
  br label %565

251:                                              ; preds = %245, %242
  %252 = load i64, i64* %6, align 8
  %253 = load i64, i64* %4, align 8
  %254 = icmp sge i64 %252, %253
  br i1 %254, label %255, label %258

255:                                              ; preds = %251
  %256 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %257 = call i32 @addReplyError(%struct.TYPE_41__* %256, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.12, i64 0, i64 0))
  br label %565

258:                                              ; preds = %251
  %259 = load i64, i64* %5, align 8
  %260 = icmp eq i64 %259, -1
  br i1 %260, label %261, label %274

261:                                              ; preds = %258
  %262 = load i64, i64* %4, align 8
  %263 = sdiv i64 %262, 10
  store i64 %263, i64* %5, align 8
  %264 = load i64, i64* %5, align 8
  %265 = load i64, i64* @JOB_DEFAULT_RETRY_MAX, align 8
  %266 = icmp sgt i64 %264, %265
  br i1 %266, label %267, label %269

267:                                              ; preds = %261
  %268 = load i64, i64* @JOB_DEFAULT_RETRY_MAX, align 8
  store i64 %268, i64* %5, align 8
  br label %269

269:                                              ; preds = %267, %261
  %270 = load i64, i64* %5, align 8
  %271 = icmp eq i64 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %269
  store i64 1, i64* %5, align 8
  br label %273

273:                                              ; preds = %272, %269
  br label %274

274:                                              ; preds = %273, %258
  %275 = load i32, i32* %12, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %274
  %278 = load i64, i64* %3, align 8
  br label %282

279:                                              ; preds = %274
  %280 = load i64, i64* %3, align 8
  %281 = sub nsw i64 %280, 1
  br label %282

282:                                              ; preds = %279, %277
  %283 = phi i64 [ %278, %277 ], [ %281, %279 ]
  %284 = trunc i64 %283 to i32
  store i32 %284, i32* %16, align 4
  %285 = load i32, i32* %16, align 4
  %286 = load %struct.TYPE_38__*, %struct.TYPE_38__** getelementptr inbounds (%struct.TYPE_34__, %struct.TYPE_34__* @server, i32 0, i32 2), align 8
  %287 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = icmp sgt i32 %285, %288
  br i1 %289, label %290, label %314

290:                                              ; preds = %282
  %291 = load i32, i32* %12, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %309

293:                                              ; preds = %290
  %294 = load i32, i32* %16, align 4
  %295 = sub nsw i32 %294, 1
  %296 = load %struct.TYPE_38__*, %struct.TYPE_38__** getelementptr inbounds (%struct.TYPE_34__, %struct.TYPE_34__* @server, i32 0, i32 2), align 8
  %297 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = icmp eq i32 %295, %298
  br i1 %299, label %300, label %309

300:                                              ; preds = %293
  %301 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %302 = call i32 (...) @sdsempty()
  %303 = load i32, i32* %13, align 4
  %304 = icmp ne i32 %303, 0
  %305 = zext i1 %304 to i64
  %306 = select i1 %304, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0)
  %307 = call i32 @sdscatprintf(i32 %302, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @.str.13, i64 0, i64 0), i8* %306)
  %308 = call i32 @addReplySds(%struct.TYPE_41__* %301, i32 %307)
  br label %313

309:                                              ; preds = %293, %290
  %310 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %311 = call i32 @sdsnew(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.16, i64 0, i64 0))
  %312 = call i32 @addReplySds(%struct.TYPE_41__* %310, i32 %311)
  br label %313

313:                                              ; preds = %309, %300
  br label %565

314:                                              ; preds = %282
  %315 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %316 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %315, i32 0, i32 2
  %317 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %317, i64 1
  %319 = load %struct.TYPE_36__*, %struct.TYPE_36__** %318, align 8
  %320 = call %struct.TYPE_39__* @lookupQueue(%struct.TYPE_36__* %319)
  store %struct.TYPE_39__* %320, %struct.TYPE_39__** %17, align 8
  %321 = load i64, i64* %7, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %335

323:                                              ; preds = %314
  %324 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %325 = icmp ne %struct.TYPE_39__* %324, null
  br i1 %325, label %326, label %335

326:                                              ; preds = %323
  %327 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %328 = call i64 @queueLength(%struct.TYPE_39__* %327)
  %329 = load i64, i64* %7, align 8
  %330 = icmp uge i64 %328, %329
  br i1 %330, label %331, label %335

331:                                              ; preds = %326
  %332 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %333 = call i32 @sdsnew(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.17, i64 0, i64 0))
  %334 = call i32 @addReplySds(%struct.TYPE_41__* %332, i32 %333)
  br label %565

335:                                              ; preds = %326, %323, %314
  %336 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %337 = icmp ne %struct.TYPE_39__* %336, null
  br i1 %337, label %338, label %349

338:                                              ; preds = %335
  %339 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %340 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* @QUEUE_FLAG_PAUSED_IN, align 4
  %343 = and i32 %341, %342
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %349

345:                                              ; preds = %338
  %346 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %347 = call i32 @sdsnew(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i64 0, i64 0))
  %348 = call i32 @addReplySds(%struct.TYPE_41__* %346, i32 %347)
  br label %565

349:                                              ; preds = %338, %335
  %350 = load i32, i32* %11, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %355

352:                                              ; preds = %349
  %353 = load i32, i32* %12, align 4
  %354 = icmp ne i32 %353, 0
  br label %355

355:                                              ; preds = %352, %349
  %356 = phi i1 [ false, %349 ], [ %354, %352 ]
  %357 = zext i1 %356 to i32
  store i32 %357, i32* %18, align 4
  %358 = load i32, i32* @JOB_STATE_WAIT_REPL, align 4
  %359 = load i64, i64* %4, align 8
  %360 = load i64, i64* %5, align 8
  %361 = call %struct.TYPE_40__* @createJob(i32* null, i32 %358, i64 %359, i64 %360)
  store %struct.TYPE_40__* %361, %struct.TYPE_40__** %19, align 8
  %362 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %363 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %362, i32 0, i32 2
  %364 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %364, i64 1
  %366 = load %struct.TYPE_36__*, %struct.TYPE_36__** %365, align 8
  %367 = load %struct.TYPE_40__*, %struct.TYPE_40__** %19, align 8
  %368 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %367, i32 0, i32 10
  store %struct.TYPE_36__* %366, %struct.TYPE_36__** %368, align 8
  %369 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %370 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %369, i32 0, i32 2
  %371 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %371, i64 1
  %373 = load %struct.TYPE_36__*, %struct.TYPE_36__** %372, align 8
  %374 = call i32 @incrRefCount(%struct.TYPE_36__* %373)
  %375 = load i64, i64* %3, align 8
  %376 = load %struct.TYPE_40__*, %struct.TYPE_40__** %19, align 8
  %377 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %376, i32 0, i32 0
  store i64 %375, i64* %377, align 8
  %378 = load i32, i32* %12, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %389, label %380

380:                                              ; preds = %355
  %381 = load %struct.TYPE_40__*, %struct.TYPE_40__** %19, align 8
  %382 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %381, i32 0, i32 4
  %383 = load i32, i32* %382, align 8
  %384 = load %struct.TYPE_35__*, %struct.TYPE_35__** @myself, align 8
  %385 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 4
  %387 = load %struct.TYPE_35__*, %struct.TYPE_35__** @myself, align 8
  %388 = call i32 @dictAdd(i32 %383, i32 %386, %struct.TYPE_35__* %387)
  br label %389

389:                                              ; preds = %380, %355
  %390 = call i32 (...) @mstime()
  %391 = mul nsw i32 %390, 1000000
  %392 = load %struct.TYPE_40__*, %struct.TYPE_40__** %19, align 8
  %393 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %392, i32 0, i32 1
  store i32 %391, i32* %393, align 8
  %394 = load %struct.TYPE_40__*, %struct.TYPE_40__** %19, align 8
  %395 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %394, i32 0, i32 1
  %396 = load i32, i32* %395, align 8
  %397 = load i32, i32* @addjobCommand.prev_ctime, align 4
  %398 = icmp sle i32 %396, %397
  br i1 %398, label %399, label %404

399:                                              ; preds = %389
  %400 = load i32, i32* @addjobCommand.prev_ctime, align 4
  %401 = add nsw i32 %400, 1
  %402 = load %struct.TYPE_40__*, %struct.TYPE_40__** %19, align 8
  %403 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %402, i32 0, i32 1
  store i32 %401, i32* %403, align 8
  br label %404

404:                                              ; preds = %399, %389
  %405 = load %struct.TYPE_40__*, %struct.TYPE_40__** %19, align 8
  %406 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 8
  store i32 %407, i32* @addjobCommand.prev_ctime, align 4
  %408 = load i64, i64* getelementptr inbounds (%struct.TYPE_34__, %struct.TYPE_34__* @server, i32 0, i32 1), align 8
  %409 = load i64, i64* %4, align 8
  %410 = add nsw i64 %408, %409
  %411 = load %struct.TYPE_40__*, %struct.TYPE_40__** %19, align 8
  %412 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %411, i32 0, i32 9
  store i64 %410, i64* %412, align 8
  %413 = load i64, i64* %6, align 8
  %414 = load %struct.TYPE_40__*, %struct.TYPE_40__** %19, align 8
  %415 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %414, i32 0, i32 2
  store i64 %413, i64* %415, align 8
  %416 = load i64, i64* %5, align 8
  %417 = load %struct.TYPE_40__*, %struct.TYPE_40__** %19, align 8
  %418 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %417, i32 0, i32 3
  store i64 %416, i64* %418, align 8
  %419 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %420 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %419, i32 0, i32 2
  %421 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %421, i64 2
  %423 = load %struct.TYPE_36__*, %struct.TYPE_36__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %423, i32 0, i32 0
  %425 = load i8*, i8** %424, align 8
  %426 = call i32 @sdsdup(i8* %425)
  %427 = load %struct.TYPE_40__*, %struct.TYPE_40__** %19, align 8
  %428 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %427, i32 0, i32 8
  store i32 %426, i32* %428, align 8
  %429 = load i64, i64* %6, align 8
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %431, label %438

431:                                              ; preds = %404
  %432 = load i64, i64* getelementptr inbounds (%struct.TYPE_34__, %struct.TYPE_34__* @server, i32 0, i32 0), align 8
  %433 = load i64, i64* %6, align 8
  %434 = mul nsw i64 %433, 1000
  %435 = add nsw i64 %432, %434
  %436 = load %struct.TYPE_40__*, %struct.TYPE_40__** %19, align 8
  %437 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %436, i32 0, i32 7
  store i64 %435, i64* %437, align 8
  br label %445

438:                                              ; preds = %404
  %439 = load i64, i64* getelementptr inbounds (%struct.TYPE_34__, %struct.TYPE_34__* @server, i32 0, i32 0), align 8
  %440 = load i64, i64* %5, align 8
  %441 = mul nsw i64 %440, 1000
  %442 = add nsw i64 %439, %441
  %443 = load %struct.TYPE_40__*, %struct.TYPE_40__** %19, align 8
  %444 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %443, i32 0, i32 7
  store i64 %442, i64* %444, align 8
  br label %445

445:                                              ; preds = %438, %431
  %446 = load i32, i32* %18, align 4
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %460, label %448

448:                                              ; preds = %445
  %449 = load %struct.TYPE_40__*, %struct.TYPE_40__** %19, align 8
  %450 = call i64 @registerJob(%struct.TYPE_40__* %449)
  %451 = load i64, i64* @C_ERR, align 8
  %452 = icmp eq i64 %450, %451
  br i1 %452, label %453, label %460

453:                                              ; preds = %448
  %454 = load i32, i32* @LL_WARNING, align 4
  %455 = call i32 @serverLog(i32 %454, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.19, i64 0, i64 0))
  %456 = load %struct.TYPE_40__*, %struct.TYPE_40__** %19, align 8
  %457 = call i32 @freeJob(%struct.TYPE_40__* %456)
  %458 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %459 = call i32 @addReplyError(%struct.TYPE_41__* %458, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.20, i64 0, i64 0))
  br label %565

460:                                              ; preds = %448, %445
  %461 = load i64, i64* %3, align 8
  %462 = icmp sgt i64 %461, 1
  br i1 %462, label %466, label %463

463:                                              ; preds = %460
  %464 = load i32, i32* %12, align 4
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %503

466:                                              ; preds = %463, %460
  %467 = load i32, i32* %11, align 4
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %503, label %469

469:                                              ; preds = %466
  %470 = load i32, i32* %8, align 4
  %471 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %472 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %471, i32 0, i32 1
  %473 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %472, i32 0, i32 2
  store i32 %470, i32* %473, align 8
  %474 = load %struct.TYPE_40__*, %struct.TYPE_40__** %19, align 8
  %475 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %476 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %475, i32 0, i32 1
  %477 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %476, i32 0, i32 1
  store %struct.TYPE_40__* %474, %struct.TYPE_40__** %477, align 8
  %478 = call i32 (...) @mstime()
  %479 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %480 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %479, i32 0, i32 1
  %481 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %480, i32 0, i32 0
  store i32 %478, i32* %481, align 8
  %482 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %483 = load i32, i32* @BLOCKED_JOB_REPL, align 4
  %484 = call i32 @blockClient(%struct.TYPE_41__* %482, i32 %483)
  %485 = load %struct.TYPE_40__*, %struct.TYPE_40__** %19, align 8
  %486 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %487 = call i32 @setJobAssociatedValue(%struct.TYPE_40__* %485, %struct.TYPE_41__* %486)
  %488 = call i32 @dictCreate(i32* @clusterNodesDictType, i32* null)
  %489 = load %struct.TYPE_40__*, %struct.TYPE_40__** %19, align 8
  %490 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %489, i32 0, i32 6
  store i32 %488, i32* %490, align 8
  %491 = load i32, i32* %12, align 4
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %502, label %493

493:                                              ; preds = %469
  %494 = load %struct.TYPE_40__*, %struct.TYPE_40__** %19, align 8
  %495 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %494, i32 0, i32 6
  %496 = load i32, i32* %495, align 8
  %497 = load %struct.TYPE_35__*, %struct.TYPE_35__** @myself, align 8
  %498 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %497, i32 0, i32 0
  %499 = load i32, i32* %498, align 4
  %500 = load %struct.TYPE_35__*, %struct.TYPE_35__** @myself, align 8
  %501 = call i32 @dictAdd(i32 %496, i32 %499, %struct.TYPE_35__* %500)
  br label %502

502:                                              ; preds = %493, %469
  br label %535

503:                                              ; preds = %466, %463
  %504 = load %struct.TYPE_40__*, %struct.TYPE_40__** %19, align 8
  %505 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %504, i32 0, i32 2
  %506 = load i64, i64* %505, align 8
  %507 = icmp eq i64 %506, 0
  br i1 %507, label %508, label %515

508:                                              ; preds = %503
  %509 = load i32, i32* %12, align 4
  %510 = icmp ne i32 %509, 0
  br i1 %510, label %514, label %511

511:                                              ; preds = %508
  %512 = load %struct.TYPE_40__*, %struct.TYPE_40__** %19, align 8
  %513 = call i32 @enqueueJob(%struct.TYPE_40__* %512, i32 0)
  br label %514

514:                                              ; preds = %511, %508
  br label %525

515:                                              ; preds = %503
  %516 = load i32, i32* @JOB_STATE_ACTIVE, align 4
  %517 = load %struct.TYPE_40__*, %struct.TYPE_40__** %19, align 8
  %518 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %517, i32 0, i32 5
  store i32 %516, i32* %518, align 4
  %519 = load i32, i32* %18, align 4
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %524, label %521

521:                                              ; preds = %515
  %522 = load %struct.TYPE_40__*, %struct.TYPE_40__** %19, align 8
  %523 = call i32 @updateJobAwakeTime(%struct.TYPE_40__* %522, i32 0)
  br label %524

524:                                              ; preds = %521, %515
  br label %525

525:                                              ; preds = %524, %514
  %526 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %527 = load %struct.TYPE_40__*, %struct.TYPE_40__** %19, align 8
  %528 = call i32 @addReplyJobID(%struct.TYPE_41__* %526, %struct.TYPE_40__* %527)
  %529 = load i32, i32* %12, align 4
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %534, label %531

531:                                              ; preds = %525
  %532 = load %struct.TYPE_40__*, %struct.TYPE_40__** %19, align 8
  %533 = call i32 @AOFLoadJob(%struct.TYPE_40__* %532)
  br label %534

534:                                              ; preds = %531, %525
  br label %535

535:                                              ; preds = %534, %502
  %536 = load i32, i32* %16, align 4
  %537 = icmp sgt i32 %536, 0
  br i1 %537, label %538, label %543

538:                                              ; preds = %535
  %539 = load %struct.TYPE_40__*, %struct.TYPE_40__** %19, align 8
  %540 = load i32, i32* %16, align 4
  %541 = load i32, i32* %11, align 4
  %542 = call i32 @clusterReplicateJob(%struct.TYPE_40__* %539, i32 %540, i32 %541)
  br label %543

543:                                              ; preds = %538, %535
  %544 = load i32, i32* %18, align 4
  %545 = icmp ne i32 %544, 0
  br i1 %545, label %546, label %565

546:                                              ; preds = %543
  %547 = load %struct.TYPE_40__*, %struct.TYPE_40__** %19, align 8
  %548 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %547, i32 0, i32 4
  %549 = load i32, i32* %548, align 8
  %550 = call i32* @dictGetRandomKey(i32 %549)
  store i32* %550, i32** %20, align 8
  %551 = load i32*, i32** %20, align 8
  %552 = icmp ne i32* %551, null
  br i1 %552, label %553, label %562

553:                                              ; preds = %546
  %554 = load i32*, i32** %20, align 8
  %555 = call i32* @dictGetVal(i32* %554)
  store i32* %555, i32** %21, align 8
  %556 = load i32*, i32** %21, align 8
  %557 = load %struct.TYPE_40__*, %struct.TYPE_40__** %19, align 8
  %558 = load %struct.TYPE_40__*, %struct.TYPE_40__** %19, align 8
  %559 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %558, i32 0, i32 2
  %560 = load i64, i64* %559, align 8
  %561 = call i32 @clusterSendEnqueue(i32* %556, %struct.TYPE_40__* %557, i64 %560)
  br label %562

562:                                              ; preds = %553, %546
  %563 = load %struct.TYPE_40__*, %struct.TYPE_40__** %19, align 8
  %564 = call i32 @freeJob(%struct.TYPE_40__* %563)
  br label %565

565:                                              ; preds = %90, %119, %148, %177, %206, %217, %241, %248, %255, %313, %331, %345, %453, %562, %543
  ret void
}

declare dso_local i64 @getMemoryWarningLevel(...) #1

declare dso_local i32 @myselfLeaving(...) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @getLongLongFromObject(%struct.TYPE_36__*, i64*) #1

declare dso_local i32 @addReplyError(%struct.TYPE_41__*, i8*) #1

declare dso_local i32 @addReply(%struct.TYPE_41__*, i32) #1

declare dso_local i32 @getTimeoutFromObjectOrReply(%struct.TYPE_41__*, %struct.TYPE_36__*, i32*, i32) #1

declare dso_local i32 @addReplySds(%struct.TYPE_41__*, i32) #1

declare dso_local i32 @sdscatprintf(i32, i8*, i8*) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @sdsnew(i8*) #1

declare dso_local %struct.TYPE_39__* @lookupQueue(%struct.TYPE_36__*) #1

declare dso_local i64 @queueLength(%struct.TYPE_39__*) #1

declare dso_local %struct.TYPE_40__* @createJob(i32*, i32, i64, i64) #1

declare dso_local i32 @incrRefCount(%struct.TYPE_36__*) #1

declare dso_local i32 @dictAdd(i32, i32, %struct.TYPE_35__*) #1

declare dso_local i32 @mstime(...) #1

declare dso_local i32 @sdsdup(i8*) #1

declare dso_local i64 @registerJob(%struct.TYPE_40__*) #1

declare dso_local i32 @serverLog(i32, i8*) #1

declare dso_local i32 @freeJob(%struct.TYPE_40__*) #1

declare dso_local i32 @blockClient(%struct.TYPE_41__*, i32) #1

declare dso_local i32 @setJobAssociatedValue(%struct.TYPE_40__*, %struct.TYPE_41__*) #1

declare dso_local i32 @dictCreate(i32*, i32*) #1

declare dso_local i32 @enqueueJob(%struct.TYPE_40__*, i32) #1

declare dso_local i32 @updateJobAwakeTime(%struct.TYPE_40__*, i32) #1

declare dso_local i32 @addReplyJobID(%struct.TYPE_41__*, %struct.TYPE_40__*) #1

declare dso_local i32 @AOFLoadJob(%struct.TYPE_40__*) #1

declare dso_local i32 @clusterReplicateJob(%struct.TYPE_40__*, i32, i32) #1

declare dso_local i32* @dictGetRandomKey(i32) #1

declare dso_local i32* @dictGetVal(i32*) #1

declare dso_local i32 @clusterSendEnqueue(i32*, %struct.TYPE_40__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
