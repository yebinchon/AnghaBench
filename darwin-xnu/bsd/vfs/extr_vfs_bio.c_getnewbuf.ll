; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_getnewbuf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_getnewbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.buf* }
%struct.buf = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.timespec = type { i32, i32 }

@BQUEUES = common dso_local global i32 0, align 4
@BQ_LAUNDRY = common dso_local global i32 0, align 4
@BQ_LOCKED = common dso_local global i32 0, align 4
@BQ_EMPTY = common dso_local global i32 0, align 4
@bufqueues = common dso_local global %struct.TYPE_5__* null, align 8
@nbuf_headers = common dso_local global i64 0, align 8
@max_nbuf_headers = common dso_local global i64 0, align 8
@BQ_AGE = common dso_local global i64 0, align 8
@BQ_LRU = common dso_local global i64 0, align 8
@BQ_META = common dso_local global i64 0, align 8
@buf_mtxp = common dso_local global i32 0, align 4
@buf_hdr_zone = common dso_local global i32 0, align 4
@B_HDRALLOC = common dso_local global i32 0, align 4
@invalhash = common dso_local global i32 0, align 4
@buf_hdr_count = common dso_local global i32 0, align 4
@bufstats = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@needbuffer = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@PDROP = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"getnewbuf\00", align 1
@lru_is_stale = common dso_local global i32 0, align 4
@age_is_stale = common dso_local global i32 0, align 4
@meta_is_stale = common dso_local global i32 0, align 4
@B_LOCKED = common dso_local global i32 0, align 4
@BL_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"getnewbuf: bp @ %p is LOCKED or BUSY! (flags 0x%x)\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buf* (i32, i32, i32*)* @getnewbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buf* @getnewbuf(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.buf*, align 8
  %9 = alloca %struct.buf*, align 8
  %10 = alloca %struct.buf*, align 8
  %11 = alloca %struct.buf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.timespec, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %16, align 4
  br label %23

23:                                               ; preds = %325, %3
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @BQUEUES, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %42, label %28

28:                                               ; preds = %23
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %28
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @BQ_LAUNDRY, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @BQ_LOCKED, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37, %32, %28, %23
  %43 = load i32, i32* @BQ_EMPTY, align 4
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @BQ_EMPTY, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bufqueues, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load %struct.buf*, %struct.buf** %56, align 8
  store %struct.buf* %57, %struct.buf** %8, align 8
  %58 = icmp ne %struct.buf* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %300

60:                                               ; preds = %50, %45
  %61 = load i64, i64* @nbuf_headers, align 8
  %62 = load i64, i64* @max_nbuf_headers, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i64, i64* @nbuf_headers, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* @nbuf_headers, align 8
  br label %115

67:                                               ; preds = %60
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bufqueues, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load %struct.buf*, %struct.buf** %73, align 8
  store %struct.buf* %74, %struct.buf** %8, align 8
  %75 = load %struct.buf*, %struct.buf** %8, align 8
  %76 = icmp ne %struct.buf* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %300

78:                                               ; preds = %67
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bufqueues, align 8
  %80 = load i64, i64* @BQ_AGE, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load %struct.buf*, %struct.buf** %82, align 8
  store %struct.buf* %83, %struct.buf** %10, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bufqueues, align 8
  %85 = load i64, i64* @BQ_LRU, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load %struct.buf*, %struct.buf** %87, align 8
  store %struct.buf* %88, %struct.buf** %9, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bufqueues, align 8
  %90 = load i64, i64* @BQ_META, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load %struct.buf*, %struct.buf** %92, align 8
  store %struct.buf* %93, %struct.buf** %11, align 8
  %94 = load %struct.buf*, %struct.buf** %10, align 8
  %95 = icmp ne %struct.buf* %94, null
  br i1 %95, label %182, label %96

96:                                               ; preds = %78
  %97 = load %struct.buf*, %struct.buf** %9, align 8
  %98 = icmp ne %struct.buf* %97, null
  br i1 %98, label %182, label %99

99:                                               ; preds = %96
  %100 = load %struct.buf*, %struct.buf** %11, align 8
  %101 = icmp ne %struct.buf* %100, null
  br i1 %101, label %182, label %102

102:                                              ; preds = %99
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bufqueues, align 8
  %104 = load i32, i32* @BQ_EMPTY, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load %struct.buf*, %struct.buf** %107, align 8
  store %struct.buf* %108, %struct.buf** %8, align 8
  %109 = load %struct.buf*, %struct.buf** %8, align 8
  %110 = icmp ne %struct.buf* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %102
  %112 = load i32, i32* @BQ_EMPTY, align 4
  %113 = load i32*, i32** %7, align 8
  store i32 %112, i32* %113, align 4
  br label %300

