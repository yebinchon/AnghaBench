; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_start_thread_fn.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_start_thread_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i8*, i32, i64, i32, i32, i64, i32, i64, %struct.timespec, i32, i32 (%struct.ifnet*)*, %struct.thread*, %struct.ifclassq }
%struct.timespec = type { i64, i64 }
%struct.thread = type { i32 }
%struct.ifclassq = type { i32 }
%struct.dlil_threading_info = type { i64, i32, %struct.thread*, %struct.thread*, i64 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@MAXTHREADNAMESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"ifnet_start_%s\00", align 1
@lo_ifp = common dso_local global %struct.ifnet* null, align 8
@dlil_main_input_thread = common dso_local global %struct.dlil_threading_info* null, align 8
@THREAD_NULL = common dso_local global %struct.thread* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"%s_starter\00", align 1
@PZERO = common dso_local global i32 0, align 4
@PSPIN = common dso_local global i32 0, align 4
@dlil_verbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"%s: starter thread terminated\0A\00", align 1
@IFEF_ENQUEUE_MULTI = common dso_local global i32 0, align 4
@IFEF_DELAY_START = common dso_local global i32 0, align 4
@ifnet_start_delayed = common dso_local global i32 0, align 4
@IFSF_FLOW_CONTROLLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @ifnet_start_thread_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ifnet_start_thread_fn(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.timespec*, align 8
  %10 = alloca %struct.ifclassq*, align 8
  %11 = alloca %struct.timespec, align 8
  %12 = alloca %struct.dlil_threading_info*, align 8
  %13 = alloca %struct.thread*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = bitcast i8* %16 to %struct.ifnet*
  store %struct.ifnet* %17, %struct.ifnet** %5, align 8
  %18 = load i32, i32* @IFNAMSIZ, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %6, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %7, align 8
  %23 = load i32, i32* @MAXTHREADNAMESIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %8, align 8
  store %struct.timespec* null, %struct.timespec** %9, align 8
  %26 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %27 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %26, i32 0, i32 12
  store %struct.ifclassq* %27, %struct.ifclassq** %10, align 8
  %28 = trunc i64 %24 to i32
  %29 = call i32 @bzero(i8* %25, i32 %28)
  %30 = trunc i64 %24 to i32
  %31 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %32 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @snprintf(i8* %25, i32 %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %36 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %35, i32 0, i32 11
  %37 = load %struct.thread*, %struct.thread** %36, align 8
  %38 = call i32 @thread_set_thread_name(%struct.thread* %37, i8* %25)
  %39 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %40 = load %struct.ifnet*, %struct.ifnet** @lo_ifp, align 8
  %41 = icmp eq %struct.ifnet* %39, %40
  br i1 %41, label %42, label %84

42:                                               ; preds = %2
  %43 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** @dlil_main_input_thread, align 8
  store %struct.dlil_threading_info* %43, %struct.dlil_threading_info** %12, align 8
  %44 = call %struct.thread* (...) @current_thread()
  store %struct.thread* %44, %struct.thread** %13, align 8
  %45 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %12, align 8
  %46 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %45, i32 0, i32 1
  %47 = call i32 @lck_mtx_lock(i32* %46)
  %48 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %12, align 8
  %49 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %79

52:                                               ; preds = %42
  %53 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %12, align 8
  %54 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %14, align 8
  %56 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %12, align 8
  %57 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %56, i32 0, i32 2
  %58 = load %struct.thread*, %struct.thread** %57, align 8
  %59 = load %struct.thread*, %struct.thread** @THREAD_NULL, align 8
  %60 = icmp eq %struct.thread* %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @VERIFY(i32 %61)
  %63 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %12, align 8
  %64 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %63, i32 0, i32 3
  %65 = load %struct.thread*, %struct.thread** %64, align 8
  %66 = load %struct.thread*, %struct.thread** @THREAD_NULL, align 8
  %67 = icmp eq %struct.thread* %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @VERIFY(i32 %68)
  %70 = load %struct.thread*, %struct.thread** %13, align 8
  %71 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %12, align 8
  %72 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %71, i32 0, i32 2
  store %struct.thread* %70, %struct.thread** %72, align 8
  %73 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %12, align 8
  %74 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %73, i32 0, i32 1
  %75 = call i32 @lck_mtx_unlock(i32* %74)
  %76 = load %struct.thread*, %struct.thread** %13, align 8
  %77 = load i64, i64* %14, align 8
  %78 = call i32 @dlil_affinity_set(%struct.thread* %76, i64 %77)
  br label %83

79:                                               ; preds = %42
  %80 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %12, align 8
  %81 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %80, i32 0, i32 1
  %82 = call i32 @lck_mtx_unlock(i32* %81)
  br label %83

83:                                               ; preds = %79, %52
  br label %84

84:                                               ; preds = %83, %2
  %85 = trunc i64 %20 to i32
  %86 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %87 = call i8* @if_name(%struct.ifnet* %86)
  %88 = call i32 @snprintf(i8* %22, i32 %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %87)
  %89 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %90 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %89, i32 0, i32 9
  %91 = call i32 @lck_mtx_lock_spin(i32* %90)
  br label %92

92:                                               ; preds = %259, %84
  %93 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %94 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %93, i32 0, i32 11
  %95 = load %struct.thread*, %struct.thread** %94, align 8
  %96 = icmp ne %struct.thread* %95, null
  br i1 %96, label %97, label %108

97:                                               ; preds = %92
  %98 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %99 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %98, i32 0, i32 11
  %100 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %101 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %100, i32 0, i32 9
  %102 = load i32, i32* @PZERO, align 4
  %103 = sub nsw i32 %102, 1
  %104 = load i32, i32* @PSPIN, align 4
  %105 = or i32 %103, %104
  %106 = load %struct.timespec*, %struct.timespec** %9, align 8
  %107 = call i32 @msleep(%struct.thread** %99, i32* %101, i32 %105, i8* %22, %struct.timespec* %106)
  br label %108

108:                                              ; preds = %97, %92
  %109 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %110 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %109, i32 0, i32 11
  %111 = load %struct.thread*, %struct.thread** %110, align 8
  %112 = load %struct.thread*, %struct.thread** @THREAD_NULL, align 8
  %113 = icmp eq %struct.thread* %111, %112
  br i1 %113, label %114, label %134

114:                                              ; preds = %108
  %115 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %116 = call i32 @ifnet_set_start_cycle(%struct.ifnet* %115, i32* null)
  %117 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %118 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %117, i32 0, i32 9
  %119 = call i32 @lck_mtx_unlock(i32* %118)
  %120 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %121 = call i32 @ifnet_purge(%struct.ifnet* %120)
  %122 = load i64, i64* @dlil_verbose, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %114
  %125 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %126 = call i8* @if_name(%struct.ifnet* %125)
  %127 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %126)
  br label %128

128:                                              ; preds = %124, %114
  %129 = call %struct.thread* (...) @current_thread()
  %130 = call i32 @thread_deallocate(%struct.thread* %129)
  %131 = call %struct.thread* (...) @current_thread()
  %132 = call i32 @thread_terminate(%struct.thread* %131)
  %133 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %133)
  ret void

134:                                              ; preds = %108
  %135 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %136 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %135, i32 0, i32 1
  store i32 1, i32* %136, align 8
  br label %137

137:                                              ; preds = %213, %134
  %138 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %139 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %15, align 8
  %141 = load %struct.ifclassq*, %struct.ifclassq** %10, align 8
  %142 = call i32 @IFCQ_IS_EMPTY(%struct.ifclassq* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %175, label %144

144:                                              ; preds = %137
  %145 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %146 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @IFEF_ENQUEUE_MULTI, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %175

151:                                              ; preds = %144
  %152 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %153 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %175

156:                                              ; preds = %151
  %157 = load %struct.ifclassq*, %struct.ifclassq** %10, align 8
  %158 = call i64 @IFCQ_LEN(%struct.ifclassq* %157)
  %159 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %160 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %159, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = icmp slt i64 %158, %161
  br i1 %162, label %163, label %175

163:                                              ; preds = %156
  %164 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %165 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @IFEF_DELAY_START, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %163
  %171 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %172 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %171, i32 0, i32 4
  store i32 1, i32* %172, align 4
  %173 = load i32, i32* @ifnet_start_delayed, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* @ifnet_start_delayed, align 4
  br label %214

175:                                              ; preds = %163, %156, %151, %144, %137
  %176 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %177 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %176, i32 0, i32 4
  store i32 0, i32* %177, align 4
  br label %178

178:                                              ; preds = %175
  %179 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %180 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %179, i32 0, i32 9
  %181 = call i32 @lck_mtx_unlock(i32* %180)
  %182 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %183 = call i32 @ifnet_is_attached(%struct.ifnet* %182, i32 1)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %178
  %186 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %187 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %186, i32 0, i32 9
  %188 = call i32 @lck_mtx_lock_spin(i32* %187)
  br label %214

189:                                              ; preds = %178
  %190 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %191 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %190, i32 0, i32 10
  %192 = load i32 (%struct.ifnet*)*, i32 (%struct.ifnet*)** %191, align 8
  %193 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %194 = call i32 %192(%struct.ifnet* %193)
  %195 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %196 = call i32 @ifnet_decr_iorefcnt(%struct.ifnet* %195)
  %197 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %198 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %197, i32 0, i32 9
  %199 = call i32 @lck_mtx_lock_spin(i32* %198)
  %200 = load i64, i64* %15, align 8
  %201 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %202 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = icmp eq i64 %200, %203
  br i1 %204, label %212, label %205

205:                                              ; preds = %189
  %206 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %207 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %206, i32 0, i32 6
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @IFSF_FLOW_CONTROLLED, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %205, %189
  br label %214

213:                                              ; preds = %205
  br label %137

214:                                              ; preds = %212, %185, %170
  %215 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %216 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %215, i32 0, i32 2
  store i64 0, i64* %216, align 8
  %217 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %218 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %217, i32 0, i32 1
  store i32 0, i32* %218, align 8
  %219 = load %struct.ifclassq*, %struct.ifclassq** %10, align 8
  %220 = call i64 @IFCQ_TBR_IS_ENABLED(%struct.ifclassq* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %214
  %223 = load %struct.ifclassq*, %struct.ifclassq** %10, align 8
  %224 = call i32 @IFCQ_IS_EMPTY(%struct.ifclassq* %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %229, label %226

226:                                              ; preds = %222
  %227 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %228 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %227, i32 0, i32 8
  br label %230

229:                                              ; preds = %222, %214
  br label %230

230:                                              ; preds = %229, %226
  %231 = phi %struct.timespec* [ %228, %226 ], [ null, %229 ]
  store %struct.timespec* %231, %struct.timespec** %9, align 8
  %232 = load %struct.timespec*, %struct.timespec** %9, align 8
  %233 = icmp eq %struct.timespec* %232, null
  br i1 %233, label %234, label %245

234:                                              ; preds = %230
  %235 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %236 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 4
  %238 = icmp eq i32 %237, 1
  br i1 %238, label %239, label %245

239:                                              ; preds = %234
  %240 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 0
  store i64 0, i64* %240, align 8
  %241 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %242 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %241, i32 0, i32 7
  %243 = load i64, i64* %242, align 8
  %244 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 1
  store i64 %243, i64* %244, align 8
  store %struct.timespec* %11, %struct.timespec** %9, align 8
  br label %245

245:                                              ; preds = %239, %234, %230
  %246 = load %struct.timespec*, %struct.timespec** %9, align 8
  %247 = icmp ne %struct.timespec* %246, null
  br i1 %247, label %248, label %259

248:                                              ; preds = %245
  %249 = load %struct.timespec*, %struct.timespec** %9, align 8
  %250 = getelementptr inbounds %struct.timespec, %struct.timespec* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %253, label %259

253:                                              ; preds = %248
  %254 = load %struct.timespec*, %struct.timespec** %9, align 8
  %255 = getelementptr inbounds %struct.timespec, %struct.timespec* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %253
  store %struct.timespec* null, %struct.timespec** %9, align 8
  br label %259

259:                                              ; preds = %258, %253, %248, %245
  br label %92
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bzero(i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @thread_set_thread_name(%struct.thread*, i8*) #2

declare dso_local %struct.thread* @current_thread(...) #2

declare dso_local i32 @lck_mtx_lock(i32*) #2

declare dso_local i32 @VERIFY(i32) #2

declare dso_local i32 @lck_mtx_unlock(i32*) #2

declare dso_local i32 @dlil_affinity_set(%struct.thread*, i64) #2

declare dso_local i8* @if_name(%struct.ifnet*) #2

declare dso_local i32 @lck_mtx_lock_spin(i32*) #2

declare dso_local i32 @msleep(%struct.thread**, i32*, i32, i8*, %struct.timespec*) #2

declare dso_local i32 @ifnet_set_start_cycle(%struct.ifnet*, i32*) #2

declare dso_local i32 @ifnet_purge(%struct.ifnet*) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i32 @thread_deallocate(%struct.thread*) #2

declare dso_local i32 @thread_terminate(%struct.thread*) #2

declare dso_local i32 @IFCQ_IS_EMPTY(%struct.ifclassq*) #2

declare dso_local i64 @IFCQ_LEN(%struct.ifclassq*) #2

declare dso_local i32 @ifnet_is_attached(%struct.ifnet*, i32) #2

declare dso_local i32 @ifnet_decr_iorefcnt(%struct.ifnet*) #2

declare dso_local i64 @IFCQ_TBR_IS_ENABLED(%struct.ifclassq*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
