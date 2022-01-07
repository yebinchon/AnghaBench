; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_cluster_iodone.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_cluster_iodone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_19__*, %struct.TYPE_19__*, i32, i64, %struct.TYPE_19__*, i32, i64 }
%struct.clios = type { i32, i32, i64, i32 }

@FALSE = common dso_local global i64 0, align 8
@DBG_FSRW = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@B_EOT = common dso_local global i32 0, align 4
@cl_transaction_mtxp = common dso_local global i32* null, align 8
@B_TDONE = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@CLUSTER_IO_WAITING = common dso_local global %struct.TYPE_19__* null, align 8
@TRUE = common dso_local global i64 0, align 8
@B_ERROR = common dso_local global i32 0, align 4
@B_COMMIT_UPL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@UPL_COMMIT_FREE_ON_EMPTY = common dso_local global i32 0, align 4
@B_PHYS = common dso_local global i32 0, align 4
@B_READ = common dso_local global i32 0, align 4
@UPL_COMMIT_SET_DIRTY = common dso_local global i32 0, align 4
@B_AGE = common dso_local global i32 0, align 4
@UPL_COMMIT_INACTIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i8*)* @cluster_iodone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cluster_iodone(%struct.TYPE_19__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_19__*, align 8
  %17 = alloca %struct.TYPE_19__*, align 8
  %18 = alloca %struct.TYPE_19__*, align 8
  %19 = alloca %struct.TYPE_19__*, align 8
  %20 = alloca %struct.TYPE_19__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.clios*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32 (%struct.TYPE_19__*, i8*)*, align 8
  %25 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %26 = load i64, i64* @FALSE, align 8
  store i64 %26, i64* %23, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 14
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %30, %struct.TYPE_19__** %18, align 8
  %31 = call i32 @__IGNORE_WCASTALIGN(%struct.TYPE_19__* %30)
  %32 = load i32, i32* @DBG_FSRW, align 4
  %33 = call i32 @FSDBG_CODE(i32 %32, i32 20)
  %34 = load i32, i32* @DBG_FUNC_START, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i32, %struct.TYPE_19__*, ...) @KERNEL_DEBUG(i32 %35, %struct.TYPE_19__* %36, i32 %39, i32 %42, i32 %45, i32 0)
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 9
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %48, align 8
  %50 = icmp ne %struct.TYPE_19__* %49, null
  br i1 %50, label %58, label %51

51:                                               ; preds = %2
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @B_EOT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %145, label %58

58:                                               ; preds = %51, %2
  %59 = load i32*, i32** @cl_transaction_mtxp, align 8
  %60 = call i32 @lck_mtx_lock_spin(i32* %59)
  %61 = load i32, i32* @B_TDONE, align 4
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  store %struct.TYPE_19__* %66, %struct.TYPE_19__** %17, align 8
  br label %67

67:                                               ; preds = %127, %58
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %69 = icmp ne %struct.TYPE_19__* %68, null
  br i1 %69, label %70, label %131

70:                                               ; preds = %67
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @B_TDONE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %93, label %77

77:                                               ; preds = %70
  %78 = load i32, i32* @DBG_FSRW, align 4
  %79 = call i32 @FSDBG_CODE(i32 %78, i32 20)
  %80 = load i32, i32* @DBG_FUNC_END, align 4
  %81 = or i32 %79, %80
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i32, %struct.TYPE_19__*, ...) @KERNEL_DEBUG(i32 %81, %struct.TYPE_19__* %82, %struct.TYPE_19__* %83, i32 %86, i32 %89, i32 0)
  %91 = load i32*, i32** @cl_transaction_mtxp, align 8
  %92 = call i32 @lck_mtx_unlock(i32* %91)
  store i32 0, i32* %3, align 4
  br label %431

93:                                               ; preds = %70
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 9
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %95, align 8
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** @CLUSTER_IO_WAITING, align 8
  %98 = icmp eq %struct.TYPE_19__* %96, %97
  br i1 %98, label %99, label %117

