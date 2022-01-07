; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_buf_getblk.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_buf_getblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, i32, i32 }
%struct.bufhashhdr = type { i32 }
%struct.TYPE_29__ = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i8*, %struct.TYPE_28__*, i32, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.timespec = type { i32, i32 }

@DBG_FSRW = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@BLK_ONLYVALID = common dso_local global i32 0, align 4
@buf_mtxp = common dso_local global i32 0, align 4
@BL_BUSY = common dso_local global i32 0, align 4
@BL_WANTED = common dso_local global i32 0, align 4
@bufstats = common dso_local global %struct.TYPE_25__ zeroinitializer, align 4
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@PDROP = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"buf_getblk\00", align 1
@PCATCH = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"getblk: paging or unknown operation for incore busy buffer - %x\0A\00", align 1
@B_CACHE = common dso_local global i32 0, align 4
@buf_busycount = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"buffer has UPL, but not marked BUSY: %p\00", align 1
@FALSE = common dso_local global i32 0, align 4
@B_DELWRI = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@UPL_WILL_MODIFY = common dso_local global i32 0, align 4
@UPL_PRECIOUS = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_FILE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Failed to create UPL\00", align 1
@B_WASDIRTY = common dso_local global i32 0, align 4
@B_DONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"getblk: ubc_upl_map() failed with (%d)\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"getblk: paging or unknown operation for incore buffer- %d\0A\00", align 1
@BQ_EMPTY = common dso_local global i32 0, align 4
@B_INVAL = common dso_local global i32 0, align 4
@invalhash = common dso_local global %struct.bufhashhdr zeroinitializer, align 4
@B_META = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"bp already has UPL: %p\00", align 1
@VNODE_READ = common dso_local global i32 0, align 4
@VNODE_WRITE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"getblk: VNOP_BLOCKMAP failed\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"getblk: paging or unknown operation - %x\00", align 1
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_29__* @buf_getblk(%struct.TYPE_28__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_29__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.timespec, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.bufhashhdr*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %28 = load i32, i32* @DBG_FSRW, align 4
  %29 = call i32 @FSDBG_CODE(i32 %28, i32 386)
  %30 = load i32, i32* @DBG_FUNC_START, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %13, align 4
  %38 = call i32 (i32, ...) @KERNEL_DEBUG(i32 %31, i64 %35, i32 %36, i32 %37, i32 0, i32 0)
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @BLK_ONLYVALID, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %19, align 4
  %42 = load i32, i32* @BLK_ONLYVALID, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %13, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %13, align 4
  %46 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call %struct.bufhashhdr* @BUFHASH(%struct.TYPE_28__* %46, i32 %47)
  store %struct.bufhashhdr* %48, %struct.bufhashhdr** %22, align 8
  br label %49

49:                                               ; preds = %319, %312, %168, %117, %6
  %50 = load i32, i32* @buf_mtxp, align 4
  %51 = call i32 @lck_mtx_lock_spin(i32 %50)
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.bufhashhdr*, %struct.bufhashhdr** %22, align 8
  %55 = call %struct.TYPE_29__* @incore_locked(%struct.TYPE_28__* %52, i32 %53, %struct.bufhashhdr* %54)
  store %struct.TYPE_29__* %55, %struct.TYPE_29__** %14, align 8
  %56 = icmp ne %struct.TYPE_29__* %55, null
  br i1 %56, label %57, label %291

57:                                               ; preds = %49
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %58, i32 0, i32 15
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @BL_BUSY, align 4
  %62 = call i64 @ISSET(i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %122

64:                                               ; preds = %57
  %65 = load i32, i32* %13, align 4
  switch i32 %65, label %118 [
    i32 129, label %66
    i32 128, label %66
    i32 130, label %66
  ]

66:                                               ; preds = %64, %64, %64
  %67 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %67, i32 0, i32 15
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @BL_WANTED, align 4
  %71 = call i32 @SET(i32 %69, i32 %70)
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @bufstats, i32 0, i32 3), align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @bufstats, i32 0, i32 3), align 4
  %74 = load i32, i32* %12, align 4
  %75 = sdiv i32 %74, 1000
  %76 = getelementptr inbounds %struct.timespec, %struct.timespec* %20, i32 0, i32 0
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* %12, align 4
  %78 = srem i32 %77, 1000
  %79 = mul nsw i32 %78, 10
  %80 = load i32, i32* @NSEC_PER_USEC, align 4
  %81 = mul nsw i32 %79, %80
  %82 = mul nsw i32 %81, 1000
  %83 = getelementptr inbounds %struct.timespec, %struct.timespec* %20, i32 0, i32 1
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* @DBG_FSRW, align 4
  %85 = call i32 @FSDBG_CODE(i32 %84, i32 396)
  %86 = load i32, i32* @DBG_FUNC_NONE, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %13, align 4
  %92 = call i32 (i32, ...) @KERNEL_DEBUG(i32 %87, i64 %89, i32 %90, i32 %91, i32 0, i32 0)
  %93 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %94 = load i32, i32* @buf_mtxp, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @PDROP, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @PRIBIO, align 4
  %99 = add nsw i32 %98, 1
  %100 = or i32 %97, %99
  %101 = call i32 @msleep(%struct.TYPE_29__* %93, i32 %94, i32 %100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.timespec* %20)
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %15, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %66
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @PCATCH, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %104
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* @EWOULDBLOCK, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %109
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113, %104
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %7, align 8
  br label %510

