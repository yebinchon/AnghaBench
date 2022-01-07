; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_tt.c_thread_swap_exception_ports.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_tt.c_thread_swap_exception_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i64, i32, i64, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64* }

@EXC_TYPES_COUNT = common dso_local global i32 0, align 4
@THREAD_NULL = common dso_local global %struct.TYPE_11__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@EXC_MASK_VALID = common dso_local global i32 0, align 4
@MACH_EXCEPTION_CODES = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i32 0, align 4
@FIRST_EXCEPTION = common dso_local global i32 0, align 4
@IP_NULL = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thread_swap_exception_ports(%struct.TYPE_11__* %0, i32 %1, i64 %2, i32 %3, i64 %4, i32* %5, i32* %6, i64* %7, i32* %8, i64* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
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
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %12, align 8
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
  %33 = call %struct.TYPE_13__* (...) @current_task()
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %24, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** @THREAD_NULL, align 8
  %43 = icmp eq %struct.TYPE_11__* %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %10
  %45 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %45, i32* %11, align 4
  store i32 1, i32* %28, align 4
  br label %319

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
  br label %319

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
  br label %319

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
  br label %319

76:                                               ; preds = %70, %67
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %78 = call i32 @thread_mtx_lock(%struct.TYPE_11__* %77)
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %76
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %85 = call i32 @thread_mtx_unlock(%struct.TYPE_11__* %84)
  %86 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %86, i32* %11, align 4
  store i32 1, i32* %28, align 4
  br label %319

87:                                               ; preds = %76
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = icmp eq %struct.TYPE_12__* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %94 = call i32 @ipc_thread_init_exc_actions(%struct.TYPE_11__* %93)
  br label %95

95:                                               ; preds = %92, %87
  %96 = load i32, i32* @EXC_TYPES_COUNT, align 4
  %97 = load i32, i32* @FIRST_EXCEPTION, align 4
  %98 = icmp sgt i32 %96, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert(i32 %99)
  store i32 0, i32* %27, align 4
  %101 = load i32, i32* @FIRST_EXCEPTION, align 4
  store i32 %101, i32* %25, align 4
  br label %102

102:                                              ; preds = %283, %95
  %103 = load i32, i32* %25, align 4
  %104 = load i32, i32* @EXC_TYPES_COUNT, align 4
  %105 = icmp ult i32 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = load i32, i32* %27, align 4
  %108 = load i32*, i32** %18, align 8
  %109 = load i32, i32* %108, align 4
  %110 = icmp ult i32 %107, %109
  br label %111

111:                                              ; preds = %106, %102
  %112 = phi i1 [ false, %102 ], [ %110, %106 ]
  br i1 %112, label %113, label %286

113:                                              ; preds = %111
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %25, align 4
  %116 = shl i32 1, %115
  %117 = and i32 %114, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %277

119:                                              ; preds = %113
  store i32 0, i32* %26, align 4
  br label %120

120:                                              ; preds = %179, %119
  %121 = load i32, i32* %26, align 4
  %122 = load i32, i32* %27, align 4
  %123 = icmp ult i32 %121, %122
  br i1 %123, label %124, label %182

124:                                              ; preds = %120
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %126, align 8
  %128 = load i32, i32* %25, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64*, i64** %19, align 8
  %134 = load i32, i32* %26, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %132, %137
  br i1 %138, label %139, label %178

139:                                              ; preds = %124
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %141, align 8
  %143 = load i32, i32* %25, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load i32*, i32** %20, align 8
  %149 = load i32, i32* %26, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %147, %152
  br i1 %153, label %154, label %178

154:                                              ; preds = %139
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %156, align 8
  %158 = load i32, i32* %25, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load i64*, i64** %21, align 8
  %164 = load i32, i32* %26, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds i64, i64* %163, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %162, %167
  br i1 %168, label %169, label %178

169:                                              ; preds = %154
  %170 = load i32, i32* %25, align 4
  %171 = shl i32 1, %170
  %172 = load i32*, i32** %17, align 8
  %173 = load i32, i32* %26, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %171
  store i32 %177, i32* %175, align 4
  br label %182

178:                                              ; preds = %154, %139, %124
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %26, align 4
  %181 = add i32 %180, 1
  store i32 %181, i32* %26, align 4
  br label %120

182:                                              ; preds = %169, %120
  %183 = load i32, i32* %26, align 4
  %184 = load i32, i32* %27, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %232

186:                                              ; preds = %182
  %187 = load i32, i32* %25, align 4
  %188 = shl i32 1, %187
  %189 = load i32*, i32** %17, align 8
  %190 = load i32, i32* %26, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  store i32 %188, i32* %192, align 4
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %194, align 8
  %196 = load i32, i32* %25, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = call i64 @ipc_port_copy_send(i64 %200)
  %202 = load i64*, i64** %19, align 8
  %203 = load i32, i32* %26, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds i64, i64* %202, i64 %204
  store i64 %201, i64* %205, align 8
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %207, align 8
  %209 = load i32, i32* %25, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = load i32*, i32** %20, align 8
  %215 = load i32, i32* %26, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  store i32 %213, i32* %217, align 4
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %219, align 8
  %221 = load i32, i32* %25, align 4
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = load i64*, i64** %21, align 8
  %227 = load i32, i32* %26, align 4
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds i64, i64* %226, i64 %228
  store i64 %225, i64* %229, align 8
  %230 = load i32, i32* %27, align 4
  %231 = add i32 %230, 1
  store i32 %231, i32* %27, align 4
  br label %232

232:                                              ; preds = %186, %182
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %234, align 8
  %236 = load i32, i32* %25, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i32, i32* %25, align 4
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds i64, i64* %32, i64 %242
  store i64 %240, i64* %243, align 8
  %244 = load i64, i64* %14, align 8
  %245 = call i64 @ipc_port_copy_send(i64 %244)
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 0
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %247, align 8
  %249 = load i32, i32* %25, align 4
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 0
  store i64 %245, i64* %252, align 8
  %253 = load i32, i32* %15, align 4
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %255, align 8
  %257 = load i32, i32* %25, align 4
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 1
  store i32 %253, i32* %260, align 8
  %261 = load i64, i64* %16, align 8
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_12__*, %struct.TYPE_12__** %263, align 8
  %265 = load i32, i32* %25, align 4
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 2
  store i64 %261, i64* %268, align 8
  %269 = load i32, i32* %24, align 4
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 0
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %271, align 8
  %273 = load i32, i32* %25, align 4
  %274 = zext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 3
  store i32 %269, i32* %276, align 8
  br label %282

277:                                              ; preds = %113
  %278 = load i64, i64* @IP_NULL, align 8
  %279 = load i32, i32* %25, align 4
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds i64, i64* %32, i64 %280
  store i64 %278, i64* %281, align 8
  br label %282

282:                                              ; preds = %277, %232
  br label %283

283:                                              ; preds = %282
  %284 = load i32, i32* %25, align 4
  %285 = add i32 %284, 1
  store i32 %285, i32* %25, align 4
  br label %102

286:                                              ; preds = %111
  %287 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %288 = call i32 @thread_mtx_unlock(%struct.TYPE_11__* %287)
  br label %289

289:                                              ; preds = %307, %286
  %290 = load i32, i32* %25, align 4
  %291 = add i32 %290, -1
  store i32 %291, i32* %25, align 4
  %292 = load i32, i32* @FIRST_EXCEPTION, align 4
  %293 = icmp uge i32 %291, %292
  br i1 %293, label %294, label %308

294:                                              ; preds = %289
  %295 = load i32, i32* %25, align 4
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds i64, i64* %32, i64 %296
  %298 = load i64, i64* %297, align 8
  %299 = call i64 @IP_VALID(i64 %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %307

301:                                              ; preds = %294
  %302 = load i32, i32* %25, align 4
  %303 = zext i32 %302 to i64
  %304 = getelementptr inbounds i64, i64* %32, i64 %303
  %305 = load i64, i64* %304, align 8
  %306 = call i32 @ipc_port_release_send(i64 %305)
  br label %307

307:                                              ; preds = %301, %294
  br label %289

308:                                              ; preds = %289
  %309 = load i64, i64* %14, align 8
  %310 = call i64 @IP_VALID(i64 %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %315

312:                                              ; preds = %308
  %313 = load i64, i64* %14, align 8
  %314 = call i32 @ipc_port_release_send(i64 %313)
  br label %315

315:                                              ; preds = %312, %308
  %316 = load i32, i32* %27, align 4
  %317 = load i32*, i32** %18, align 8
  store i32 %316, i32* %317, align 4
  %318 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %318, i32* %11, align 4
  store i32 1, i32* %28, align 4
  br label %319

319:                                              ; preds = %315, %83, %74, %64, %52, %44
  %320 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %320)
  %321 = load i32, i32* %11, align 4
  ret i32 %321
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_13__* @current_task(...) #2

declare dso_local i64 @IP_VALID(i64) #2

declare dso_local i32 @VALID_THREAD_STATE_FLAVOR(i64) #2

declare dso_local i32 @thread_mtx_lock(%struct.TYPE_11__*) #2

declare dso_local i32 @thread_mtx_unlock(%struct.TYPE_11__*) #2

declare dso_local i32 @ipc_thread_init_exc_actions(%struct.TYPE_11__*) #2

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
