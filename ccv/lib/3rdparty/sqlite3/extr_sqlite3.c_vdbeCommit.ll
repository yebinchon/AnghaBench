; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_vdbeCommit.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_vdbeCommit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 (i32)*, %struct.TYPE_8__*, i32*, i32 }
%struct.TYPE_8__ = type { i64, i32* }

@SQLITE_OK = common dso_local global i32 0, align 4
@vdbeCommit.aMJNeeded = internal constant [6 x i32] [i32 1, i32 1, i32 0, i32 1, i32 0, i32 0], align 16
@PAGER_SYNCHRONOUS_OFF = common dso_local global i64 0, align 8
@SQLITE_CONSTRAINT_COMMITHOOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s-mjXXXXXX9XXz\00", align 1
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@SQLITE_FULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"MJ delete: %s\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"MJ collide: %s\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"-mj%06X9%02X\00", align 1
@SQLITE_ACCESS_EXISTS = common dso_local global i32 0, align 4
@SQLITE_OPEN_READWRITE = common dso_local global i32 0, align 4
@SQLITE_OPEN_CREATE = common dso_local global i32 0, align 4
@SQLITE_OPEN_EXCLUSIVE = common dso_local global i32 0, align 4
@SQLITE_OPEN_MASTER_JOURNAL = common dso_local global i32 0, align 4
@SQLITE_IOCAP_SEQUENTIAL = common dso_local global i32 0, align 4
@SQLITE_SYNC_NORMAL = common dso_local global i32 0, align 4
@SQLITE_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*)* @vdbeCommit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdbeCommit(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %27 = load i32, i32* @SQLITE_OK, align 4
  store i32 %27, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @sqlite3VtabSync(%struct.TYPE_9__* %28, i32* %29)
  store i32 %30, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %93, %2
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @SQLITE_OK, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br label %41

41:                                               ; preds = %35, %31
  %42 = phi i1 [ false, %31 ], [ %40, %35 ]
  br i1 %42, label %43, label %96

43:                                               ; preds = %41
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %10, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = call i64 @sqlite3BtreeIsInTrans(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %92

55:                                               ; preds = %43
  store i32 1, i32* %9, align 4
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @sqlite3BtreeEnter(i32* %56)
  %58 = load i32*, i32** %10, align 8
  %59 = call i32* @sqlite3BtreePager(i32* %58)
  store i32* %59, i32** %11, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @PAGER_SYNCHRONOUS_OFF, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %87

70:                                               ; preds = %55
  %71 = load i32*, i32** %11, align 8
  %72 = call i64 @sqlite3PagerGetJournalMode(i32* %71)
  %73 = getelementptr inbounds [6 x i32], [6 x i32]* @vdbeCommit.aMJNeeded, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %70
  %77 = load i32*, i32** %11, align 8
  %78 = call i64 @sqlite3PagerIsMemdb(i32* %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %76
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 1
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %80, %76, %70, %55
  %88 = load i32*, i32** %11, align 8
  %89 = call i32 @sqlite3PagerExclusiveLock(i32* %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32*, i32** %10, align 8
  %91 = call i32 @sqlite3BtreeLeave(i32* %90)
  br label %92

92:                                               ; preds = %87, %43
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %31

96:                                               ; preds = %41
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @SQLITE_OK, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %3, align 4
  br label %492

102:                                              ; preds = %96
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %123

105:                                              ; preds = %102
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = load i32 (i32)*, i32 (i32)** %107, align 8
  %109 = icmp ne i32 (i32)* %108, null
  br i1 %109, label %110, label %123

110:                                              ; preds = %105
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  %113 = load i32 (i32)*, i32 (i32)** %112, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = call i32 %113(i32 %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %110
  %121 = load i32, i32* @SQLITE_CONSTRAINT_COMMITHOOK, align 4
  store i32 %121, i32* %3, align 4
  br label %492

122:                                              ; preds = %110
  br label %123

123:                                              ; preds = %122, %105, %102
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i64 0
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = call i8* @sqlite3BtreeGetFilename(i32* %129)
  %131 = call i32 @sqlite3Strlen30(i8* %130)
  %132 = icmp eq i32 0, %131
  br i1 %132, label %136, label %133

133:                                              ; preds = %123
  %134 = load i32, i32* %7, align 4
  %135 = icmp sle i32 %134, 1
  br i1 %135, label %136, label %206

136:                                              ; preds = %133, %123
  store i32 0, i32* %6, align 4
  br label %137

137:                                              ; preds = %164, %136
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* @SQLITE_OK, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %137
  %142 = load i32, i32* %6, align 4
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp slt i32 %142, %145
  br label %147

147:                                              ; preds = %141, %137
  %148 = phi i1 [ false, %137 ], [ %146, %141 ]
  br i1 %148, label %149, label %167

149:                                              ; preds = %147
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 2
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %151, align 8
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  store i32* %157, i32** %12, align 8
  %158 = load i32*, i32** %12, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %149
  %161 = load i32*, i32** %12, align 8
  %162 = call i32 @sqlite3BtreeCommitPhaseOne(i32* %161, i8* null)
  store i32 %162, i32* %8, align 4
  br label %163

163:                                              ; preds = %160, %149
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %6, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %6, align 4
  br label %137

167:                                              ; preds = %147
  store i32 0, i32* %6, align 4
  br label %168

168:                                              ; preds = %195, %167
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* @SQLITE_OK, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %178

172:                                              ; preds = %168
  %173 = load i32, i32* %6, align 4
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp slt i32 %173, %176
  br label %178

178:                                              ; preds = %172, %168
  %179 = phi i1 [ false, %168 ], [ %177, %172 ]
  br i1 %179, label %180, label %198

180:                                              ; preds = %178
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 2
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %182, align 8
  %184 = load i32, i32* %6, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  store i32* %188, i32** %13, align 8
  %189 = load i32*, i32** %13, align 8
  %190 = icmp ne i32* %189, null
  br i1 %190, label %191, label %194

191:                                              ; preds = %180
  %192 = load i32*, i32** %13, align 8
  %193 = call i32 @sqlite3BtreeCommitPhaseTwo(i32* %192, i32 0)
  store i32 %193, i32* %8, align 4
  br label %194

194:                                              ; preds = %191, %180
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %6, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %6, align 4
  br label %168

198:                                              ; preds = %178
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* @SQLITE_OK, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %198
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %204 = call i32 @sqlite3VtabCommit(%struct.TYPE_9__* %203)
  br label %205

205:                                              ; preds = %202, %198
  br label %490

206:                                              ; preds = %133
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 3
  %209 = load i32*, i32** %208, align 8
  store i32* %209, i32** %14, align 8
  store i8* null, i8** %15, align 8
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 2
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i64 0
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 1
  %215 = load i32*, i32** %214, align 8
  %216 = call i8* @sqlite3BtreeGetFilename(i32* %215)
  store i8* %216, i8** %16, align 8
  store i32* null, i32** %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %20, align 4
  %217 = load i8*, i8** %16, align 8
  %218 = call i32 @sqlite3Strlen30(i8* %217)
  store i32 %218, i32* %21, align 4
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %220 = load i8*, i8** %16, align 8
  %221 = call i8* @sqlite3MPrintf(%struct.TYPE_9__* %219, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %220)
  store i8* %221, i8** %15, align 8
  %222 = load i8*, i8** %15, align 8
  %223 = icmp eq i8* %222, null
  br i1 %223, label %224, label %226

224:                                              ; preds = %206
  %225 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %225, i32* %3, align 4
  br label %492

226:                                              ; preds = %206
  br label %227

227:                                              ; preds = %288, %226
  %228 = load i32, i32* %20, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %249

230:                                              ; preds = %227
  %231 = load i32, i32* %20, align 4
  %232 = icmp sgt i32 %231, 100
  br i1 %232, label %233, label %240

233:                                              ; preds = %230
  %234 = load i32, i32* @SQLITE_FULL, align 4
  %235 = load i8*, i8** %15, align 8
  %236 = call i32 @sqlite3_log(i32 %234, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %235)
  %237 = load i32*, i32** %14, align 8
  %238 = load i8*, i8** %15, align 8
  %239 = call i32 @sqlite3OsDelete(i32* %237, i8* %238, i32 0)
  br label %290

240:                                              ; preds = %230
  %241 = load i32, i32* %20, align 4
  %242 = icmp eq i32 %241, 1
  br i1 %242, label %243, label %247

243:                                              ; preds = %240
  %244 = load i32, i32* @SQLITE_FULL, align 4
  %245 = load i8*, i8** %15, align 8
  %246 = call i32 @sqlite3_log(i32 %244, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %245)
  br label %247

247:                                              ; preds = %243, %240
  br label %248

248:                                              ; preds = %247
  br label %249

249:                                              ; preds = %248, %227
  %250 = load i32, i32* %20, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %20, align 4
  %252 = call i32 @sqlite3_randomness(i32 4, i32* %22)
  %253 = load i8*, i8** %15, align 8
  %254 = load i32, i32* %21, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8, i8* %253, i64 %255
  %257 = load i32, i32* %22, align 4
  %258 = ashr i32 %257, 8
  %259 = and i32 %258, 16777215
  %260 = load i32, i32* %22, align 4
  %261 = and i32 %260, 255
  %262 = call i32 @sqlite3_snprintf(i32 13, i8* %256, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %259, i32 %261)
  %263 = load i8*, i8** %15, align 8
  %264 = load i8*, i8** %15, align 8
  %265 = call i32 @sqlite3Strlen30(i8* %264)
  %266 = sub nsw i32 %265, 3
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i8, i8* %263, i64 %267
  %269 = load i8, i8* %268, align 1
  %270 = sext i8 %269 to i32
  %271 = icmp eq i32 %270, 57
  %272 = zext i1 %271 to i32
  %273 = call i32 @assert(i32 %272)
  %274 = load i8*, i8** %16, align 8
  %275 = load i8*, i8** %15, align 8
  %276 = call i32 @sqlite3FileSuffix3(i8* %274, i8* %275)
  %277 = load i32*, i32** %14, align 8
  %278 = load i8*, i8** %15, align 8
  %279 = load i32, i32* @SQLITE_ACCESS_EXISTS, align 4
  %280 = call i32 @sqlite3OsAccess(i32* %277, i8* %278, i32 %279, i32* %19)
  store i32 %280, i32* %8, align 4
  br label %281

281:                                              ; preds = %249
  %282 = load i32, i32* %8, align 4
  %283 = load i32, i32* @SQLITE_OK, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %285, label %288

285:                                              ; preds = %281
  %286 = load i32, i32* %19, align 4
  %287 = icmp ne i32 %286, 0
  br label %288

288:                                              ; preds = %285, %281
  %289 = phi i1 [ false, %281 ], [ %287, %285 ]
  br i1 %289, label %227, label %290

290:                                              ; preds = %288, %233
  %291 = load i32, i32* %8, align 4
  %292 = load i32, i32* @SQLITE_OK, align 4
  %293 = icmp eq i32 %291, %292
  br i1 %293, label %294, label %305

294:                                              ; preds = %290
  %295 = load i32*, i32** %14, align 8
  %296 = load i8*, i8** %15, align 8
  %297 = load i32, i32* @SQLITE_OPEN_READWRITE, align 4
  %298 = load i32, i32* @SQLITE_OPEN_CREATE, align 4
  %299 = or i32 %297, %298
  %300 = load i32, i32* @SQLITE_OPEN_EXCLUSIVE, align 4
  %301 = or i32 %299, %300
  %302 = load i32, i32* @SQLITE_OPEN_MASTER_JOURNAL, align 4
  %303 = or i32 %301, %302
  %304 = call i32 @sqlite3OsOpenMalloc(i32* %295, i8* %296, i32** %17, i32 %303, i32 0)
  store i32 %304, i32* %8, align 4
  br label %305

305:                                              ; preds = %294, %290
  %306 = load i32, i32* %8, align 4
  %307 = load i32, i32* @SQLITE_OK, align 4
  %308 = icmp ne i32 %306, %307
  br i1 %308, label %309, label %314

309:                                              ; preds = %305
  %310 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %311 = load i8*, i8** %15, align 8
  %312 = call i32 @sqlite3DbFree(%struct.TYPE_9__* %310, i8* %311)
  %313 = load i32, i32* %8, align 4
  store i32 %313, i32* %3, align 4
  br label %492

314:                                              ; preds = %305
  store i32 0, i32* %6, align 4
  br label %315

315:                                              ; preds = %374, %314
  %316 = load i32, i32* %6, align 4
  %317 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = icmp slt i32 %316, %319
  br i1 %320, label %321, label %377

321:                                              ; preds = %315
  %322 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %322, i32 0, i32 2
  %324 = load %struct.TYPE_8__*, %struct.TYPE_8__** %323, align 8
  %325 = load i32, i32* %6, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %324, i64 %326
  %328 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %327, i32 0, i32 1
  %329 = load i32*, i32** %328, align 8
  store i32* %329, i32** %23, align 8
  %330 = load i32*, i32** %23, align 8
  %331 = call i64 @sqlite3BtreeIsInTrans(i32* %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %373

333:                                              ; preds = %321
  %334 = load i32*, i32** %23, align 8
  %335 = call i8* @sqlite3BtreeGetJournalname(i32* %334)
  store i8* %335, i8** %24, align 8
  %336 = load i8*, i8** %24, align 8
  %337 = icmp eq i8* %336, null
  br i1 %337, label %338, label %339

338:                                              ; preds = %333
  br label %374

339:                                              ; preds = %333
  %340 = load i8*, i8** %24, align 8
  %341 = getelementptr inbounds i8, i8* %340, i64 0
  %342 = load i8, i8* %341, align 1
  %343 = sext i8 %342 to i32
  %344 = icmp ne i32 %343, 0
  %345 = zext i1 %344 to i32
  %346 = call i32 @assert(i32 %345)
  %347 = load i32*, i32** %17, align 8
  %348 = load i8*, i8** %24, align 8
  %349 = load i8*, i8** %24, align 8
  %350 = call i32 @sqlite3Strlen30(i8* %349)
  %351 = add nsw i32 %350, 1
  %352 = load i32, i32* %18, align 4
  %353 = call i32 @sqlite3OsWrite(i32* %347, i8* %348, i32 %351, i32 %352)
  store i32 %353, i32* %8, align 4
  %354 = load i8*, i8** %24, align 8
  %355 = call i32 @sqlite3Strlen30(i8* %354)
  %356 = add nsw i32 %355, 1
  %357 = load i32, i32* %18, align 4
  %358 = add nsw i32 %357, %356
  store i32 %358, i32* %18, align 4
  %359 = load i32, i32* %8, align 4
  %360 = load i32, i32* @SQLITE_OK, align 4
  %361 = icmp ne i32 %359, %360
  br i1 %361, label %362, label %372

362:                                              ; preds = %339
  %363 = load i32*, i32** %17, align 8
  %364 = call i32 @sqlite3OsCloseFree(i32* %363)
  %365 = load i32*, i32** %14, align 8
  %366 = load i8*, i8** %15, align 8
  %367 = call i32 @sqlite3OsDelete(i32* %365, i8* %366, i32 0)
  %368 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %369 = load i8*, i8** %15, align 8
  %370 = call i32 @sqlite3DbFree(%struct.TYPE_9__* %368, i8* %369)
  %371 = load i32, i32* %8, align 4
  store i32 %371, i32* %3, align 4
  br label %492

372:                                              ; preds = %339
  br label %373

373:                                              ; preds = %372, %321
  br label %374

374:                                              ; preds = %373, %338
  %375 = load i32, i32* %6, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %6, align 4
  br label %315

377:                                              ; preds = %315
  %378 = load i32*, i32** %17, align 8
  %379 = call i32 @sqlite3OsDeviceCharacteristics(i32* %378)
  %380 = load i32, i32* @SQLITE_IOCAP_SEQUENTIAL, align 4
  %381 = and i32 %379, %380
  %382 = icmp eq i32 0, %381
  br i1 %382, label %383, label %399

383:                                              ; preds = %377
  %384 = load i32, i32* @SQLITE_OK, align 4
  %385 = load i32*, i32** %17, align 8
  %386 = load i32, i32* @SQLITE_SYNC_NORMAL, align 4
  %387 = call i32 @sqlite3OsSync(i32* %385, i32 %386)
  store i32 %387, i32* %8, align 4
  %388 = icmp ne i32 %384, %387
  br i1 %388, label %389, label %399

389:                                              ; preds = %383
  %390 = load i32*, i32** %17, align 8
  %391 = call i32 @sqlite3OsCloseFree(i32* %390)
  %392 = load i32*, i32** %14, align 8
  %393 = load i8*, i8** %15, align 8
  %394 = call i32 @sqlite3OsDelete(i32* %392, i8* %393, i32 0)
  %395 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %396 = load i8*, i8** %15, align 8
  %397 = call i32 @sqlite3DbFree(%struct.TYPE_9__* %395, i8* %396)
  %398 = load i32, i32* %8, align 4
  store i32 %398, i32* %3, align 4
  br label %492

399:                                              ; preds = %383, %377
  store i32 0, i32* %6, align 4
  br label %400

400:                                              ; preds = %428, %399
  %401 = load i32, i32* %8, align 4
  %402 = load i32, i32* @SQLITE_OK, align 4
  %403 = icmp eq i32 %401, %402
  br i1 %403, label %404, label %410

404:                                              ; preds = %400
  %405 = load i32, i32* %6, align 4
  %406 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %407 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = icmp slt i32 %405, %408
  br label %410

410:                                              ; preds = %404, %400
  %411 = phi i1 [ false, %400 ], [ %409, %404 ]
  br i1 %411, label %412, label %431

412:                                              ; preds = %410
  %413 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %414 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %413, i32 0, i32 2
  %415 = load %struct.TYPE_8__*, %struct.TYPE_8__** %414, align 8
  %416 = load i32, i32* %6, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %415, i64 %417
  %419 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %418, i32 0, i32 1
  %420 = load i32*, i32** %419, align 8
  store i32* %420, i32** %25, align 8
  %421 = load i32*, i32** %25, align 8
  %422 = icmp ne i32* %421, null
  br i1 %422, label %423, label %427

423:                                              ; preds = %412
  %424 = load i32*, i32** %25, align 8
  %425 = load i8*, i8** %15, align 8
  %426 = call i32 @sqlite3BtreeCommitPhaseOne(i32* %424, i8* %425)
  store i32 %426, i32* %8, align 4
  br label %427

427:                                              ; preds = %423, %412
  br label %428

428:                                              ; preds = %427
  %429 = load i32, i32* %6, align 4
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* %6, align 4
  br label %400

431:                                              ; preds = %410
  %432 = load i32*, i32** %17, align 8
  %433 = call i32 @sqlite3OsCloseFree(i32* %432)
  %434 = load i32, i32* %8, align 4
  %435 = load i32, i32* @SQLITE_BUSY, align 4
  %436 = icmp ne i32 %434, %435
  %437 = zext i1 %436 to i32
  %438 = call i32 @assert(i32 %437)
  %439 = load i32, i32* %8, align 4
  %440 = load i32, i32* @SQLITE_OK, align 4
  %441 = icmp ne i32 %439, %440
  br i1 %441, label %442, label %447

442:                                              ; preds = %431
  %443 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %444 = load i8*, i8** %15, align 8
  %445 = call i32 @sqlite3DbFree(%struct.TYPE_9__* %443, i8* %444)
  %446 = load i32, i32* %8, align 4
  store i32 %446, i32* %3, align 4
  br label %492

447:                                              ; preds = %431
  %448 = load i32*, i32** %14, align 8
  %449 = load i8*, i8** %15, align 8
  %450 = call i32 @sqlite3OsDelete(i32* %448, i8* %449, i32 1)
  store i32 %450, i32* %8, align 4
  %451 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %452 = load i8*, i8** %15, align 8
  %453 = call i32 @sqlite3DbFree(%struct.TYPE_9__* %451, i8* %452)
  store i8* null, i8** %15, align 8
  %454 = load i32, i32* %8, align 4
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %458

456:                                              ; preds = %447
  %457 = load i32, i32* %8, align 4
  store i32 %457, i32* %3, align 4
  br label %492

458:                                              ; preds = %447
  %459 = call i32 (...) @disable_simulated_io_errors()
  %460 = call i32 (...) @sqlite3BeginBenignMalloc()
  store i32 0, i32* %6, align 4
  br label %461

461:                                              ; preds = %482, %458
  %462 = load i32, i32* %6, align 4
  %463 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %464 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 8
  %466 = icmp slt i32 %462, %465
  br i1 %466, label %467, label %485

467:                                              ; preds = %461
  %468 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %469 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %468, i32 0, i32 2
  %470 = load %struct.TYPE_8__*, %struct.TYPE_8__** %469, align 8
  %471 = load i32, i32* %6, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %470, i64 %472
  %474 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %473, i32 0, i32 1
  %475 = load i32*, i32** %474, align 8
  store i32* %475, i32** %26, align 8
  %476 = load i32*, i32** %26, align 8
  %477 = icmp ne i32* %476, null
  br i1 %477, label %478, label %481

478:                                              ; preds = %467
  %479 = load i32*, i32** %26, align 8
  %480 = call i32 @sqlite3BtreeCommitPhaseTwo(i32* %479, i32 1)
  br label %481

481:                                              ; preds = %478, %467
  br label %482

482:                                              ; preds = %481
  %483 = load i32, i32* %6, align 4
  %484 = add nsw i32 %483, 1
  store i32 %484, i32* %6, align 4
  br label %461

485:                                              ; preds = %461
  %486 = call i32 (...) @sqlite3EndBenignMalloc()
  %487 = call i32 (...) @enable_simulated_io_errors()
  %488 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %489 = call i32 @sqlite3VtabCommit(%struct.TYPE_9__* %488)
  br label %490

490:                                              ; preds = %485, %205
  %491 = load i32, i32* %8, align 4
  store i32 %491, i32* %3, align 4
  br label %492

492:                                              ; preds = %490, %456, %442, %389, %362, %309, %224, %120, %100
  %493 = load i32, i32* %3, align 4
  ret i32 %493
}

declare dso_local i32 @sqlite3VtabSync(%struct.TYPE_9__*, i32*) #1

declare dso_local i64 @sqlite3BtreeIsInTrans(i32*) #1

declare dso_local i32 @sqlite3BtreeEnter(i32*) #1

declare dso_local i32* @sqlite3BtreePager(i32*) #1

declare dso_local i64 @sqlite3PagerGetJournalMode(i32*) #1

declare dso_local i64 @sqlite3PagerIsMemdb(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3PagerExclusiveLock(i32*) #1

declare dso_local i32 @sqlite3BtreeLeave(i32*) #1

declare dso_local i32 @sqlite3Strlen30(i8*) #1

declare dso_local i8* @sqlite3BtreeGetFilename(i32*) #1

declare dso_local i32 @sqlite3BtreeCommitPhaseOne(i32*, i8*) #1

declare dso_local i32 @sqlite3BtreeCommitPhaseTwo(i32*, i32) #1

declare dso_local i32 @sqlite3VtabCommit(%struct.TYPE_9__*) #1

declare dso_local i8* @sqlite3MPrintf(%struct.TYPE_9__*, i8*, i8*) #1

declare dso_local i32 @sqlite3_log(i32, i8*, i8*) #1

declare dso_local i32 @sqlite3OsDelete(i32*, i8*, i32) #1

declare dso_local i32 @sqlite3_randomness(i32, i32*) #1

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @sqlite3FileSuffix3(i8*, i8*) #1

declare dso_local i32 @sqlite3OsAccess(i32*, i8*, i32, i32*) #1

declare dso_local i32 @sqlite3OsOpenMalloc(i32*, i8*, i32**, i32, i32) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_9__*, i8*) #1

declare dso_local i8* @sqlite3BtreeGetJournalname(i32*) #1

declare dso_local i32 @sqlite3OsWrite(i32*, i8*, i32, i32) #1

declare dso_local i32 @sqlite3OsCloseFree(i32*) #1

declare dso_local i32 @sqlite3OsDeviceCharacteristics(i32*) #1

declare dso_local i32 @sqlite3OsSync(i32*, i32) #1

declare dso_local i32 @disable_simulated_io_errors(...) #1

declare dso_local i32 @sqlite3BeginBenignMalloc(...) #1

declare dso_local i32 @sqlite3EndBenignMalloc(...) #1

declare dso_local i32 @enable_simulated_io_errors(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
