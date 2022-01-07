; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_pset.c_filt_machportprocess.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_pset.c_filt_machportprocess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, i64*, %struct.kevent_internal_s, %struct.TYPE_5__ }
%struct.kevent_internal_s = type { i32*, i32, i64, i8* }
%struct.TYPE_5__ = type { i32 }
%struct.filt_process_s = type { i32, i64, i32 }
%struct.TYPE_6__ = type { i32, i32, i64, i64, i64, i64, i64, i8*, %struct.knote*, i32*, i64, i64, i32 }

@FALSE = common dso_local global i64 0, align 8
@EV_EOF = common dso_local global i32 0, align 4
@FILTER_ACTIVE = common dso_local global i32 0, align 4
@FILTER_RESET_EVENT_QOS = common dso_local global i32 0, align 4
@MACH_RCV_MSG = common dso_local global i32 0, align 4
@MACH_RCV_LARGE = common dso_local global i32 0, align 4
@MACH_RCV_LARGE_IDENTITY = common dso_local global i32 0, align 4
@MACH_RCV_TRAILER_MASK = common dso_local global i32 0, align 4
@MACH_RCV_VOUCHER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@KEVENT_FLAG_STACK_DATA = common dso_local global i32 0, align 4
@MACH_RCV_STACK = common dso_local global i32 0, align 4
@MACH_PORT_NULL = common dso_local global i8* null, align 8
@MACH_RCV_TIMEOUT = common dso_local global i32 0, align 4
@MACH_RCV_IN_PROGRESS = common dso_local global i64 0, align 8
@THREAD_INTERRUPTIBLE = common dso_local global i32 0, align 4
@THREAD_RESTART = common dso_local global i64 0, align 8
@MACH_RCV_TIMED_OUT = common dso_local global i64 0, align 8
@TURNSTILE_NULL = common dso_local global i64 0, align 8
@THREAD_NOT_WAITING = common dso_local global i64 0, align 8
@MACH_RCV_TOO_LARGE = common dso_local global i64 0, align 8
@IKM_NULL = common dso_local global i64 0, align 8
@MACH_MSG_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, %struct.filt_process_s*, %struct.kevent_internal_s*)* @filt_machportprocess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filt_machportprocess(%struct.knote* %0, %struct.filt_process_s* %1, %struct.kevent_internal_s* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.knote*, align 8
  %6 = alloca %struct.filt_process_s*, align 8
  %7 = alloca %struct.kevent_internal_s*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.knote* %0, %struct.knote** %5, align 8
  store %struct.filt_process_s* %1, %struct.filt_process_s** %6, align 8
  store %struct.kevent_internal_s* %2, %struct.kevent_internal_s** %7, align 8
  %16 = load %struct.knote*, %struct.knote** %5, align 8
  %17 = getelementptr inbounds %struct.knote, %struct.knote* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @mqueue_to_object(i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = call %struct.TYPE_6__* (...) @current_thread()
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %10, align 8
  %23 = load i64, i64* @FALSE, align 8
  store i64 %23, i64* %11, align 8
  %24 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %25 = load %struct.knote*, %struct.knote** %5, align 8
  %26 = getelementptr inbounds %struct.knote, %struct.knote* %25, i32 0, i32 2
  %27 = bitcast %struct.kevent_internal_s* %24 to i8*
  %28 = bitcast %struct.kevent_internal_s* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 32, i1 false)
  %29 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %30 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  store i32 0, i32* %32, align 4
  %33 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %34 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @EV_EOF, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %3
  %40 = load i32, i32* @FILTER_ACTIVE, align 4
  %41 = load i32, i32* @FILTER_RESET_EVENT_QOS, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %4, align 4
  br label %325

43:                                               ; preds = %3
  %44 = load %struct.knote*, %struct.knote** %5, align 8
  %45 = getelementptr inbounds %struct.knote, %struct.knote* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @MACH_RCV_MSG, align 4
  %48 = load i32, i32* @MACH_RCV_LARGE, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @MACH_RCV_LARGE_IDENTITY, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @MACH_RCV_TRAILER_MASK, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @MACH_RCV_VOUCHER, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %46, %55
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @MACH_RCV_MSG, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %103

61:                                               ; preds = %43
  %62 = load %struct.knote*, %struct.knote** %5, align 8
  %63 = getelementptr inbounds %struct.knote, %struct.knote* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %14, align 8
  %67 = load %struct.knote*, %struct.knote** %5, align 8
  %68 = getelementptr inbounds %struct.knote, %struct.knote* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 1
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %15, align 8
  %72 = load i64, i64* %15, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %102

74:                                               ; preds = %61
  %75 = load %struct.filt_process_s*, %struct.filt_process_s** %6, align 8
  %76 = icmp ne %struct.filt_process_s* %75, null
  br i1 %76, label %77, label %102

77:                                               ; preds = %74
  %78 = load i64, i64* @TRUE, align 8
  store i64 %78, i64* %11, align 8
  %79 = load %struct.filt_process_s*, %struct.filt_process_s** %6, align 8
  %80 = getelementptr inbounds %struct.filt_process_s, %struct.filt_process_s* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %14, align 8
  %83 = load %struct.filt_process_s*, %struct.filt_process_s** %6, align 8
  %84 = getelementptr inbounds %struct.filt_process_s, %struct.filt_process_s* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %15, align 8
  %86 = load i32, i32* @MACH_RCV_LARGE, align 4
  %87 = load i32, i32* @MACH_RCV_LARGE_IDENTITY, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* %13, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %13, align 4
  %91 = load %struct.filt_process_s*, %struct.filt_process_s** %6, align 8
  %92 = getelementptr inbounds %struct.filt_process_s, %struct.filt_process_s* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @KEVENT_FLAG_STACK_DATA, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %77
  %98 = load i32, i32* @MACH_RCV_STACK, align 4
  %99 = load i32, i32* %13, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %13, align 4
  br label %101

101:                                              ; preds = %97, %77
  br label %102

102:                                              ; preds = %101, %74, %61
  br label %105

103:                                              ; preds = %43
  %104 = load i32, i32* @MACH_RCV_LARGE, align 4
  store i32 %104, i32* %13, align 4
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  br label %105

105:                                              ; preds = %103, %102
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @imq_lock(i32 %106)
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @io_reference(i32 %108)
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 12
  store i32 %110, i32* %112, align 8
  %113 = load i64, i64* %14, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 11
  store i64 %113, i64* %115, align 8
  %116 = load i64, i64* %15, align 8
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 10
  store i64 %116, i64* %118, align 8
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  store i32 0, i32* %120, align 8
  %121 = load i32, i32* %13, align 4
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load i8*, i8** @MACH_PORT_NULL, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 7
  store i8* %124, i8** %126, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 9
  store i32* null, i32** %128, align 8
  %129 = load i32, i32* @MACH_RCV_TIMEOUT, align 4
  %130 = load i32, i32* %13, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %13, align 4
  %132 = load i64, i64* @MACH_RCV_IN_PROGRESS, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  store i64 %132, i64* %134, align 8
  %135 = load %struct.knote*, %struct.knote** %5, align 8
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 8
  store %struct.knote* %135, %struct.knote** %137, align 8
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* %13, align 4
  %140 = load i64, i64* %15, align 8
  %141 = load i32, i32* @THREAD_INTERRUPTIBLE, align 4
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %143 = call i64 @ipc_mqueue_receive_on_thread(i32 %138, i32 %139, i64 %140, i32 0, i32 %141, %struct.TYPE_6__* %142)
  store i64 %143, i64* %12, align 8
  %144 = load i64, i64* %12, align 8
  %145 = load i64, i64* @THREAD_RESTART, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %153, label %147

147:                                              ; preds = %105
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @MACH_RCV_TIMED_OUT, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %163

153:                                              ; preds = %147, %105
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @TURNSTILE_NULL, align 8
  %158 = icmp ne i64 %156, %157
  %159 = zext i1 %158 to i32
  %160 = call i32 @assert(i32 %159)
  %161 = load i32, i32* %9, align 4
  %162 = call i32 @io_release(i32 %161)
  store i32 0, i32* %4, align 4
  br label %325

163:                                              ; preds = %147
  %164 = load i64, i64* %12, align 8
  %165 = load i64, i64* @THREAD_NOT_WAITING, align 8
  %166 = icmp eq i64 %164, %165
  %167 = zext i1 %166 to i32
  %168 = call i32 @assert(i32 %167)
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @MACH_RCV_IN_PROGRESS, align 8
  %173 = icmp ne i64 %171, %172
  %174 = zext i1 %173 to i32
  %175 = call i32 @assert(i32 %174)
  %176 = load i32, i32* %13, align 4
  %177 = load i32, i32* @MACH_RCV_MSG, align 4
  %178 = and i32 %176, %177
  %179 = load i32, i32* @MACH_RCV_MSG, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %181, label %204

181:                                              ; preds = %163
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @MACH_RCV_TOO_LARGE, align 8
  %186 = icmp eq i64 %184, %185
  %187 = zext i1 %186 to i32
  %188 = call i32 @assert(i32 %187)
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 4
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @IKM_NULL, align 8
  %193 = icmp eq i64 %191, %192
  %194 = zext i1 %193 to i32
  %195 = call i32 @assert(i32 %194)
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 7
  %198 = load i8*, i8** %197, align 8
  %199 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %200 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %199, i32 0, i32 3
  store i8* %198, i8** %200, align 8
  %201 = load i32, i32* %9, align 4
  %202 = call i32 @io_release(i32 %201)
  %203 = load i32, i32* @FILTER_ACTIVE, align 4
  store i32 %203, i32* %4, align 4
  br label %325

204:                                              ; preds = %163
  %205 = call i64 @mach_msg_receive_results(i64* %15)
  %206 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %207 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %206, i32 0, i32 2
  store i64 %205, i64* %207, align 8
  %208 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %209 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @MACH_RCV_TOO_LARGE, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %236

213:                                              ; preds = %204
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %218 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 1
  store i32 %216, i32* %220, align 4
  %221 = load i32, i32* %13, align 4
  %222 = load i32, i32* @MACH_RCV_LARGE_IDENTITY, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %213
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 7
  %228 = load i8*, i8** %227, align 8
  %229 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %230 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %229, i32 0, i32 3
  store i8* %228, i8** %230, align 8
  br label %235

231:                                              ; preds = %213
  %232 = load i8*, i8** @MACH_PORT_NULL, align 8
  %233 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %234 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %233, i32 0, i32 3
  store i8* %232, i8** %234, align 8
  br label %235

235:                                              ; preds = %231, %225
  br label %246

236:                                              ; preds = %204
  %237 = load i64, i64* %15, align 8
  %238 = trunc i64 %237 to i32
  %239 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %240 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %239, i32 0, i32 0
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 1
  store i32 %238, i32* %242, align 4
  %243 = load i8*, i8** @MACH_PORT_NULL, align 8
  %244 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %245 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %244, i32 0, i32 3
  store i8* %243, i8** %245, align 8
  br label %246

246:                                              ; preds = %236, %235
  %247 = load i64, i64* %11, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %302

249:                                              ; preds = %246
  %250 = load %struct.filt_process_s*, %struct.filt_process_s** %6, align 8
  %251 = getelementptr inbounds %struct.filt_process_s, %struct.filt_process_s* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* %15, align 8
  %254 = icmp sge i64 %252, %253
  %255 = zext i1 %254 to i32
  %256 = call i32 @assert(i32 %255)
  %257 = load i64, i64* %15, align 8
  %258 = load %struct.filt_process_s*, %struct.filt_process_s** %6, align 8
  %259 = getelementptr inbounds %struct.filt_process_s, %struct.filt_process_s* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = sub nsw i64 %260, %257
  store i64 %261, i64* %259, align 8
  %262 = load %struct.filt_process_s*, %struct.filt_process_s** %6, align 8
  %263 = getelementptr inbounds %struct.filt_process_s, %struct.filt_process_s* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* @KEVENT_FLAG_STACK_DATA, align 4
  %266 = and i32 %264, %265
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %283

268:                                              ; preds = %249
  %269 = load %struct.filt_process_s*, %struct.filt_process_s** %6, align 8
  %270 = getelementptr inbounds %struct.filt_process_s, %struct.filt_process_s* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %273 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %272, i32 0, i32 0
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 0
  store i32 %271, i32* %275, align 4
  %276 = load i64, i64* %15, align 8
  %277 = load %struct.filt_process_s*, %struct.filt_process_s** %6, align 8
  %278 = getelementptr inbounds %struct.filt_process_s, %struct.filt_process_s* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = sext i32 %279 to i64
  %281 = add nsw i64 %280, %276
  %282 = trunc i64 %281 to i32
  store i32 %282, i32* %278, align 8
  br label %301

283:                                              ; preds = %249
  %284 = load i32, i32* %13, align 4
  %285 = load i32, i32* @MACH_RCV_STACK, align 4
  %286 = and i32 %284, %285
  %287 = call i32 @assert(i32 %286)
  %288 = load %struct.filt_process_s*, %struct.filt_process_s** %6, align 8
  %289 = getelementptr inbounds %struct.filt_process_s, %struct.filt_process_s* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = sext i32 %290 to i64
  %292 = load %struct.filt_process_s*, %struct.filt_process_s** %6, align 8
  %293 = getelementptr inbounds %struct.filt_process_s, %struct.filt_process_s* %292, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = add nsw i64 %291, %294
  %296 = trunc i64 %295 to i32
  %297 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %298 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %297, i32 0, i32 0
  %299 = load i32*, i32** %298, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 0
  store i32 %296, i32* %300, align 4
  br label %301

301:                                              ; preds = %283, %268
  br label %302

302:                                              ; preds = %301, %246
  %303 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %304 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %303, i32 0, i32 2
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* @MACH_MSG_SUCCESS, align 8
  %307 = icmp eq i64 %305, %306
  br i1 %307, label %308, label %323

308:                                              ; preds = %302
  %309 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 6
  %311 = load i64, i64* %310, align 8
  %312 = trunc i64 %311 to i32
  %313 = shl i32 %312, 32
  %314 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %314, i32 0, i32 5
  %316 = load i64, i64* %315, align 8
  %317 = trunc i64 %316 to i32
  %318 = or i32 %313, %317
  %319 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %320 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %319, i32 0, i32 0
  %321 = load i32*, i32** %320, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 2
  store i32 %318, i32* %322, align 4
  br label %323

323:                                              ; preds = %308, %302
  %324 = load i32, i32* @FILTER_ACTIVE, align 4
  store i32 %324, i32* %4, align 4
  br label %325

325:                                              ; preds = %323, %181, %153, %39
  %326 = load i32, i32* %4, align 4
  ret i32 %326
}

declare dso_local i32 @mqueue_to_object(i32) #1

declare dso_local %struct.TYPE_6__* @current_thread(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @imq_lock(i32) #1

declare dso_local i32 @io_reference(i32) #1

declare dso_local i64 @ipc_mqueue_receive_on_thread(i32, i32, i64, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @io_release(i32) #1

declare dso_local i64 @mach_msg_receive_results(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
