; ModuleID = '/home/carl/AnghaBench/disque/src/extr_queue.c_getjobCommand.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_queue.c_getjobCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_21__** }
%struct.TYPE_21__ = type { i8* }
%struct.TYPE_22__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"nohang\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"withcounters\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@UNIT_MILLISECONDS = common dso_local global i32 0, align 4
@C_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"COUNT must be a number greater than zero\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@shared = common dso_local global %struct.TYPE_24__ zeroinitializer, align 4
@QUEUE_FLAG_PAUSED_OUT = common dso_local global i32 0, align 4
@NEEDJOBS_CLIENTS_WAITING = common dso_local global i32 0, align 4
@NEEDJOBS_REACHED_ZERO = common dso_local global i32 0, align 4
@GETJOB_FLAG_WITHCOUNTERS = common dso_local global i32 0, align 4
@GETJOB_FLAG_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @getjobCommand(%struct.TYPE_23__* %0) #0 {
  %2 = alloca %struct.TYPE_23__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_21__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_22__*, align 8
  %18 = alloca i32*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %2, align 8
  store i32 0, i32* %3, align 4
  store i64 1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store %struct.TYPE_21__** null, %struct.TYPE_21__*** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %19

19:                                               ; preds = %131, %1
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %134

25:                                               ; preds = %19
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %28, i64 %30
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %11, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 1
  %40 = icmp eq i32 %35, %39
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %12, align 4
  %42 = load i8*, i8** %11, align 8
  %43 = call i32 @strcasecmp(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %25
  store i32 1, i32* %6, align 4
  br label %130

46:                                               ; preds = %25
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 @strcasecmp(i8* %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  store i32 1, i32* %7, align 4
  br label %129

51:                                               ; preds = %46
  %52 = load i8*, i8** %11, align 8
  %53 = call i32 @strcasecmp(i8* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %76, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %76, label %58

58:                                               ; preds = %55
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %62, i64 %65
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %66, align 8
  %68 = load i32, i32* @UNIT_MILLISECONDS, align 4
  %69 = call i32 @getTimeoutFromObjectOrReply(%struct.TYPE_23__* %59, %struct.TYPE_21__* %67, i32* %3, i32 %68)
  %70 = load i32, i32* @C_OK, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %58
  br label %274

73:                                               ; preds = %58
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %128

76:                                               ; preds = %55, %51
  %77 = load i8*, i8** %11, align 8
  %78 = call i32 @strcasecmp(i8* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %105, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %105, label %83

83:                                               ; preds = %80
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %86, i64 %89
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %90, align 8
  %92 = call i32 @getLongLongFromObject(%struct.TYPE_21__* %91, i64* %4)
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* @C_OK, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %99, label %96

96:                                               ; preds = %83
  %97 = load i64, i64* %4, align 8
  %98 = icmp sle i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96, %83
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %101 = call i32 @addReplyError(%struct.TYPE_23__* %100, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %274

102:                                              ; preds = %96
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %127

105:                                              ; preds = %80, %76
  %106 = load i8*, i8** %11, align 8
  %107 = call i32 @strcasecmp(i8* %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %123, label %109

109:                                              ; preds = %105
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %115, i64 1
  store %struct.TYPE_21__** %116, %struct.TYPE_21__*** %8, align 8
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sub nsw i32 %119, %120
  %122 = sub nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  br label %134

123:                                              ; preds = %105
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @shared, i32 0, i32 2), align 4
  %126 = call i32 @addReply(%struct.TYPE_23__* %124, i32 %125)
  br label %274

127:                                              ; preds = %102
  br label %128

128:                                              ; preds = %127, %73
  br label %129

129:                                              ; preds = %128, %50
  br label %130

130:                                              ; preds = %129, %45
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %9, align 4
  br label %19

134:                                              ; preds = %109, %19
  %135 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %8, align 8
  %136 = icmp eq %struct.TYPE_21__** %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %10, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %137, %134
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @shared, i32 0, i32 2), align 4
  %143 = call i32 @addReply(%struct.TYPE_23__* %141, i32 %142)
  br label %274

144:                                              ; preds = %137
  store i8* null, i8** %14, align 8
  br label %145

145:                                              ; preds = %144, %237
  %146 = load i64, i64* %5, align 8
  store i64 %146, i64* %15, align 8
  store i32 0, i32* %9, align 4
  br label %147

147:                                              ; preds = %226, %145
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* %10, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %229

151:                                              ; preds = %147
  %152 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %8, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %152, i64 %154
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %155, align 8
  %157 = call %struct.TYPE_22__* @lookupQueue(%struct.TYPE_21__* %156)
  store %struct.TYPE_22__* %157, %struct.TYPE_22__** %17, align 8
  store i32* null, i32** %18, align 8
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %159 = icmp ne %struct.TYPE_22__* %158, null
  br i1 %159, label %160, label %170

160:                                              ; preds = %151
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @QUEUE_FLAG_PAUSED_OUT, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %160
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %169 = call i32* @queueFetchJob(%struct.TYPE_22__* %168, i64* %16)
  store i32* %169, i32** %18, align 8
  br label %170

170:                                              ; preds = %167, %160, %151
  %171 = load i32*, i32** %18, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %189, label %173

173:                                              ; preds = %170
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %175 = icmp ne %struct.TYPE_22__* %174, null
  br i1 %175, label %184, label %176

176:                                              ; preds = %173
  %177 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %8, align 8
  %178 = load i32, i32* %9, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %177, i64 %179
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %180, align 8
  %182 = load i32, i32* @NEEDJOBS_CLIENTS_WAITING, align 4
  %183 = call i32 @needJobsForQueueName(%struct.TYPE_21__* %181, i32 %182)
  br label %188

184:                                              ; preds = %173
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %186 = load i32, i32* @NEEDJOBS_CLIENTS_WAITING, align 4
  %187 = call i32 @needJobsForQueue(%struct.TYPE_22__* %185, i32 %186)
  br label %188

188:                                              ; preds = %184, %176
  br label %226

189:                                              ; preds = %170
  %190 = load i32*, i32** %18, align 8
  %191 = icmp ne i32* %190, null
  br i1 %191, label %192, label %199

192:                                              ; preds = %189
  %193 = load i64, i64* %16, align 8
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %192
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %197 = load i32, i32* @NEEDJOBS_REACHED_ZERO, align 4
  %198 = call i32 @needJobsForQueue(%struct.TYPE_22__* %196, i32 %197)
  br label %199

199:                                              ; preds = %195, %192, %189
  br label %200

200:                                              ; preds = %199
  %201 = load i8*, i8** %14, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %206, label %203

203:                                              ; preds = %200
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %205 = call i8* @addDeferredMultiBulkLength(%struct.TYPE_23__* %204)
  store i8* %205, i8** %14, align 8
  br label %206

206:                                              ; preds = %203, %200
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %208 = load i32*, i32** %18, align 8
  %209 = load i32, i32* %7, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %206
  %212 = load i32, i32* @GETJOB_FLAG_WITHCOUNTERS, align 4
  br label %215

213:                                              ; preds = %206
  %214 = load i32, i32* @GETJOB_FLAG_NONE, align 4
  br label %215

215:                                              ; preds = %213, %211
  %216 = phi i32 [ %212, %211 ], [ %214, %213 ]
  %217 = call i32 @addReplyJob(%struct.TYPE_23__* %207, i32* %208, i32 %216)
  %218 = load i64, i64* %4, align 8
  %219 = add nsw i64 %218, -1
  store i64 %219, i64* %4, align 8
  %220 = load i64, i64* %5, align 8
  %221 = add nsw i64 %220, 1
  store i64 %221, i64* %5, align 8
  %222 = load i64, i64* %4, align 8
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %215
  br label %229

225:                                              ; preds = %215
  br label %226

226:                                              ; preds = %225, %188
  %227 = load i32, i32* %9, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %9, align 4
  br label %147

229:                                              ; preds = %224, %147
  %230 = load i64, i64* %4, align 8
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %236, label %232

232:                                              ; preds = %229
  %233 = load i64, i64* %15, align 8
  %234 = load i64, i64* %5, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %237

236:                                              ; preds = %232, %229
  br label %238

237:                                              ; preds = %232
  br label %145

238:                                              ; preds = %236
  %239 = load i8*, i8** %14, align 8
  %240 = icmp ne i8* %239, null
  br i1 %240, label %241, label %246

241:                                              ; preds = %238
  %242 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %243 = load i8*, i8** %14, align 8
  %244 = load i64, i64* %5, align 8
  %245 = call i32 @setDeferredMultiBulkLength(%struct.TYPE_23__* %242, i8* %243, i64 %244)
  br label %274

246:                                              ; preds = %238
  %247 = load i32, i32* %6, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %246
  %250 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %251 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @shared, i32 0, i32 1), align 4
  %252 = call i32 @addReply(%struct.TYPE_23__* %250, i32 %251)
  br label %274

253:                                              ; preds = %246
  %254 = call i64 (...) @myselfLeaving()
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %253
  %257 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %258 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @shared, i32 0, i32 0), align 4
  %259 = call i32 @addReply(%struct.TYPE_23__* %257, i32 %258)
  br label %274

260:                                              ; preds = %253
  %261 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %262 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %8, align 8
  %263 = load i32, i32* %10, align 4
  %264 = load i32, i32* %3, align 4
  %265 = load i32, i32* %7, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %260
  %268 = load i32, i32* @GETJOB_FLAG_WITHCOUNTERS, align 4
  br label %271

269:                                              ; preds = %260
  %270 = load i32, i32* @GETJOB_FLAG_NONE, align 4
  br label %271

271:                                              ; preds = %269, %267
  %272 = phi i32 [ %268, %267 ], [ %270, %269 ]
  %273 = call i32 @blockForJobs(%struct.TYPE_23__* %261, %struct.TYPE_21__** %262, i32 %263, i32 %264, i32 %272)
  br label %274

274:                                              ; preds = %271, %256, %249, %241, %140, %123, %99, %72
  ret void
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @getTimeoutFromObjectOrReply(%struct.TYPE_23__*, %struct.TYPE_21__*, i32*, i32) #1

declare dso_local i32 @getLongLongFromObject(%struct.TYPE_21__*, i64*) #1

declare dso_local i32 @addReplyError(%struct.TYPE_23__*, i8*) #1

declare dso_local i32 @addReply(%struct.TYPE_23__*, i32) #1

declare dso_local %struct.TYPE_22__* @lookupQueue(%struct.TYPE_21__*) #1

declare dso_local i32* @queueFetchJob(%struct.TYPE_22__*, i64*) #1

declare dso_local i32 @needJobsForQueueName(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @needJobsForQueue(%struct.TYPE_22__*, i32) #1

declare dso_local i8* @addDeferredMultiBulkLength(%struct.TYPE_23__*) #1

declare dso_local i32 @addReplyJob(%struct.TYPE_23__*, i32*, i32) #1

declare dso_local i32 @setDeferredMultiBulkLength(%struct.TYPE_23__*, i8*, i64) #1

declare dso_local i64 @myselfLeaving(...) #1

declare dso_local i32 @blockForJobs(%struct.TYPE_23__*, %struct.TYPE_21__**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