117:                                              ; preds = %113, %109, %66
  br label %49

118:                                              ; preds = %64
  %119 = load i32, i32* %13, align 4
  %120 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %118
  br label %290

122:                                              ; preds = %57
  %123 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %123, i32 0, i32 15
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @BL_BUSY, align 4
  %127 = call i32 @SET(i32 %125, i32 %126)
  %128 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %128, i32 0, i32 8
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @B_CACHE, align 4
  %132 = call i32 @SET(i32 %130, i32 %131)
  %133 = load i32, i32* @buf_busycount, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* @buf_busycount, align 4
  %135 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %136 = call i32 @bremfree_locked(%struct.TYPE_29__* %135)
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @bufstats, i32 0, i32 2), align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @bufstats, i32 0, i32 2), align 4
  %139 = load i32, i32* @buf_mtxp, align 4
  %140 = call i32 @lck_mtx_unlock(i32 %139)
  %141 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %141, i32 0, i32 12
  %143 = load i8*, i8** %142, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %122
  %146 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %147 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_29__* %146)
  br label %148

148:                                              ; preds = %145, %122
  %149 = load i32, i32* @FALSE, align 4
  store i32 %149, i32* %23, align 4
  %150 = load i32, i32* %19, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %189, label %152

152:                                              ; preds = %148
  %153 = load i32, i32* %13, align 4
  %154 = icmp eq i32 %153, 130
  br i1 %154, label %155, label %178

155:                                              ; preds = %152
  %156 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %157 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %10, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %178