114:                                              ; preds = %102
  br label %115

115:                                              ; preds = %114, %64
  %116 = load i32, i32* @buf_mtxp, align 4
  %117 = call i32 @lck_mtx_unlock(i32 %116)
  %118 = load i32, i32* @buf_hdr_zone, align 4
  %119 = call i64 @zalloc(i32 %118)
  %120 = inttoptr i64 %119 to %struct.buf*
  store %struct.buf* %120, %struct.buf** %8, align 8
  %121 = load %struct.buf*, %struct.buf** %8, align 8
  %122 = icmp ne %struct.buf* %121, null
  br i1 %122, label %123, label %142

123:                                              ; preds = %115
  %124 = load %struct.buf*, %struct.buf** %8, align 8
  %125 = call i32 @bufhdrinit(%struct.buf* %124)
  %126 = load i32, i32* @BQ_EMPTY, align 4
  %127 = load %struct.buf*, %struct.buf** %8, align 8
  %128 = getelementptr inbounds %struct.buf, %struct.buf* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 4
  %129 = call i8* (...) @buf_timestamp()
  %130 = ptrtoint i8* %129 to i32
  %131 = load %struct.buf*, %struct.buf** %8, align 8
  %132 = getelementptr inbounds %struct.buf, %struct.buf* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load %struct.buf*, %struct.buf** %8, align 8
  %134 = call i32 @BLISTNONE(%struct.buf* %133)
  %135 = load %struct.buf*, %struct.buf** %8, align 8
  %136 = getelementptr inbounds %struct.buf, %struct.buf* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @B_HDRALLOC, align 4
  %139 = call i32 @SET(i32 %137, i32 %138)
  %140 = load i32, i32* @BQ_EMPTY, align 4
  %141 = load i32*, i32** %7, align 8
  store i32 %140, i32* %141, align 4
  br label %142

142:                                              ; preds = %123, %115
  %143 = load i32, i32* @buf_mtxp, align 4
  %144 = call i32 @lck_mtx_lock_spin(i32 %143)
  %145 = load %struct.buf*, %struct.buf** %8, align 8
  %146 = icmp ne %struct.buf* %145, null
  br i1 %146, label %147, label %159

147:                                              ; preds = %142
  %148 = load %struct.buf*, %struct.buf** %8, align 8
  %149 = call i32 @binshash(%struct.buf* %148, i32* @invalhash)
  %150 = load %struct.buf*, %struct.buf** %8, align 8
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bufqueues, align 8
  %152 = load i32, i32* @BQ_EMPTY, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i64 %153
  %155 = load i32, i32* @BQ_EMPTY, align 4
  %156 = call i32 @binsheadfree(%struct.buf* %150, %struct.TYPE_5__* %154, i32 %155)
  %157 = load i32, i32* @buf_hdr_count, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* @buf_hdr_count, align 4
  br label %300

159:                                              ; preds = %142
  %160 = load i64, i64* @nbuf_headers, align 8
  %161 = add nsw i64 %160, -1
  store i64 %161, i64* @nbuf_headers, align 8
  %162 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bufstats, i32 0, i32 0), align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bufstats, i32 0, i32 0), align 4
  store i32 1, i32* @needbuffer, align 4
  %164 = load i32, i32* %6, align 4
  %165 = sdiv i32 %164, 1000
  %166 = getelementptr inbounds %struct.timespec, %struct.timespec* %17, i32 0, i32 0
  store i32 %165, i32* %166, align 4
  %167 = load i32, i32* %6, align 4
  %168 = srem i32 %167, 1000
  %169 = load i32, i32* @NSEC_PER_USEC, align 4
  %170 = mul nsw i32 %168, %169
  %171 = mul nsw i32 %170, 1000
  %172 = mul nsw i32 %171, 10
  %173 = getelementptr inbounds %struct.timespec, %struct.timespec* %17, i32 0, i32 1
  store i32 %172, i32* %173, align 4
  %174 = load i32, i32* @buf_mtxp, align 4
  %175 = load i32, i32* %5, align 4
  %176 = load i32, i32* @PDROP, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @PRIBIO, align 4
  %179 = add nsw i32 %178, 1
  %180 = or i32 %177, %179
  %181 = call i32 @msleep(i32* @needbuffer, i32 %174, i32 %180, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.timespec* %17)
  store %struct.buf* null, %struct.buf** %4, align 8
  br label %330

182:                                              ; preds = %99, %96, %78
  store %struct.buf* null, %struct.buf** %8, align 8
  %183 = load i32*, i32** %7, align 8
  store i32 -1, i32* %183, align 4
  %184 = load %struct.buf*, %struct.buf** %10, align 8
  %185 = icmp ne %struct.buf* %184, null
  br i1 %185, label %191, label %186

