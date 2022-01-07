; ModuleID = '/home/carl/AnghaBench/disque/src/extr_aof.c_loadAppendOnlyFile.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_aof.c_loadAppendOnlyFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, i64, i64 }
%struct.client = type { i32, i64, i32, i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i64 }
%struct.disque_stat = type { i64 }
%struct.serverCommand = type { i32 (%struct.client.0*)* }
%struct.client.0 = type opaque

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@server = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@C_ERR = common dso_local global i32 0, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"Fatal error: can't open the append log file for reading: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@AOF_OFF = common dso_local global i32 0, align 4
@OBJ_STRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Unknown command '%s' reading the append only file\00", align 1
@CLIENT_BLOCKED = common dso_local global i32 0, align 4
@C_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"Unrecoverable error reading the append only file: %s\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"!!! Warning: short read while loading the AOF file !!!\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"!!! Truncating the AOF at offset %llu !!!\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Last valid command offset is invalid\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Error truncating the AOF file: %s\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [39 x i8] c"Can't seek the end of the AOF file: %s\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"AOF loaded anyway because aof-load-truncated is enabled\00", align 1
@.str.10 = private unnamed_addr constant [249 x i8] c"Unexpected end of file reading the append only file. You can: 1) Make a backup of your AOF file, then use ./disque-check-aof --fix <filename>. 2) Alternatively you can set the 'aof-load-truncated' configuration option to yes and restart the server.\00", align 1
@.str.11 = private unnamed_addr constant [123 x i8] c"Bad file format reading the append only file: make a backup of your AOF file, then use ./disque-check-aof --fix <filename>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @loadAppendOnlyFile(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.client*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.disque_stat, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_5__**, align 8
  %14 = alloca [128 x i8], align 16
  %15 = alloca i8*, align 8
  %16 = alloca %struct.serverCommand*, align 8
  store i8* %0, i8** %3, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i32* @fopen(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %18, i32** %5, align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 0), align 8
  store i32 %19, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %1
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @fileno(i32* %23)
  %25 = call i32 @disque_fstat(i32 %24, %struct.disque_stat* %6)
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.disque_stat, %struct.disque_stat* %6, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 3), align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @fclose(i32* %32)
  %34 = load i32, i32* @C_ERR, align 4
  store i32 %34, i32* %2, align 4
  br label %300

35:                                               ; preds = %27, %22, %1
  %36 = load i32*, i32** %5, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i32, i32* @LL_WARNING, align 4
  %40 = load i32, i32* @errno, align 4
  %41 = call i32 @strerror(i32 %40)
  %42 = call i32 (i32, i8*, ...) @serverLog(i32 %39, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = call i32 @exit(i32 1) #3
  unreachable

44:                                               ; preds = %35
  %45 = load i32, i32* @AOF_OFF, align 4
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 0), align 8
  %46 = call %struct.client* (...) @createFakeClient()
  store %struct.client* %46, %struct.client** %4, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @startLoading(i32* %47)
  br label %49

49:                                               ; preds = %44, %223
  %50 = load i64, i64* %8, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %8, align 8
  %52 = srem i64 %50, 1000
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @ftello(i32* %55)
  %57 = call i32 @loadingProgress(i32 %56)
  %58 = call i32 (...) @processEventsWhileBlocked()
  br label %59

