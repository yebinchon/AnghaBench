; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vcilcs.c_ilcs_execute_function_ex.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vcilcs.c_ilcs_execute_function_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__*, i64, i32 }
%struct.TYPE_6__ = type { i32*, i32*, i32, i64 }

@ILCS_WAIT_TIMEOUT = common dso_local global i32 0, align 4
@ILCS_MAX_WAITING = common dso_local global i32 0, align 4
@VCOS_SUCCESS = common dso_local global i64 0, align 8
@CLOSED_CALLBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i8*, i32, i8*, i32, i32, i8*, i32, i8*, i32*)* @ilcs_execute_function_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ilcs_execute_function_ex(%struct.TYPE_7__* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5, i32 %6, i8* %7, i32 %8, i8* %9, i32* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_6__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %13, align 8
  store i32 %1, i32* %14, align 4
  store i8* %2, i8** %15, align 8
  store i32 %3, i32* %16, align 4
  store i8* %4, i8** %17, align 8
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i8* %7, i8** %20, align 8
  store i32 %8, i32* %21, align 4
  store i8* %9, i8** %22, align 8
  store i32* %10, i32** %23, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %24, align 8
  store i32 0, i32* %25, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %11
  store i32 -1, i32* %12, align 4
  br label %270

33:                                               ; preds = %11
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 8
  %36 = call i32 @vcos_mutex_lock(i32* %35)
  %37 = load i8*, i8** %22, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 9
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = sext i32 %42 to i64
  store i64 %44, i64* %26, align 8
  br label %191

45:                                               ; preds = %33
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %47, align 8
  %50 = icmp eq i64 %48, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 12
  %54 = call i32 @vcos_timer_set(i32* %53, i32 10)
  br label %55

55:                                               ; preds = %51, %45
  store i32 0, i32* %27, align 4
  br label %56

56:                                               ; preds = %147, %55
  %57 = load i32, i32* %27, align 4
  %58 = load i32, i32* @ILCS_WAIT_TIMEOUT, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %150

60:                                               ; preds = %56
  store i32 0, i32* %25, align 4
  br label %61

61:                                               ; preds = %77, %60
  %62 = load i32, i32* %25, align 4
  %63 = load i32, i32* @ILCS_MAX_WAITING, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %61
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 10
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load i32, i32* %25, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br label %75

75:                                               ; preds = %65, %61
  %76 = phi i1 [ false, %61 ], [ %74, %65 ]
  br i1 %76, label %77, label %80

77:                                               ; preds = %75
  %78 = load i32, i32* %25, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %25, align 4
  br label %61

80:                                               ; preds = %75
  %81 = load i32, i32* %25, align 4
  %82 = load i32, i32* @ILCS_MAX_WAITING, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %89, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %27, align 4
  %86 = load i32, i32* @ILCS_WAIT_TIMEOUT, align 4
  %87 = sub nsw i32 %86, 1
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %84, %80
  br label %150

90:                                               ; preds = %84
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 11
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 11
  store i64 0, i64* %97, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 12
  %100 = call i32 @vcos_timer_set(i32* %99, i32 10)
  br label %101

101:                                              ; preds = %95, %90
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 8
  %104 = call i32 @vcos_mutex_unlock(i32* %103)
  %105 = call i32* (...) @vcos_thread_current()
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 3
  %108 = icmp eq i32* %105, %107
  br i1 %108, label %109, label %139

109:                                              ; preds = %101
  br label %110

110:                                              ; preds = %136, %109
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 2
  %113 = call i64 @vcos_event_try(i32* %112)
  %114 = load i64, i64* @VCOS_SUCCESS, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %138

116:                                              ; preds = %110
  br label %117

117:                                              ; preds = %128, %116
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %119 = call i64 @ilcs_process_message(%struct.TYPE_7__* %118, i32 0)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %117
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @CLOSED_CALLBACK, align 8
  %126 = icmp sge i64 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  store i32 -1, i32* %12, align 4
  br label %270

128:                                              ; preds = %121
  br label %117

129:                                              ; preds = %117
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 2
  %132 = call i64 @vcos_event_try(i32* %131)
  %133 = load i64, i64* @VCOS_SUCCESS, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  br label %138

136:                                              ; preds = %129
  %137 = call i32 @vcos_sleep(i32 1)
  br label %110

138:                                              ; preds = %135, %110
  br label %143

139:                                              ; preds = %101
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 2
  %142 = call i32 @vcos_event_wait(i32* %141)
  br label %143

143:                                              ; preds = %139, %138
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 8
  %146 = call i32 @vcos_mutex_lock(i32* %145)
  br label %147

147:                                              ; preds = %143
  %148 = load i32, i32* %27, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %27, align 4
  br label %56

150:                                              ; preds = %89, %56
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %153, -1
  store i64 %154, i64* %152, align 8
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %150
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 12
  %159 = call i32 @vcos_timer_cancel(i32* %158)
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 11
  store i64 0, i64* %161, align 8
  br label %162

162:                                              ; preds = %156, %150
  %163 = load i32, i32* %25, align 4
  %164 = load i32, i32* @ILCS_MAX_WAITING, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %170

166:                                              ; preds = %162
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 8
  %169 = call i32 @vcos_mutex_unlock(i32* %168)
  store i32 -1, i32* %12, align 4
  br label %270

170:                                              ; preds = %162
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 10
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %172, align 8
  %174 = load i32, i32* %25, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i64 %175
  store %struct.TYPE_6__* %176, %struct.TYPE_6__** %24, align 8
  %177 = load i8*, i8** %22, align 8
  %178 = bitcast i8* %177 to i32*
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 1
  store i32* %178, i32** %180, align 8
  %181 = load i32*, i32** %23, align 8
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  store i32* %181, i32** %183, align 8
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 9
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %185, align 4
  %188 = sext i32 %186 to i64
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 3
  store i64 %188, i64* %190, align 8
  store i64 %188, i64* %26, align 8
  br label %191

191:                                              ; preds = %170, %39
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 8
  %194 = call i32 @vcos_mutex_unlock(i32* %193)
  %195 = load i32, i32* %21, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %191
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 4
  %200 = call i32 @vcos_semaphore_wait(i32* %199)
  br label %201

201:                                              ; preds = %197, %191
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %203 = load i32, i32* %14, align 4
  %204 = load i64, i64* %26, align 8
  %205 = load i8*, i8** %15, align 8
  %206 = load i32, i32* %16, align 4
  %207 = load i8*, i8** %17, align 8
  %208 = load i32, i32* %18, align 4
  %209 = call i32 @ilcs_transmit(%struct.TYPE_7__* %202, i32 %203, i64 %204, i8* %205, i32 %206, i8* %207, i32 %208)
  %210 = load i32, i32* %21, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %226

212:                                              ; preds = %201
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 6
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 5
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %19, align 4
  %220 = load i8*, i8** %20, align 8
  %221 = load i32, i32* %21, align 4
  %222 = call i32 @vchiq_queue_bulk_transmit(i32 %215, i32 %218, i32 %219, i8* %220, i32 %221, i32* null)
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 4
  %225 = call i32 @vcos_semaphore_post(i32* %224)
  br label %226

226:                                              ; preds = %212, %201
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %228 = icmp ne %struct.TYPE_6__* %227, null
  br i1 %228, label %230, label %229

229:                                              ; preds = %226
  store i32 0, i32* %12, align 4
  br label %270

230:                                              ; preds = %226
  %231 = call i32* (...) @vcos_thread_current()
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 3
  %234 = icmp ne i32* %231, %233
  br i1 %234, label %235, label %239

235:                                              ; preds = %230
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 2
  %238 = call i32 @vcos_event_wait(i32* %237)
  br label %257

239:                                              ; preds = %230
  br label %240

240:                                              ; preds = %255, %239
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %242 = call i64 @ilcs_process_message(%struct.TYPE_7__* %241, i32 1)
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @CLOSED_CALLBACK, align 8
  %247 = icmp sge i64 %245, %246
  br i1 %247, label %254, label %248

248:                                              ; preds = %240
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 2
  %251 = call i64 @vcos_event_try(i32* %250)
  %252 = load i64, i64* @VCOS_SUCCESS, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %255

254:                                              ; preds = %248, %240
  br label %256

255:                                              ; preds = %248
  br label %240

256:                                              ; preds = %254
  br label %257

257:                                              ; preds = %256, %235
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 1
  store i32* null, i32** %259, align 8
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 2
  %262 = call i32 @vcos_event_signal(i32* %261)
  %263 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @CLOSED_CALLBACK, align 8
  %267 = icmp sge i64 %265, %266
  %268 = zext i1 %267 to i64
  %269 = select i1 %267, i32 -1, i32 0
  store i32 %269, i32* %12, align 4
  br label %270

270:                                              ; preds = %257, %229, %166, %127, %32
  %271 = load i32, i32* %12, align 4
  ret i32 %271
}

declare dso_local i32 @vcos_mutex_lock(i32*) #1

declare dso_local i32 @vcos_timer_set(i32*, i32) #1

declare dso_local i32 @vcos_mutex_unlock(i32*) #1

declare dso_local i32* @vcos_thread_current(...) #1

declare dso_local i64 @vcos_event_try(i32*) #1

declare dso_local i64 @ilcs_process_message(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @vcos_sleep(i32) #1

declare dso_local i32 @vcos_event_wait(i32*) #1

declare dso_local i32 @vcos_timer_cancel(i32*) #1

declare dso_local i32 @vcos_semaphore_wait(i32*) #1

declare dso_local i32 @ilcs_transmit(%struct.TYPE_7__*, i32, i64, i8*, i32, i8*, i32) #1

declare dso_local i32 @vchiq_queue_bulk_transmit(i32, i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @vcos_semaphore_post(i32*) #1

declare dso_local i32 @vcos_event_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