186:                                              ; preds = %182
  %187 = load %struct.buf*, %struct.buf** %9, align 8
  store %struct.buf* %187, %struct.buf** %8, align 8
  %188 = load i64, i64* @BQ_LRU, align 8
  %189 = trunc i64 %188 to i32
  %190 = load i32*, i32** %7, align 8
  store i32 %189, i32* %190, align 4
  br label %243

191:                                              ; preds = %182
  %192 = load %struct.buf*, %struct.buf** %9, align 8
  %193 = icmp ne %struct.buf* %192, null
  br i1 %193, label %199, label %194

194:                                              ; preds = %191
  %195 = load %struct.buf*, %struct.buf** %10, align 8
  store %struct.buf* %195, %struct.buf** %8, align 8
  %196 = load i64, i64* @BQ_AGE, align 8
  %197 = trunc i64 %196 to i32
  %198 = load i32*, i32** %7, align 8
  store i32 %197, i32* %198, align 4
  br label %242

199:                                              ; preds = %191
  %200 = call i8* (...) @buf_timestamp()
  %201 = ptrtoint i8* %200 to i32
  store i32 %201, i32* %18, align 4
  %202 = load i32, i32* %18, align 4
  %203 = load %struct.buf*, %struct.buf** %10, align 8
  %204 = getelementptr inbounds %struct.buf, %struct.buf* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = sub nsw i32 %202, %205
  store i32 %206, i32* %12, align 4
  %207 = load i32, i32* %18, align 4
  %208 = load %struct.buf*, %struct.buf** %9, align 8
  %209 = getelementptr inbounds %struct.buf, %struct.buf* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = sub nsw i32 %207, %210
  store i32 %211, i32* %13, align 4
  %212 = load i32, i32* %12, align 4
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %199
  %215 = load i32, i32* %13, align 4
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %214, %199
  %218 = load %struct.buf*, %struct.buf** %10, align 8
  store %struct.buf* %218, %struct.buf** %8, align 8
  %219 = load i64, i64* @BQ_AGE, align 8
  %220 = trunc i64 %219 to i32
  %221 = load i32*, i32** %7, align 8
  store i32 %220, i32* %221, align 4
  br label %241

222:                                              ; preds = %214
  %223 = load i32, i32* %13, align 4
  %224 = load i32, i32* @lru_is_stale, align 4
  %225 = icmp sge i32 %223, %224
  br i1 %225, label %226, label %235

226:                                              ; preds = %222
  %227 = load i32, i32* %12, align 4
  %228 = load i32, i32* @age_is_stale, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %230, label %235

230:                                              ; preds = %226
  %231 = load %struct.buf*, %struct.buf** %9, align 8
  store %struct.buf* %231, %struct.buf** %8, align 8
  %232 = load i64, i64* @BQ_LRU, align 8
  %233 = trunc i64 %232 to i32
  %234 = load i32*, i32** %7, align 8
  store i32 %233, i32* %234, align 4
  br label %240

235:                                              ; preds = %226, %222
  %236 = load %struct.buf*, %struct.buf** %10, align 8
  store %struct.buf* %236, %struct.buf** %8, align 8
  %237 = load i64, i64* @BQ_AGE, align 8
  %238 = trunc i64 %237 to i32
  %239 = load i32*, i32** %7, align 8
  store i32 %238, i32* %239, align 4
  br label %240

240:                                              ; preds = %235, %230
  br label %241

241:                                              ; preds = %240, %217
  br label %242

242:                                              ; preds = %241, %194
  br label %243

243:                                              ; preds = %242, %186
  %244 = load %struct.buf*, %struct.buf** %8, align 8
  %245 = icmp ne %struct.buf* %244, null
  br i1 %245, label %251, label %246

246:                                              ; preds = %243
  %247 = load %struct.buf*, %struct.buf** %11, align 8
  store %struct.buf* %247, %struct.buf** %8, align 8
  %248 = load i64, i64* @BQ_META, align 8
  %249 = trunc i64 %248 to i32
  %250 = load i32*, i32** %7, align 8
  store i32 %249, i32* %250, align 4
  br label %299

251:                                              ; preds = %243
  %252 = load %struct.buf*, %struct.buf** %11, align 8
  %253 = icmp ne %struct.buf* %252, null
  br i1 %253, label %254, label %298

