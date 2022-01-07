; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_lockBtree.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_lockBtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_11__*, i8*, i8*, %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOTADB = common dso_local global i32 0, align 4
@zMagicHeader = common dso_local global i8* null, align 8
@BTS_READ_ONLY = common dso_local global i32 0, align 4
@BTS_NO_WAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"@  \00", align 1
@SQLITE_MAX_PAGE_SIZE = common dso_local global i32 0, align 4
@SQLITE_RecoveryMode = common dso_local global i32 0, align 4
@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @lockBtree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lockBtree(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 14
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @sqlite3_mutex_held(i32 %15)
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 9
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = icmp eq %struct.TYPE_11__* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 13
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @sqlite3PagerSharedLock(i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @SQLITE_OK, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %315

33:                                               ; preds = %1
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %35 = call i32 @btreeGetPage(%struct.TYPE_12__* %34, i32 1, %struct.TYPE_11__** %5, i32 0, i32 0)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @SQLITE_OK, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %315

41:                                               ; preds = %33
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 28
  %46 = call i32 @get4byte(i32* %45)
  store i32 %46, i32* %8, align 4
  store i32 %46, i32* %6, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 13
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @sqlite3PagerPagecount(i32 %49, i32* %7)
  %51 = load i32, i32* %6, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %41
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 24
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 92
  %62 = call i64 (i32*, ...) @memcmp(i32* %57, i32* %61, i32 4)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %53, %41
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %64, %53
  %67 = load i32, i32* %6, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %235

69:                                               ; preds = %66
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  store i32* %72, i32** %11, align 8
  %73 = load i32, i32* @SQLITE_NOTADB, align 4
  store i32 %73, i32* %4, align 4
  %74 = load i32*, i32** %11, align 8
  %75 = load i8*, i8** @zMagicHeader, align 8
  %76 = call i64 (i32*, ...) @memcmp(i32* %74, i8* %75, i32 16)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  br label %309

79:                                               ; preds = %69
  %80 = load i32*, i32** %11, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 18
  %82 = load i32, i32* %81, align 4
  %83 = icmp sgt i32 %82, 2
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load i32, i32* @BTS_READ_ONLY, align 4
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %84, %79
  %91 = load i32*, i32** %11, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 19
  %93 = load i32, i32* %92, align 4
  %94 = icmp sgt i32 %93, 2
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %309

96:                                               ; preds = %90
  %97 = load i32*, i32** %11, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 19
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 2
  br i1 %100, label %101, label %127

101:                                              ; preds = %96
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @BTS_NO_WAL, align 4
  %106 = and i32 %104, %105
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %127

108:                                              ; preds = %101
  store i32 0, i32* %12, align 4
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 13
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @sqlite3PagerOpenWal(i32 %111, i32* %12)
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* @SQLITE_OK, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %108
  br label %309

117:                                              ; preds = %108
  %118 = load i32, i32* %12, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %122 = call i32 @releasePage(%struct.TYPE_11__* %121)
  %123 = load i32, i32* @SQLITE_OK, align 4
  store i32 %123, i32* %2, align 4
  br label %315

124:                                              ; preds = %117
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* @SQLITE_NOTADB, align 4
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %125, %101, %96
  %128 = load i32*, i32** %11, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 21
  %130 = call i64 (i32*, ...) @memcmp(i32* %129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %309

133:                                              ; preds = %127
  %134 = load i32*, i32** %11, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 16
  %136 = load i32, i32* %135, align 4
  %137 = shl i32 %136, 8
  %138 = load i32*, i32** %11, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 17
  %140 = load i32, i32* %139, align 4
  %141 = shl i32 %140, 16
  %142 = or i32 %137, %141
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %9, align 4
  %144 = sub nsw i32 %143, 1
  %145 = load i32, i32* %9, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %155, label %148

148:                                              ; preds = %133
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* @SQLITE_MAX_PAGE_SIZE, align 4
  %151 = icmp sgt i32 %149, %150
  br i1 %151, label %155, label %152

152:                                              ; preds = %148
  %153 = load i32, i32* %9, align 4
  %154 = icmp sle i32 %153, 256
  br i1 %154, label %155, label %156

155:                                              ; preds = %152, %148, %133
  br label %309

156:                                              ; preds = %152
  %157 = load i32, i32* %9, align 4
  %158 = and i32 %157, 7
  %159 = icmp eq i32 %158, 0
  %160 = zext i1 %159 to i32
  %161 = call i32 @assert(i32 %160)
  %162 = load i32, i32* %9, align 4
  %163 = load i32*, i32** %11, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 20
  %165 = load i32, i32* %164, align 4
  %166 = sub nsw i32 %162, %165
  store i32 %166, i32* %10, align 4
  %167 = load i32, i32* %9, align 4
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %167, %170
  br i1 %171, label %172, label %193

172:                                              ; preds = %156
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %174 = call i32 @releasePage(%struct.TYPE_11__* %173)
  %175 = load i32, i32* %10, align 4
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 2
  store i32 %175, i32* %177, align 8
  %178 = load i32, i32* %9, align 4
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 1
  store i32 %178, i32* %180, align 4
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %182 = call i32 @freeTempSpace(%struct.TYPE_12__* %181)
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 13
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 1
  %188 = load i32, i32* %9, align 4
  %189 = load i32, i32* %10, align 4
  %190 = sub nsw i32 %188, %189
  %191 = call i32 @sqlite3PagerSetPagesize(i32 %185, i32* %187, i32 %190)
  store i32 %191, i32* %4, align 4
  %192 = load i32, i32* %4, align 4
  store i32 %192, i32* %2, align 4
  br label %315

193:                                              ; preds = %156
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 12
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @SQLITE_RecoveryMode, align 4
  %200 = and i32 %198, %199
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %193
  %203 = load i32, i32* %6, align 4
  %204 = load i32, i32* %7, align 4
  %205 = icmp sgt i32 %203, %204
  br i1 %205, label %206, label %208

206:                                              ; preds = %202
  %207 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %207, i32* %4, align 4
  br label %309

208:                                              ; preds = %202, %193
  %209 = load i32, i32* %10, align 4
  %210 = icmp slt i32 %209, 480
  br i1 %210, label %211, label %212

211:                                              ; preds = %208
  br label %309

212:                                              ; preds = %208
  %213 = load i32, i32* %9, align 4
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 1
  store i32 %213, i32* %215, align 4
  %216 = load i32, i32* %10, align 4
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 2
  store i32 %216, i32* %218, align 8
  %219 = load i32*, i32** %11, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 52
  %221 = call i32 @get4byte(i32* %220)
  %222 = icmp ne i32 %221, 0
  %223 = zext i1 %222 to i64
  %224 = select i1 %222, i32 1, i32 0
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 3
  store i32 %224, i32* %226, align 4
  %227 = load i32*, i32** %11, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 64
  %229 = call i32 @get4byte(i32* %228)
  %230 = icmp ne i32 %229, 0
  %231 = zext i1 %230 to i64
  %232 = select i1 %230, i32 1, i32 0
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 4
  store i32 %232, i32* %234, align 8
  br label %235

235:                                              ; preds = %212, %66
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = sub nsw i32 %238, 12
  %240 = mul nsw i32 %239, 64
  %241 = sdiv i32 %240, 255
  %242 = sub nsw i32 %241, 23
  %243 = sext i32 %242 to i64
  %244 = inttoptr i64 %243 to i8*
  %245 = ptrtoint i8* %244 to i32
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 5
  store i32 %245, i32* %247, align 4
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = sub nsw i32 %250, 12
  %252 = mul nsw i32 %251, 32
  %253 = sdiv i32 %252, 255
  %254 = sub nsw i32 %253, 23
  %255 = sext i32 %254 to i64
  %256 = inttoptr i64 %255 to i8*
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 11
  store i8* %256, i8** %258, align 8
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = sub nsw i32 %261, 35
  %263 = sext i32 %262 to i64
  %264 = inttoptr i64 %263 to i8*
  %265 = ptrtoint i8* %264 to i64
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 6
  store i64 %265, i64* %267, align 8
  %268 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = sub nsw i32 %270, 12
  %272 = mul nsw i32 %271, 32
  %273 = sdiv i32 %272, 255
  %274 = sub nsw i32 %273, 23
  %275 = sext i32 %274 to i64
  %276 = inttoptr i64 %275 to i8*
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 10
  store i8* %276, i8** %278, align 8
  %279 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 5
  %281 = load i32, i32* %280, align 4
  %282 = icmp sgt i32 %281, 127
  br i1 %282, label %283, label %286

283:                                              ; preds = %235
  %284 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 7
  store i32 127, i32* %285, align 8
  br label %292

286:                                              ; preds = %235
  %287 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 5
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 7
  store i32 %289, i32* %291, align 8
  br label %292

292:                                              ; preds = %286, %283
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 6
  %295 = load i64, i64* %294, align 8
  %296 = add nsw i64 %295, 23
  %297 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %298 = call i64 @MX_CELL_SIZE(%struct.TYPE_12__* %297)
  %299 = icmp sle i64 %296, %298
  %300 = zext i1 %299 to i32
  %301 = call i32 @assert(i32 %300)
  %302 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %303 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 9
  store %struct.TYPE_11__* %302, %struct.TYPE_11__** %304, align 8
  %305 = load i32, i32* %6, align 4
  %306 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %307 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %306, i32 0, i32 8
  store i32 %305, i32* %307, align 4
  %308 = load i32, i32* @SQLITE_OK, align 4
  store i32 %308, i32* %2, align 4
  br label %315

309:                                              ; preds = %211, %206, %155, %132, %116, %95, %78
  %310 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %311 = call i32 @releasePage(%struct.TYPE_11__* %310)
  %312 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 9
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %313, align 8
  %314 = load i32, i32* %4, align 4
  store i32 %314, i32* %2, align 4
  br label %315

315:                                              ; preds = %309, %292, %172, %120, %39, %31
  %316 = load i32, i32* %2, align 4
  ret i32 %316
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @sqlite3PagerSharedLock(i32) #1

declare dso_local i32 @btreeGetPage(%struct.TYPE_12__*, i32, %struct.TYPE_11__**, i32, i32) #1

declare dso_local i32 @get4byte(i32*) #1

declare dso_local i32 @sqlite3PagerPagecount(i32, i32*) #1

declare dso_local i64 @memcmp(i32*, ...) #1

declare dso_local i32 @sqlite3PagerOpenWal(i32, i32*) #1

declare dso_local i32 @releasePage(%struct.TYPE_11__*) #1

declare dso_local i32 @freeTempSpace(%struct.TYPE_12__*) #1

declare dso_local i32 @sqlite3PagerSetPagesize(i32, i32*, i32) #1

declare dso_local i64 @MX_CELL_SIZE(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
