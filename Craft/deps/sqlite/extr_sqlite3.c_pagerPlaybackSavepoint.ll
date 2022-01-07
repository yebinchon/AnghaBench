; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_pagerPlaybackSavepoint.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_pagerPlaybackSavepoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i64, i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i64, i64, i64, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@PAGER_ERROR = common dso_local global i64 0, align 8
@PAGER_WRITER_LOCKED = common dso_local global i64 0, align 8
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*)* @pagerPlaybackSavepoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pagerPlaybackSavepoint(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %15 = load i32, i32* @SQLITE_OK, align 4
  store i32 %15, i32* %8, align 4
  store i32* null, i32** %9, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PAGER_ERROR, align 8
  %20 = icmp ne i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PAGER_WRITER_LOCKED, align 8
  %27 = icmp sge i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = icmp ne %struct.TYPE_11__* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %2
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32* @sqlite3BitvecCreate(i32 %35)
  store i32* %36, i32** %9, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %40, i32* %3, align 4
  br label %301

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %2
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %44 = icmp ne %struct.TYPE_11__* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  br label %53

49:                                               ; preds = %42
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 4
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i32 [ %48, %45 ], [ %52, %49 ]
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 9
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 7
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %63 = icmp ne %struct.TYPE_11__* %62, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %53
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %66 = call i64 @pagerUseWal(%struct.TYPE_12__* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %70 = call i32 @pagerRollbackWal(%struct.TYPE_12__* %69)
  store i32 %70, i32* %3, align 4
  br label %301

71:                                               ; preds = %64, %53
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %6, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %76 = call i64 @pagerUseWal(%struct.TYPE_12__* %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %71
  %79 = load i64, i64* %6, align 8
  %80 = icmp eq i64 %79, 0
  br label %81

81:                                               ; preds = %78, %71
  %82 = phi i1 [ true, %71 ], [ %80, %78 ]
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %86 = icmp ne %struct.TYPE_11__* %85, null
  br i1 %86, label %87, label %133

87:                                               ; preds = %81
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %89 = call i64 @pagerUseWal(%struct.TYPE_12__* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %133, label %91

91:                                               ; preds = %87
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  br label %102

100:                                              ; preds = %91
  %101 = load i64, i64* %6, align 8
  br label %102

102:                                              ; preds = %100, %96
  %103 = phi i64 [ %99, %96 ], [ %101, %100 ]
  store i64 %103, i64* %7, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  br label %109

109:                                              ; preds = %121, %102
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @SQLITE_OK, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %109
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %7, align 8
  %118 = icmp slt i64 %116, %117
  br label %119

119:                                              ; preds = %113, %109
  %120 = phi i1 [ false, %109 ], [ %118, %113 ]
  br i1 %120, label %121, label %127

121:                                              ; preds = %119
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 1
  %125 = load i32*, i32** %9, align 8
  %126 = call i32 @pager_playback_one_page(%struct.TYPE_12__* %122, i64* %124, i32* %125, i32 1, i32 1)
  store i32 %126, i32* %8, align 4
  br label %109

127:                                              ; preds = %119
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @SQLITE_DONE, align 4
  %130 = icmp ne i32 %128, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 @assert(i32 %131)
  br label %136

133:                                              ; preds = %87, %81
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 1
  store i64 0, i64* %135, align 8
  br label %136

136:                                              ; preds = %133, %127
  br label %137

137:                                              ; preds = %206, %136
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* @SQLITE_OK, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %137
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* %6, align 8
  %146 = icmp slt i64 %144, %145
  br label %147

147:                                              ; preds = %141, %137
  %148 = phi i1 [ false, %137 ], [ %146, %141 ]
  br i1 %148, label %149, label %212

149:                                              ; preds = %147
  store i64 0, i64* %11, align 8
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %151 = load i64, i64* %6, align 8
  %152 = call i32 @readJournalHdr(%struct.TYPE_12__* %150, i32 0, i64 %151, i64* %11, i64* %12)
  store i32 %152, i32* %8, align 4
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* @SQLITE_DONE, align 4
  %155 = icmp ne i32 %153, %154
  %156 = zext i1 %155 to i32
  %157 = call i32 @assert(i32 %156)
  %158 = load i64, i64* %11, align 8
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %180

160:                                              ; preds = %149
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %165 = call i64 @JOURNAL_HDR_SZ(%struct.TYPE_12__* %164)
  %166 = add nsw i64 %163, %165
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp eq i64 %166, %169
  br i1 %170, label %171, label %180

171:                                              ; preds = %160
  %172 = load i64, i64* %6, align 8
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = sub nsw i64 %172, %175
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %178 = call i64 @JOURNAL_PG_SZ(%struct.TYPE_12__* %177)
  %179 = sdiv i64 %176, %178
  store i64 %179, i64* %11, align 8
  br label %180

180:                                              ; preds = %171, %160, %149
  store i64 0, i64* %10, align 8
  br label %181

181:                                              ; preds = %203, %180
  %182 = load i32, i32* %8, align 4
  %183 = load i32, i32* @SQLITE_OK, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %195

185:                                              ; preds = %181
  %186 = load i64, i64* %10, align 8
  %187 = load i64, i64* %11, align 8
  %188 = icmp slt i64 %186, %187
  br i1 %188, label %189, label %195

189:                                              ; preds = %185
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* %6, align 8
  %194 = icmp slt i64 %192, %193
  br label %195

195:                                              ; preds = %189, %185, %181
  %196 = phi i1 [ false, %185 ], [ false, %181 ], [ %194, %189 ]
  br i1 %196, label %197, label %206

197:                                              ; preds = %195
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 1
  %201 = load i32*, i32** %9, align 8
  %202 = call i32 @pager_playback_one_page(%struct.TYPE_12__* %198, i64* %200, i32* %201, i32 1, i32 1)
  store i32 %202, i32* %8, align 4
  br label %203

203:                                              ; preds = %197
  %204 = load i64, i64* %10, align 8
  %205 = add nsw i64 %204, 1
  store i64 %205, i64* %10, align 8
  br label %181

206:                                              ; preds = %195
  %207 = load i32, i32* %8, align 4
  %208 = load i32, i32* @SQLITE_DONE, align 4
  %209 = icmp ne i32 %207, %208
  %210 = zext i1 %209 to i32
  %211 = call i32 @assert(i32 %210)
  br label %137

212:                                              ; preds = %147
  %213 = load i32, i32* %8, align 4
  %214 = load i32, i32* @SQLITE_OK, align 4
  %215 = icmp ne i32 %213, %214
  br i1 %215, label %222, label %216

216:                                              ; preds = %212
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* %6, align 8
  %221 = icmp sge i64 %219, %220
  br label %222

222:                                              ; preds = %216, %212
  %223 = phi i1 [ true, %212 ], [ %221, %216 ]
  %224 = zext i1 %223 to i32
  %225 = call i32 @assert(i32 %224)
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %227 = icmp ne %struct.TYPE_11__* %226, null
  br i1 %227, label %228, label %289

228:                                              ; preds = %222
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 2
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 8
  %235 = add nsw i32 4, %234
  %236 = sext i32 %235 to i64
  %237 = mul nsw i64 %231, %236
  store i64 %237, i64* %14, align 8
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %239 = call i64 @pagerUseWal(%struct.TYPE_12__* %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %249

241:                                              ; preds = %228
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 5
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @sqlite3WalSavepointUndo(i32 %244, i32 %247)
  store i32 %248, i32* %8, align 4
  br label %249

249:                                              ; preds = %241, %228
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 2
  %252 = load i64, i64* %251, align 8
  store i64 %252, i64* %13, align 8
  br label %253

253:                                              ; preds = %280, %249
  %254 = load i32, i32* %8, align 4
  %255 = load i32, i32* @SQLITE_OK, align 4
  %256 = icmp eq i32 %254, %255
  br i1 %256, label %257, label %263

257:                                              ; preds = %253
  %258 = load i64, i64* %13, align 8
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 4
  %261 = load i64, i64* %260, align 8
  %262 = icmp slt i64 %258, %261
  br label %263

263:                                              ; preds = %257, %253
  %264 = phi i1 [ false, %253 ], [ %262, %257 ]
  br i1 %264, label %265, label %283

265:                                              ; preds = %263
  %266 = load i64, i64* %14, align 8
  %267 = load i64, i64* %13, align 8
  %268 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 8
  %271 = add nsw i32 4, %270
  %272 = sext i32 %271 to i64
  %273 = mul nsw i64 %267, %272
  %274 = icmp eq i64 %266, %273
  %275 = zext i1 %274 to i32
  %276 = call i32 @assert(i32 %275)
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %278 = load i32*, i32** %9, align 8
  %279 = call i32 @pager_playback_one_page(%struct.TYPE_12__* %277, i64* %14, i32* %278, i32 0, i32 1)
  store i32 %279, i32* %8, align 4
  br label %280

280:                                              ; preds = %265
  %281 = load i64, i64* %13, align 8
  %282 = add nsw i64 %281, 1
  store i64 %282, i64* %13, align 8
  br label %253

283:                                              ; preds = %263
  %284 = load i32, i32* %8, align 4
  %285 = load i32, i32* @SQLITE_DONE, align 4
  %286 = icmp ne i32 %284, %285
  %287 = zext i1 %286 to i32
  %288 = call i32 @assert(i32 %287)
  br label %289

289:                                              ; preds = %283, %222
  %290 = load i32*, i32** %9, align 8
  %291 = call i32 @sqlite3BitvecDestroy(i32* %290)
  %292 = load i32, i32* %8, align 4
  %293 = load i32, i32* @SQLITE_OK, align 4
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %295, label %299

295:                                              ; preds = %289
  %296 = load i64, i64* %6, align 8
  %297 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %297, i32 0, i32 1
  store i64 %296, i64* %298, align 8
  br label %299

299:                                              ; preds = %295, %289
  %300 = load i32, i32* %8, align 4
  store i32 %300, i32* %3, align 4
  br label %301

301:                                              ; preds = %299, %68, %39
  %302 = load i32, i32* %3, align 4
  ret i32 %302
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @sqlite3BitvecCreate(i32) #1

declare dso_local i64 @pagerUseWal(%struct.TYPE_12__*) #1

declare dso_local i32 @pagerRollbackWal(%struct.TYPE_12__*) #1

declare dso_local i32 @pager_playback_one_page(%struct.TYPE_12__*, i64*, i32*, i32, i32) #1

declare dso_local i32 @readJournalHdr(%struct.TYPE_12__*, i32, i64, i64*, i64*) #1

declare dso_local i64 @JOURNAL_HDR_SZ(%struct.TYPE_12__*) #1

declare dso_local i64 @JOURNAL_PG_SZ(%struct.TYPE_12__*) #1

declare dso_local i32 @sqlite3WalSavepointUndo(i32, i32) #1

declare dso_local i32 @sqlite3BitvecDestroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
