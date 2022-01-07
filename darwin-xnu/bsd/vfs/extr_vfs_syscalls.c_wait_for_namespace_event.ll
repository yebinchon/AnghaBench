; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_wait_for_namespace_event.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_wait_for_namespace_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32*, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_18__*, i64, i64, i32, i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i64, i64, i64, i64, i64 }
%struct.fileproc = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i32*, i64 }
%struct.proc = type { i32 }
%struct.vnode_attr = type { i32 }

@nspace_handler_exclusion_lock = common dso_local global i32 0, align 4
@nspace_handlers = common dso_local global %struct.TYPE_15__* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@nspace_handler_lock = common dso_local global i32 0, align 4
@NSPACE_HANDLER_SNAPSHOT = common dso_local global i64 0, align 8
@snapshot_timestamp = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAX_NSPACE_ITEMS = common dso_local global i32 0, align 4
@nspace_items = common dso_local global %struct.TYPE_14__* null, align 8
@NSPACE_ITEM_NEW = common dso_local global i32 0, align 4
@nspace_item_idx = common dso_local global i32 0, align 4
@PVFS = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"namespace-items\00", align 1
@NSPACE_ITEM_PROCESSING = common dso_local global i32 0, align 4
@nspace_token_id = common dso_local global i64 0, align 8
@vnops = common dso_local global i32 0, align 4
@va_linkid = common dso_local global i32 0, align 4
@VNEEDSSNAPSHOT = common dso_local global i32 0, align 4
@NSPACE_ITEM_DONE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i64)* @wait_for_namespace_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_namespace_event(%struct.TYPE_17__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fileproc*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.proc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.vnode_attr, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %23 = call i32 @lck_mtx_lock(i32* @nspace_handler_exclusion_lock)
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** @nspace_handlers, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = call i32 @lck_mtx_unlock(i32* @nspace_handler_exclusion_lock)
  %32 = load i32, i32* @EBUSY, align 4
  store i32 %32, i32* %3, align 4
  br label %541

33:                                               ; preds = %2
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** @nspace_handlers, align 8
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = call i32 @lck_mtx_unlock(i32* @nspace_handler_exclusion_lock)
  %39 = call i32 (...) @current_task()
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @bsd_set_dependency_capable(i32 %40)
  %42 = call i32 @lck_mtx_lock(i32* @nspace_handler_lock)
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** @nspace_handlers, align 8
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %62

49:                                               ; preds = %33
  %50 = call i32 (...) @current_thread()
  %51 = call i32 @thread_tid(i32 %50)
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** @nspace_handlers, align 8
  %53 = load i64, i64* %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 2
  store i32 %51, i32* %55, align 8
  %56 = call i8* (...) @current_proc()
  %57 = bitcast i8* %56 to i32*
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** @nspace_handlers, align 8
  %59 = load i64, i64* %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 1
  store i32* %57, i32** %61, align 8
  br label %62

62:                                               ; preds = %49, %33
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* @NSPACE_HANDLER_SNAPSHOT, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load i32, i32* @snapshot_timestamp, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* @snapshot_timestamp, align 4
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %74

72:                                               ; preds = %69, %66
  %73 = load i32, i32* @EINVAL, align 4
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %72, %69, %62
  br label %75

75:                                               ; preds = %129, %74
  %76 = load i32, i32* %7, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %378

78:                                               ; preds = %75
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %106, %78
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @MAX_NSPACE_ITEMS, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %109

83:                                               ; preds = %79
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** @nspace_items, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @NSPACE_ITEM_NEW, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %83
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** @nspace_items, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i64, i64* %5, align 8
  %101 = call i64 @nspace_flags_matches_handler(i32 %99, i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %93
  br label %109

104:                                              ; preds = %93
  br label %105

105:                                              ; preds = %104, %83
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %6, align 4
  br label %79

109:                                              ; preds = %103, %79
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @MAX_NSPACE_ITEMS, align 4
  %112 = icmp sge i32 %110, %111
  br i1 %112, label %113, label %130

113:                                              ; preds = %109
  %114 = load i32, i32* @PVFS, align 4
  %115 = load i32, i32* @PCATCH, align 4
  %116 = or i32 %114, %115
  %117 = call i32 @msleep(i64 ptrtoint (i32* @nspace_item_idx to i64), i32* @nspace_handler_lock, i32 %116, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %117, i32* %7, align 4
  %118 = load i64, i64* %5, align 8
  %119 = load i64, i64* @NSPACE_HANDLER_SNAPSHOT, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %113
  %122 = load i32, i32* @snapshot_timestamp, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %121
  %125 = load i32, i32* @snapshot_timestamp, align 4
  %126 = icmp eq i32 %125, -1
  br i1 %126, label %127, label %129

127:                                              ; preds = %124, %121
  %128 = load i32, i32* @EINVAL, align 4
  store i32 %128, i32* %7, align 4
  br label %378

129:                                              ; preds = %124, %113
  br label %75

130:                                              ; preds = %109
  %131 = load i32, i32* @NSPACE_ITEM_NEW, align 4
  %132 = xor i32 %131, -1
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** @nspace_items, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = and i32 %138, %132
  store i32 %139, i32* %137, align 8
  %140 = load i32, i32* @NSPACE_ITEM_PROCESSING, align 4
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** @nspace_items, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %140
  store i32 %147, i32* %145, align 8
  %148 = load i64, i64* @nspace_token_id, align 8
  %149 = add nsw i64 %148, 1
  store i64 %149, i64* @nspace_token_id, align 8
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** @nspace_items, align 8
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 2
  store i64 %149, i64* %154, align 8
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** @nspace_items, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %159, align 8
  %161 = call i32 @assert(%struct.TYPE_18__* %160)
  %162 = call i8* (...) @current_proc()
  %163 = bitcast i8* %162 to %struct.proc*
  store %struct.proc* %163, %struct.proc** %13, align 8
  %164 = call i32 (...) @vfs_context_current()
  store i32 %164, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %165 = load i64, i64* %5, align 8
  %166 = call i64 @nspace_open_flags_for_type(i64 %165)
  store i64 %166, i64* %12, align 8
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** @nspace_items, align 8
  %168 = load i32, i32* %6, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %171, align 8
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** @nspace_items, align 8
  %174 = load i32, i32* %6, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @vnode_getwithvid(%struct.TYPE_18__* %172, i64 %178)
  store i32 %179, i32* %7, align 4
  %180 = load i32, i32* %7, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %130
  br label %341

183:                                              ; preds = %130
  store i32 1, i32* %16, align 4
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** @nspace_items, align 8
  %185 = load i32, i32* %6, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %188, align 8
  %190 = load i64, i64* %12, align 8
  %191 = load i32, i32* %14, align 4
  %192 = call i32 @vn_open_with_vp(%struct.TYPE_18__* %189, i64 %190, i32 %191)
  store i32 %192, i32* %7, align 4
  %193 = load i32, i32* %7, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %183
  br label %341

196:                                              ; preds = %183
  store i32 1, i32* %17, align 4
  %197 = load %struct.proc*, %struct.proc** %13, align 8
  %198 = load i32, i32* %14, align 4
  %199 = call i32 @falloc(%struct.proc* %197, %struct.fileproc** %10, i64* %11, i32 %198)
  store i32 %199, i32* %7, align 4
  %200 = load i32, i32* %7, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %196
  br label %341

203:                                              ; preds = %196
  store i32 1, i32* %18, align 4
  %204 = load i64, i64* %12, align 8
  %205 = load %struct.fileproc*, %struct.fileproc** %10, align 8
  %206 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %205, i32 0, i32 0
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 2
  store i64 %204, i64* %208, align 8
  %209 = load %struct.fileproc*, %struct.fileproc** %10, align 8
  %210 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %209, i32 0, i32 0
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 1
  store i32* @vnops, i32** %212, align 8
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** @nspace_items, align 8
  %214 = load i32, i32* %6, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 1
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %217, align 8
  %219 = ptrtoint %struct.TYPE_18__* %218 to i64
  %220 = load %struct.fileproc*, %struct.fileproc** %10, align 8
  %221 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %220, i32 0, i32 0
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 0
  store i64 %219, i64* %223, align 8
  %224 = load %struct.proc*, %struct.proc** %13, align 8
  %225 = call i32 @proc_fdlock(%struct.proc* %224)
  %226 = load %struct.proc*, %struct.proc** %13, align 8
  %227 = load i64, i64* %11, align 8
  %228 = call i32 @procfdtbl_releasefd(%struct.proc* %226, i64 %227, i32* null)
  %229 = load %struct.proc*, %struct.proc** %13, align 8
  %230 = load i64, i64* %11, align 8
  %231 = load %struct.fileproc*, %struct.fileproc** %10, align 8
  %232 = call i32 @fp_drop(%struct.proc* %229, i64 %230, %struct.fileproc* %231, i32 1)
  %233 = load %struct.proc*, %struct.proc** %13, align 8
  %234 = call i32 @proc_fdunlock(%struct.proc* %233)
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** @nspace_items, align 8
  %236 = load i32, i32* %6, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 2
  %240 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %240, i32 0, i32 4
  %242 = load i64, i64* %241, align 8
  %243 = call i32 @copyout(i64* %239, i64 %242, i32 4)
  store i32 %243, i32* %7, align 4
  %244 = load i32, i32* %7, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %203
  br label %341

247:                                              ; preds = %203
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** @nspace_items, align 8
  %249 = load i32, i32* %6, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 5
  %253 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %253, i32 0, i32 3
  %255 = load i64, i64* %254, align 8
  %256 = call i32 @copyout(i64* %252, i64 %255, i32 8)
  store i32 %256, i32* %7, align 4
  %257 = load i32, i32* %7, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %247
  br label %341

260:                                              ; preds = %247
  %261 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %261, i32 0, i32 2
  %263 = load i64, i64* %262, align 8
  %264 = call i32 @copyout(i64* %11, i64 %263, i32 4)
  store i32 %264, i32* %7, align 4
  %265 = load i32, i32* %7, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %260
  br label %341

268:                                              ; preds = %260
  %269 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %307

273:                                              ; preds = %268
  %274 = load %struct.TYPE_14__*, %struct.TYPE_14__** @nspace_items, align 8
  %275 = load i32, i32* %6, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 4
  %279 = load i32, i32* %278, align 8
  %280 = sext i32 %279 to i64
  store i64 %280, i64* %19, align 8
  %281 = load i64, i64* %19, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %288

283:                                              ; preds = %273
  %284 = load i64, i64* %19, align 8
  %285 = call i64 @uio_offset(i64 %284)
  store i64 %285, i64* %20, align 8
  %286 = load i64, i64* %19, align 8
  %287 = call i64 @uio_resid(i64 %286)
  store i64 %287, i64* %21, align 8
  br label %289

288:                                              ; preds = %273
  store i64 0, i64* %20, align 8
  store i64 0, i64* %21, align 8
  br label %289

289:                                              ; preds = %288, %283
  %290 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = call i32 @copyout(i64* %20, i64 %292, i32 8)
  store i32 %293, i32* %7, align 4
  %294 = load i32, i32* %7, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %297

296:                                              ; preds = %289
  br label %341

297:                                              ; preds = %289
  %298 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %298, i32 0, i32 1
  %300 = load i64, i64* %299, align 8
  %301 = add i64 %300, 8
  %302 = call i32 @copyout(i64* %21, i64 %301, i32 8)
  store i32 %302, i32* %7, align 4
  %303 = load i32, i32* %7, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %297
  br label %341

306:                                              ; preds = %297
  br label %307

307:                                              ; preds = %306, %268
  %308 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %340

312:                                              ; preds = %307
  %313 = call i32 @VATTR_INIT(%struct.vnode_attr* %15)
  %314 = load i32, i32* @va_linkid, align 4
  %315 = call i32 @VATTR_WANTED(%struct.vnode_attr* %15, i32 %314)
  %316 = load %struct.TYPE_14__*, %struct.TYPE_14__** @nspace_items, align 8
  %317 = load i32, i32* %6, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %316, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %319, i32 0, i32 1
  %321 = load %struct.TYPE_18__*, %struct.TYPE_18__** %320, align 8
  %322 = load i32, i32* %14, align 4
  %323 = call i32 @vnode_getattr(%struct.TYPE_18__* %321, %struct.vnode_attr* %15, i32 %322)
  store i32 %323, i32* %7, align 4
  %324 = load i32, i32* %7, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %312
  br label %341

327:                                              ; preds = %312
  store i64 0, i64* %22, align 8
  %328 = load i32, i32* @va_linkid, align 4
  %329 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %15, i32 %328)
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %335

331:                                              ; preds = %327
  %332 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %15, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = sext i32 %333 to i64
  store i64 %334, i64* %22, align 8
  br label %335

335:                                              ; preds = %331, %327
  %336 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %336, i32 0, i32 0
  %338 = load i64, i64* %337, align 8
  %339 = call i32 @copyout(i64* %22, i64 %338, i32 8)
  store i32 %339, i32* %7, align 4
  br label %340

340:                                              ; preds = %335, %307
  br label %341

341:                                              ; preds = %340, %326, %305, %296, %267, %259, %246, %202, %195, %182
  %342 = load i32, i32* %7, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %366

344:                                              ; preds = %341
  %345 = load i32, i32* %18, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %352

347:                                              ; preds = %344
  %348 = load %struct.proc*, %struct.proc** %13, align 8
  %349 = load i64, i64* %11, align 8
  %350 = load %struct.fileproc*, %struct.fileproc** %10, align 8
  %351 = call i32 @fp_free(%struct.proc* %348, i64 %349, %struct.fileproc* %350)
  br label %352

352:                                              ; preds = %347, %344
  %353 = load i32, i32* %17, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %365

355:                                              ; preds = %352
  %356 = load %struct.TYPE_14__*, %struct.TYPE_14__** @nspace_items, align 8
  %357 = load i32, i32* %6, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %356, i64 %358
  %360 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %359, i32 0, i32 1
  %361 = load %struct.TYPE_18__*, %struct.TYPE_18__** %360, align 8
  %362 = load i64, i64* %12, align 8
  %363 = load i32, i32* %14, align 4
  %364 = call i32 @vn_close(%struct.TYPE_18__* %361, i64 %362, i32 %363)
  br label %365

365:                                              ; preds = %355, %352
  store i32 1, i32* %8, align 4
  br label %366

366:                                              ; preds = %365, %341
  %367 = load i32, i32* %16, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %377

369:                                              ; preds = %366
  %370 = load %struct.TYPE_14__*, %struct.TYPE_14__** @nspace_items, align 8
  %371 = load i32, i32* %6, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %370, i64 %372
  %374 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %373, i32 0, i32 1
  %375 = load %struct.TYPE_18__*, %struct.TYPE_18__** %374, align 8
  %376 = call i32 @vnode_put(%struct.TYPE_18__* %375)
  br label %377

377:                                              ; preds = %369, %366
  br label %378

378:                                              ; preds = %377, %127, %75
  %379 = load i32, i32* %8, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %457

381:                                              ; preds = %378
  %382 = load %struct.TYPE_14__*, %struct.TYPE_14__** @nspace_items, align 8
  %383 = load i32, i32* %6, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %382, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %385, i32 0, i32 1
  %387 = load %struct.TYPE_18__*, %struct.TYPE_18__** %386, align 8
  %388 = icmp ne %struct.TYPE_18__* %387, null
  br i1 %388, label %389, label %427

389:                                              ; preds = %381
  %390 = load %struct.TYPE_14__*, %struct.TYPE_14__** @nspace_items, align 8
  %391 = load i32, i32* %6, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %390, i64 %392
  %394 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %393, i32 0, i32 1
  %395 = load %struct.TYPE_18__*, %struct.TYPE_18__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 4
  %398 = load i32, i32* @VNEEDSSNAPSHOT, align 4
  %399 = and i32 %397, %398
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %427

401:                                              ; preds = %389
  %402 = load %struct.TYPE_14__*, %struct.TYPE_14__** @nspace_items, align 8
  %403 = load i32, i32* %6, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %402, i64 %404
  %406 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %405, i32 0, i32 1
  %407 = load %struct.TYPE_18__*, %struct.TYPE_18__** %406, align 8
  %408 = call i32 @vnode_lock_spin(%struct.TYPE_18__* %407)
  %409 = load i32, i32* @VNEEDSSNAPSHOT, align 4
  %410 = xor i32 %409, -1
  %411 = load %struct.TYPE_14__*, %struct.TYPE_14__** @nspace_items, align 8
  %412 = load i32, i32* %6, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %411, i64 %413
  %415 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %414, i32 0, i32 1
  %416 = load %struct.TYPE_18__*, %struct.TYPE_18__** %415, align 8
  %417 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 4
  %419 = and i32 %418, %410
  store i32 %419, i32* %417, align 4
  %420 = load %struct.TYPE_14__*, %struct.TYPE_14__** @nspace_items, align 8
  %421 = load i32, i32* %6, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %420, i64 %422
  %424 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %423, i32 0, i32 1
  %425 = load %struct.TYPE_18__*, %struct.TYPE_18__** %424, align 8
  %426 = call i32 @vnode_unlock(%struct.TYPE_18__* %425)
  br label %427

427:                                              ; preds = %401, %389, %381
  %428 = load %struct.TYPE_14__*, %struct.TYPE_14__** @nspace_items, align 8
  %429 = load i32, i32* %6, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %428, i64 %430
  %432 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %431, i32 0, i32 1
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %432, align 8
  %433 = load %struct.TYPE_14__*, %struct.TYPE_14__** @nspace_items, align 8
  %434 = load i32, i32* %6, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %433, i64 %435
  %437 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %436, i32 0, i32 3
  store i64 0, i64* %437, align 8
  %438 = load i8*, i8** @NSPACE_ITEM_DONE, align 8
  %439 = ptrtoint i8* %438 to i32
  %440 = load %struct.TYPE_14__*, %struct.TYPE_14__** @nspace_items, align 8
  %441 = load i32, i32* %6, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %440, i64 %442
  %444 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %443, i32 0, i32 0
  store i32 %439, i32* %444, align 8
  %445 = load %struct.TYPE_14__*, %struct.TYPE_14__** @nspace_items, align 8
  %446 = load i32, i32* %6, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %445, i64 %447
  %449 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %448, i32 0, i32 2
  store i64 0, i64* %449, align 8
  %450 = load %struct.TYPE_14__*, %struct.TYPE_14__** @nspace_items, align 8
  %451 = load i32, i32* %6, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %450, i64 %452
  %454 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %453, i32 0, i32 1
  %455 = ptrtoint %struct.TYPE_18__** %454 to i64
  %456 = call i32 @wakeup(i64 %455)
  br label %457

457:                                              ; preds = %427, %378
  %458 = load i64, i64* %5, align 8
  %459 = load i64, i64* @NSPACE_HANDLER_SNAPSHOT, align 8
  %460 = icmp eq i64 %458, %459
  br i1 %460, label %461, label %532

461:                                              ; preds = %457
  %462 = load i32, i32* %7, align 4
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %531

464:                                              ; preds = %461
  %465 = load i32, i32* @snapshot_timestamp, align 4
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %470, label %467

467:                                              ; preds = %464
  %468 = load i32, i32* @snapshot_timestamp, align 4
  %469 = icmp eq i32 %468, -1
  br i1 %469, label %470, label %531

470:                                              ; preds = %467, %464
  store i32 0, i32* %6, align 4
  br label %471

471:                                              ; preds = %527, %470
  %472 = load i32, i32* %6, align 4
  %473 = load i32, i32* @MAX_NSPACE_ITEMS, align 4
  %474 = icmp slt i32 %472, %473
  br i1 %474, label %475, label %530

475:                                              ; preds = %471
  %476 = load %struct.TYPE_14__*, %struct.TYPE_14__** @nspace_items, align 8
  %477 = load i32, i32* %6, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %476, i64 %478
  %480 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 8
  %482 = load i32, i32* @NSPACE_ITEM_NEW, align 4
  %483 = and i32 %481, %482
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %526

485:                                              ; preds = %475
  %486 = load %struct.TYPE_14__*, %struct.TYPE_14__** @nspace_items, align 8
  %487 = load i32, i32* %6, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %486, i64 %488
  %490 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %489, i32 0, i32 0
  %491 = load i32, i32* %490, align 8
  %492 = load i64, i64* %5, align 8
  %493 = call i64 @nspace_flags_matches_handler(i32 %491, i64 %492)
  %494 = icmp ne i64 %493, 0
  br i1 %494, label %495, label %525

495:                                              ; preds = %485
  %496 = load %struct.TYPE_14__*, %struct.TYPE_14__** @nspace_items, align 8
  %497 = load i32, i32* %6, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %496, i64 %498
  %500 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %499, i32 0, i32 1
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %500, align 8
  %501 = load %struct.TYPE_14__*, %struct.TYPE_14__** @nspace_items, align 8
  %502 = load i32, i32* %6, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %501, i64 %503
  %505 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %504, i32 0, i32 3
  store i64 0, i64* %505, align 8
  %506 = load i8*, i8** @NSPACE_ITEM_DONE, align 8
  %507 = ptrtoint i8* %506 to i32
  %508 = load %struct.TYPE_14__*, %struct.TYPE_14__** @nspace_items, align 8
  %509 = load i32, i32* %6, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %508, i64 %510
  %512 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %511, i32 0, i32 0
  store i32 %507, i32* %512, align 8
  %513 = load %struct.TYPE_14__*, %struct.TYPE_14__** @nspace_items, align 8
  %514 = load i32, i32* %6, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %513, i64 %515
  %517 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %516, i32 0, i32 2
  store i64 0, i64* %517, align 8
  %518 = load %struct.TYPE_14__*, %struct.TYPE_14__** @nspace_items, align 8
  %519 = load i32, i32* %6, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %518, i64 %520
  %522 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %521, i32 0, i32 1
  %523 = ptrtoint %struct.TYPE_18__** %522 to i64
  %524 = call i32 @wakeup(i64 %523)
  br label %525

525:                                              ; preds = %495, %485
  br label %526

526:                                              ; preds = %525, %475
  br label %527

527:                                              ; preds = %526
  %528 = load i32, i32* %6, align 4
  %529 = add nsw i32 %528, 1
  store i32 %529, i32* %6, align 4
  br label %471

530:                                              ; preds = %471
  br label %531

531:                                              ; preds = %530, %467, %461
  br label %532

532:                                              ; preds = %531, %457
  %533 = call i32 @lck_mtx_unlock(i32* @nspace_handler_lock)
  %534 = call i32 @lck_mtx_lock(i32* @nspace_handler_exclusion_lock)
  %535 = load %struct.TYPE_15__*, %struct.TYPE_15__** @nspace_handlers, align 8
  %536 = load i64, i64* %5, align 8
  %537 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %535, i64 %536
  %538 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %537, i32 0, i32 0
  store i32 0, i32* %538, align 8
  %539 = call i32 @lck_mtx_unlock(i32* @nspace_handler_exclusion_lock)
  %540 = load i32, i32* %7, align 4
  store i32 %540, i32* %3, align 4
  br label %541

541:                                              ; preds = %532, %30
  %542 = load i32, i32* %3, align 4
  ret i32 %542
}

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @current_task(...) #1

declare dso_local i32 @bsd_set_dependency_capable(i32) #1

declare dso_local i32 @thread_tid(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i8* @current_proc(...) #1

declare dso_local i64 @nspace_flags_matches_handler(i32, i64) #1

declare dso_local i32 @msleep(i64, i32*, i32, i8*, i32) #1

declare dso_local i32 @assert(%struct.TYPE_18__*) #1

declare dso_local i32 @vfs_context_current(...) #1

declare dso_local i64 @nspace_open_flags_for_type(i64) #1

declare dso_local i32 @vnode_getwithvid(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @vn_open_with_vp(%struct.TYPE_18__*, i64, i32) #1

declare dso_local i32 @falloc(%struct.proc*, %struct.fileproc**, i64*, i32) #1

declare dso_local i32 @proc_fdlock(%struct.proc*) #1

declare dso_local i32 @procfdtbl_releasefd(%struct.proc*, i64, i32*) #1

declare dso_local i32 @fp_drop(%struct.proc*, i64, %struct.fileproc*, i32) #1

declare dso_local i32 @proc_fdunlock(%struct.proc*) #1

declare dso_local i32 @copyout(i64*, i64, i32) #1

declare dso_local i64 @uio_offset(i64) #1

declare dso_local i64 @uio_resid(i64) #1

declare dso_local i32 @VATTR_INIT(%struct.vnode_attr*) #1

declare dso_local i32 @VATTR_WANTED(%struct.vnode_attr*, i32) #1

declare dso_local i32 @vnode_getattr(%struct.TYPE_18__*, %struct.vnode_attr*, i32) #1

declare dso_local i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr*, i32) #1

declare dso_local i32 @fp_free(%struct.proc*, i64, %struct.fileproc*) #1

declare dso_local i32 @vn_close(%struct.TYPE_18__*, i64, i32) #1

declare dso_local i32 @vnode_put(%struct.TYPE_18__*) #1

declare dso_local i32 @vnode_lock_spin(%struct.TYPE_18__*) #1

declare dso_local i32 @vnode_unlock(%struct.TYPE_18__*) #1

declare dso_local i32 @wakeup(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