99:                                               ; preds = %93
  %100 = load i32, i32* @DBG_FSRW, align 4
  %101 = call i32 @FSDBG_CODE(i32 %100, i32 20)
  %102 = load i32, i32* @DBG_FUNC_END, align 4
  %103 = or i32 %101, %102
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 (i32, %struct.TYPE_19__*, ...) @KERNEL_DEBUG(i32 %103, %struct.TYPE_19__* %104, %struct.TYPE_19__* %105, i32 %108, i32 %111, i32 0)
  %113 = load i32*, i32** @cl_transaction_mtxp, align 8
  %114 = call i32 @lck_mtx_unlock(i32* %113)
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %116 = call i32 @wakeup(%struct.TYPE_19__* %115)
  store i32 0, i32* %3, align 4
  br label %431

117:                                              ; preds = %93
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @B_EOT, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %117
  %125 = load i64, i64* @TRUE, align 8
  store i64 %125, i64* %23, align 8
  br label %126

126:                                              ; preds = %124, %117
  br label %127

127:                                              ; preds = %126
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 9
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %129, align 8
  store %struct.TYPE_19__* %130, %struct.TYPE_19__** %17, align 8
  br label %67

131:                                              ; preds = %67
  %132 = load i32*, i32** @cl_transaction_mtxp, align 8
  %133 = call i32 @lck_mtx_unlock(i32* %132)
  %134 = load i64, i64* %23, align 8
  %135 = load i64, i64* @FALSE, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %131
  %138 = load i32, i32* @DBG_FSRW, align 4
  %139 = call i32 @FSDBG_CODE(i32 %138, i32 20)
  %140 = load i32, i32* @DBG_FUNC_END, align 4
  %141 = or i32 %139, %140
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %143 = call i32 (i32, %struct.TYPE_19__*, ...) @KERNEL_DEBUG(i32 %141, %struct.TYPE_19__* %142, i32 0, i32 0, i32 0, i32 0)
  store i32 0, i32* %3, align 4
  br label %431

144:                                              ; preds = %131
  br label %145

145:                                              ; preds = %144, %51
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  store %struct.TYPE_19__* %146, %struct.TYPE_19__** %17, align 8
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 13
  %149 = load i32, i32* %148, align 8
  store i32 %149, i32* %21, align 4
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %10, align 4
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 8
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %154, align 8
  store %struct.TYPE_19__* %155, %struct.TYPE_19__** %16, align 8
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  store i32 %158, i32* %6, align 4
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 12
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %160, align 8
  store %struct.TYPE_19__* %161, %struct.TYPE_19__** %20, align 8
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  store i32 %164, i32* %11, align 4
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 11
  %167 = load i64, i64* %166, align 8
  %168 = inttoptr i64 %167 to %struct.clios*
  store %struct.clios* %168, %struct.clios** %22, align 8
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %170 = icmp ne %struct.TYPE_19__* %169, null
  br i1 %170, label %171, label %177

171:                                              ; preds = %145
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 10
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 10
  store i32 %174, i32* %176, align 8
  br label %177

177:                                              ; preds = %171, %145
  br label %178

178:                                              ; preds = %228, %177
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %180 = icmp ne %struct.TYPE_19__* %179, null
  br i1 %180, label %181, label %230

181:                                              ; preds = %178
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @B_ERROR, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %181
  %189 = load i32, i32* %7, align 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %188
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 4
  store i32 %194, i32* %7, align 4
  br label %195

195:                                              ; preds = %191, %188, %181
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 6
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* %9, align 4
  %200 = add nsw i32 %199, %198
  store i32 %200, i32* %9, align 4
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %8, align 4
  %205 = add nsw i32 %204, %203
  store i32 %205, i32* %8, align 4
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i32 0, i32 9
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %207, align 8
  store %struct.TYPE_19__* %208, %struct.TYPE_19__** %19, align 8
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %210 = icmp eq %struct.TYPE_19__* %209, null
  br i1 %210, label %211, label %221

211:                                              ; preds = %195
  %212 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %213 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = add nsw i32 %214, %217
  %219 = load i32, i32* %10, align 4
  %220 = sub nsw i32 %218, %219
  store i32 %220, i32* %15, align 4
  br label %221

