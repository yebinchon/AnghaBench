; ModuleID = '/home/carl/AnghaBench/disque/src/extr_job.c_jscanCommand.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_job.c_jscanCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_18__** }
%struct.TYPE_18__ = type { i8* }
%struct.jscanFilter = type { i32*, i32, %struct.TYPE_18__* }

@JSCAN_DEFAULT_COUNT = common dso_local global i64 0, align 8
@JSCAN_REPLY_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"count\00", align 1
@C_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"busyloop\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"queue\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Invalid job state name\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"reply\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@JSCAN_REPLY_ALL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"Invalid REPLY type, try ID or ALL\00", align 1
@shared = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@C_ERR = common dso_local global i64 0, align 8
@server = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@jscanCallback = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"Unknown JSCAN reply type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jscanCommand(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.jscanFilter, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [2 x i8*], align 16
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  store i32 0, i32* %4, align 4
  %18 = load i64, i64* @JSCAN_DEFAULT_COUNT, align 8
  store i64 %18, i64* %5, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %19 = load i32, i32* @JSCAN_REPLY_ID, align 4
  store i32 %19, i32* %10, align 4
  %20 = call i32 @memset(%struct.jscanFilter* %3, i32 0, i32 24)
  store i32 1, i32* %9, align 4
  br label %21

21:                                               ; preds = %195, %1
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %198

