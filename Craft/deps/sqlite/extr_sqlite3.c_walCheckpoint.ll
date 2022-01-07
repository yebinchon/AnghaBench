; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_walCheckpoint.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_walCheckpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_14__, i32, i32 }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_15__ = type { i64, i64* }
%struct.TYPE_17__ = type { i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_CHECKPOINT_PASSIVE = common dso_local global i32 0, align 4
@WAL_NREADER = common dso_local global i32 0, align 4
@READMARK_NOT_USED = common dso_local global i64 0, align 8
@SQLITE_BUSY = common dso_local global i32 0, align 4
@SQLITE_FCNTL_SIZE_HINT = common dso_local global i32 0, align 4
@WAL_FRAME_HDRSIZE = common dso_local global i32 0, align 4
@SQLITE_CHECKPOINT_RESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32, i32 (i8*)*, i8*, i32, i32*)* @walCheckpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @walCheckpoint(%struct.TYPE_16__* %0, i32 %1, i32 (i8*)* %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32 (i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_15__*, align 8
  %23 = alloca i32 (i8*)*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 (i8*)* %2, i32 (i8*)** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* null, i32** %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i32 (i8*)* null, i32 (i8*)** %23, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %31 = call i32 @walPagesize(%struct.TYPE_16__* %30)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp sle i32 %32, 32768
  %34 = zext i1 %33 to i32
  %35 = call i32 @testcase(i32 %34)
  %36 = load i32, i32* %15, align 4
  %37 = icmp sge i32 %36, 65536
  %38 = zext i1 %37 to i32
  %39 = call i32 @testcase(i32 %38)
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %41 = call %struct.TYPE_15__* @walCkptInfo(%struct.TYPE_16__* %40)
  store %struct.TYPE_15__* %41, %struct.TYPE_15__** %22, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load volatile i64, i64* %43, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sge i64 %44, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %6
  %51 = load i32, i32* @SQLITE_OK, align 4
  store i32 %51, i32* %7, align 4
  br label %386

52:                                               ; preds = %6
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %54 = call i32 @walIteratorInit(%struct.TYPE_16__* %53, i32** %16)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* @SQLITE_OK, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %14, align 4
  store i32 %59, i32* %7, align 4
  br label %386

60:                                               ; preds = %52
  %61 = load i32*, i32** %16, align 8
  %62 = ptrtoint i32* %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @SQLITE_CHECKPOINT_PASSIVE, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32 (i8*)*, i32 (i8*)** %10, align 8
  store i32 (i8*)* %68, i32 (i8*)** %23, align 8
  br label %69

69:                                               ; preds = %67, %60
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %19, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %20, align 8
  store i32 1, i32* %21, align 4
  br label %78

78:                                               ; preds = %140, %69
  %79 = load i32, i32* %21, align 4
  %80 = load i32, i32* @WAL_NREADER, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %143

82:                                               ; preds = %78
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 1
  %85 = load volatile i64*, i64** %84, align 8
  %86 = load i32, i32* %21, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %24, align 8
  %90 = load i64, i64* %19, align 8
  %91 = load i64, i64* %24, align 8
  %92 = icmp sgt i64 %90, %91
  br i1 %92, label %93, label %139

93:                                               ; preds = %82
  %94 = load i64, i64* %24, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp sle i64 %94, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert(i32 %100)
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %103 = load i32 (i8*)*, i32 (i8*)** %23, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = load i32, i32* %21, align 4
  %106 = call i32 @WAL_READ_LOCK(i32 %105)
  %107 = call i32 @walBusyLock(%struct.TYPE_16__* %102, i32 (i8*)* %103, i8* %104, i32 %106, i32 1)
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* @SQLITE_OK, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %130

111:                                              ; preds = %93
  %112 = load i32, i32* %21, align 4
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = load i64, i64* %19, align 8
  br label %118

116:                                              ; preds = %111
  %117 = load i64, i64* @READMARK_NOT_USED, align 8
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi i64 [ %115, %114 ], [ %117, %116 ]
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 1
  %122 = load volatile i64*, i64** %121, align 8
  %123 = load i32, i32* %21, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  store i64 %119, i64* %125, align 8
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %127 = load i32, i32* %21, align 4
  %128 = call i32 @WAL_READ_LOCK(i32 %127)
  %129 = call i32 @walUnlockExclusive(%struct.TYPE_16__* %126, i32 %128, i32 1)
  br label %138

130:                                              ; preds = %93
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* @SQLITE_BUSY, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load i64, i64* %24, align 8
  store i64 %135, i64* %19, align 8
  store i32 (i8*)* null, i32 (i8*)** %23, align 8
  br label %137

136:                                              ; preds = %130
  br label %382

137:                                              ; preds = %134
  br label %138

138:                                              ; preds = %137, %118
  br label %139

139:                                              ; preds = %138, %82
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %21, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %21, align 4
  br label %78

143:                                              ; preds = %78
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  %146 = load volatile i64, i64* %145, align 8
  %147 = load i64, i64* %19, align 8
  %148 = icmp slt i64 %146, %147
  br i1 %148, label %149, label %320

149:                                              ; preds = %143
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %151 = load i32 (i8*)*, i32 (i8*)** %23, align 8
  %152 = load i8*, i8** %11, align 8
  %153 = call i32 @WAL_READ_LOCK(i32 0)
  %154 = call i32 @walBusyLock(%struct.TYPE_16__* %150, i32 (i8*)* %151, i8* %152, i32 %153, i32 1)
  store i32 %154, i32* %14, align 4
  %155 = load i32, i32* @SQLITE_OK, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %320

157:                                              ; preds = %149
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  %160 = load volatile i64, i64* %159, align 8
  store i64 %160, i64* %26, align 8
  %161 = load i32, i32* %12, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %157
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %12, align 4
  %168 = call i32 @sqlite3OsSync(i32 %166, i32 %167)
  store i32 %168, i32* %14, align 4
  br label %169

169:                                              ; preds = %163, %157
  %170 = load i32, i32* %14, align 4
  %171 = load i32, i32* @SQLITE_OK, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %196

173:                                              ; preds = %169
  %174 = load i64, i64* %20, align 8
  %175 = trunc i64 %174 to i32
  %176 = load i32, i32* %15, align 4
  %177 = mul nsw i32 %175, %176
  store i32 %177, i32* %27, align 4
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @sqlite3OsFileSize(i32 %180, i32* %25)
  store i32 %181, i32* %14, align 4
  %182 = load i32, i32* %14, align 4
  %183 = load i32, i32* @SQLITE_OK, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %195

185:                                              ; preds = %173
  %186 = load i32, i32* %25, align 4
  %187 = load i32, i32* %27, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %195

189:                                              ; preds = %185
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @SQLITE_FCNTL_SIZE_HINT, align 4
  %194 = call i32 @sqlite3OsFileControlHint(i32 %192, i32 %193, i32* %27)
  br label %195

195:                                              ; preds = %189, %185, %173
  br label %196

196:                                              ; preds = %195, %169
  br label %197

197:                                              ; preds = %265, %226, %196
  %198 = load i32, i32* %14, align 4
  %199 = load i32, i32* @SQLITE_OK, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %205

201:                                              ; preds = %197
  %202 = load i32*, i32** %16, align 8
  %203 = call i64 @walIteratorNext(i32* %202, i64* %17, i64* %18)
  %204 = icmp eq i64 0, %203
  br label %205

205:                                              ; preds = %201, %197
  %206 = phi i1 [ false, %197 ], [ %204, %201 ]
  br i1 %206, label %207, label %266

207:                                              ; preds = %205
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %209 = load i64, i64* %18, align 8
  %210 = call i64 @walFramePgno(%struct.TYPE_16__* %208, i64 %209)
  %211 = load i64, i64* %17, align 8
  %212 = icmp eq i64 %210, %211
  %213 = zext i1 %212 to i32
  %214 = call i32 @assert(i32 %213)
  %215 = load i64, i64* %18, align 8
  %216 = load i64, i64* %26, align 8
  %217 = icmp sle i64 %215, %216
  br i1 %217, label %226, label %218

218:                                              ; preds = %207
  %219 = load i64, i64* %18, align 8
  %220 = load i64, i64* %19, align 8
  %221 = icmp sgt i64 %219, %220
  br i1 %221, label %226, label %222

222:                                              ; preds = %218
  %223 = load i64, i64* %17, align 8
  %224 = load i64, i64* %20, align 8
  %225 = icmp sgt i64 %223, %224
  br i1 %225, label %226, label %227

226:                                              ; preds = %222, %218, %207
  br label %197

227:                                              ; preds = %222
  %228 = load i64, i64* %18, align 8
  %229 = load i32, i32* %15, align 4
  %230 = call i32 @walFrameOffset(i64 %228, i32 %229)
  %231 = load i32, i32* @WAL_FRAME_HDRSIZE, align 4
  %232 = add nsw i32 %230, %231
  store i32 %232, i32* %28, align 4
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = load i32*, i32** %13, align 8
  %237 = load i32, i32* %15, align 4
  %238 = load i32, i32* %28, align 4
  %239 = call i32 @sqlite3OsRead(i32 %235, i32* %236, i32 %237, i32 %238)
  store i32 %239, i32* %14, align 4
  %240 = load i32, i32* %14, align 4
  %241 = load i32, i32* @SQLITE_OK, align 4
  %242 = icmp ne i32 %240, %241
  br i1 %242, label %243, label %244

243:                                              ; preds = %227
  br label %266

244:                                              ; preds = %227
  %245 = load i64, i64* %17, align 8
  %246 = sub nsw i64 %245, 1
  %247 = load i32, i32* %15, align 4
  %248 = sext i32 %247 to i64
  %249 = mul nsw i64 %246, %248
  %250 = trunc i64 %249 to i32
  store i32 %250, i32* %28, align 4
  %251 = load i32, i32* %28, align 4
  %252 = call i32 @IS_BIG_INT(i32 %251)
  %253 = call i32 @testcase(i32 %252)
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = load i32*, i32** %13, align 8
  %258 = load i32, i32* %15, align 4
  %259 = load i32, i32* %28, align 4
  %260 = call i32 @sqlite3OsWrite(i32 %256, i32* %257, i32 %258, i32 %259)
  store i32 %260, i32* %14, align 4
  %261 = load i32, i32* %14, align 4
  %262 = load i32, i32* @SQLITE_OK, align 4
  %263 = icmp ne i32 %261, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %244
  br label %266

265:                                              ; preds = %244
  br label %197

266:                                              ; preds = %264, %243, %205
  %267 = load i32, i32* %14, align 4
  %268 = load i32, i32* @SQLITE_OK, align 4
  %269 = icmp eq i32 %267, %268
  br i1 %269, label %270, label %316

270:                                              ; preds = %266
  %271 = load i64, i64* %19, align 8
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %273 = call %struct.TYPE_17__* @walIndexHdr(%struct.TYPE_16__* %272)
  %274 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = icmp eq i64 %271, %275
  br i1 %276, label %277, label %307

277:                                              ; preds = %270
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = load i32, i32* %15, align 4
  %283 = sext i32 %282 to i64
  %284 = mul nsw i64 %281, %283
  %285 = trunc i64 %284 to i32
  store i32 %285, i32* %29, align 4
  %286 = load i32, i32* %29, align 4
  %287 = call i32 @IS_BIG_INT(i32 %286)
  %288 = call i32 @testcase(i32 %287)
  %289 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %290 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* %29, align 4
  %293 = call i32 @sqlite3OsTruncate(i32 %291, i32 %292)
  store i32 %293, i32* %14, align 4
  %294 = load i32, i32* %14, align 4
  %295 = load i32, i32* @SQLITE_OK, align 4
  %296 = icmp eq i32 %294, %295
  br i1 %296, label %297, label %306

297:                                              ; preds = %277
  %298 = load i32, i32* %12, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %306

300:                                              ; preds = %297
  %301 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %302 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* %12, align 4
  %305 = call i32 @sqlite3OsSync(i32 %303, i32 %304)
  store i32 %305, i32* %14, align 4
  br label %306

306:                                              ; preds = %300, %297, %277
  br label %307

307:                                              ; preds = %306, %270
  %308 = load i32, i32* %14, align 4
  %309 = load i32, i32* @SQLITE_OK, align 4
  %310 = icmp eq i32 %308, %309
  br i1 %310, label %311, label %315

311:                                              ; preds = %307
  %312 = load i64, i64* %19, align 8
  %313 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %314 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %313, i32 0, i32 0
  store volatile i64 %312, i64* %314, align 8
  br label %315

315:                                              ; preds = %311, %307
  br label %316

316:                                              ; preds = %315, %266
  %317 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %318 = call i32 @WAL_READ_LOCK(i32 0)
  %319 = call i32 @walUnlockExclusive(%struct.TYPE_16__* %317, i32 %318, i32 1)
  br label %320

320:                                              ; preds = %316, %149, %143
  %321 = load i32, i32* %14, align 4
  %322 = load i32, i32* @SQLITE_BUSY, align 4
  %323 = icmp eq i32 %321, %322
  br i1 %323, label %324, label %326

324:                                              ; preds = %320
  %325 = load i32, i32* @SQLITE_OK, align 4
  store i32 %325, i32* %14, align 4
  br label %326

326:                                              ; preds = %324, %320
  %327 = load i32, i32* %14, align 4
  %328 = load i32, i32* @SQLITE_OK, align 4
  %329 = icmp eq i32 %327, %328
  br i1 %329, label %330, label %381

330:                                              ; preds = %326
  %331 = load i32, i32* %9, align 4
  %332 = load i32, i32* @SQLITE_CHECKPOINT_PASSIVE, align 4
  %333 = icmp ne i32 %331, %332
  br i1 %333, label %334, label %381

334:                                              ; preds = %330
  %335 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %336 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = call i32 @assert(i32 %337)
  %339 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %340 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %339, i32 0, i32 0
  %341 = load volatile i64, i64* %340, align 8
  %342 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %343 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %342, i32 0, i32 1
  %344 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %343, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = icmp slt i64 %341, %345
  br i1 %346, label %347, label %349

347:                                              ; preds = %334
  %348 = load i32, i32* @SQLITE_BUSY, align 4
  store i32 %348, i32* %14, align 4
  br label %380

349:                                              ; preds = %334
  %350 = load i32, i32* %9, align 4
  %351 = load i32, i32* @SQLITE_CHECKPOINT_RESTART, align 4
  %352 = icmp eq i32 %350, %351
  br i1 %352, label %353, label %379

353:                                              ; preds = %349
  %354 = load i64, i64* %19, align 8
  %355 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %356 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %355, i32 0, i32 1
  %357 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %356, i32 0, i32 0
  %358 = load i64, i64* %357, align 8
  %359 = icmp eq i64 %354, %358
  %360 = zext i1 %359 to i32
  %361 = call i32 @assert(i32 %360)
  %362 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %363 = load i32 (i8*)*, i32 (i8*)** %23, align 8
  %364 = load i8*, i8** %11, align 8
  %365 = call i32 @WAL_READ_LOCK(i32 1)
  %366 = load i32, i32* @WAL_NREADER, align 4
  %367 = sub nsw i32 %366, 1
  %368 = call i32 @walBusyLock(%struct.TYPE_16__* %362, i32 (i8*)* %363, i8* %364, i32 %365, i32 %367)
  store i32 %368, i32* %14, align 4
  %369 = load i32, i32* %14, align 4
  %370 = load i32, i32* @SQLITE_OK, align 4
  %371 = icmp eq i32 %369, %370
  br i1 %371, label %372, label %378

372:                                              ; preds = %353
  %373 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %374 = call i32 @WAL_READ_LOCK(i32 1)
  %375 = load i32, i32* @WAL_NREADER, align 4
  %376 = sub nsw i32 %375, 1
  %377 = call i32 @walUnlockExclusive(%struct.TYPE_16__* %373, i32 %374, i32 %376)
  br label %378

378:                                              ; preds = %372, %353
  br label %379

379:                                              ; preds = %378, %349
  br label %380

380:                                              ; preds = %379, %347
  br label %381

381:                                              ; preds = %380, %330, %326
  br label %382

382:                                              ; preds = %381, %136
  %383 = load i32*, i32** %16, align 8
  %384 = call i32 @walIteratorFree(i32* %383)
  %385 = load i32, i32* %14, align 4
  store i32 %385, i32* %7, align 4
  br label %386

386:                                              ; preds = %382, %58, %50
  %387 = load i32, i32* %7, align 4
  ret i32 %387
}

declare dso_local i32 @walPagesize(%struct.TYPE_16__*) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local %struct.TYPE_15__* @walCkptInfo(%struct.TYPE_16__*) #1

declare dso_local i32 @walIteratorInit(%struct.TYPE_16__*, i32**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @walBusyLock(%struct.TYPE_16__*, i32 (i8*)*, i8*, i32, i32) #1

declare dso_local i32 @WAL_READ_LOCK(i32) #1

declare dso_local i32 @walUnlockExclusive(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @sqlite3OsSync(i32, i32) #1

declare dso_local i32 @sqlite3OsFileSize(i32, i32*) #1

declare dso_local i32 @sqlite3OsFileControlHint(i32, i32, i32*) #1

declare dso_local i64 @walIteratorNext(i32*, i64*, i64*) #1

declare dso_local i64 @walFramePgno(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @walFrameOffset(i64, i32) #1

declare dso_local i32 @sqlite3OsRead(i32, i32*, i32, i32) #1

declare dso_local i32 @IS_BIG_INT(i32) #1

declare dso_local i32 @sqlite3OsWrite(i32, i32*, i32, i32) #1

declare dso_local %struct.TYPE_17__* @walIndexHdr(%struct.TYPE_16__*) #1

declare dso_local i32 @sqlite3OsTruncate(i32, i32) #1

declare dso_local i32 @walIteratorFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