221:                                              ; preds = %211, %195
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %223 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %224 = icmp ne %struct.TYPE_19__* %222, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %221
  %226 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %227 = call i32 @free_io_buf(%struct.TYPE_19__* %226)
  br label %228

228:                                              ; preds = %225, %221
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  store %struct.TYPE_19__* %229, %struct.TYPE_19__** %17, align 8
  br label %178

230:                                              ; preds = %178
  %231 = load i32, i32* %6, align 4
  %232 = load i32, i32* @B_COMMIT_UPL, align 4
  %233 = call i64 @ISSET(i32 %231, i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %243

235:                                              ; preds = %230
  %236 = load %struct.clios*, %struct.clios** %22, align 8
  %237 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %238 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %237, i32 0, i32 8
  %239 = load %struct.TYPE_19__*, %struct.TYPE_19__** %238, align 8
  %240 = load i32, i32* %10, align 4
  %241 = load i32, i32* %15, align 4
  %242 = call i32 @cluster_handle_associated_upl(%struct.clios* %236, %struct.TYPE_19__* %239, i32 %240, i32 %241)
  br label %243

243:                                              ; preds = %235, %230
  %244 = load i32, i32* %7, align 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %251

246:                                              ; preds = %243
  %247 = load i32, i32* %9, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %246
  %250 = load i32, i32* @EIO, align 4
  store i32 %250, i32* %7, align 4
  br label %251

251:                                              ; preds = %249, %246, %243
  %252 = load i32, i32* %7, align 4
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %270

254:                                              ; preds = %251
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 7
  %257 = load i64, i64* %256, align 8
  %258 = inttoptr i64 %257 to i32 (%struct.TYPE_19__*, i8*)*
  store i32 (%struct.TYPE_19__*, i8*)* %258, i32 (%struct.TYPE_19__*, i8*)** %24, align 8
  %259 = load i32 (%struct.TYPE_19__*, i8*)*, i32 (%struct.TYPE_19__*, i8*)** %24, align 8
  %260 = icmp ne i32 (%struct.TYPE_19__*, i8*)* %259, null
  br i1 %260, label %261, label %269

261:                                              ; preds = %254
  %262 = load i32, i32* %15, align 4
  %263 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %264 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %263, i32 0, i32 1
  store i32 %262, i32* %264, align 4
  %265 = load i32 (%struct.TYPE_19__*, i8*)*, i32 (%struct.TYPE_19__*, i8*)** %24, align 8
  %266 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %267 = load i8*, i8** %5, align 8
  %268 = call i32 %265(%struct.TYPE_19__* %266, i8* %267)
  store i32 %268, i32* %7, align 4
  br label %269

269:                                              ; preds = %261, %254
  br label %270

270:                                              ; preds = %269, %251
  %271 = load i32, i32* %11, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %283

273:                                              ; preds = %270
  %274 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %275 = load i32, i32* %11, align 4
  %276 = load i32, i32* @PAGE_SIZE, align 4
  %277 = load i32, i32* %11, align 4
  %278 = load i32, i32* @PAGE_MASK, align 4
  %279 = and i32 %277, %278
  %280 = sub nsw i32 %276, %279
  %281 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %282 = call i32 @cluster_zero(%struct.TYPE_19__* %274, i32 %275, i32 %280, %struct.TYPE_19__* %281)
  br label %283

283:                                              ; preds = %273, %270
  %284 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %285 = call i32 @free_io_buf(%struct.TYPE_19__* %284)
  %286 = load %struct.clios*, %struct.clios** %22, align 8
  %287 = icmp ne %struct.clios* %286, null
  br i1 %287, label %288, label %328

288:                                              ; preds = %283
  store i32 0, i32* %25, align 4
  %289 = load %struct.clios*, %struct.clios** %22, align 8
  %290 = getelementptr inbounds %struct.clios, %struct.clios* %289, i32 0, i32 3
  %291 = call i32 @lck_mtx_lock_spin(i32* %290)
  %292 = load i32, i32* %7, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %303

294:                                              ; preds = %288
  %295 = load %struct.clios*, %struct.clios** %22, align 8
  %296 = getelementptr inbounds %struct.clios, %struct.clios* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %303

299:                                              ; preds = %294
  %300 = load i32, i32* %7, align 4
  %301 = load %struct.clios*, %struct.clios** %22, align 8
  %302 = getelementptr inbounds %struct.clios, %struct.clios* %301, i32 0, i32 0
  store i32 %300, i32* %302, align 8
  br label %303

303:                                              ; preds = %299, %294, %288
  %304 = load i32, i32* %8, align 4
  %305 = load %struct.clios*, %struct.clios** %22, align 8
  %306 = getelementptr inbounds %struct.clios, %struct.clios* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = add nsw i32 %307, %304
  store i32 %308, i32* %306, align 4
  %309 = load %struct.clios*, %struct.clios** %22, align 8
  %310 = getelementptr inbounds %struct.clios, %struct.clios* %309, i32 0, i32 2
  %311 = load i64, i64* %310, align 8
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %316

313:                                              ; preds = %303
  %314 = load %struct.clios*, %struct.clios** %22, align 8
  %315 = getelementptr inbounds %struct.clios, %struct.clios* %314, i32 0, i32 2
  store i64 0, i64* %315, align 8
  store i32 1, i32* %25, align 4
  br label %316

316:                                              ; preds = %313, %303
  %317 = load %struct.clios*, %struct.clios** %22, align 8
  %318 = getelementptr inbounds %struct.clios, %struct.clios* %317, i32 0, i32 3
  %319 = call i32 @lck_mtx_unlock(i32* %318)
  %320 = load i32, i32* %25, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %327

322:                                              ; preds = %316
  %323 = load %struct.clios*, %struct.clios** %22, align 8
  %324 = getelementptr inbounds %struct.clios, %struct.clios* %323, i32 0, i32 2
  %325 = bitcast i64* %324 to %struct.TYPE_19__*
  %326 = call i32 @wakeup(%struct.TYPE_19__* %325)
  br label %327

327:                                              ; preds = %322, %316
  br label %328

328:                                              ; preds = %327, %283
  %329 = load i32, i32* %6, align 4
  %330 = load i32, i32* @B_COMMIT_UPL, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %394

333:                                              ; preds = %328
  %334 = load i32, i32* %10, align 4
  %335 = load i32, i32* @PAGE_MASK, align 4
  %336 = and i32 %334, %335
  store i32 %336, i32* %12, align 4
  %337 = load i32, i32* %12, align 4
  %338 = load i32, i32* %15, align 4
  %339 = add nsw i32 %337, %338
  %340 = load i32, i32* @PAGE_SIZE, align 4
  %341 = sub nsw i32 %340, 1
  %342 = add nsw i32 %339, %341
  %343 = load i32, i32* @PAGE_MASK, align 4
  %344 = xor i32 %343, -1
  %345 = and i32 %342, %344
  store i32 %345, i32* %13, align 4
  %346 = load i32, i32* %7, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %361

348:                                              ; preds = %333
  %349 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %350 = load i32, i32* %7, align 4
  %351 = call i32 @upl_set_iodone_error(%struct.TYPE_19__* %349, i32 %350)
  %352 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %353 = load i32, i32* %10, align 4
  %354 = load i32, i32* %12, align 4
  %355 = sub nsw i32 %353, %354
  %356 = load i32, i32* %13, align 4
  %357 = load i32, i32* %7, align 4
  %358 = load i32, i32* %6, align 4
  %359 = load i32, i32* %21, align 4
  %360 = call i32 @cluster_ioerror(%struct.TYPE_19__* %352, i32 %355, i32 %356, i32 %357, i32 %358, i32 %359)
  store i32 %360, i32* %14, align 4
  br label %393

361:                                              ; preds = %333
  %362 = load i32, i32* @UPL_COMMIT_FREE_ON_EMPTY, align 4
  store i32 %362, i32* %14, align 4
  %363 = load i32, i32* %6, align 4
  %364 = load i32, i32* @B_PHYS, align 4
  %365 = and i32 %363, %364
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %376

367:                                              ; preds = %361
  %368 = load i32, i32* %6, align 4
  %369 = load i32, i32* @B_READ, align 4
  %370 = and i32 %368, %369
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %376

372:                                              ; preds = %367
  %373 = load i32, i32* @UPL_COMMIT_SET_DIRTY, align 4
  %374 = load i32, i32* %14, align 4
  %375 = or i32 %374, %373
  store i32 %375, i32* %14, align 4
  br label %376

376:                                              ; preds = %372, %367, %361
  %377 = load i32, i32* %6, align 4
  %378 = load i32, i32* @B_AGE, align 4
  %379 = and i32 %377, %378
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %385

381:                                              ; preds = %376
  %382 = load i32, i32* @UPL_COMMIT_INACTIVATE, align 4
  %383 = load i32, i32* %14, align 4
  %384 = or i32 %383, %382
  store i32 %384, i32* %14, align 4
  br label %385

385:                                              ; preds = %381, %376
  %386 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %387 = load i32, i32* %10, align 4
  %388 = load i32, i32* %12, align 4
  %389 = sub nsw i32 %387, %388
  %390 = load i32, i32* %13, align 4
  %391 = load i32, i32* %14, align 4
  %392 = call i32 @ubc_upl_commit_range(%struct.TYPE_19__* %386, i32 %389, i32 %390, i32 %391)
  br label %393

393:                                              ; preds = %385, %348
  br label %394

394:                                              ; preds = %393, %328
  %395 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %396 = icmp ne %struct.TYPE_19__* %395, null
  br i1 %396, label %397, label %415

397:                                              ; preds = %394
  %398 = load i32, i32* %7, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %409

400:                                              ; preds = %397
  %401 = load i32, i32* @B_ERROR, align 4
  %402 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %403 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %402, i32 0, i32 2
  %404 = load i32, i32* %403, align 8
  %405 = or i32 %404, %401
  store i32 %405, i32* %403, align 8
  %406 = load i32, i32* %7, align 4
  %407 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %408 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %407, i32 0, i32 5
  store i32 %406, i32* %408, align 4
  br label %409

409:                                              ; preds = %400, %397
  %410 = load i32, i32* %9, align 4
  %411 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %412 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %411, i32 0, i32 6
  store i32 %410, i32* %412, align 8
  %413 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %414 = call i32 @buf_biodone(%struct.TYPE_19__* %413)
  br label %415

415:                                              ; preds = %409, %394
  %416 = load i32, i32* @DBG_FSRW, align 4
  %417 = call i32 @FSDBG_CODE(i32 %416, i32 20)
  %418 = load i32, i32* @DBG_FUNC_END, align 4
  %419 = or i32 %417, %418
  %420 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %421 = load i32, i32* %10, align 4
  %422 = load i32, i32* %12, align 4
  %423 = sub nsw i32 %421, %422
  %424 = load i32, i32* %13, align 4
  %425 = load i32, i32* %7, align 4
  %426 = shl i32 %425, 24
  %427 = load i32, i32* %14, align 4
  %428 = or i32 %426, %427
  %429 = call i32 (i32, %struct.TYPE_19__*, ...) @KERNEL_DEBUG(i32 %419, %struct.TYPE_19__* %420, i32 %423, i32 %424, i32 %428, i32 0)
  %430 = load i32, i32* %7, align 4
  store i32 %430, i32* %3, align 4
  br label %431

431:                                              ; preds = %415, %137, %99, %77
  %432 = load i32, i32* %3, align 4
  ret i32 %432
}

declare dso_local i32 @__IGNORE_WCASTALIGN(%struct.TYPE_19__*) #1

declare dso_local i32 @KERNEL_DEBUG(i32, %struct.TYPE_19__*, ...) #1

declare dso_local i32 @FSDBG_CODE(i32, i32) #1

declare dso_local i32 @lck_mtx_lock_spin(i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @wakeup(%struct.TYPE_19__*) #1

declare dso_local i32 @free_io_buf(%struct.TYPE_19__*) #1

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i32 @cluster_handle_associated_upl(%struct.clios*, %struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @cluster_zero(%struct.TYPE_19__*, i32, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @upl_set_iodone_error(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @cluster_ioerror(%struct.TYPE_19__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ubc_upl_commit_range(%struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i32 @buf_biodone(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
