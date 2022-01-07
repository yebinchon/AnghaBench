; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_bsdthread_set_self.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_bsdthread_set_self.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.uthread = type { i32, %struct.uu_workq_policy, %struct.kqrequest* }
%struct.uu_workq_policy = type { i64, i32 }
%struct.kqrequest = type { i32 }
%struct.workqueue = type { i32 }
%struct.TYPE_4__ = type { i32 }

@THREAD_TAG_WORKQUEUE = common dso_local global i32 0, align 4
@WORKQ_SET_SELF_WQ_KEVENT_UNBIND = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WORKQ_THREAD_QOS_MANAGER = common dso_local global i64 0, align 8
@EALREADY = common dso_local global i32 0, align 4
@KQR_WORKLOOP = common dso_local global i32 0, align 4
@WORKQ_SET_SELF_QOS_FLAG = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@UT_WORKQ_OVERCOMMIT = common dso_local global i32 0, align 4
@_PTHREAD_PRIORITY_OVERCOMMIT_FLAG = common dso_local global i32 0, align 4
@wq_max_constrained_threads = common dso_local global i64 0, align 8
@THREAD_QOS_POLICY = common dso_local global i32 0, align 4
@THREAD_QOS_POLICY_COUNT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@WORKQ_SET_SELF_VOUCHER_FLAG = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@WORKQ_SET_SELF_FIXEDPRIORITY_FLAG = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@THREAD_EXTENDED_POLICY = common dso_local global i32 0, align 4
@THREAD_EXTENDED_POLICY_COUNT = common dso_local global i32 0, align 4
@WORKQ_SET_SELF_TIMESHARE_FLAG = common dso_local global i32 0, align 4
@__const.bsdthread_set_self.extpol = private unnamed_addr constant %struct.TYPE_5__ { i32 1 }, align 4
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @bsdthread_set_self to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bsdthread_set_self(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.uthread*, align 8
  %13 = alloca %struct.workqueue*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.kqrequest*, align 8
  %21 = alloca %struct.TYPE_4__, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.uu_workq_policy, align 8
  %25 = alloca %struct.uu_workq_policy, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_5__, align 4
  %28 = alloca %struct.TYPE_5__, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call %struct.uthread* @get_bsdthread_info(i32 %29)
  store %struct.uthread* %30, %struct.uthread** %12, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call %struct.workqueue* @proc_get_wqptr(i32 %31)
  store %struct.workqueue* %32, %struct.workqueue** %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @thread_get_tag(i32 %33)
  %35 = load i32, i32* @THREAD_TAG_WORKQUEUE, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %19, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @WORKQ_SET_SELF_WQ_KEVENT_UNBIND, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %78

41:                                               ; preds = %5
  %42 = load i32, i32* %19, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %15, align 4
  br label %79

46:                                               ; preds = %41
  %47 = load %struct.uthread*, %struct.uthread** %12, align 8
  %48 = getelementptr inbounds %struct.uthread, %struct.uthread* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.uu_workq_policy, %struct.uu_workq_policy* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @WORKQ_THREAD_QOS_MANAGER, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* %15, align 4
  br label %79

55:                                               ; preds = %46
  %56 = load %struct.uthread*, %struct.uthread** %12, align 8
  %57 = getelementptr inbounds %struct.uthread, %struct.uthread* %56, i32 0, i32 2
  %58 = load %struct.kqrequest*, %struct.kqrequest** %57, align 8
  store %struct.kqrequest* %58, %struct.kqrequest** %20, align 8
  %59 = load %struct.kqrequest*, %struct.kqrequest** %20, align 8
  %60 = icmp eq %struct.kqrequest* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @EALREADY, align 4
  store i32 %62, i32* %15, align 4
  br label %79

63:                                               ; preds = %55
  %64 = load %struct.kqrequest*, %struct.kqrequest** %20, align 8
  %65 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @KQR_WORKLOOP, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* @EINVAL, align 4
  store i32 %71, i32* %15, align 4
  br label %79

72:                                               ; preds = %63
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.uthread*, %struct.uthread** %12, align 8
  %75 = getelementptr inbounds %struct.uthread, %struct.uthread* %74, i32 0, i32 2
  %76 = load %struct.kqrequest*, %struct.kqrequest** %75, align 8
  %77 = call i32 @kqueue_threadreq_unbind(i32 %73, %struct.kqrequest* %76)
  br label %78

78:                                               ; preds = %72, %5
  br label %79

79:                                               ; preds = %78, %70, %61, %53, %44
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @WORKQ_SET_SELF_QOS_FLAG, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %182

84:                                               ; preds = %79
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @_pthread_priority_to_policy(i32 %85, %struct.TYPE_4__* %21)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* @EINVAL, align 4
  store i32 %89, i32* %16, align 4
  br label %183

90:                                               ; preds = %84
  %91 = load i32, i32* %19, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @thread_has_qos_policy(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %93
  %98 = load i32, i32* @EPERM, align 4
  store i32 %98, i32* %16, align 4
  br label %183

99:                                               ; preds = %93
  br label %170

100:                                              ; preds = %90
  %101 = load %struct.uthread*, %struct.uthread** %12, align 8
  %102 = getelementptr inbounds %struct.uthread, %struct.uthread* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.uu_workq_policy, %struct.uu_workq_policy* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @WORKQ_THREAD_QOS_MANAGER, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  %108 = load i32, i32* @EINVAL, align 4
  store i32 %108, i32* %16, align 4
  br label %183

109:                                              ; preds = %100
  %110 = load %struct.uthread*, %struct.uthread** %12, align 8
  %111 = getelementptr inbounds %struct.uthread, %struct.uthread* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @UT_WORKQ_OVERCOMMIT, align 4
  %114 = and i32 %112, %113
  store i32 %114, i32* %22, align 4
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @_PTHREAD_PRIORITY_OVERCOMMIT_FLAG, align 4
  %117 = and i32 %115, %116
  store i32 %117, i32* %23, align 4
  store i32 0, i32* %26, align 4
  %118 = load %struct.workqueue*, %struct.workqueue** %13, align 8
  %119 = call i32 @workq_lock_spin(%struct.workqueue* %118)
  %120 = load i32, i32* %22, align 4
  %121 = load i32, i32* %23, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %147

123:                                              ; preds = %109
  %124 = load i32, i32* @UT_WORKQ_OVERCOMMIT, align 4
  %125 = load %struct.uthread*, %struct.uthread** %12, align 8
  %126 = getelementptr inbounds %struct.uthread, %struct.uthread* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = xor i32 %127, %124
  store i32 %128, i32* %126, align 8
  %129 = load i32, i32* %22, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %123
  %132 = load %struct.workqueue*, %struct.workqueue** %13, align 8
  %133 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 4
  br label %146

136:                                              ; preds = %123
  %137 = load %struct.workqueue*, %struct.workqueue** %13, align 8
  %138 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %138, align 4
  %141 = sext i32 %139 to i64
  %142 = load i64, i64* @wq_max_constrained_threads, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %136
  store i32 1, i32* %26, align 4
  br label %145

145:                                              ; preds = %144, %136
  br label %146

146:                                              ; preds = %145, %131
  br label %147

147:                                              ; preds = %146, %109
  %148 = load %struct.uthread*, %struct.uthread** %12, align 8
  %149 = getelementptr inbounds %struct.uthread, %struct.uthread* %148, i32 0, i32 1
  %150 = bitcast %struct.uu_workq_policy* %25 to i8*
  %151 = bitcast %struct.uu_workq_policy* %149 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %150, i8* align 8 %151, i64 16, i1 false)
  %152 = bitcast %struct.uu_workq_policy* %24 to i8*
  %153 = bitcast %struct.uu_workq_policy* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %152, i8* align 8 %153, i64 16, i1 false)
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds %struct.uu_workq_policy, %struct.uu_workq_policy* %25, i32 0, i32 1
  store i32 %155, i32* %156, align 8
  %157 = load i32, i32* %7, align 4
  %158 = load %struct.workqueue*, %struct.workqueue** %13, align 8
  %159 = load %struct.uthread*, %struct.uthread** %12, align 8
  %160 = load i32, i32* %26, align 4
  %161 = bitcast %struct.uu_workq_policy* %24 to { i64, i32 }*
  %162 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %161, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @workq_thread_update_bucket(i32 %157, %struct.workqueue* %158, %struct.uthread* %159, i64 %163, i32 %165, %struct.uu_workq_policy* byval(%struct.uu_workq_policy) align 8 %25, i32 %160)
  %167 = load %struct.workqueue*, %struct.workqueue** %13, align 8
  %168 = call i32 @workq_unlock(%struct.workqueue* %167)
  br label %169