59:                                               ; preds = %54, %49
  %60 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %61 = load i32*, i32** %5, align 8
  %62 = call i32* @fgets(i8* %60, i32 128, i32* %61)
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load i32*, i32** %5, align 8
  %66 = call i64 @feof(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %224

69:                                               ; preds = %64
  br label %235

70:                                               ; preds = %59
  %71 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %72 = load i8, i8* %71, align 16
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 42
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %296

76:                                               ; preds = %70
  %77 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 1
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %235

82:                                               ; preds = %76
  %83 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = call i32 @atoi(i8* %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp slt i32 %86, 1
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %296

89:                                               ; preds = %82
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = mul i64 8, %91
  %93 = trunc i64 %92 to i32
  %94 = call %struct.TYPE_5__** @zmalloc(i32 %93)
  store %struct.TYPE_5__** %94, %struct.TYPE_5__*** %13, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.client*, %struct.client** %4, align 8
  %97 = getelementptr inbounds %struct.client, %struct.client* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %13, align 8
  %99 = load %struct.client*, %struct.client** %4, align 8
  %100 = getelementptr inbounds %struct.client, %struct.client* %99, i32 0, i32 4
  store %struct.TYPE_5__** %98, %struct.TYPE_5__*** %100, align 8
  store i32 0, i32* %11, align 4
  br label %101

101:                                              ; preds = %165, %89
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %168

105:                                              ; preds = %101
  %106 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %107 = load i32*, i32** %5, align 8
  %108 = call i32* @fgets(i8* %106, i32 128, i32* %107)
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %116

110:                                              ; preds = %105
  %111 = load i32, i32* %11, align 4
  %112 = load %struct.client*, %struct.client** %4, align 8
  %113 = getelementptr inbounds %struct.client, %struct.client* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load %struct.client*, %struct.client** %4, align 8
  %115 = call i32 @freeFakeClientArgv(%struct.client* %114)
  br label %235

116:                                              ; preds = %105
  %117 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %118 = load i8, i8* %117, align 16
  %119 = sext i8 %118 to i32
  %120 = icmp ne i32 %119, 36
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %296

122:                                              ; preds = %116
  %123 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  %125 = call i64 @strtol(i8* %124, i32* null, i32 10)
  store i64 %125, i64* %12, align 8
  %126 = load i64, i64* %12, align 8
  %127 = call i8* @sdsnewlen(i32* null, i64 %126)
  store i8* %127, i8** %15, align 8
  %128 = load i64, i64* %12, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %145

130:                                              ; preds = %122
  %131 = load i8*, i8** %15, align 8
  %132 = load i64, i64* %12, align 8
  %133 = trunc i64 %132 to i32
  %134 = load i32*, i32** %5, align 8
  %135 = call i64 @fread(i8* %131, i32 %133, i32 1, i32* %134)
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %130
  %138 = load i8*, i8** %15, align 8
  %139 = call i32 @sdsfree(i8* %138)
  %140 = load i32, i32* %11, align 4
  %141 = load %struct.client*, %struct.client** %4, align 8
  %142 = getelementptr inbounds %struct.client, %struct.client* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load %struct.client*, %struct.client** %4, align 8
  %144 = call i32 @freeFakeClientArgv(%struct.client* %143)
  br label %235

145:                                              ; preds = %130, %122
  %146 = load i32, i32* @OBJ_STRING, align 4
  %147 = load i8*, i8** %15, align 8
  %148 = call %struct.TYPE_5__* @createObject(i32 %146, i8* %147)
  %149 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %13, align 8
  %150 = load i32, i32* %11, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %149, i64 %151
  store %struct.TYPE_5__* %148, %struct.TYPE_5__** %152, align 8
  %153 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %154 = load i32*, i32** %5, align 8
  %155 = call i64 @fread(i8* %153, i32 2, i32 1, i32* %154)
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %145
  %158 = load i32, i32* %11, align 4
  %159 = add nsw i32 %158, 1
  %160 = load %struct.client*, %struct.client** %4, align 8
  %161 = getelementptr inbounds %struct.client, %struct.client* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  %162 = load %struct.client*, %struct.client** %4, align 8
  %163 = call i32 @freeFakeClientArgv(%struct.client* %162)
  br label %235

164:                                              ; preds = %145
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %11, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %11, align 4
  br label %101

168:                                              ; preds = %101
  %169 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %13, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %169, i64 0
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = call %struct.serverCommand* @lookupCommand(i64 %173)
  store %struct.serverCommand* %174, %struct.serverCommand** %16, align 8
  %175 = load %struct.serverCommand*, %struct.serverCommand** %16, align 8
  %176 = icmp ne %struct.serverCommand* %175, null
  br i1 %176, label %187, label %177

177:                                              ; preds = %168
  %178 = load i32, i32* @LL_WARNING, align 4
  %179 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %13, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %179, i64 0
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = inttoptr i64 %183 to i8*
  %185 = call i32 (i32, i8*, ...) @serverLog(i32 %178, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* %184)
  %186 = call i32 @exit(i32 1) #3
  unreachable

187:                                              ; preds = %168
  %188 = load %struct.serverCommand*, %struct.serverCommand** %16, align 8
  %189 = getelementptr inbounds %struct.serverCommand, %struct.serverCommand* %188, i32 0, i32 0
  %190 = load i32 (%struct.client.0*)*, i32 (%struct.client.0*)** %189, align 8
  %191 = load %struct.client*, %struct.client** %4, align 8
  %192 = bitcast %struct.client* %191 to %struct.client.0*
  %193 = call i32 %190(%struct.client.0* %192)
  %194 = load %struct.client*, %struct.client** %4, align 8
  %195 = getelementptr inbounds %struct.client, %struct.client* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %187
  %199 = load %struct.client*, %struct.client** %4, align 8
  %200 = getelementptr inbounds %struct.client, %struct.client* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = call i64 @listLength(i32 %201)
  %203 = icmp eq i64 %202, 0
  br label %204

204:                                              ; preds = %198, %187
  %205 = phi i1 [ false, %187 ], [ %203, %198 ]
  %206 = zext i1 %205 to i32
  %207 = call i32 @serverAssert(i32 %206)
  %208 = load %struct.client*, %struct.client** %4, align 8
  %209 = getelementptr inbounds %struct.client, %struct.client* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @CLIENT_BLOCKED, align 4
  %212 = and i32 %210, %211
  %213 = icmp eq i32 %212, 0
  %214 = zext i1 %213 to i32
  %215 = call i32 @serverAssert(i32 %214)
  %216 = load %struct.client*, %struct.client** %4, align 8
  %217 = call i32 @freeFakeClientArgv(%struct.client* %216)
  %218 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 2), align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %204
  %221 = load i32*, i32** %5, align 8
  %222 = call i32 @ftello(i32* %221)
  store i32 %222, i32* %9, align 4
  br label %223

223:                                              ; preds = %220, %204
  br label %49

224:                                              ; preds = %68
  br label %225

225:                                              ; preds = %287, %224
  %226 = load i32*, i32** %5, align 8
  %227 = call i32 @fclose(i32* %226)
  %228 = load %struct.client*, %struct.client** %4, align 8
  %229 = call i32 @freeFakeClient(%struct.client* %228)
  %230 = load i32, i32* %7, align 4
  store i32 %230, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 0), align 8
  %231 = call i32 (...) @stopLoading()
  %232 = call i32 (...) @aofUpdateCurrentSize()
  %233 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 3), align 8
  store i64 %233, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 4), align 8
  %234 = load i32, i32* @C_OK, align 4
  store i32 %234, i32* %2, align 4
  br label %300

