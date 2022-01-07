; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_right.c_ipc_right_delta.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_right.c_ipc_right_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, i32, i32, %struct.TYPE_23__*, i32, i32, i32*, i32, i32 }
%struct.TYPE_24__ = type { i32, i8*, i32 }

@IP_NULL = common dso_local global %struct.TYPE_23__* null, align 8
@MACH_PORT_RIGHT_NUMBER = common dso_local global i32 0, align 4
@MACH_PORT_TYPE_PORT_SET = common dso_local global i32 0, align 4
@kGUARD_EXC_INVALID_RIGHT = common dso_local global i32 0, align 4
@IE_REQ_NONE = common dso_local global i32 0, align 4
@IPS_NULL = common dso_local global i32 0, align 4
@IO_NULL = common dso_local global i8* null, align 8
@MACH_PORT_TYPE_RECEIVE = common dso_local global i32 0, align 4
@kGUARD_EXC_MOD_REFS = common dso_local global i32 0, align 4
@MACH_PORT_TYPE_SEND = common dso_local global i32 0, align 4
@MACH_PORT_TYPE_SEND_RECEIVE = common dso_local global i32 0, align 4
@IE_BITS_TYPE_MASK = common dso_local global i32 0, align 4
@MACH_PORT_TYPE_DEAD_NAME = common dso_local global i32 0, align 4
@MACH_PORT_UREFS_MAX = common dso_local global i32 0, align 4
@MACH_PORT_TYPE_SEND_ONCE = common dso_local global i32 0, align 4
@MACH_PORT_TYPE_SEND_RIGHTS = common dso_local global i32 0, align 4
@IE_BITS_UREFS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"ipc_right_delta: strange right %d for 0x%x (%p) in space:%p\00", align 1
@KERN_SUCCESS = common dso_local global i32 0, align 4
@KERN_INVALID_RIGHT = common dso_local global i32 0, align 4
@kGUARD_EXC_INVALID_VALUE = common dso_local global i32 0, align 4
@KERN_INVALID_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_right_delta(i64 %0, i32 %1, %struct.TYPE_24__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_23__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_23__*, align 8
  %18 = alloca %struct.TYPE_23__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_23__*, align 8
  %22 = alloca %struct.TYPE_23__*, align 8
  %23 = alloca %struct.TYPE_23__*, align 8
  %24 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** @IP_NULL, align 8
  store %struct.TYPE_23__* %25, %struct.TYPE_23__** %12, align 8
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %13, align 4
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @is_active(i64 %29)
  %31 = call i32 @assert(i32 %30)
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @MACH_PORT_RIGHT_NUMBER, align 4
  %34 = icmp slt i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i32, i32* %10, align 4
  switch i32 %37, label %751 [
    i32 131, label %38
    i32 130, label %99
    i32 128, label %281
    i32 133, label %375
    i32 129, label %518
    i32 132, label %750
  ]

38:                                               ; preds = %5
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @MACH_PORT_TYPE_PORT_SET, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @kGUARD_EXC_INVALID_RIGHT, align 4
  %46 = call i32 @mach_port_guard_exception(i32 %44, i32 0, i32 0, i32 %45)
  br label %765

47:                                               ; preds = %38
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @IE_BITS_TYPE(i32 %48)
  %50 = load i32, i32* @MACH_PORT_TYPE_PORT_SET, align 4
  %51 = icmp eq i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @IE_BITS_UREFS(i32 %54)
  %56 = icmp eq i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @IE_REQ_NONE, align 4
  %63 = icmp eq i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i32, i32* %11, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %47
  br label %761

69:                                               ; preds = %47
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, -1
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %776

73:                                               ; preds = %69
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = ptrtoint i8* %76 to i32
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @IPS_NULL, align 4
  %80 = icmp ne i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load i8*, i8** @IO_NULL, align 8
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  %86 = load i64, i64* %7, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %89 = call i32 @ipc_entry_dealloc(i64 %86, i32 %87, %struct.TYPE_24__* %88)
  %90 = load i32, i32* %14, align 4
  %91 = call i32 @ips_lock(i32 %90)
  %92 = load i32, i32* %14, align 4
  %93 = call i32 @ips_active(i32 %92)
  %94 = call i32 @assert(i32 %93)
  %95 = load i64, i64* %7, align 8
  %96 = call i32 @is_write_unlock(i64 %95)
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @ipc_pset_destroy(i32 %97)
  br label %759

99:                                               ; preds = %5
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** @IP_NULL, align 8
  store %struct.TYPE_23__* %100, %struct.TYPE_23__** %15, align 8
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* @MACH_PORT_TYPE_RECEIVE, align 4
  %103 = and i32 %101, %102
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @kGUARD_EXC_INVALID_RIGHT, align 4
  %108 = call i32 @mach_port_guard_exception(i32 %106, i32 0, i32 0, i32 %107)
  br label %765

109:                                              ; preds = %99
  %110 = load i32, i32* %11, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  br label %761

113:                                              ; preds = %109
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, -1
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  br label %776

117:                                              ; preds = %113
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = bitcast i8* %120 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %121, %struct.TYPE_23__** %12, align 8
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** @IP_NULL, align 8
  %124 = icmp ne %struct.TYPE_23__* %122, %123
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %128 = call i32 @ip_lock(%struct.TYPE_23__* %127)
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %130 = call i32 @ip_active(%struct.TYPE_23__* %129)
  %131 = call i32 @assert(i32 %130)
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = icmp eq i32 %134, %135
  %137 = zext i1 %136 to i32
  %138 = call i32 @assert(i32 %137)
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %7, align 8
  %143 = icmp eq i64 %141, %142
  %144 = zext i1 %143 to i32
  %145 = call i32 @assert(i32 %144)
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 8
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %162

150:                                              ; preds = %117
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 7
  %153 = load i32, i32* %152, align 8
  store i32 %153, i32* %16, align 4
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %155 = call i32 @ip_unlock(%struct.TYPE_23__* %154)
  %156 = load i64, i64* %7, align 8
  %157 = call i32 @is_write_unlock(i64 %156)
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* %16, align 4
  %160 = load i32, i32* @kGUARD_EXC_MOD_REFS, align 4
  %161 = call i32 @mach_port_guard_exception(i32 %158, i32 0, i32 %159, i32 %160)
  br label %783

162:                                              ; preds = %117
  %163 = load i32, i32* %13, align 4
  %164 = load i32, i32* @MACH_PORT_TYPE_SEND, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %244

167:                                              ; preds = %162
  %168 = load i32, i32* %13, align 4
  %169 = call i32 @IE_BITS_TYPE(i32 %168)
  %170 = load i32, i32* @MACH_PORT_TYPE_SEND_RECEIVE, align 4
  %171 = icmp eq i32 %169, %170
  %172 = zext i1 %171 to i32
  %173 = call i32 @assert(i32 %172)
  %174 = load i32, i32* %13, align 4
  %175 = call i32 @IE_BITS_UREFS(i32 %174)
  %176 = icmp sgt i32 %175, 0
  %177 = zext i1 %176 to i32
  %178 = call i32 @assert(i32 %177)
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = icmp sgt i32 %181, 0
  %183 = zext i1 %182 to i32
  %184 = call i32 @assert(i32 %183)
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 6
  %187 = load i32*, i32** %186, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %208

189:                                              ; preds = %167
  %190 = load i64, i64* %7, align 8
  %191 = load i32, i32* %8, align 4
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %193 = call i32 @ipc_entry_modified(i64 %190, i32 %191, %struct.TYPE_24__* %192)
  %194 = load i32, i32* @MACH_PORT_TYPE_RECEIVE, align 4
  %195 = xor i32 %194, -1
  %196 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = and i32 %198, %195
  store i32 %199, i32* %197, align 8
  %200 = load i64, i64* %7, align 8
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %202 = ptrtoint %struct.TYPE_23__* %201 to i32
  %203 = load i32, i32* %8, align 4
  %204 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %205 = call i32 @ipc_hash_insert(i64 %200, i32 %202, i32 %203, %struct.TYPE_24__* %204)
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %207 = call i32 @ip_reference(%struct.TYPE_23__* %206)
  br label %243

208:                                              ; preds = %167
  %209 = load i32, i32* @IE_BITS_TYPE_MASK, align 4
  %210 = xor i32 %209, -1
  %211 = load i32, i32* %13, align 4
  %212 = and i32 %211, %210
  store i32 %212, i32* %13, align 4
  %213 = load i32, i32* @MACH_PORT_TYPE_DEAD_NAME, align 4
  %214 = load i32, i32* %13, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %13, align 4
  %216 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %232

220:                                              ; preds = %208
  %221 = load i32, i32* @IE_REQ_NONE, align 4
  %222 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %222, i32 0, i32 2
  store i32 %221, i32* %223, align 8
  %224 = load i32, i32* %13, align 4
  %225 = call i32 @IE_BITS_UREFS(i32 %224)
  %226 = load i32, i32* @MACH_PORT_UREFS_MAX, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %231

228:                                              ; preds = %220
  %229 = load i32, i32* %13, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %13, align 4
  br label %231

231:                                              ; preds = %228, %220
  br label %232

232:                                              ; preds = %231, %208
  %233 = load i32, i32* %13, align 4
  %234 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %234, i32 0, i32 0
  store i32 %233, i32* %235, align 8
  %236 = load i8*, i8** @IO_NULL, align 8
  %237 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %238 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %237, i32 0, i32 1
  store i8* %236, i8** %238, align 8
  %239 = load i64, i64* %7, align 8
  %240 = load i32, i32* %8, align 4
  %241 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %242 = call i32 @ipc_entry_modified(i64 %239, i32 %240, %struct.TYPE_24__* %241)
  br label %243

243:                                              ; preds = %232, %189
  br label %268

244:                                              ; preds = %162
  %245 = load i32, i32* %13, align 4
  %246 = call i32 @IE_BITS_TYPE(i32 %245)
  %247 = load i32, i32* @MACH_PORT_TYPE_RECEIVE, align 4
  %248 = icmp eq i32 %246, %247
  %249 = zext i1 %248 to i32
  %250 = call i32 @assert(i32 %249)
  %251 = load i32, i32* %13, align 4
  %252 = call i32 @IE_BITS_UREFS(i32 %251)
  %253 = icmp eq i32 %252, 0
  %254 = zext i1 %253 to i32
  %255 = call i32 @assert(i32 %254)
  %256 = load i64, i64* %7, align 8
  %257 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %258 = load i32, i32* %8, align 4
  %259 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %260 = call %struct.TYPE_23__* @ipc_right_request_cancel_macro(i64 %256, %struct.TYPE_23__* %257, i32 %258, %struct.TYPE_24__* %259)
  store %struct.TYPE_23__* %260, %struct.TYPE_23__** %15, align 8
  %261 = load i8*, i8** @IO_NULL, align 8
  %262 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %263 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %262, i32 0, i32 1
  store i8* %261, i8** %263, align 8
  %264 = load i64, i64* %7, align 8
  %265 = load i32, i32* %8, align 4
  %266 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %267 = call i32 @ipc_entry_dealloc(i64 %264, i32 %265, %struct.TYPE_24__* %266)
  br label %268

268:                                              ; preds = %244, %243
  %269 = load i64, i64* %7, align 8
  %270 = call i32 @is_write_unlock(i64 %269)
  %271 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %272 = call i32 @ipc_port_destroy(%struct.TYPE_23__* %271)
  %273 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %274 = load %struct.TYPE_23__*, %struct.TYPE_23__** @IP_NULL, align 8
  %275 = icmp ne %struct.TYPE_23__* %273, %274
  br i1 %275, label %276, label %280

276:                                              ; preds = %268
  %277 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %278 = load i32, i32* %8, align 4
  %279 = call i32 @ipc_notify_port_deleted(%struct.TYPE_23__* %277, i32 %278)
  br label %280

280:                                              ; preds = %276, %268
  br label %759

281:                                              ; preds = %5
  %282 = load i32, i32* %13, align 4
  %283 = load i32, i32* @MACH_PORT_TYPE_SEND_ONCE, align 4
  %284 = and i32 %282, %283
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %281
  br label %765

287:                                              ; preds = %281
  %288 = load i32, i32* %13, align 4
  %289 = call i32 @IE_BITS_TYPE(i32 %288)
  %290 = load i32, i32* @MACH_PORT_TYPE_SEND_ONCE, align 4
  %291 = icmp eq i32 %289, %290
  %292 = zext i1 %291 to i32
  %293 = call i32 @assert(i32 %292)
  %294 = load i32, i32* %13, align 4
  %295 = call i32 @IE_BITS_UREFS(i32 %294)
  %296 = icmp eq i32 %295, 1
  %297 = zext i1 %296 to i32
  %298 = call i32 @assert(i32 %297)
  %299 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %300 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %299, i32 0, i32 1
  %301 = load i8*, i8** %300, align 8
  %302 = bitcast i8* %301 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %302, %struct.TYPE_23__** %12, align 8
  %303 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %304 = load %struct.TYPE_23__*, %struct.TYPE_23__** @IP_NULL, align 8
  %305 = icmp ne %struct.TYPE_23__* %303, %304
  %306 = zext i1 %305 to i32
  %307 = call i32 @assert(i32 %306)
  %308 = load i64, i64* %7, align 8
  %309 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %310 = load i32, i32* %8, align 4
  %311 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %312 = call i32 @ipc_right_check(i64 %308, %struct.TYPE_23__* %309, i32 %310, %struct.TYPE_24__* %311)
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %327

314:                                              ; preds = %287
  %315 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %316 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = load i32, i32* @MACH_PORT_TYPE_SEND_ONCE, align 4
  %319 = and i32 %317, %318
  %320 = icmp ne i32 %319, 0
  %321 = xor i1 %320, true
  %322 = zext i1 %321 to i32
  %323 = call i32 @assert(i32 %322)
  %324 = load i32, i32* %8, align 4
  %325 = load i32, i32* @kGUARD_EXC_INVALID_RIGHT, align 4
  %326 = call i32 @mach_port_guard_exception(i32 %324, i32 0, i32 0, i32 %325)
  br label %765

327:                                              ; preds = %287
  %328 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %329 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %328, i32 0, i32 5
  %330 = load i32, i32* %329, align 4
  %331 = icmp sgt i32 %330, 0
  %332 = zext i1 %331 to i32
  %333 = call i32 @assert(i32 %332)
  %334 = load i32, i32* %11, align 4
  %335 = icmp sgt i32 %334, 0
  br i1 %335, label %339, label %336

336:                                              ; preds = %327
  %337 = load i32, i32* %11, align 4
  %338 = icmp slt i32 %337, -1
  br i1 %338, label %339, label %342

339:                                              ; preds = %336, %327
  %340 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %341 = call i32 @ip_unlock(%struct.TYPE_23__* %340)
  br label %776

342:                                              ; preds = %336
  %343 = load i32, i32* %11, align 4
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %348

345:                                              ; preds = %342
  %346 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %347 = call i32 @ip_unlock(%struct.TYPE_23__* %346)
  br label %761

348:                                              ; preds = %342
  %349 = load i64, i64* %7, align 8
  %350 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %351 = load i32, i32* %8, align 4
  %352 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %353 = call %struct.TYPE_23__* @ipc_right_request_cancel_macro(i64 %349, %struct.TYPE_23__* %350, i32 %351, %struct.TYPE_24__* %352)
  store %struct.TYPE_23__* %353, %struct.TYPE_23__** %17, align 8
  %354 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %355 = call i32 @ip_unlock(%struct.TYPE_23__* %354)
  %356 = load i8*, i8** @IO_NULL, align 8
  %357 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %358 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %357, i32 0, i32 1
  store i8* %356, i8** %358, align 8
  %359 = load i64, i64* %7, align 8
  %360 = load i32, i32* %8, align 4
  %361 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %362 = call i32 @ipc_entry_dealloc(i64 %359, i32 %360, %struct.TYPE_24__* %361)
  %363 = load i64, i64* %7, align 8
  %364 = call i32 @is_write_unlock(i64 %363)
  %365 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %366 = call i32 @ipc_notify_send_once(%struct.TYPE_23__* %365)
  %367 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %368 = load %struct.TYPE_23__*, %struct.TYPE_23__** @IP_NULL, align 8
  %369 = icmp ne %struct.TYPE_23__* %367, %368
  br i1 %369, label %370, label %374

370:                                              ; preds = %348
  %371 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %372 = load i32, i32* %8, align 4
  %373 = call i32 @ipc_notify_port_deleted(%struct.TYPE_23__* %371, i32 %372)
  br label %374

374:                                              ; preds = %370, %348
  br label %759

375:                                              ; preds = %5
  %376 = load %struct.TYPE_23__*, %struct.TYPE_23__** @IP_NULL, align 8
  store %struct.TYPE_23__* %376, %struct.TYPE_23__** %18, align 8
  %377 = load i32, i32* %13, align 4
  %378 = load i32, i32* @MACH_PORT_TYPE_SEND_RIGHTS, align 4
  %379 = and i32 %377, %378
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %410

381:                                              ; preds = %375
  %382 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %383 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %382, i32 0, i32 1
  %384 = load i8*, i8** %383, align 8
  %385 = bitcast i8* %384 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %385, %struct.TYPE_23__** %12, align 8
  %386 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %387 = load %struct.TYPE_23__*, %struct.TYPE_23__** @IP_NULL, align 8
  %388 = icmp ne %struct.TYPE_23__* %386, %387
  %389 = zext i1 %388 to i32
  %390 = call i32 @assert(i32 %389)
  %391 = load i64, i64* %7, align 8
  %392 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %393 = load i32, i32* %8, align 4
  %394 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %395 = call i32 @ipc_right_check(i64 %391, %struct.TYPE_23__* %392, i32 %393, %struct.TYPE_24__* %394)
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %404, label %397

397:                                              ; preds = %381
  %398 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %399 = call i32 @ip_unlock(%struct.TYPE_23__* %398)
  %400 = load %struct.TYPE_23__*, %struct.TYPE_23__** @IP_NULL, align 8
  store %struct.TYPE_23__* %400, %struct.TYPE_23__** %12, align 8
  %401 = load i32, i32* %8, align 4
  %402 = load i32, i32* @kGUARD_EXC_INVALID_RIGHT, align 4
  %403 = call i32 @mach_port_guard_exception(i32 %401, i32 0, i32 0, i32 %402)
  br label %765

404:                                              ; preds = %381
  %405 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %406 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 8
  store i32 %407, i32* %13, align 4
  %408 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  store %struct.TYPE_23__* %408, %struct.TYPE_23__** %18, align 8
  %409 = load %struct.TYPE_23__*, %struct.TYPE_23__** @IP_NULL, align 8
  store %struct.TYPE_23__* %409, %struct.TYPE_23__** %12, align 8
  br label %420

410:                                              ; preds = %375
  %411 = load i32, i32* %13, align 4
  %412 = load i32, i32* @MACH_PORT_TYPE_DEAD_NAME, align 4
  %413 = and i32 %411, %412
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %415, label %419

415:                                              ; preds = %410
  %416 = load i32, i32* %8, align 4
  %417 = load i32, i32* @kGUARD_EXC_INVALID_RIGHT, align 4
  %418 = call i32 @mach_port_guard_exception(i32 %416, i32 0, i32 0, i32 %417)
  br label %765

419:                                              ; preds = %410
  br label %420

420:                                              ; preds = %419, %404
  %421 = load i32, i32* %13, align 4
  %422 = call i32 @IE_BITS_TYPE(i32 %421)
  %423 = load i32, i32* @MACH_PORT_TYPE_DEAD_NAME, align 4
  %424 = icmp eq i32 %422, %423
  %425 = zext i1 %424 to i32
  %426 = call i32 @assert(i32 %425)
  %427 = load i32, i32* %13, align 4
  %428 = call i32 @IE_BITS_UREFS(i32 %427)
  %429 = icmp sgt i32 %428, 0
  %430 = zext i1 %429 to i32
  %431 = call i32 @assert(i32 %430)
  %432 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %433 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %432, i32 0, i32 1
  %434 = load i8*, i8** %433, align 8
  %435 = load i8*, i8** @IO_NULL, align 8
  %436 = icmp eq i8* %434, %435
  %437 = zext i1 %436 to i32
  %438 = call i32 @assert(i32 %437)
  %439 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %440 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %439, i32 0, i32 2
  %441 = load i32, i32* %440, align 8
  %442 = load i32, i32* @IE_REQ_NONE, align 4
  %443 = icmp eq i32 %441, %442
  %444 = zext i1 %443 to i32
  %445 = call i32 @assert(i32 %444)
  %446 = load i32, i32* %11, align 4
  %447 = load i32, i32* @MACH_PORT_UREFS_MAX, align 4
  %448 = icmp sgt i32 %446, %447
  br i1 %448, label %454, label %449

449:                                              ; preds = %420
  %450 = load i32, i32* %11, align 4
  %451 = load i32, i32* @MACH_PORT_UREFS_MAX, align 4
  %452 = sub nsw i32 0, %451
  %453 = icmp slt i32 %450, %452
  br i1 %453, label %454, label %455

454:                                              ; preds = %449, %420
  br label %776

455:                                              ; preds = %449
  %456 = load i32, i32* %13, align 4
  %457 = call i32 @IE_BITS_UREFS(i32 %456)
  store i32 %457, i32* %19, align 4
  %458 = load i32, i32* %19, align 4
  %459 = load i32, i32* @MACH_PORT_UREFS_MAX, align 4
  %460 = icmp eq i32 %458, %459
  br i1 %460, label %461, label %468

461:                                              ; preds = %455
  %462 = load i32, i32* %11, align 4
  %463 = load i32, i32* @MACH_PORT_UREFS_MAX, align 4
  %464 = sub nsw i32 0, %463
  %465 = icmp ne i32 %462, %464
  br i1 %465, label %466, label %467

466:                                              ; preds = %461
  store i32 0, i32* %11, align 4
  br label %467

467:                                              ; preds = %466, %461
  br label %484

468:                                              ; preds = %455
  %469 = load i32, i32* %19, align 4
  %470 = load i32, i32* %11, align 4
  %471 = call i32 @MACH_PORT_UREFS_UNDERFLOW(i32 %469, i32 %470)
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %474

473:                                              ; preds = %468
  br label %776

474:                                              ; preds = %468
  %475 = load i32, i32* %19, align 4
  %476 = load i32, i32* %11, align 4
  %477 = call i32 @MACH_PORT_UREFS_OVERFLOW(i32 %475, i32 %476)
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %483

479:                                              ; preds = %474
  %480 = load i32, i32* @MACH_PORT_UREFS_MAX, align 4
  %481 = load i32, i32* %19, align 4
  %482 = sub nsw i32 %480, %481
  store i32 %482, i32* %11, align 4
  br label %483

483:                                              ; preds = %479, %474
  br label %484

484:                                              ; preds = %483, %467
  %485 = load i32, i32* %19, align 4
  %486 = load i32, i32* %11, align 4
  %487 = add nsw i32 %485, %486
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %489, label %494

489:                                              ; preds = %484
  %490 = load i64, i64* %7, align 8
  %491 = load i32, i32* %8, align 4
  %492 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %493 = call i32 @ipc_entry_dealloc(i64 %490, i32 %491, %struct.TYPE_24__* %492)
  br label %508

494:                                              ; preds = %484
  %495 = load i32, i32* %11, align 4
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %507

497:                                              ; preds = %494
  %498 = load i32, i32* %13, align 4
  %499 = load i32, i32* %11, align 4
  %500 = add nsw i32 %498, %499
  %501 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %502 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %501, i32 0, i32 0
  store i32 %500, i32* %502, align 8
  %503 = load i64, i64* %7, align 8
  %504 = load i32, i32* %8, align 4
  %505 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %506 = call i32 @ipc_entry_modified(i64 %503, i32 %504, %struct.TYPE_24__* %505)
  br label %507

507:                                              ; preds = %497, %494
  br label %508

508:                                              ; preds = %507, %489
  %509 = load i64, i64* %7, align 8
  %510 = call i32 @is_write_unlock(i64 %509)
  %511 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %512 = load %struct.TYPE_23__*, %struct.TYPE_23__** @IP_NULL, align 8
  %513 = icmp ne %struct.TYPE_23__* %511, %512
  br i1 %513, label %514, label %517

514:                                              ; preds = %508
  %515 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %516 = call i32 @ip_release(%struct.TYPE_23__* %515)
  br label %517

517:                                              ; preds = %514, %508
  br label %759

518:                                              ; preds = %5
  %519 = load %struct.TYPE_23__*, %struct.TYPE_23__** @IP_NULL, align 8
  store %struct.TYPE_23__* %519, %struct.TYPE_23__** %21, align 8
  %520 = load %struct.TYPE_23__*, %struct.TYPE_23__** @IP_NULL, align 8
  store %struct.TYPE_23__* %520, %struct.TYPE_23__** %22, align 8
  %521 = load %struct.TYPE_23__*, %struct.TYPE_23__** @IP_NULL, align 8
  store %struct.TYPE_23__* %521, %struct.TYPE_23__** %23, align 8
  store i32 0, i32* %24, align 4
  %522 = load i32, i32* %13, align 4
  %523 = load i32, i32* @MACH_PORT_TYPE_SEND, align 4
  %524 = and i32 %522, %523
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %526, label %536

526:                                              ; preds = %518
  %527 = load i32, i32* %13, align 4
  %528 = load i32, i32* @MACH_PORT_TYPE_DEAD_NAME, align 4
  %529 = and i32 %527, %528
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %531, label %535

531:                                              ; preds = %526
  %532 = load i32, i32* %8, align 4
  %533 = load i32, i32* @kGUARD_EXC_INVALID_RIGHT, align 4
  %534 = call i32 @mach_port_guard_exception(i32 %532, i32 0, i32 0, i32 %533)
  br label %535

535:                                              ; preds = %531, %526
  br label %765

536:                                              ; preds = %518
  %537 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %538 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %537, i32 0, i32 1
  %539 = load i8*, i8** %538, align 8
  %540 = bitcast i8* %539 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %540, %struct.TYPE_23__** %12, align 8
  %541 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %542 = load %struct.TYPE_23__*, %struct.TYPE_23__** @IP_NULL, align 8
  %543 = icmp ne %struct.TYPE_23__* %541, %542
  %544 = zext i1 %543 to i32
  %545 = call i32 @assert(i32 %544)
  %546 = load i64, i64* %7, align 8
  %547 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %548 = load i32, i32* %8, align 4
  %549 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %550 = call i32 @ipc_right_check(i64 %546, %struct.TYPE_23__* %547, i32 %548, %struct.TYPE_24__* %549)
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %552, label %561

552:                                              ; preds = %536
  %553 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %554 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %553, i32 0, i32 0
  %555 = load i32, i32* %554, align 8
  %556 = load i32, i32* @MACH_PORT_TYPE_SEND, align 4
  %557 = and i32 %555, %556
  %558 = icmp eq i32 %557, 0
  %559 = zext i1 %558 to i32
  %560 = call i32 @assert(i32 %559)
  br label %765

561:                                              ; preds = %536
  %562 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %563 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %562, i32 0, i32 4
  %564 = load i32, i32* %563, align 8
  %565 = icmp sgt i32 %564, 0
  %566 = zext i1 %565 to i32
  %567 = call i32 @assert(i32 %566)
  %568 = load i32, i32* %11, align 4
  %569 = load i32, i32* @MACH_PORT_UREFS_MAX, align 4
  %570 = icmp sgt i32 %568, %569
  br i1 %570, label %576, label %571

571:                                              ; preds = %561
  %572 = load i32, i32* %11, align 4
  %573 = load i32, i32* @MACH_PORT_UREFS_MAX, align 4
  %574 = sub nsw i32 0, %573
  %575 = icmp slt i32 %572, %574
  br i1 %575, label %576, label %579

576:                                              ; preds = %571, %561
  %577 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %578 = call i32 @ip_unlock(%struct.TYPE_23__* %577)
  br label %776

579:                                              ; preds = %571
  %580 = load i32, i32* %13, align 4
  %581 = call i32 @IE_BITS_UREFS(i32 %580)
  store i32 %581, i32* %20, align 4
  %582 = load i32, i32* %20, align 4
  %583 = load i32, i32* @MACH_PORT_UREFS_MAX, align 4
  %584 = icmp eq i32 %582, %583
  br i1 %584, label %585, label %592

585:                                              ; preds = %579
  %586 = load i32, i32* %11, align 4
  %587 = load i32, i32* @MACH_PORT_UREFS_MAX, align 4
  %588 = sub nsw i32 0, %587
  %589 = icmp ne i32 %586, %588
  br i1 %589, label %590, label %591

590:                                              ; preds = %585
  store i32 0, i32* %11, align 4
  br label %591

591:                                              ; preds = %590, %585
  br label %610

592:                                              ; preds = %579
  %593 = load i32, i32* %20, align 4
  %594 = load i32, i32* %11, align 4
  %595 = call i32 @MACH_PORT_UREFS_UNDERFLOW(i32 %593, i32 %594)
  %596 = icmp ne i32 %595, 0
  br i1 %596, label %597, label %600

597:                                              ; preds = %592
  %598 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %599 = call i32 @ip_unlock(%struct.TYPE_23__* %598)
  br label %776

600:                                              ; preds = %592
  %601 = load i32, i32* %20, align 4
  %602 = load i32, i32* %11, align 4
  %603 = call i32 @MACH_PORT_UREFS_OVERFLOW(i32 %601, i32 %602)
  %604 = icmp ne i32 %603, 0
  br i1 %604, label %605, label %609

605:                                              ; preds = %600
  %606 = load i32, i32* @MACH_PORT_UREFS_MAX, align 4
  %607 = load i32, i32* %20, align 4
  %608 = sub nsw i32 %606, %607
  store i32 %608, i32* %11, align 4
  br label %609

609:                                              ; preds = %605, %600
  br label %610

610:                                              ; preds = %609, %591
  %611 = load i32, i32* %20, align 4
  %612 = load i32, i32* %11, align 4
  %613 = add nsw i32 %611, %612
  %614 = icmp eq i32 %613, 0
  br i1 %614, label %615, label %705

615:                                              ; preds = %610
  %616 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %617 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %616, i32 0, i32 4
  %618 = load i32, i32* %617, align 8
  %619 = add nsw i32 %618, -1
  store i32 %619, i32* %617, align 8
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %621, label %636

621:                                              ; preds = %615
  %622 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %623 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %622, i32 0, i32 3
  %624 = load %struct.TYPE_23__*, %struct.TYPE_23__** %623, align 8
  store %struct.TYPE_23__* %624, %struct.TYPE_23__** %22, align 8
  %625 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %626 = load %struct.TYPE_23__*, %struct.TYPE_23__** @IP_NULL, align 8
  %627 = icmp ne %struct.TYPE_23__* %625, %626
  br i1 %627, label %628, label %635

628:                                              ; preds = %621
  %629 = load %struct.TYPE_23__*, %struct.TYPE_23__** @IP_NULL, align 8
  %630 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %631 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %630, i32 0, i32 3
  store %struct.TYPE_23__* %629, %struct.TYPE_23__** %631, align 8
  %632 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %633 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %632, i32 0, i32 2
  %634 = load i32, i32* %633, align 4
  store i32 %634, i32* %24, align 4
  br label %635

635:                                              ; preds = %628, %621
  br label %636

636:                                              ; preds = %635, %615
  %637 = load i32, i32* %13, align 4
  %638 = load i32, i32* @MACH_PORT_TYPE_RECEIVE, align 4
  %639 = and i32 %637, %638
  %640 = icmp ne i32 %639, 0
  br i1 %640, label %641, label %676

641:                                              ; preds = %636
  %642 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %643 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %642, i32 0, i32 1
  %644 = load i32, i32* %643, align 8
  %645 = load i32, i32* %8, align 4
  %646 = icmp eq i32 %644, %645
  %647 = zext i1 %646 to i32
  %648 = call i32 @assert(i32 %647)
  %649 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %650 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %649, i32 0, i32 0
  %651 = load i64, i64* %650, align 8
  %652 = load i64, i64* %7, align 8
  %653 = icmp eq i64 %651, %652
  %654 = zext i1 %653 to i32
  %655 = call i32 @assert(i32 %654)
  %656 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %657 = call i32 @ip_unlock(%struct.TYPE_23__* %656)
  %658 = load i32, i32* %13, align 4
  %659 = call i32 @IE_BITS_TYPE(i32 %658)
  %660 = load i32, i32* @MACH_PORT_TYPE_SEND_RECEIVE, align 4
  %661 = icmp eq i32 %659, %660
  %662 = zext i1 %661 to i32
  %663 = call i32 @assert(i32 %662)
  %664 = load i32, i32* %13, align 4
  %665 = load i32, i32* @IE_BITS_UREFS_MASK, align 4
  %666 = load i32, i32* @MACH_PORT_TYPE_SEND, align 4
  %667 = or i32 %665, %666
  %668 = xor i32 %667, -1
  %669 = and i32 %664, %668
  %670 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %671 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %670, i32 0, i32 0
  store i32 %669, i32* %671, align 8
  %672 = load i64, i64* %7, align 8
  %673 = load i32, i32* %8, align 4
  %674 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %675 = call i32 @ipc_entry_modified(i64 %672, i32 %673, %struct.TYPE_24__* %674)
  br label %704

676:                                              ; preds = %636
  %677 = load i32, i32* %13, align 4
  %678 = call i32 @IE_BITS_TYPE(i32 %677)
  %679 = load i32, i32* @MACH_PORT_TYPE_SEND, align 4
  %680 = icmp eq i32 %678, %679
  %681 = zext i1 %680 to i32
  %682 = call i32 @assert(i32 %681)
  %683 = load i64, i64* %7, align 8
  %684 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %685 = load i32, i32* %8, align 4
  %686 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %687 = call %struct.TYPE_23__* @ipc_right_request_cancel_macro(i64 %683, %struct.TYPE_23__* %684, i32 %685, %struct.TYPE_24__* %686)
  store %struct.TYPE_23__* %687, %struct.TYPE_23__** %21, align 8
  %688 = load i64, i64* %7, align 8
  %689 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %690 = ptrtoint %struct.TYPE_23__* %689 to i32
  %691 = load i32, i32* %8, align 4
  %692 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %693 = call i32 @ipc_hash_delete(i64 %688, i32 %690, i32 %691, %struct.TYPE_24__* %692)
  %694 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %695 = call i32 @ip_unlock(%struct.TYPE_23__* %694)
  %696 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  store %struct.TYPE_23__* %696, %struct.TYPE_23__** %23, align 8
  %697 = load i8*, i8** @IO_NULL, align 8
  %698 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %699 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %698, i32 0, i32 1
  store i8* %697, i8** %699, align 8
  %700 = load i64, i64* %7, align 8
  %701 = load i32, i32* %8, align 4
  %702 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %703 = call i32 @ipc_entry_dealloc(i64 %700, i32 %701, %struct.TYPE_24__* %702)
  br label %704

704:                                              ; preds = %676, %641
  br label %724

705:                                              ; preds = %610
  %706 = load i32, i32* %11, align 4
  %707 = icmp ne i32 %706, 0
  br i1 %707, label %708, label %720

708:                                              ; preds = %705
  %709 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %710 = call i32 @ip_unlock(%struct.TYPE_23__* %709)
  %711 = load i32, i32* %13, align 4
  %712 = load i32, i32* %11, align 4
  %713 = add nsw i32 %711, %712
  %714 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %715 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %714, i32 0, i32 0
  store i32 %713, i32* %715, align 8
  %716 = load i64, i64* %7, align 8
  %717 = load i32, i32* %8, align 4
  %718 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %719 = call i32 @ipc_entry_modified(i64 %716, i32 %717, %struct.TYPE_24__* %718)
  br label %723

720:                                              ; preds = %705
  %721 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %722 = call i32 @ip_unlock(%struct.TYPE_23__* %721)
  br label %723

723:                                              ; preds = %720, %708
  br label %724

724:                                              ; preds = %723, %704
  %725 = load i64, i64* %7, align 8
  %726 = call i32 @is_write_unlock(i64 %725)
  %727 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %728 = load %struct.TYPE_23__*, %struct.TYPE_23__** @IP_NULL, align 8
  %729 = icmp ne %struct.TYPE_23__* %727, %728
  br i1 %729, label %730, label %733

730:                                              ; preds = %724
  %731 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %732 = call i32 @ip_release(%struct.TYPE_23__* %731)
  br label %733

733:                                              ; preds = %730, %724
  %734 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %735 = load %struct.TYPE_23__*, %struct.TYPE_23__** @IP_NULL, align 8
  %736 = icmp ne %struct.TYPE_23__* %734, %735
  br i1 %736, label %737, label %741

737:                                              ; preds = %733
  %738 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %739 = load i32, i32* %24, align 4
  %740 = call i32 @ipc_notify_no_senders(%struct.TYPE_23__* %738, i32 %739)
  br label %741

741:                                              ; preds = %737, %733
  %742 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %743 = load %struct.TYPE_23__*, %struct.TYPE_23__** @IP_NULL, align 8
  %744 = icmp ne %struct.TYPE_23__* %742, %743
  br i1 %744, label %745, label %749

745:                                              ; preds = %741
  %746 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %747 = load i32, i32* %8, align 4
  %748 = call i32 @ipc_notify_port_deleted(%struct.TYPE_23__* %746, i32 %747)
  br label %749

749:                                              ; preds = %745, %741
  br label %759

750:                                              ; preds = %5
  br label %765

751:                                              ; preds = %5
  %752 = load i32, i32* %10, align 4
  %753 = load i32, i32* %8, align 4
  %754 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %755 = bitcast %struct.TYPE_24__* %754 to i8*
  %756 = load i64, i64* %7, align 8
  %757 = inttoptr i64 %756 to i8*
  %758 = call i32 @panic(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %752, i32 %753, i8* %755, i8* %757)
  br label %759

759:                                              ; preds = %751, %749, %517, %374, %280, %73
  %760 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %760, i32* %6, align 4
  br label %785

761:                                              ; preds = %345, %112, %68
  %762 = load i64, i64* %7, align 8
  %763 = call i32 @is_write_unlock(i64 %762)
  %764 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %764, i32* %6, align 4
  br label %785

765:                                              ; preds = %750, %552, %535, %415, %397, %314, %286, %105, %43
  %766 = load i64, i64* %7, align 8
  %767 = call i32 @is_write_unlock(i64 %766)
  %768 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %769 = load %struct.TYPE_23__*, %struct.TYPE_23__** @IP_NULL, align 8
  %770 = icmp ne %struct.TYPE_23__* %768, %769
  br i1 %770, label %771, label %774

771:                                              ; preds = %765
  %772 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %773 = call i32 @ip_release(%struct.TYPE_23__* %772)
  br label %774

774:                                              ; preds = %771, %765
  %775 = load i32, i32* @KERN_INVALID_RIGHT, align 4
  store i32 %775, i32* %6, align 4
  br label %785

776:                                              ; preds = %597, %576, %473, %454, %339, %116, %72
  %777 = load i64, i64* %7, align 8
  %778 = call i32 @is_write_unlock(i64 %777)
  %779 = load i32, i32* %8, align 4
  %780 = load i32, i32* @kGUARD_EXC_INVALID_VALUE, align 4
  %781 = call i32 @mach_port_guard_exception(i32 %779, i32 0, i32 0, i32 %780)
  %782 = load i32, i32* @KERN_INVALID_VALUE, align 4
  store i32 %782, i32* %6, align 4
  br label %785

783:                                              ; preds = %150
  %784 = load i32, i32* @KERN_INVALID_RIGHT, align 4
  store i32 %784, i32* %6, align 4
  br label %785

785:                                              ; preds = %783, %776, %774, %761, %759
  %786 = load i32, i32* %6, align 4
  ret i32 %786
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @is_active(i64) #1

declare dso_local i32 @mach_port_guard_exception(i32, i32, i32, i32) #1

declare dso_local i32 @IE_BITS_TYPE(i32) #1

declare dso_local i32 @IE_BITS_UREFS(i32) #1

declare dso_local i32 @ipc_entry_dealloc(i64, i32, %struct.TYPE_24__*) #1

declare dso_local i32 @ips_lock(i32) #1

declare dso_local i32 @ips_active(i32) #1

declare dso_local i32 @is_write_unlock(i64) #1

declare dso_local i32 @ipc_pset_destroy(i32) #1

declare dso_local i32 @ip_lock(%struct.TYPE_23__*) #1

declare dso_local i32 @ip_active(%struct.TYPE_23__*) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_23__*) #1

declare dso_local i32 @ipc_entry_modified(i64, i32, %struct.TYPE_24__*) #1

declare dso_local i32 @ipc_hash_insert(i64, i32, i32, %struct.TYPE_24__*) #1

declare dso_local i32 @ip_reference(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_23__* @ipc_right_request_cancel_macro(i64, %struct.TYPE_23__*, i32, %struct.TYPE_24__*) #1

declare dso_local i32 @ipc_port_destroy(%struct.TYPE_23__*) #1

declare dso_local i32 @ipc_notify_port_deleted(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @ipc_right_check(i64, %struct.TYPE_23__*, i32, %struct.TYPE_24__*) #1

declare dso_local i32 @ipc_notify_send_once(%struct.TYPE_23__*) #1

declare dso_local i32 @MACH_PORT_UREFS_UNDERFLOW(i32, i32) #1

declare dso_local i32 @MACH_PORT_UREFS_OVERFLOW(i32, i32) #1

declare dso_local i32 @ip_release(%struct.TYPE_23__*) #1

declare dso_local i32 @ipc_hash_delete(i64, i32, i32, %struct.TYPE_24__*) #1

declare dso_local i32 @ipc_notify_no_senders(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @panic(i8*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