254:                                              ; preds = %251
  %255 = call i8* (...) @buf_timestamp()
  %256 = ptrtoint i8* %255 to i32
  store i32 %256, i32* %19, align 4
  %257 = load i32, i32* %19, align 4
  %258 = load %struct.buf*, %struct.buf** %8, align 8
  %259 = getelementptr inbounds %struct.buf, %struct.buf* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = sub nsw i32 %257, %260
  store i32 %261, i32* %14, align 4
  %262 = load i32, i32* %19, align 4
  %263 = load %struct.buf*, %struct.buf** %11, align 8
  %264 = getelementptr inbounds %struct.buf, %struct.buf* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = sub nsw i32 %262, %265
  store i32 %266, i32* %15, align 4
  %267 = load i32, i32* %14, align 4
  %268 = icmp slt i32 %267, 0
  br i1 %268, label %297, label %269

269:                                              ; preds = %254
  %270 = load i32, i32* %15, align 4
  %271 = icmp slt i32 %270, 0
  br i1 %271, label %297, label %272

272:                                              ; preds = %269
  %273 = load i32*, i32** %7, align 8
  %274 = load i32, i32* %273, align 4
  %275 = sext i32 %274 to i64
  %276 = load i64, i64* @BQ_LRU, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %278, label %280

278:                                              ; preds = %272
  %279 = load i32, i32* @lru_is_stale, align 4
  br label %282

280:                                              ; preds = %272
  %281 = load i32, i32* @age_is_stale, align 4
  br label %282

282:                                              ; preds = %280, %278
  %283 = phi i32 [ %279, %278 ], [ %281, %280 ]
  store i32 %283, i32* %20, align 4
  %284 = load i32, i32* %15, align 4
  %285 = load i32, i32* @meta_is_stale, align 4
  %286 = icmp sge i32 %284, %285
  br i1 %286, label %287, label %296

287:                                              ; preds = %282
  %288 = load i32, i32* %14, align 4
  %289 = load i32, i32* %20, align 4
  %290 = icmp slt i32 %288, %289
  br i1 %290, label %291, label %296

291:                                              ; preds = %287
  %292 = load %struct.buf*, %struct.buf** %11, align 8
  store %struct.buf* %292, %struct.buf** %8, align 8
  %293 = load i64, i64* @BQ_META, align 8
  %294 = trunc i64 %293 to i32
  %295 = load i32*, i32** %7, align 8
  store i32 %294, i32* %295, align 4
  br label %296

296:                                              ; preds = %291, %287, %282
  br label %297

297:                                              ; preds = %296, %269, %254
  br label %298

298:                                              ; preds = %297, %251
  br label %299

299:                                              ; preds = %298, %246
  br label %300

300:                                              ; preds = %299, %147, %111, %77, %59
  %301 = load %struct.buf*, %struct.buf** %8, align 8
  %302 = getelementptr inbounds %struct.buf, %struct.buf* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* @B_LOCKED, align 4
  %305 = call i64 @ISSET(i32 %303, i32 %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %314, label %307

307:                                              ; preds = %300
  %308 = load %struct.buf*, %struct.buf** %8, align 8
  %309 = getelementptr inbounds %struct.buf, %struct.buf* %308, i32 0, i32 3
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* @BL_BUSY, align 4
  %312 = call i64 @ISSET(i32 %310, i32 %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %320

314:                                              ; preds = %307, %300
  %315 = load %struct.buf*, %struct.buf** %8, align 8
  %316 = load %struct.buf*, %struct.buf** %8, align 8
  %317 = getelementptr inbounds %struct.buf, %struct.buf* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @panic(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), %struct.buf* %315, i32 %318)
  br label %320

320:                                              ; preds = %314, %307
  %321 = load %struct.buf*, %struct.buf** %8, align 8
  %322 = load i32, i32* @FALSE, align 4
  %323 = call i64 @bcleanbuf(%struct.buf* %321, i32 %322)
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %328

325:                                              ; preds = %320
  %326 = load i32, i32* %16, align 4
  %327 = load i32*, i32** %7, align 8
  store i32 %326, i32* %327, align 4
  br label %23

328:                                              ; preds = %320
  %329 = load %struct.buf*, %struct.buf** %8, align 8
  store %struct.buf* %329, %struct.buf** %4, align 8
  br label %330

330:                                              ; preds = %328, %159
  %331 = load %struct.buf*, %struct.buf** %4, align 8
  ret %struct.buf* %331
}

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i64 @zalloc(i32) #1

declare dso_local i32 @bufhdrinit(%struct.buf*) #1

declare dso_local i8* @buf_timestamp(...) #1

declare dso_local i32 @BLISTNONE(%struct.buf*) #1

declare dso_local i32 @SET(i32, i32) #1

declare dso_local i32 @lck_mtx_lock_spin(i32) #1

declare dso_local i32 @binshash(%struct.buf*, i32*) #1

declare dso_local i32 @binsheadfree(%struct.buf*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @msleep(i32*, i32, i32, i8*, %struct.timespec*) #1

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i32 @panic(i8*, %struct.buf*, i32) #1

declare dso_local i64 @bcleanbuf(%struct.buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