161:                                              ; preds = %155
  %162 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %162, i32 0, i32 8
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @B_DELWRI, align 4
  %166 = call i64 @ISSET(i32 %164, i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %161
  %169 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %170 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %169, i32 0, i32 8
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @B_CACHE, align 4
  %173 = call i32 @CLR(i32 %171, i32 %172)
  %174 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %175 = call i32 @buf_bwrite(%struct.TYPE_29__* %174)
  br label %49

176:                                              ; preds = %161
  %177 = load i32, i32* @TRUE, align 4
  store i32 %177, i32* %23, align 4
  br label %178

178:                                              ; preds = %176, %155, %152
  %179 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %180 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* %10, align 4
  %183 = icmp ne i32 %181, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %178
  %185 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %186 = load i32, i32* %10, align 4
  %187 = call i32 @allocbuf(%struct.TYPE_29__* %185, i32 %186)
  br label %188

188:                                              ; preds = %184, %178
  br label %189

189:                                              ; preds = %188, %148
  store i32 0, i32* %21, align 4
  %190 = load i32, i32* %13, align 4
  switch i32 %190, label %277 [
    i32 128, label %191
    i32 129, label %195
    i32 130, label %276
  ]

191:                                              ; preds = %189
  %192 = load i32, i32* @UPL_WILL_MODIFY, align 4
  %193 = load i32, i32* %21, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %21, align 4
  br label %195

195:                                              ; preds = %189, %191
  %196 = load i32, i32* @UPL_PRECIOUS, align 4
  %197 = load i32, i32* %21, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %21, align 4
  %199 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %200 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %199, i32 0, i32 13
  %201 = load %struct.TYPE_28__*, %struct.TYPE_28__** %200, align 8
  %202 = call i64 @UBCINFOEXISTS(%struct.TYPE_28__* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %275

204:                                              ; preds = %195
  %205 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %206 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %275

209:                                              ; preds = %204
  %210 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %211 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %212 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %213 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @ubc_blktooff(%struct.TYPE_28__* %211, i32 %214)
  %216 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %217 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* %21, align 4
  %220 = load i32, i32* @VM_KERN_MEMORY_FILE, align 4
  %221 = call i32 @ubc_create_upl_kernel(%struct.TYPE_28__* %210, i32 %215, i32 %218, i8** %16, i32** %17, i32 %219, i32 %220)
  store i32 %221, i32* %18, align 4
  %222 = load i32, i32* %18, align 4
  %223 = load i32, i32* @KERN_SUCCESS, align 4
  %224 = icmp ne i32 %222, %223
  br i1 %224, label %225, label %227

225:                                              ; preds = %209
  %226 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %227

227:                                              ; preds = %225, %209
  %228 = load i8*, i8** %16, align 8
  %229 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %230 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %229, i32 0, i32 12
  store i8* %228, i8** %230, align 8
  %231 = load i32*, i32** %17, align 8
  %232 = call i32 @upl_valid_page(i32* %231, i32 0)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %251

234:                                              ; preds = %227
  %235 = load i32*, i32** %17, align 8
  %236 = call i32 @upl_dirty_page(i32* %235, i32 0)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %234
  %239 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %240 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %239, i32 0, i32 8
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @B_WASDIRTY, align 4
  %243 = call i32 @SET(i32 %241, i32 %242)
  br label %250

244:                                              ; preds = %234
  %245 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %246 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %245, i32 0, i32 8
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @B_WASDIRTY, align 4
  %249 = call i32 @CLR(i32 %247, i32 %248)
  br label %250

250:                                              ; preds = %244, %238
  br label %263

251:                                              ; preds = %227
  %252 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %253 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %252, i32 0, i32 8
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @B_DONE, align 4
  %256 = load i32, i32* @B_CACHE, align 4
  %257 = or i32 %255, %256
  %258 = load i32, i32* @B_WASDIRTY, align 4
  %259 = or i32 %257, %258
  %260 = load i32, i32* @B_DELWRI, align 4
  %261 = or i32 %259, %260
  %262 = call i32 @CLR(i32 %254, i32 %261)
  br label %263

263:                                              ; preds = %251, %250
  %264 = load i8*, i8** %16, align 8
  %265 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %266 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %265, i32 0, i32 9
  %267 = call i32 @ubc_upl_map(i8* %264, i32* %266)
  store i32 %267, i32* %18, align 4
  %268 = load i32, i32* %18, align 4
  %269 = load i32, i32* @KERN_SUCCESS, align 4
  %270 = icmp ne i32 %268, %269
  br i1 %270, label %271, label %274

271:                                              ; preds = %263
  %272 = load i32, i32* %18, align 4
  %273 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %272)
  br label %274

274:                                              ; preds = %271, %263
  br label %275

275:                                              ; preds = %274, %204, %195
  br label %280

276:                                              ; preds = %189
  br label %280

277:                                              ; preds = %189
  %278 = load i32, i32* %13, align 4
  %279 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i32 %278)
  br label %280

280:                                              ; preds = %277, %276, %275
  %281 = load i32, i32* %23, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %289

283:                                              ; preds = %280
  %284 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %285 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %284, i32 0, i32 8
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @B_DONE, align 4
  %288 = call i32 @CLR(i32 %286, i32 %287)
  br label %289

289:                                              ; preds = %283, %280
  br label %290

290:                                              ; preds = %289, %121
  br label %496

291:                                              ; preds = %49
  %292 = load i32, i32* @BQ_EMPTY, align 4
  store i32 %292, i32* %24, align 4
  %293 = load i32, i32* %19, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %298

295:                                              ; preds = %291
  %296 = load i32, i32* @buf_mtxp, align 4
  %297 = call i32 @lck_mtx_unlock(i32 %296)
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %7, align 8
  br label %510

298:                                              ; preds = %291
  %299 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %300 = call i64 @vnode_isreg(%struct.TYPE_28__* %299)
  %301 = icmp eq i64 %300, 0
  br i1 %301, label %306, label %302

302:                                              ; preds = %298
  %303 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %304 = call i64 @UBCINFOEXISTS(%struct.TYPE_28__* %303)
  %305 = icmp eq i64 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %302, %298
  store i32 130, i32* %13, align 4
  br label %307