235:                                              ; preds = %157, %137, %110, %81, %69
  %236 = load i32*, i32** %5, align 8
  %237 = call i64 @feof(i32* %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %245, label %239

239:                                              ; preds = %235
  %240 = load i32, i32* @LL_WARNING, align 4
  %241 = load i32, i32* @errno, align 4
  %242 = call i32 @strerror(i32 %241)
  %243 = call i32 (i32, i8*, ...) @serverLog(i32 %240, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %242)
  %244 = call i32 @exit(i32 1) #3
  unreachable

245:                                              ; preds = %235
  %246 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 2), align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %292

248:                                              ; preds = %245
  %249 = load i32, i32* @LL_WARNING, align 4
  %250 = call i32 (i32, i8*, ...) @serverLog(i32 %249, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  %251 = load i32, i32* @LL_WARNING, align 4
  %252 = load i32, i32* %9, align 4
  %253 = sext i32 %252 to i64
  %254 = call i32 (i32, i8*, ...) @serverLog(i32 %251, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i64 %253)
  %255 = load i32, i32* %9, align 4
  %256 = icmp eq i32 %255, -1
  br i1 %256, label %262, label %257

257:                                              ; preds = %248
  %258 = load i8*, i8** %3, align 8
  %259 = load i32, i32* %9, align 4
  %260 = call i32 @truncate(i8* %258, i32 %259)
  %261 = icmp eq i32 %260, -1
  br i1 %261, label %262, label %274

262:                                              ; preds = %257, %248
  %263 = load i32, i32* %9, align 4
  %264 = icmp eq i32 %263, -1
  br i1 %264, label %265, label %268

265:                                              ; preds = %262
  %266 = load i32, i32* @LL_WARNING, align 4
  %267 = call i32 (i32, i8*, ...) @serverLog(i32 %266, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  br label %273

268:                                              ; preds = %262
  %269 = load i32, i32* @LL_WARNING, align 4
  %270 = load i32, i32* @errno, align 4
  %271 = call i32 @strerror(i32 %270)
  %272 = call i32 (i32, i8*, ...) @serverLog(i32 %269, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %271)
  br label %273

273:                                              ; preds = %268, %265
  br label %291

274:                                              ; preds = %257
  %275 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 1), align 4
  %276 = icmp ne i32 %275, -1
  br i1 %276, label %277, label %287

277:                                              ; preds = %274
  %278 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 1), align 4
  %279 = load i32, i32* @SEEK_END, align 4
  %280 = call i32 @lseek(i32 %278, i32 0, i32 %279)
  %281 = icmp eq i32 %280, -1
  br i1 %281, label %282, label %287