27:                                               ; preds = %21
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sub nsw i32 %30, %31
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %11, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %36, i64 %38
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %12, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = call i32 @strcasecmp(i8* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %66, label %46

46:                                               ; preds = %27
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %46
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %53, i64 %56
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %57, align 8
  %59 = call i64 @getLongFromObjectOrReply(%struct.TYPE_15__* %50, %struct.TYPE_18__* %58, i64* %5, i32* null)
  %60 = load i64, i64* @C_OK, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %49
  br label %277

63:                                               ; preds = %49
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %194

66:                                               ; preds = %46, %27
  %67 = load i8*, i8** %12, align 8
  %68 = call i32 @strcasecmp(i8* %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  store i32 1, i32* %4, align 4
  br label %193

71:                                               ; preds = %66
  %72 = load i8*, i8** %12, align 8
  %73 = call i32 @strcasecmp(i8* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %90, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %75
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %81, i64 %84
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %85, align 8
  %87 = getelementptr inbounds %struct.jscanFilter, %struct.jscanFilter* %3, i32 0, i32 2
  store %struct.TYPE_18__* %86, %struct.TYPE_18__** %87, align 8
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %192

90:                                               ; preds = %75, %71
  %91 = load i8*, i8** %12, align 8
  %92 = call i32 @strcasecmp(i8* %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %125, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %125

97:                                               ; preds = %94
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %100, i64 %103
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @jobStateFromString(i8* %107)
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %13, align 4
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %114

111:                                              ; preds = %97
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %113 = call i32 @addReplyError(%struct.TYPE_15__* %112, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %277

114:                                              ; preds = %97
  %115 = getelementptr inbounds %struct.jscanFilter, %struct.jscanFilter* %3, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 1, i32* %119, align 4
  %120 = getelementptr inbounds %struct.jscanFilter, %struct.jscanFilter* %3, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 8
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  br label %191

125:                                              ; preds = %94, %90
  %126 = load i8*, i8** %12, align 8
  %127 = call i32 @strcasecmp(i8* %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %169, label %129

129:                                              ; preds = %125
  %130 = load i32, i32* %11, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %169

132:                                              ; preds = %129
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %135, i64 %138
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @strcasecmp(i8* %142, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %132
  %146 = load i32, i32* @JSCAN_REPLY_ID, align 4
  store i32 %146, i32* %10, align 4
  br label %166

147:                                              ; preds = %132
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %150, i64 %153
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 @strcasecmp(i8* %157, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %147
  %161 = load i32, i32* @JSCAN_REPLY_ALL, align 4
  store i32 %161, i32* %10, align 4
  br label %165

162:                                              ; preds = %147
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %164 = call i32 @addReplyError(%struct.TYPE_15__* %163, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  br label %277

165:                                              ; preds = %160
  br label %166

166:                                              ; preds = %165, %145
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %9, align 4
  br label %190

169:                                              ; preds = %129, %125
  %170 = load i32, i32* %8, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %169
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %174 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @shared, i32 0, i32 0), align 4
  %175 = call i32 @addReply(%struct.TYPE_15__* %173, i32 %174)
  br label %277

176:                                              ; preds = %169
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %179, align 8
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %180, i64 %182
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %183, align 8
  %185 = call i64 @parseScanCursorOrReply(%struct.TYPE_15__* %177, %struct.TYPE_18__* %184, i64* %7)
  %186 = load i64, i64* @C_ERR, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %176
  br label %277

189:                                              ; preds = %176
  store i32 1, i32* %8, align 4
  br label %190

190:                                              ; preds = %189, %166
  br label %191

191:                                              ; preds = %190, %114
  br label %192

192:                                              ; preds = %191, %78
  br label %193

193:                                              ; preds = %192, %70
  br label %194

194:                                              ; preds = %193, %63
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %9, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %9, align 4
  br label %21

198:                                              ; preds = %21
  %199 = load i64, i64* %5, align 8
  %200 = mul nsw i64 %199, 10
  store i64 %200, i64* %6, align 8
  %201 = call i32* (...) @listCreate()
  store i32* %201, i32** %15, align 8
  %202 = load i32*, i32** %15, align 8
  %203 = bitcast i32* %202 to i8*
  %204 = getelementptr inbounds [2 x i8*], [2 x i8*]* %14, i64 0, i64 0
  store i8* %203, i8** %204, align 16
  %205 = bitcast %struct.jscanFilter* %3 to i8*
  %206 = getelementptr inbounds [2 x i8*], [2 x i8*]* %14, i64 0, i64 1
  store i8* %205, i8** %206, align 8
  br label %207

207:                                              ; preds = %233, %198
  %208 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 0), align 4
  %209 = load i64, i64* %7, align 8
  %210 = load i32, i32* @jscanCallback, align 4
  %211 = getelementptr inbounds [2 x i8*], [2 x i8*]* %14, i64 0, i64 0
  %212 = call i64 @dictScan(i32 %208, i64 %209, i32 %210, i8** %211)
  store i64 %212, i64* %7, align 8
  br label %213

213:                                              ; preds = %207
  %214 = load i64, i64* %7, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %233

216:                                              ; preds = %213
  %217 = load i32, i32* %4, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %231, label %219

219:                                              ; preds = %216
  %220 = load i64, i64* %6, align 8
  %221 = add nsw i64 %220, -1
  store i64 %221, i64* %6, align 8
  %222 = icmp ne i64 %220, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %219
  %224 = load i32*, i32** %15, align 8
  %225 = call i32 @listLength(i32* %224)
  %226 = sext i32 %225 to i64
  %227 = load i64, i64* %5, align 8
  %228 = icmp ult i64 %226, %227
  br label %229

229:                                              ; preds = %223, %219
  %230 = phi i1 [ false, %219 ], [ %228, %223 ]
  br label %231

231:                                              ; preds = %229, %216
  %232 = phi i1 [ true, %216 ], [ %230, %229 ]
  br label %233

233:                                              ; preds = %231, %213
  %234 = phi i1 [ false, %213 ], [ %232, %231 ]
  br i1 %234, label %207, label %235

235:                                              ; preds = %233
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %237 = call i32 @addReplyMultiBulkLen(%struct.TYPE_15__* %236, i32 2)
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %239 = load i64, i64* %7, align 8
  %240 = call i32 @addReplyBulkLongLong(%struct.TYPE_15__* %238, i64 %239)
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %242 = load i32*, i32** %15, align 8
  %243 = call i32 @listLength(i32* %242)
  %244 = call i32 @addReplyMultiBulkLen(%struct.TYPE_15__* %241, i32 %243)
  br label %245

245:                                              ; preds = %270, %235
  %246 = load i32*, i32** %15, align 8
  %247 = call i32* @listFirst(i32* %246)
  store i32* %247, i32** %16, align 8
  %248 = icmp ne i32* %247, null
  br i1 %248, label %249, label %274

249:                                              ; preds = %245
  %250 = load i32*, i32** %16, align 8
  %251 = call i32* @listNodeValue(i32* %250)
  store i32* %251, i32** %17, align 8
  %252 = load i32, i32* %10, align 4
  %253 = load i32, i32* @JSCAN_REPLY_ID, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %259

255:                                              ; preds = %249
  %256 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %257 = load i32*, i32** %17, align 8
  %258 = call i32 @addReplyJobID(%struct.TYPE_15__* %256, i32* %257)
  br label %270

259:                                              ; preds = %249
  %260 = load i32, i32* %10, align 4
  %261 = load i32, i32* @JSCAN_REPLY_ALL, align 4
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %263, label %267

263:                                              ; preds = %259
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %265 = load i32*, i32** %17, align 8
  %266 = call i32 @addReplyJobInfo(%struct.TYPE_15__* %264, i32* %265)
  br label %269

267:                                              ; preds = %259
  %268 = call i32 @serverPanic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  br label %269

269:                                              ; preds = %267, %263
  br label %270

270:                                              ; preds = %269, %255
  %271 = load i32*, i32** %15, align 8
  %272 = load i32*, i32** %16, align 8
  %273 = call i32 @listDelNode(i32* %271, i32* %272)
  br label %245

274:                                              ; preds = %245
  %275 = load i32*, i32** %15, align 8
  %276 = call i32 @listRelease(i32* %275)
  br label %277

277:                                              ; preds = %274, %188, %172, %162, %111, %62
  ret void
}

declare dso_local i32 @memset(%struct.jscanFilter*, i32, i32) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @getLongFromObjectOrReply(%struct.TYPE_15__*, %struct.TYPE_18__*, i64*, i32*) #1

declare dso_local i32 @jobStateFromString(i8*) #1

declare dso_local i32 @addReplyError(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @addReply(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @parseScanCursorOrReply(%struct.TYPE_15__*, %struct.TYPE_18__*, i64*) #1

declare dso_local i32* @listCreate(...) #1

declare dso_local i64 @dictScan(i32, i64, i32, i8**) #1

declare dso_local i32 @listLength(i32*) #1

declare dso_local i32 @addReplyMultiBulkLen(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @addReplyBulkLongLong(%struct.TYPE_15__*, i64) #1

declare dso_local i32* @listFirst(i32*) #1

declare dso_local i32* @listNodeValue(i32*) #1

declare dso_local i32 @addReplyJobID(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @addReplyJobInfo(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @serverPanic(i8*) #1

declare dso_local i32 @listDelNode(i32*, i32*) #1

declare dso_local i32 @listRelease(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