307:                                              ; preds = %306, %302
  %308 = load i32, i32* %11, align 4
  %309 = load i32, i32* %12, align 4
  %310 = call %struct.TYPE_29__* @getnewbuf(i32 %308, i32 %309, i32* %24)
  store %struct.TYPE_29__* %310, %struct.TYPE_29__** %14, align 8
  %311 = icmp eq %struct.TYPE_29__* %310, null
  br i1 %311, label %312, label %313

312:                                              ; preds = %307
  br label %49

313:                                              ; preds = %307
  %314 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %315 = load i32, i32* %9, align 4
  %316 = load %struct.bufhashhdr*, %struct.bufhashhdr** %22, align 8
  %317 = call %struct.TYPE_29__* @incore_locked(%struct.TYPE_28__* %314, i32 %315, %struct.bufhashhdr* %316)
  %318 = icmp ne %struct.TYPE_29__* %317, null
  br i1 %318, label %319, label %331

319:                                              ; preds = %313
  %320 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %321 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %320, i32 0, i32 8
  %322 = load i32, i32* %321, align 8
  %323 = load i32, i32* @B_INVAL, align 4
  %324 = call i32 @SET(i32 %322, i32 %323)
  %325 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %326 = call i32 @binshash(%struct.TYPE_29__* %325, %struct.bufhashhdr* @invalhash)
  %327 = load i32, i32* @buf_mtxp, align 4
  %328 = call i32 @lck_mtx_unlock(i32 %327)
  %329 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %330 = call i32 @buf_brelse(%struct.TYPE_29__* %329)
  br label %49

331:                                              ; preds = %313
  %332 = load i32, i32* %13, align 4
  %333 = icmp eq i32 %332, 130
  br i1 %333, label %334, label %340

334:                                              ; preds = %331
  %335 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %336 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %335, i32 0, i32 8
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* @B_META, align 4
  %339 = call i32 @SET(i32 %337, i32 %338)
  br label %340

340:                                              ; preds = %334, %331
  %341 = load i32, i32* %9, align 4
  %342 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %343 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %342, i32 0, i32 3
  store i32 %341, i32* %343, align 4
  %344 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %345 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %344, i32 0, i32 4
  store i32 %341, i32* %345, align 8
  %346 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %347 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %348 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %347, i32 0, i32 13
  store %struct.TYPE_28__* %346, %struct.TYPE_28__** %348, align 8
  %349 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %350 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %351 = load i32, i32* %9, align 4
  %352 = call %struct.bufhashhdr* @BUFHASH(%struct.TYPE_28__* %350, i32 %351)
  %353 = call i32 @binshash(%struct.TYPE_29__* %349, %struct.bufhashhdr* %352)
  %354 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %355 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %356 = call i32 @bgetvp_locked(%struct.TYPE_28__* %354, %struct.TYPE_29__* %355)
  %357 = load i32, i32* @buf_mtxp, align 4
  %358 = call i32 @lck_mtx_unlock(i32 %357)
  %359 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %360 = load i32, i32* %10, align 4
  %361 = call i32 @allocbuf(%struct.TYPE_29__* %359, i32 %360)
  store i32 0, i32* %21, align 4
  %362 = load i32, i32* %13, align 4
  switch i32 %362, label %492 [
    i32 130, label %363
    i32 128, label %365
    i32 129, label %369
  ]

363:                                              ; preds = %340
  %364 = call i32 @OSAddAtomicLong(i32 1, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @bufstats, i32 0, i32 0))
  br label %495

365:                                              ; preds = %340
  %366 = load i32, i32* @UPL_WILL_MODIFY, align 4
  %367 = load i32, i32* %21, align 4
  %368 = or i32 %367, %366
  store i32 %368, i32* %21, align 4
  br label %369

369:                                              ; preds = %340, %365
  %370 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %371 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %370, i32 0, i32 12
  %372 = load i8*, i8** %371, align 8
  %373 = icmp ne i8* %372, null
  br i1 %373, label %374, label %377

374:                                              ; preds = %369
  %375 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %376 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_29__* %375)
  br label %377

