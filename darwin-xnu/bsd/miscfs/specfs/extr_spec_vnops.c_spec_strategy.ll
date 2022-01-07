; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_spec_strategy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_spec_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._throttle_io_info_t = type { i32 }
%struct.TYPE_15__ = type { i64 }
%struct.vnop_strategy_args = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32, %struct.bufattr }
%struct.bufattr = type { i32 }
%struct.TYPE_18__ = type { i32, i64, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.buf = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@B_META = common dso_local global i32 0, align 4
@BA_META = common dso_local global i32 0, align 4
@B_PASSIVE = common dso_local global i32 0, align 4
@BA_PASSIVE = common dso_local global i32 0, align 4
@P_DELAYIDLESLEEP = common dso_local global i32 0, align 4
@BA_DELAYIDLESLEEP = common dso_local global i32 0, align 4
@B_READ = common dso_local global i32 0, align 4
@B_ASYNC = common dso_local global i32 0, align 4
@DKIO_READ = common dso_local global i32 0, align 4
@DKIO_ASYNC = common dso_local global i32 0, align 4
@DKIO_META = common dso_local global i32 0, align 4
@B_PAGEIO = common dso_local global i32 0, align 4
@DKIO_PAGING = common dso_local global i32 0, align 4
@DKIO_THROTTLE = common dso_local global i32 0, align 4
@DKIO_TIER_SHIFT = common dso_local global i32 0, align 4
@DKIO_TIER_MASK = common dso_local global i32 0, align 4
@DKIO_PASSIVE = common dso_local global i32 0, align 4
@BA_NOCACHE = common dso_local global i32 0, align 4
@DKIO_NOCACHE = common dso_local global i32 0, align 4
@DKIO_TIER_UPGRADE = common dso_local global i32 0, align 4
@BA_IO_TIER_UPGRADE = common dso_local global i32 0, align 4
@kdebug_enable = common dso_local global i64 0, align 8
@KDEBUG_COMMON = common dso_local global i32 0, align 4
@DBG_DKRW = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@LOWPRI_MAX_NUM_DEV = common dso_local global i32 0, align 4
@_throttle_io_info = common dso_local global %struct._throttle_io_info_t* null, align 8
@bdevsw = common dso_local global %struct.TYPE_15__* null, align 8
@B_CLUSTER = common dso_local global i32 0, align 4
@DBG_THROTTLE = common dso_local global i32 0, align 4
@IOSCHED_METADATA_TIER = common dso_local global i32 0, align 4
@IO_SATISFIED_BY_CACHE = common dso_local global i32 0, align 4
@IO_SHOULD_BE_THROTTLED = common dso_local global i32 0, align 4
@IO_TIER_UPL_MISMATCH = common dso_local global i32 0, align 4
@MNT_IOFLAGS_IOSCHED_SUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spec_strategy(%struct.vnop_strategy_args* %0) #0 {
  %2 = alloca %struct.vnop_strategy_args*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.bufattr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct._throttle_io_info_t*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_17__*, align 8
  store %struct.vnop_strategy_args* %0, %struct.vnop_strategy_args** %2, align 8
  %18 = load i64, i64* @FALSE, align 8
  store i64 %18, i64* %13, align 8
  %19 = load i64, i64* @FALSE, align 8
  store i64 %19, i64* %14, align 8
  %20 = load i64, i64* @FALSE, align 8
  store i64 %20, i64* %15, align 8
  store i32 0, i32* %16, align 4
  %21 = call %struct.TYPE_17__* (...) @current_proc()
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %17, align 8
  %22 = load %struct.vnop_strategy_args*, %struct.vnop_strategy_args** %2, align 8
  %23 = getelementptr inbounds %struct.vnop_strategy_args, %struct.vnop_strategy_args* %22, i32 0, i32 0
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %3, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %26 = call i32 @buf_device(%struct.TYPE_16__* %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %28 = call %struct.TYPE_19__* @buf_vnode(%struct.TYPE_16__* %27)
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  store %struct.TYPE_18__* %30, %struct.TYPE_18__** %9, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 3
  store %struct.bufattr* %32, %struct.bufattr** %10, align 8
  %33 = call i32 @throttle_get_io_policy(i32* %8)
  store i32 %33, i32* %5, align 4
  %34 = call i32 @throttle_get_passive_io_policy(i32* %8)
  store i32 %34, i32* %6, align 4
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %36 = icmp ne %struct.TYPE_18__* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %1
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @throttle_get_thread_throttle_level_internal(i32 %39, i32 %40)
  %42 = icmp sgt i32 %38, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i64, i64* @TRUE, align 8
  store i64 %44, i64* %15, align 8
  br label %45

45:                                               ; preds = %43, %37, %1
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @B_META, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load i32, i32* @BA_META, align 4
  %54 = load %struct.bufattr*, %struct.bufattr** %10, align 8
  %55 = getelementptr inbounds %struct.bufattr, %struct.bufattr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %52, %45
  %59 = load %struct.bufattr*, %struct.bufattr** %10, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @SET_BUFATTR_IO_TIER(%struct.bufattr* %59, i32 %60)
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %58
  %65 = load i32, i32* @B_PASSIVE, align 4
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* @BA_PASSIVE, align 4
  %71 = load %struct.bufattr*, %struct.bufattr** %10, align 8
  %72 = getelementptr inbounds %struct.bufattr, %struct.bufattr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %64, %58
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %77 = icmp ne %struct.TYPE_17__* %76, null
  br i1 %77, label %78, label %92

78:                                               ; preds = %75
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @P_DELAYIDLESLEEP, align 4
  %83 = and i32 %81, %82
  %84 = load i32, i32* @P_DELAYIDLESLEEP, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %78
  %87 = load i32, i32* @BA_DELAYIDLESLEEP, align 4
  %88 = load %struct.bufattr*, %struct.bufattr** %10, align 8
  %89 = getelementptr inbounds %struct.bufattr, %struct.bufattr* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %86, %78, %75
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @B_READ, align 4
  %98 = and i32 %96, %97
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %92
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @B_ASYNC, align 4
  %103 = and i32 %101, %102
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load %struct.bufattr*, %struct.bufattr** %10, align 8
  %107 = call i32 @bufattr_markquickcomplete(%struct.bufattr* %106)
  br label %108

108:                                              ; preds = %105, %100, %92
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @B_READ, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load i32, i32* @DKIO_READ, align 4
  %115 = load i32, i32* %16, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %16, align 4
  br label %117

117:                                              ; preds = %113, %108
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* @B_ASYNC, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load i32, i32* @DKIO_ASYNC, align 4
  %124 = load i32, i32* %16, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %16, align 4
  br label %126

126:                                              ; preds = %122, %117
  %127 = load %struct.bufattr*, %struct.bufattr** %10, align 8
  %128 = getelementptr inbounds %struct.bufattr, %struct.bufattr* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @BA_META, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %126
  %134 = load i32, i32* @DKIO_META, align 4
  %135 = load i32, i32* %16, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %16, align 4
  br label %147

137:                                              ; preds = %126
  %138 = load i32, i32* %4, align 4
  %139 = load i32, i32* @B_PAGEIO, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = load i32, i32* @DKIO_PAGING, align 4
  %144 = load i32, i32* %16, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %16, align 4
  br label %146

146:                                              ; preds = %142, %137
  br label %147

147:                                              ; preds = %146, %133
  %148 = load i32, i32* %5, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %147
  %151 = load i32, i32* @DKIO_THROTTLE, align 4
  %152 = load i32, i32* %16, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %16, align 4
  br label %154

154:                                              ; preds = %150, %147
  %155 = load i32, i32* %5, align 4
  %156 = load i32, i32* @DKIO_TIER_SHIFT, align 4
  %157 = shl i32 %155, %156
  %158 = load i32, i32* @DKIO_TIER_MASK, align 4
  %159 = and i32 %157, %158
  %160 = load i32, i32* %16, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %16, align 4
  %162 = load i32, i32* %4, align 4
  %163 = load i32, i32* @B_PASSIVE, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %154
  %167 = load i32, i32* @DKIO_PASSIVE, align 4
  %168 = load i32, i32* %16, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %16, align 4
  br label %170

170:                                              ; preds = %166, %154
  %171 = load %struct.bufattr*, %struct.bufattr** %10, align 8
  %172 = getelementptr inbounds %struct.bufattr, %struct.bufattr* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @BA_NOCACHE, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %170
  %178 = load i32, i32* @DKIO_NOCACHE, align 4
  %179 = load i32, i32* %16, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %16, align 4
  br label %181

181:                                              ; preds = %177, %170
  %182 = load i64, i64* %15, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %193

184:                                              ; preds = %181
  %185 = load i32, i32* @DKIO_TIER_UPGRADE, align 4
  %186 = load i32, i32* %16, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %16, align 4
  %188 = load %struct.bufattr*, %struct.bufattr** %10, align 8
  %189 = getelementptr inbounds %struct.bufattr, %struct.bufattr* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @BA_IO_TIER_UPGRADE, align 4
  %192 = call i32 @SET(i32 %190, i32 %191)
  br label %193

193:                                              ; preds = %184, %181
  %194 = load i64, i64* @kdebug_enable, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %211

196:                                              ; preds = %193
  %197 = load i32, i32* @KDEBUG_COMMON, align 4
  %198 = load i32, i32* @DBG_DKRW, align 4
  %199 = load i32, i32* %16, align 4
  %200 = call i32 @FSDBG_CODE(i32 %198, i32 %199)
  %201 = load i32, i32* @DBG_FUNC_NONE, align 4
  %202 = or i32 %200, %201
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %204 = call i32 @buf_kernel_addrperm_addr(%struct.TYPE_16__* %203)
  %205 = load i32, i32* %7, align 4
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %207 = call i32 @buf_blkno(%struct.TYPE_16__* %206)
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %209 = call i32 @buf_count(%struct.TYPE_16__* %208)
  %210 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %197, i32 %202, i32 %204, i32 %205, i32 %207, i32 %209, i32 0)
  br label %211

211:                                              ; preds = %196, %193
  %212 = call i32 (...) @current_thread()
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %214 = call i32 @buf_count(%struct.TYPE_16__* %213)
  %215 = load i32, i32* %16, align 4
  %216 = call i32 @thread_update_io_stats(i32 %212, i32 %214, i32 %215)
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %218 = icmp ne %struct.TYPE_18__* %217, null
  br i1 %218, label %219, label %251

219:                                              ; preds = %211
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %221 = call i64 @disk_conditioner_mount_is_ssd(%struct.TYPE_18__* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %219
  %224 = load i64, i64* @TRUE, align 8
  store i64 %224, i64* %13, align 8
  br label %225

225:                                              ; preds = %223, %219
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %243, label %230

230:                                              ; preds = %225
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @LOWPRI_MAX_NUM_DEV, align 4
  %235 = sub nsw i32 %234, 1
  %236 = icmp ne i32 %233, %235
  br i1 %236, label %237, label %245

237:                                              ; preds = %230
  %238 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = and i32 %240, 1
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %237, %225
  %244 = load i64, i64* @TRUE, align 8
  store i64 %244, i64* %14, align 8
  br label %245

245:                                              ; preds = %243, %237, %230
  %246 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** @_throttle_io_info, align 8
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %246, i64 %249
  store %struct._throttle_io_info_t* %250, %struct._throttle_io_info_t** %12, align 8
  br label %257

251:                                              ; preds = %211
  %252 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** @_throttle_io_info, align 8
  %253 = load i32, i32* @LOWPRI_MAX_NUM_DEV, align 4
  %254 = sub nsw i32 %253, 1
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %252, i64 %255
  store %struct._throttle_io_info_t* %256, %struct._throttle_io_info_t** %12, align 8
  br label %257

257:                                              ; preds = %251, %245
  %258 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %12, align 8
  %259 = load i32, i32* %8, align 4
  %260 = load i32, i32* %4, align 4
  %261 = load i64, i64* %13, align 8
  %262 = load i64, i64* %14, align 8
  %263 = load %struct.bufattr*, %struct.bufattr** %10, align 8
  %264 = call i32 @throttle_info_update_internal(%struct._throttle_io_info_t* %258, i32 %259, i32 %260, i64 %261, i64 %262, %struct.bufattr* %263)
  %265 = load i32, i32* %4, align 4
  %266 = load i32, i32* @B_READ, align 4
  %267 = and i32 %265, %266
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %288

269:                                              ; preds = %257
  %270 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %12, align 8
  %271 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %270, i32 0, i32 0
  %272 = call i32 @microuptime(i32* %271)
  %273 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %274 = icmp ne %struct.TYPE_18__* %273, null
  br i1 %274, label %275, label %287

275:                                              ; preds = %269
  %276 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %12, align 8
  %277 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %280 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %279, i32 0, i32 5
  store i32 %278, i32* %280, align 4
  %281 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %282 = call i32 @buf_count(%struct.TYPE_16__* %281)
  %283 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %284 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %283, i32 0, i32 4
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @INCR_PENDING_IO(i32 %282, i32 %285)
  br label %287

287:                                              ; preds = %275, %269
  br label %299

288:                                              ; preds = %257
  %289 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %290 = icmp ne %struct.TYPE_18__* %289, null
  br i1 %290, label %291, label %298

291:                                              ; preds = %288
  %292 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %293 = call i32 @buf_count(%struct.TYPE_16__* %292)
  %294 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %295 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 4
  %297 = call i32 @INCR_PENDING_IO(i32 %293, i32 %296)
  br label %298

298:                                              ; preds = %291, %288
  br label %299

299:                                              ; preds = %298, %287
  %300 = load %struct.TYPE_15__*, %struct.TYPE_15__** @bdevsw, align 8
  %301 = load i32, i32* %7, align 4
  %302 = call i64 @major(i32 %301)
  %303 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = inttoptr i64 %305 to i32 (%struct.buf*)*
  %307 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %308 = bitcast %struct.TYPE_16__* %307 to %struct.buf*
  %309 = call i32 %306(%struct.buf* %308)
  store i32 %309, i32* %11, align 4
  %310 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %310, i32 0, i32 1
  %312 = call i32 @microuptime(i32* %311)
  %313 = load i32, i32* %11, align 4
  %314 = icmp eq i32 -889258259, %313
  br i1 %314, label %315, label %318

315:                                              ; preds = %299
  %316 = load i32, i32* %8, align 4
  %317 = call i32 @throttle_info_reset_window(i32 %316)
  br label %328

318:                                              ; preds = %299
  %319 = load i32, i32* %11, align 4
  %320 = icmp eq i32 -889274641, %319
  br i1 %320, label %321, label %327

321:                                              ; preds = %318
  %322 = load i32, i32* %8, align 4
  %323 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %12, align 8
  %324 = load i64, i64* @TRUE, align 8
  %325 = load i64, i64* %13, align 8
  %326 = call i32 @throttle_info_set_initial_window(i32 %322, %struct._throttle_io_info_t* %323, i64 %324, i64 %325)
  br label %327

327:                                              ; preds = %321, %318
  br label %328

328:                                              ; preds = %327, %315
  ret i32 0
}

declare dso_local %struct.TYPE_17__* @current_proc(...) #1

declare dso_local i32 @buf_device(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_19__* @buf_vnode(%struct.TYPE_16__*) #1

declare dso_local i32 @throttle_get_io_policy(i32*) #1

declare dso_local i32 @throttle_get_passive_io_policy(i32*) #1

declare dso_local i32 @throttle_get_thread_throttle_level_internal(i32, i32) #1

declare dso_local i32 @SET_BUFATTR_IO_TIER(%struct.bufattr*, i32) #1

declare dso_local i32 @bufattr_markquickcomplete(%struct.bufattr*) #1

declare dso_local i32 @SET(i32, i32) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT_IST(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FSDBG_CODE(i32, i32) #1

declare dso_local i32 @buf_kernel_addrperm_addr(%struct.TYPE_16__*) #1

declare dso_local i32 @buf_blkno(%struct.TYPE_16__*) #1

declare dso_local i32 @buf_count(%struct.TYPE_16__*) #1

declare dso_local i32 @thread_update_io_stats(i32, i32, i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i64 @disk_conditioner_mount_is_ssd(%struct.TYPE_18__*) #1

declare dso_local i32 @throttle_info_update_internal(%struct._throttle_io_info_t*, i32, i32, i64, i64, %struct.bufattr*) #1

declare dso_local i32 @microuptime(i32*) #1

declare dso_local i32 @INCR_PENDING_IO(i32, i32) #1

declare dso_local i64 @major(i32) #1

declare dso_local i32 @throttle_info_reset_window(i32) #1

declare dso_local i32 @throttle_info_set_initial_window(i32, %struct._throttle_io_info_t*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