169:                                              ; preds = %147
  br label %170

170:                                              ; preds = %169, %99
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* @THREAD_QOS_POLICY, align 4
  %173 = ptrtoint %struct.TYPE_4__* %21 to i32
  %174 = load i32, i32* @THREAD_QOS_POLICY_COUNT, align 4
  %175 = call i64 @thread_policy_set_internal(i32 %171, i32 %172, i32 %173, i32 %174)
  store i64 %175, i64* %14, align 8
  %176 = load i64, i64* %14, align 8
  %177 = load i64, i64* @KERN_SUCCESS, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %170
  %180 = load i32, i32* @EINVAL, align 4
  store i32 %180, i32* %16, align 4
  br label %181

181:                                              ; preds = %179, %170
  br label %182

182:                                              ; preds = %181, %79
  br label %183

183:                                              ; preds = %182, %107, %97, %88
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* @WORKQ_SET_SELF_VOUCHER_FLAG, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %197

188:                                              ; preds = %183
  %189 = load i32, i32* %10, align 4
  %190 = call i64 @thread_set_voucher_name(i32 %189)
  store i64 %190, i64* %14, align 8
  %191 = load i64, i64* %14, align 8
  %192 = load i64, i64* @KERN_SUCCESS, align 8
  %193 = icmp ne i64 %191, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %188
  %195 = load i32, i32* @ENOENT, align 4
  store i32 %195, i32* %17, align 4
  br label %198