282:                                              ; preds = %277
  %283 = load i32, i32* @LL_WARNING, align 4
  %284 = load i32, i32* @errno, align 4
  %285 = call i32 @strerror(i32 %284)
  %286 = call i32 (i32, i8*, ...) @serverLog(i32 %283, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i32 %285)
  br label %290

287:                                              ; preds = %277, %274
  %288 = load i32, i32* @LL_WARNING, align 4
  %289 = call i32 (i32, i8*, ...) @serverLog(i32 %288, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0))
  br label %225

290:                                              ; preds = %282
  br label %291

291:                                              ; preds = %290, %273
  br label %292

292:                                              ; preds = %291, %245
  %293 = load i32, i32* @LL_WARNING, align 4
  %294 = call i32 (i32, i8*, ...) @serverLog(i32 %293, i8* getelementptr inbounds ([249 x i8], [249 x i8]* @.str.10, i64 0, i64 0))
  %295 = call i32 @exit(i32 1) #3
  unreachable

296:                                              ; preds = %121, %88, %75
  %297 = load i32, i32* @LL_WARNING, align 4
  %298 = call i32 (i32, i8*, ...) @serverLog(i32 %297, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.11, i64 0, i64 0))
  %299 = call i32 @exit(i32 1) #3
  unreachable

300:                                              ; preds = %225, %31
  %301 = load i32, i32* %2, align 4
  ret i32 %301
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @disque_fstat(i32, %struct.disque_stat*) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @serverLog(i32, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.client* @createFakeClient(...) #1

declare dso_local i32 @startLoading(i32*) #1

declare dso_local i32 @loadingProgress(i32) #1

declare dso_local i32 @ftello(i32*) #1

declare dso_local i32 @processEventsWhileBlocked(...) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i64 @feof(i32*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local %struct.TYPE_5__** @zmalloc(i32) #1

declare dso_local i32 @freeFakeClientArgv(%struct.client*) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

declare dso_local i8* @sdsnewlen(i32*, i64) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @sdsfree(i8*) #1

declare dso_local %struct.TYPE_5__* @createObject(i32, i8*) #1

declare dso_local %struct.serverCommand* @lookupCommand(i64) #1

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i64 @listLength(i32) #1

declare dso_local i32 @freeFakeClient(%struct.client*) #1

declare dso_local i32 @stopLoading(...) #1

declare dso_local i32 @aofUpdateCurrentSize(...) #1

declare dso_local i32 @truncate(i8*, i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
