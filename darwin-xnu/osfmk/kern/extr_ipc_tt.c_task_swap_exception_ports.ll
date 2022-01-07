; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_tt.c_task_swap_exception_ports.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_tt.c_task_swap_exception_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32, i64, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64* }

@EXC_TYPES_COUNT = common dso_local global i32 0, align 4
@TASK_NULL = common dso_local global %struct.TYPE_10__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@EXC_MASK_VALID = common dso_local global i32 0, align 4
@MACH_EXCEPTION_CODES = common dso_local global i32 0, align 4
@IP_NULL = common dso_local global i64 0, align 8
@KERN_FAILURE = common dso_local global i32 0, align 4
@FIRST_EXCEPTION = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @task_swap_exception_ports(%struct.TYPE_10__* %0, i32 %1, i64 %2, i32 %3, i64 %4, i32* %5, i32* %6, i64* %7, i32* %8, i64* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %12, align 8
  store i32 %1, i32* %13, align 4
  store i64 %2, i64* %14, align 8
  store i32 %3, i32* %15, align 4
  store i64 %4, i64* %16, align 8
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store i64* %7, i64** %19, align 8
  store i32* %8, i32** %20, align 8
  store i64* %9, i64** %21, align 8
  %29 = load i32, i32* @EXC_TYPES_COUNT, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %22, align 8
  %32 = alloca i64, i64 %30, align 16
  store i64 %30, i64* %23, align 8
  %33 = call %struct.TYPE_12__* (...) @current_task()
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %24, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** @TASK_NULL, align 8
  %43 = icmp eq %struct.TYPE_10__* %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %10
  %45 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %45, i32* %11, align 4
  store i32 1, i32* %28, align 4
  br label %312

46:                                               ; preds = %10
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @EXC_MASK_VALID, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %53, i32* %11, align 4
  store i32 1, i32* %28, align 4
  br label %312

54:                                               ; preds = %46
  %55 = load i64, i64* %14, align 8
  %56 = call i64 @IP_VALID(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* @MACH_EXCEPTION_CODES, align 4
  %61 = xor i32 %60, -1
  %62 = and i32 %59, %61
  switch i32 %62, label %64 [
    i32 130, label %63
    i32 129, label %63
    i32 128, label %63
  ]

63:                                               ; preds = %58, %58, %58
  br label %66

64:                                               ; preds = %58
  %65 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %65, i32* %11, align 4
  store i32 1, i32* %28, align 4
  br label %312

66:                                               ; preds = %63
  br label %67

67:                                               ; preds = %66, %54
  %68 = load i64, i64* %16, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load i64, i64* %16, align 8
  %72 = call i32 @VALID_THREAD_STATE_FLAVOR(i64 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %75, i32* %11, align 4
  store i32 1, i32* %28, align 4
  br label %312

76:                                               ; preds = %70, %67
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %78 = call i32 @itk_lock(%struct.TYPE_10__* %77)
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @IP_NULL, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %76
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %86 = call i32 @itk_unlock(%struct.TYPE_10__* %85)
  %87 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %87, i32* %11, align 4
  store i32 1, i32* %28, align 4
  br label %312

88:                                               ; preds = %76
  %89 = load i32, i32* @EXC_TYPES_COUNT, align 4
  %90 = load i32, i32* @FIRST_EXCEPTION, align 4
  %91 = icmp sgt i32 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  store i32 0, i32* %27, align 4
  %94 = load i32, i32* @FIRST_EXCEPTION, align 4
  store i32 %94, i32* %25, align 4
  br label %95

95:                                               ; preds = %276, %88
  %96 = load i32, i32* %25, align 4
  %97 = load i32, i32* @EXC_TYPES_COUNT, align 4
  %98 = icmp ult i32 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load i32, i32* %27, align 4
  %101 = load i32*, i32** %18, align 8
  %102 = load i32, i32* %101, align 4
  %103 = icmp ult i32 %100, %102
  br label %104

104:                                              ; preds = %99, %95
  %105 = phi i1 [ false, %95 ], [ %103, %99 ]
  br i1 %105, label %106, label %279

106:                                              ; preds = %104
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %25, align 4
  %109 = shl i32 1, %108
  %110 = and i32 %107, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %270

112:                                              ; preds = %106
  store i32 0, i32* %26, align 4
  br label %113

113:                                              ; preds = %172, %112
  %114 = load i32, i32* %26, align 4
  %115 = load i32, i32* %27, align 4
  %116 = icmp ult i32 %114, %115
  br i1 %116, label %117, label %175

117:                                              ; preds = %113
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %119, align 8
  %121 = load i32, i32* %25, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64*, i64** %19, align 8
  %127 = load i32, i32* %26, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %125, %130
  br i1 %131, label %132, label %171

132:                                              ; preds = %117
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %134, align 8
  %136 = load i32, i32* %25, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load i32*, i32** %20, align 8
  %142 = load i32, i32* %26, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %140, %145
  br i1 %146, label %147, label %171

147:                                              ; preds = %132
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %149, align 8
  %151 = load i32, i32* %25, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = load i64*, i64** %21, align 8
  %157 = load i32, i32* %26, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i64, i64* %156, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = icmp eq i64 %155, %160
  br i1 %161, label %162, label %171

162:                                              ; preds = %147
  %163 = load i32, i32* %25, align 4
  %164 = shl i32 1, %163
  %165 = load i32*, i32** %17, align 8
  %166 = load i32, i32* %26, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %164
  store i32 %170, i32* %168, align 4
  br label %175

171:                                              ; preds = %147, %132, %117
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %26, align 4
  %174 = add i32 %173, 1
  store i32 %174, i32* %26, align 4
  br label %113

175:                                              ; preds = %162, %113
  %176 = load i32, i32* %26, align 4
  %177 = load i32, i32* %27, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %225

179:                                              ; preds = %175
  %180 = load i32, i32* %25, align 4
  %181 = shl i32 1, %180
  %182 = load i32*, i32** %17, align 8
  %183 = load i32, i32* %26, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  store i32 %181, i32* %185, align 4
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %187, align 8
  %189 = load i32, i32* %25, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = call i64 @ipc_port_copy_send(i64 %193)
  %195 = load i64*, i64** %19, align 8
  %196 = load i32, i32* %26, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds i64, i64* %195, i64 %197
  store i64 %194, i64* %198, align 8
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %200, align 8
  %202 = load i32, i32* %25, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = load i32*, i32** %20, align 8
  %208 = load i32, i32* %26, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  store i32 %206, i32* %210, align 4
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 1
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %212, align 8
  %214 = load i32, i32* %25, align 4
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = load i64*, i64** %21, align 8
  %220 = load i32, i32* %26, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds i64, i64* %219, i64 %221
  store i64 %218, i64* %222, align 8
  %223 = load i32, i32* %27, align 4
  %224 = add i32 %223, 1
  store i32 %224, i32* %27, align 4
  br label %225

225:                                              ; preds = %179, %175
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %227, align 8
  %229 = load i32, i32* %25, align 4
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i32, i32* %25, align 4
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds i64, i64* %32, i64 %235
  store i64 %233, i64* %236, align 8
  %237 = load i64, i64* %14, align 8
  %238 = call i64 @ipc_port_copy_send(i64 %237)
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 1
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %240, align 8
  %242 = load i32, i32* %25, align 4
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 0
  store i64 %238, i64* %245, align 8
  %246 = load i32, i32* %15, align 4
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 1
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %248, align 8
  %250 = load i32, i32* %25, align 4
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 1
  store i32 %246, i32* %253, align 8
  %254 = load i64, i64* %16, align 8
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 1
  %257 = load %struct.TYPE_11__*, %struct.TYPE_11__** %256, align 8
  %258 = load i32, i32* %25, align 4
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 2
  store i64 %254, i64* %261, align 8
  %262 = load i32, i32* %24, align 4
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 1
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** %264, align 8
  %266 = load i32, i32* %25, align 4
  %267 = zext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 3
  store i32 %262, i32* %269, align 8
  br label %275

270:                                              ; preds = %106
  %271 = load i64, i64* @IP_NULL, align 8
  %272 = load i32, i32* %25, align 4
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds i64, i64* %32, i64 %273
  store i64 %271, i64* %274, align 8
  br label %275

275:                                              ; preds = %270, %225
  br label %276

276:                                              ; preds = %275
  %277 = load i32, i32* %25, align 4
  %278 = add i32 %277, 1
  store i32 %278, i32* %25, align 4
  br label %95

279:                                              ; preds = %104
  %280 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %281 = call i32 @itk_unlock(%struct.TYPE_10__* %280)
  br label %282

282:                                              ; preds = %300, %279
  %283 = load i32, i32* %25, align 4
  %284 = add i32 %283, -1
  store i32 %284, i32* %25, align 4
  %285 = load i32, i32* @FIRST_EXCEPTION, align 4
  %286 = icmp uge i32 %284, %285
  br i1 %286, label %287, label %301

287:                                              ; preds = %282
  %288 = load i32, i32* %25, align 4
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds i64, i64* %32, i64 %289
  %291 = load i64, i64* %290, align 8
  %292 = call i64 @IP_VALID(i64 %291)
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %300

294:                                              ; preds = %287
  %295 = load i32, i32* %25, align 4
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds i64, i64* %32, i64 %296
  %298 = load i64, i64* %297, align 8
  %299 = call i32 @ipc_port_release_send(i64 %298)
  br label %300

300:                                              ; preds = %294, %287
  br label %282

301:                                              ; preds = %282
  %302 = load i64, i64* %14, align 8
  %303 = call i64 @IP_VALID(i64 %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %308

305:                                              ; preds = %301
  %306 = load i64, i64* %14, align 8
  %307 = call i32 @ipc_port_release_send(i64 %306)
  br label %308

308:                                              ; preds = %305, %301
  %309 = load i32, i32* %27, align 4
  %310 = load i32*, i32** %18, align 8
  store i32 %309, i32* %310, align 4
  %311 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %311, i32* %11, align 4
  store i32 1, i32* %28, align 4
  br label %312

312:                                              ; preds = %308, %84, %74, %64, %52, %44
  %313 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %313)
  %314 = load i32, i32* %11, align 4
  ret i32 %314
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_12__* @current_task(...) #2

declare dso_local i64 @IP_VALID(i64) #2

declare dso_local i32 @VALID_THREAD_STATE_FLAVOR(i64) #2

declare dso_local i32 @itk_lock(%struct.TYPE_10__*) #2

declare dso_local i32 @itk_unlock(%struct.TYPE_10__*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @ipc_port_copy_send(i64) #2

declare dso_local i32 @ipc_port_release_send(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