196:                                              ; preds = %188
  br label %197

197:                                              ; preds = %196, %183
  br label %198

198:                                              ; preds = %197, %194
  %199 = load i32, i32* %16, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %198
  br label %250

202:                                              ; preds = %198
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* @WORKQ_SET_SELF_FIXEDPRIORITY_FLAG, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %225

207:                                              ; preds = %202
  %208 = bitcast %struct.TYPE_5__* %27 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %208, i8 0, i64 4, i1 false)
  %209 = load i32, i32* %19, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %207
  %212 = load i32, i32* @ENOTSUP, align 4
  store i32 %212, i32* %18, align 4
  br label %250

213:                                              ; preds = %207
  %214 = load i32, i32* %8, align 4
  %215 = load i32, i32* @THREAD_EXTENDED_POLICY, align 4
  %216 = ptrtoint %struct.TYPE_5__* %27 to i32
  %217 = load i32, i32* @THREAD_EXTENDED_POLICY_COUNT, align 4
  %218 = call i64 @thread_policy_set_internal(i32 %214, i32 %215, i32 %216, i32 %217)
  store i64 %218, i64* %14, align 8
  %219 = load i64, i64* %14, align 8
  %220 = load i64, i64* @KERN_SUCCESS, align 8
  %221 = icmp ne i64 %219, %220
  br i1 %221, label %222, label %224

222:                                              ; preds = %213
  %223 = load i32, i32* @EINVAL, align 4
  store i32 %223, i32* %18, align 4
  br label %250

