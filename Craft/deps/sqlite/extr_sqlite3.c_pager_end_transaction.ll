; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_pager_end_transaction.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_pager_end_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i64, i32, i32, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@PAGER_ERROR = common dso_local global i64 0, align 8
@PAGER_WRITER_LOCKED = common dso_local global i64 0, align 8
@RESERVED_LOCK = common dso_local global i64 0, align 8
@PAGER_JOURNALMODE_MEMORY = common dso_local global i64 0, align 8
@PAGER_JOURNALMODE_TRUNCATE = common dso_local global i64 0, align 8
@PAGER_JOURNALMODE_PERSIST = common dso_local global i64 0, align 8
@PAGER_JOURNALMODE_WAL = common dso_local global i64 0, align 8
@PAGER_JOURNALMODE_DELETE = common dso_local global i64 0, align 8
@EXCLUSIVE_LOCK = common dso_local global i64 0, align 8
@SHARED_LOCK = common dso_local global i32 0, align 4
@PAGER_READER = common dso_local global i64 0, align 8
@pager_set_pagehash = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32, i32)* @pager_end_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pager_end_transaction(%struct.TYPE_14__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @SQLITE_OK, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @SQLITE_OK, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %14 = call i32 @assert_pager_state(%struct.TYPE_14__* %13)
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PAGER_ERROR, align 8
  %20 = icmp ne i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PAGER_WRITER_LOCKED, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %3
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @RESERVED_LOCK, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @SQLITE_OK, align 4
  store i32 %35, i32* %4, align 4
  br label %277

36:                                               ; preds = %28, %3
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %38 = call i32 @releaseAllSavepoints(%struct.TYPE_14__* %37)
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 15
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @isOpen(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %36
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br label %49

49:                                               ; preds = %44, %36
  %50 = phi i1 [ true, %36 ], [ %48, %44 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 15
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @isOpen(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %179

58:                                               ; preds = %49
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %60 = call i64 @pagerUseWal(%struct.TYPE_14__* %59)
  %61 = icmp ne i64 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 15
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @sqlite3IsMemJournal(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %58
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @PAGER_JOURNALMODE_MEMORY, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 15
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @sqlite3OsClose(i32 %80)
  br label %178

82:                                               ; preds = %58
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @PAGER_JOURNALMODE_TRUNCATE, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %103

88:                                               ; preds = %82
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i32, i32* @SQLITE_OK, align 4
  store i32 %94, i32* %8, align 4
  br label %100

95:                                               ; preds = %88
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 15
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @sqlite3OsTruncate(i32 %98, i32 0)
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %95, %93
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 4
  store i64 0, i64* %102, align 8
  br label %177

103:                                              ; preds = %82
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @PAGER_JOURNALMODE_PERSIST, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %120, label %109

109:                                              ; preds = %103
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 10
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %109
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @PAGER_JOURNALMODE_WAL, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %114, %103
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @zeroJournalHdr(%struct.TYPE_14__* %121, i32 %122)
  store i32 %123, i32* %8, align 4
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 4
  store i64 0, i64* %125, align 8
  br label %176

126:                                              ; preds = %114, %109
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 16
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %126
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 15
  %134 = load i32, i32* %133, align 8
  %135 = call i64 @sqlite3JournalExists(i32 %134)
  %136 = icmp ne i64 %135, 0
  br label %137

137:                                              ; preds = %131, %126
  %138 = phi i1 [ false, %126 ], [ %136, %131 ]
  %139 = zext i1 %138 to i32
  store i32 %139, i32* %10, align 4
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @PAGER_JOURNALMODE_DELETE, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %157, label %145

145:                                              ; preds = %137
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @PAGER_JOURNALMODE_MEMORY, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %157, label %151

151:                                              ; preds = %145
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @PAGER_JOURNALMODE_WAL, align 8
  %156 = icmp eq i64 %154, %155
  br label %157

157:                                              ; preds = %151, %145, %137
  %158 = phi i1 [ true, %145 ], [ true, %137 ], [ %156, %151 ]
  %159 = zext i1 %158 to i32
  %160 = call i32 @assert(i32 %159)
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 15
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @sqlite3OsClose(i32 %163)
  %165 = load i32, i32* %10, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %157
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 14
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 13
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @sqlite3OsDelete(i32 %170, i32 %173, i32 0)
  store i32 %174, i32* %8, align 4
  br label %175

175:                                              ; preds = %167, %157
  br label %176

176:                                              ; preds = %175, %120
  br label %177

177:                                              ; preds = %176, %100
  br label %178

178:                                              ; preds = %177, %70
  br label %179

179:                                              ; preds = %178, %49
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @sqlite3BitvecDestroy(i64 %182)
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 2
  store i64 0, i64* %185, align 8
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 12
  store i64 0, i64* %187, align 8
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 11
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @sqlite3PcacheCleanAll(i32 %190)
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 11
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 5
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @sqlite3PcacheTruncate(i32 %194, i64 %197)
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %200 = call i64 @pagerUseWal(%struct.TYPE_14__* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %212

202:                                              ; preds = %179
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 9
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @sqlite3WalEndWriteTransaction(i32 %205)
  store i32 %206, i32* %9, align 4
  %207 = load i32, i32* %9, align 4
  %208 = load i32, i32* @SQLITE_OK, align 4
  %209 = icmp eq i32 %207, %208
  %210 = zext i1 %209 to i32
  %211 = call i32 @assert(i32 %210)
  br label %241

212:                                              ; preds = %179
  %213 = load i32, i32* %8, align 4
  %214 = load i32, i32* @SQLITE_OK, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %240

216:                                              ; preds = %212
  %217 = load i32, i32* %7, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %240

219:                                              ; preds = %216
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 6
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 5
  %225 = load i64, i64* %224, align 8
  %226 = icmp sgt i64 %222, %225
  br i1 %226, label %227, label %240

227:                                              ; preds = %219
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @EXCLUSIVE_LOCK, align 8
  %232 = icmp eq i64 %230, %231
  %233 = zext i1 %232 to i32
  %234 = call i32 @assert(i32 %233)
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 5
  %238 = load i64, i64* %237, align 8
  %239 = call i32 @pager_truncate(%struct.TYPE_14__* %235, i64 %238)
  store i32 %239, i32* %8, align 4
  br label %240

240:                                              ; preds = %227, %219, %216, %212
  br label %241

241:                                              ; preds = %240, %202
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 10
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %262, label %246

246:                                              ; preds = %241
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %248 = call i64 @pagerUseWal(%struct.TYPE_14__* %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %256

250:                                              ; preds = %246
  %251 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 9
  %253 = load i32, i32* %252, align 8
  %254 = call i64 @sqlite3WalExclusiveMode(i32 %253, i32 0)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %262

256:                                              ; preds = %250, %246
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %258 = load i32, i32* @SHARED_LOCK, align 4
  %259 = call i32 @pagerUnlockDb(%struct.TYPE_14__* %257, i32 %258)
  store i32 %259, i32* %9, align 4
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 8
  store i64 0, i64* %261, align 8
  br label %262

262:                                              ; preds = %256, %250, %241
  %263 = load i64, i64* @PAGER_READER, align 8
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 0
  store i64 %263, i64* %265, align 8
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 7
  store i64 0, i64* %267, align 8
  %268 = load i32, i32* %8, align 4
  %269 = load i32, i32* @SQLITE_OK, align 4
  %270 = icmp eq i32 %268, %269
  br i1 %270, label %271, label %273

271:                                              ; preds = %262
  %272 = load i32, i32* %9, align 4
  br label %275

273:                                              ; preds = %262
  %274 = load i32, i32* %8, align 4
  br label %275

275:                                              ; preds = %273, %271
  %276 = phi i32 [ %272, %271 ], [ %274, %273 ]
  store i32 %276, i32* %4, align 4
  br label %277

277:                                              ; preds = %275, %34
  %278 = load i32, i32* %4, align 4
  ret i32 %278
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @assert_pager_state(%struct.TYPE_14__*) #1

declare dso_local i32 @releaseAllSavepoints(%struct.TYPE_14__*) #1

declare dso_local i64 @isOpen(i32) #1

declare dso_local i64 @pagerUseWal(%struct.TYPE_14__*) #1

declare dso_local i64 @sqlite3IsMemJournal(i32) #1

declare dso_local i32 @sqlite3OsClose(i32) #1

declare dso_local i32 @sqlite3OsTruncate(i32, i32) #1

declare dso_local i32 @zeroJournalHdr(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @sqlite3JournalExists(i32) #1

declare dso_local i32 @sqlite3OsDelete(i32, i32, i32) #1

declare dso_local i32 @sqlite3BitvecDestroy(i64) #1

declare dso_local i32 @sqlite3PcacheCleanAll(i32) #1

declare dso_local i32 @sqlite3PcacheTruncate(i32, i64) #1

declare dso_local i32 @sqlite3WalEndWriteTransaction(i32) #1

declare dso_local i32 @pager_truncate(%struct.TYPE_14__*, i64) #1

declare dso_local i64 @sqlite3WalExclusiveMode(i32, i32) #1

declare dso_local i32 @pagerUnlockDb(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