377:                                              ; preds = %374, %369
  %378 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %379 = load i32, i32* %9, align 4
  %380 = call i32 @ubc_blktooff(%struct.TYPE_28__* %378, i32 %379)
  store i32 %380, i32* %25, align 4
  %381 = load i32, i32* @UPL_PRECIOUS, align 4
  %382 = load i32, i32* %21, align 4
  %383 = or i32 %382, %381
  store i32 %383, i32* %21, align 4
  %384 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %385 = load i32, i32* %25, align 4
  %386 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %387 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %386, i32 0, i32 2
  %388 = load i32, i32* %387, align 8
  %389 = load i32, i32* %21, align 4
  %390 = load i32, i32* @VM_KERN_MEMORY_FILE, align 4
  %391 = call i32 @ubc_create_upl_kernel(%struct.TYPE_28__* %384, i32 %385, i32 %388, i8** %16, i32** %17, i32 %389, i32 %390)
  store i32 %391, i32* %18, align 4
  %392 = load i32, i32* %18, align 4
  %393 = load i32, i32* @KERN_SUCCESS, align 4
  %394 = icmp ne i32 %392, %393
  br i1 %394, label %395, label %397

395:                                              ; preds = %377
  %396 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %397

397:                                              ; preds = %395, %377
  %398 = load i8*, i8** %16, align 8
  %399 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %400 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %399, i32 0, i32 12
  store i8* %398, i8** %400, align 8
  %401 = load i32*, i32** %17, align 8
  %402 = call i32 @upl_valid_page(i32* %401, i32 0)
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %478

404:                                              ; preds = %397
  %405 = load i32, i32* %13, align 4
  %406 = icmp eq i32 %405, 129
  br i1 %406, label %407, label %409

407:                                              ; preds = %404
  %408 = load i32, i32* @VNODE_READ, align 4
  store i32 %408, i32* %27, align 4
  br label %411

409:                                              ; preds = %404
  %410 = load i32, i32* @VNODE_WRITE, align 4
  store i32 %410, i32* %27, align 4
  br label %411

411:                                              ; preds = %409, %407
  %412 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %413 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %412, i32 0, i32 8
  %414 = load i32, i32* %413, align 8
  %415 = load i32, i32* @B_CACHE, align 4
  %416 = load i32, i32* @B_DONE, align 4
  %417 = or i32 %415, %416
  %418 = call i32 @SET(i32 %414, i32 %417)
  %419 = call i32 @OSAddAtomicLong(i32 1, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @bufstats, i32 0, i32 1))
  %420 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %421 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %420, i32 0, i32 11
  store i32 0, i32* %421, align 4
  %422 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %423 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %422, i32 0, i32 10
  store i32 0, i32* %423, align 8
  %424 = load i32*, i32** %17, align 8
  %425 = call i32 @upl_dirty_page(i32* %424, i32 0)
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %443

427:                                              ; preds = %411
  %428 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %429 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %428, i32 0, i32 8
  %430 = load i32, i32* %429, align 8
  %431 = load i32, i32* @B_WASDIRTY, align 4
  %432 = call i32 @SET(i32 %430, i32 %431)
  %433 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %434 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %433, i32 0, i32 1
  %435 = load i32, i32* %434, align 4
  %436 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %437 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %436, i32 0, i32 5
  store i32 %435, i32* %437, align 4
  %438 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %439 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %438, i32 0, i32 1
  %440 = load i32, i32* %439, align 4
  %441 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %442 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %441, i32 0, i32 6
  store i32 %440, i32* %442, align 8
  br label %451

443:                                              ; preds = %411
  %444 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %445 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %444, i32 0, i32 1
  %446 = load i32, i32* %445, align 4
  %447 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %448 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %447, i32 0, i32 5
  store i32 %446, i32* %448, align 4
  %449 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %450 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %449, i32 0, i32 6
  store i32 0, i32* %450, align 8
  br label %451

451:                                              ; preds = %443, %427
  %452 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %453 = load i32, i32* %25, align 4
  %454 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %455 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %454, i32 0, i32 1
  %456 = load i32, i32* %455, align 4
  %457 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %458 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %457, i32 0, i32 4
  %459 = load i32, i32* %27, align 4
  %460 = call i32 @VNOP_BLOCKMAP(%struct.TYPE_28__* %452, i32 %453, i32 %456, i32* %458, i64* %26, i32* null, i32 %459, i32* null)
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %464

462:                                              ; preds = %451
  %463 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %464