224:                                              ; preds = %213
  br label %249

225:                                              ; preds = %202
  %226 = load i32, i32* %11, align 4
  %227 = load i32, i32* @WORKQ_SET_SELF_TIMESHARE_FLAG, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %248

230:                                              ; preds = %225
  %231 = bitcast %struct.TYPE_5__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %231, i8* align 4 bitcast (%struct.TYPE_5__* @__const.bsdthread_set_self.extpol to i8*), i64 4, i1 false)
  %232 = load i32, i32* %19, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %230
  %235 = load i32, i32* @ENOTSUP, align 4
  store i32 %235, i32* %18, align 4
  br label %250

236:                                              ; preds = %230
  %237 = load i32, i32* %8, align 4
  %238 = load i32, i32* @THREAD_EXTENDED_POLICY, align 4
  %239 = ptrtoint %struct.TYPE_5__* %28 to i32
  %240 = load i32, i32* @THREAD_EXTENDED_POLICY_COUNT, align 4
  %241 = call i64 @thread_policy_set_internal(i32 %237, i32 %238, i32 %239, i32 %240)
  store i64 %241, i64* %14, align 8
  %242 = load i64, i64* %14, align 8
  %243 = load i64, i64* @KERN_SUCCESS, align 8
  %244 = icmp ne i64 %242, %243
  br i1 %244, label %245, label %247

245:                                              ; preds = %236
  %246 = load i32, i32* @EINVAL, align 4
  store i32 %246, i32* %18, align 4
  br label %250

247:                                              ; preds = %236
  br label %248

248:                                              ; preds = %247, %225
  br label %249

249:                                              ; preds = %248, %224
  br label %250

250:                                              ; preds = %249, %245, %234, %222, %211, %201
  %251 = load i32, i32* %16, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %258

253:                                              ; preds = %250
  %254 = load i32, i32* %17, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %253
  %257 = load i32, i32* @EBADMSG, align 4
  store i32 %257, i32* %6, align 4
  br label %279

258:                                              ; preds = %253, %250
  %259 = load i32, i32* %15, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %258
  %262 = load i32, i32* %15, align 4
  store i32 %262, i32* %6, align 4
  br label %279

263:                                              ; preds = %258
  %264 = load i32, i32* %16, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %263
  %267 = load i32, i32* %16, align 4
  store i32 %267, i32* %6, align 4
  br label %279

268:                                              ; preds = %263
  %269 = load i32, i32* %17, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %268
  %272 = load i32, i32* %17, align 4
  store i32 %272, i32* %6, align 4
  br label %279

273:                                              ; preds = %268
  %274 = load i32, i32* %18, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %273
  %277 = load i32, i32* %18, align 4
  store i32 %277, i32* %6, align 4
  br label %279

278:                                              ; preds = %273
  store i32 0, i32* %6, align 4
  br label %279

279:                                              ; preds = %278, %276, %271, %266, %261, %256
  %280 = load i32, i32* %6, align 4
  ret i32 %280
}

declare dso_local %struct.uthread* @get_bsdthread_info(i32) #1

declare dso_local %struct.workqueue* @proc_get_wqptr(i32) #1

declare dso_local i32 @thread_get_tag(i32) #1

declare dso_local i32 @kqueue_threadreq_unbind(i32, %struct.kqrequest*) #1

declare dso_local i32 @_pthread_priority_to_policy(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @thread_has_qos_policy(i32) #1

declare dso_local i32 @workq_lock_spin(%struct.workqueue*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @workq_thread_update_bucket(i32, %struct.workqueue*, %struct.uthread*, i64, i32, %struct.uu_workq_policy* byval(%struct.uu_workq_policy) align 8, i32) #1

declare dso_local i32 @workq_unlock(%struct.workqueue*) #1

declare dso_local i64 @thread_policy_set_internal(i32, i32, i32, i32) #1

declare dso_local i64 @thread_set_voucher_name(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