464:                                              ; preds = %462, %451
  %465 = load i64, i64* %26, align 8
  %466 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %467 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %466, i32 0, i32 1
  %468 = load i32, i32* %467, align 4
  %469 = sext i32 %468 to i64
  %470 = icmp slt i64 %465, %469
  br i1 %470, label %471, label %477

471:                                              ; preds = %464
  %472 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %473 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %472, i32 0, i32 3
  %474 = load i32, i32* %473, align 4
  %475 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %476 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %475, i32 0, i32 4
  store i32 %474, i32* %476, align 8
  br label %477

477:                                              ; preds = %471, %464
  br label %480

478:                                              ; preds = %397
  %479 = call i32 @OSAddAtomicLong(i32 1, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @bufstats, i32 0, i32 0))
  br label %480

480:                                              ; preds = %478, %477
  %481 = load i8*, i8** %16, align 8
  %482 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %483 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %482, i32 0, i32 9
  %484 = call i32 @ubc_upl_map(i8* %481, i32* %483)
  store i32 %484, i32* %18, align 4
  %485 = load i32, i32* %18, align 4
  %486 = load i32, i32* @KERN_SUCCESS, align 4
  %487 = icmp ne i32 %485, %486
  br i1 %487, label %488, label %491

488:                                              ; preds = %480
  %489 = load i32, i32* %18, align 4
  %490 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %489)
  br label %491

491:                                              ; preds = %488, %480
  br label %495

492:                                              ; preds = %340
  %493 = load i32, i32* %13, align 4
  %494 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %493)
  br label %495

495:                                              ; preds = %492, %491, %363
  br label %496

496:                                              ; preds = %495, %290
  %497 = load i32, i32* @DBG_FSRW, align 4
  %498 = call i32 @FSDBG_CODE(i32 %497, i32 386)
  %499 = load i32, i32* @DBG_FUNC_END, align 4
  %500 = or i32 %498, %499
  %501 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %502 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %503 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %502, i32 0, i32 9
  %504 = load i32, i32* %503, align 4
  %505 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %506 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %505, i32 0, i32 8
  %507 = load i32, i32* %506, align 8
  %508 = call i32 (i32, ...) @KERNEL_DEBUG(i32 %500, %struct.TYPE_29__* %501, i32 %504, i32 %507, i32 3, i32 0)
  %509 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  store %struct.TYPE_29__* %509, %struct.TYPE_29__** %7, align 8
  br label %510

510:                                              ; preds = %496, %295, %116
  %511 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  ret %struct.TYPE_29__* %511
}

declare dso_local i32 @KERNEL_DEBUG(i32, ...) #1

declare dso_local i32 @FSDBG_CODE(i32, i32) #1

declare dso_local %struct.bufhashhdr* @BUFHASH(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @lck_mtx_lock_spin(i32) #1

declare dso_local %struct.TYPE_29__* @incore_locked(%struct.TYPE_28__*, i32, %struct.bufhashhdr*) #1

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i32 @SET(i32, i32) #1

declare dso_local i32 @msleep(%struct.TYPE_29__*, i32, i32, i8*, %struct.timespec*) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @bremfree_locked(%struct.TYPE_29__*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @CLR(i32, i32) #1

declare dso_local i32 @buf_bwrite(%struct.TYPE_29__*) #1

declare dso_local i32 @allocbuf(%struct.TYPE_29__*, i32) #1

declare dso_local i64 @UBCINFOEXISTS(%struct.TYPE_28__*) #1

declare dso_local i32 @ubc_create_upl_kernel(%struct.TYPE_28__*, i32, i32, i8**, i32**, i32, i32) #1

declare dso_local i32 @ubc_blktooff(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @upl_valid_page(i32*, i32) #1

declare dso_local i32 @upl_dirty_page(i32*, i32) #1

declare dso_local i32 @ubc_upl_map(i8*, i32*) #1

declare dso_local i64 @vnode_isreg(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_29__* @getnewbuf(i32, i32, i32*) #1

declare dso_local i32 @binshash(%struct.TYPE_29__*, %struct.bufhashhdr*) #1

declare dso_local i32 @buf_brelse(%struct.TYPE_29__*) #1

declare dso_local i32 @bgetvp_locked(%struct.TYPE_28__*, %struct.TYPE_29__*) #1

declare dso_local i32 @OSAddAtomicLong(i32, i32*) #1

declare dso_local i32 @VNOP_BLOCKMAP(%struct.TYPE_28__*, i32, i32, i32*, i64*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
