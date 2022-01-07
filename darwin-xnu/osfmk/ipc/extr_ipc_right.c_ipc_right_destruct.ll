; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_right.c_ipc_right_destruct.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_right.c_ipc_right_destruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, i64, i32*, i32, %struct.TYPE_18__*, i64, i32 }
%struct.TYPE_19__ = type { i32, i8*, i64 }

@IP_NULL = common dso_local global %struct.TYPE_18__* null, align 8
@MACH_PORT_TYPE_RECEIVE = common dso_local global i32 0, align 4
@MACH_PORT_TYPE_SEND = common dso_local global i32 0, align 4
@kGUARD_EXC_INVALID_RIGHT = common dso_local global i32 0, align 4
@KERN_INVALID_RIGHT = common dso_local global i32 0, align 4
@kGUARD_EXC_DESTROY = common dso_local global i32 0, align 4
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@MACH_PORT_UREFS_MAX = common dso_local global i64 0, align 8
@MACH_PORT_TYPE_SEND_RECEIVE = common dso_local global i32 0, align 4
@IE_BITS_UREFS_MASK = common dso_local global i32 0, align 4
@IE_BITS_TYPE_MASK = common dso_local global i32 0, align 4
@MACH_PORT_TYPE_DEAD_NAME = common dso_local global i32 0, align 4
@IE_REQ_NONE = common dso_local global i64 0, align 8
@IO_NULL = common dso_local global i8* null, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4
@kGUARD_EXC_INVALID_VALUE = common dso_local global i32 0, align 4
@KERN_INVALID_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_right_destruct(i64 %0, i32 %1, %struct.TYPE_19__* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** @IP_NULL, align 8
  store %struct.TYPE_18__* %19, %struct.TYPE_18__** %12, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** @IP_NULL, align 8
  store %struct.TYPE_18__* %20, %struct.TYPE_18__** %15, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** @IP_NULL, align 8
  store %struct.TYPE_18__* %21, %struct.TYPE_18__** %16, align 8
  store i32 0, i32* %17, align 4
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %13, align 4
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @is_active(i64 %25)
  %27 = call i32 @assert(i32 %26)
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* @MACH_PORT_TYPE_RECEIVE, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %5
  %33 = load i64, i64* %10, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* @MACH_PORT_TYPE_SEND, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35, %5
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @is_write_unlock(i64 %41)
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @kGUARD_EXC_INVALID_RIGHT, align 4
  %45 = call i32 @mach_port_guard_exception(i32 %43, i32 0, i64 0, i32 %44)
  %46 = load i32, i32* @KERN_INVALID_RIGHT, align 4
  store i32 %46, i32* %6, align 4
  br label %315

47:                                               ; preds = %35, %32
  %48 = load i64, i64* %10, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %308

51:                                               ; preds = %47
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = bitcast i8* %54 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %55, %struct.TYPE_18__** %12, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** @IP_NULL, align 8
  %58 = icmp ne %struct.TYPE_18__* %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %62 = call i32 @ip_lock(%struct.TYPE_18__* %61)
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %64 = call i32 @ip_active(%struct.TYPE_18__* %63)
  %65 = call i32 @assert(i32 %64)
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = icmp eq i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %7, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 6
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %103

84:                                               ; preds = %51
  %85 = load i64, i64* %11, align 8
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %85, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %84
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %18, align 8
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %95 = call i32 @ip_unlock(%struct.TYPE_18__* %94)
  %96 = load i64, i64* %7, align 8
  %97 = call i32 @is_write_unlock(i64 %96)
  %98 = load i32, i32* %8, align 4
  %99 = load i64, i64* %18, align 8
  %100 = load i32, i32* @kGUARD_EXC_DESTROY, align 4
  %101 = call i32 @mach_port_guard_exception(i32 %98, i32 0, i64 %99, i32 %100)
  %102 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %102, i32* %6, align 4
  br label %315

103:                                              ; preds = %84, %51
  %104 = load i64, i64* %10, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %183

106:                                              ; preds = %103
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp sgt i64 %109, 0
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  %113 = load i32, i32* %13, align 4
  %114 = call i64 @IE_BITS_UREFS(i32 %113)
  store i64 %114, i64* %14, align 8
  %115 = load i64, i64* %14, align 8
  %116 = load i64, i64* %10, align 8
  %117 = call i64 @MACH_PORT_UREFS_UNDERFLOW(i64 %115, i64 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %106
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %121 = call i32 @ip_unlock(%struct.TYPE_18__* %120)
  br label %308

122:                                              ; preds = %106
  %123 = load i64, i64* %14, align 8
  %124 = load i64, i64* @MACH_PORT_UREFS_MAX, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %122
  %127 = load i64, i64* %10, align 8
  %128 = load i64, i64* @MACH_PORT_UREFS_MAX, align 8
  %129 = sub nsw i64 0, %128
  %130 = icmp ne i64 %127, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  store i64 0, i64* %10, align 8
  br label %132

132:                                              ; preds = %131, %126
  br label %133

133:                                              ; preds = %132, %122
  %134 = load i64, i64* %14, align 8
  %135 = load i64, i64* %10, align 8
  %136 = add nsw i64 %134, %135
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %174

138:                                              ; preds = %133
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %141, -1
  store i64 %142, i64* %140, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %159

144:                                              ; preds = %138
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 5
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %146, align 8
  store %struct.TYPE_18__* %147, %struct.TYPE_18__** %16, align 8
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** @IP_NULL, align 8
  %150 = icmp ne %struct.TYPE_18__* %148, %149
  br i1 %150, label %151, label %158

151:                                              ; preds = %144
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** @IP_NULL, align 8
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 5
  store %struct.TYPE_18__* %152, %struct.TYPE_18__** %154, align 8
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  store i32 %157, i32* %17, align 4
  br label %158

158:                                              ; preds = %151, %144
  br label %159

159:                                              ; preds = %158, %138
  %160 = load i32, i32* %13, align 4
  %161 = call i32 @IE_BITS_TYPE(i32 %160)
  %162 = load i32, i32* @MACH_PORT_TYPE_SEND_RECEIVE, align 4
  %163 = icmp eq i32 %161, %162
  %164 = zext i1 %163 to i32
  %165 = call i32 @assert(i32 %164)
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* @IE_BITS_UREFS_MASK, align 4
  %168 = load i32, i32* @MACH_PORT_TYPE_SEND, align 4
  %169 = or i32 %167, %168
  %170 = xor i32 %169, -1
  %171 = and i32 %166, %170
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 8
  br label %182

174:                                              ; preds = %133
  %175 = load i32, i32* %13, align 4
  %176 = sext i32 %175 to i64
  %177 = load i64, i64* %10, align 8
  %178 = add nsw i64 %176, %177
  %179 = trunc i64 %178 to i32
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  br label %182

182:                                              ; preds = %174, %159
  br label %183

183:                                              ; preds = %182, %103
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  store i32 %186, i32* %13, align 4
  %187 = load i32, i32* %13, align 4
  %188 = load i32, i32* @MACH_PORT_TYPE_SEND, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %262

191:                                              ; preds = %183
  %192 = load i32, i32* %13, align 4
  %193 = call i64 @IE_BITS_UREFS(i32 %192)
  %194 = icmp sgt i64 %193, 0
  %195 = zext i1 %194 to i32
  %196 = call i32 @assert(i32 %195)
  %197 = load i32, i32* %13, align 4
  %198 = call i64 @IE_BITS_UREFS(i32 %197)
  %199 = load i64, i64* @MACH_PORT_UREFS_MAX, align 8
  %200 = icmp sle i64 %198, %199
  %201 = zext i1 %200 to i32
  %202 = call i32 @assert(i32 %201)
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 3
  %205 = load i32*, i32** %204, align 8
  %206 = icmp ne i32* %205, null
  br i1 %206, label %207, label %226

207:                                              ; preds = %191
  %208 = load i64, i64* %7, align 8
  %209 = load i32, i32* %8, align 4
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %211 = call i32 @ipc_entry_modified(i64 %208, i32 %209, %struct.TYPE_19__* %210)
  %212 = load i32, i32* @MACH_PORT_TYPE_RECEIVE, align 4
  %213 = xor i32 %212, -1
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = and i32 %216, %213
  store i32 %217, i32* %215, align 8
  %218 = load i64, i64* %7, align 8
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %220 = ptrtoint %struct.TYPE_18__* %219 to i32
  %221 = load i32, i32* %8, align 4
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %223 = call i32 @ipc_hash_insert(i64 %218, i32 %220, i32 %221, %struct.TYPE_19__* %222)
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %225 = call i32 @ip_reference(%struct.TYPE_18__* %224)
  br label %261

226:                                              ; preds = %191
  %227 = load i32, i32* @IE_BITS_TYPE_MASK, align 4
  %228 = xor i32 %227, -1
  %229 = load i32, i32* %13, align 4
  %230 = and i32 %229, %228
  store i32 %230, i32* %13, align 4
  %231 = load i32, i32* @MACH_PORT_TYPE_DEAD_NAME, align 4
  %232 = load i32, i32* %13, align 4
  %233 = or i32 %232, %231
  store i32 %233, i32* %13, align 4
  %234 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %250

238:                                              ; preds = %226
  %239 = load i64, i64* @IE_REQ_NONE, align 8
  %240 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 2
  store i64 %239, i64* %241, align 8
  %242 = load i32, i32* %13, align 4
  %243 = call i64 @IE_BITS_UREFS(i32 %242)
  %244 = load i64, i64* @MACH_PORT_UREFS_MAX, align 8
  %245 = icmp slt i64 %243, %244
  br i1 %245, label %246, label %249

246:                                              ; preds = %238
  %247 = load i32, i32* %13, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %13, align 4
  br label %249

249:                                              ; preds = %246, %238
  br label %250

250:                                              ; preds = %249, %226
  %251 = load i32, i32* %13, align 4
  %252 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %253 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %252, i32 0, i32 0
  store i32 %251, i32* %253, align 8
  %254 = load i8*, i8** @IO_NULL, align 8
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 1
  store i8* %254, i8** %256, align 8
  %257 = load i64, i64* %7, align 8
  %258 = load i32, i32* %8, align 4
  %259 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %260 = call i32 @ipc_entry_modified(i64 %257, i32 %258, %struct.TYPE_19__* %259)
  br label %261

261:                                              ; preds = %250, %207
  br label %286

262:                                              ; preds = %183
  %263 = load i32, i32* %13, align 4
  %264 = call i32 @IE_BITS_TYPE(i32 %263)
  %265 = load i32, i32* @MACH_PORT_TYPE_RECEIVE, align 4
  %266 = icmp eq i32 %264, %265
  %267 = zext i1 %266 to i32
  %268 = call i32 @assert(i32 %267)
  %269 = load i32, i32* %13, align 4
  %270 = call i64 @IE_BITS_UREFS(i32 %269)
  %271 = icmp eq i64 %270, 0
  %272 = zext i1 %271 to i32
  %273 = call i32 @assert(i32 %272)
  %274 = load i64, i64* %7, align 8
  %275 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %276 = load i32, i32* %8, align 4
  %277 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %278 = call %struct.TYPE_18__* @ipc_right_request_cancel_macro(i64 %274, %struct.TYPE_18__* %275, i32 %276, %struct.TYPE_19__* %277)
  store %struct.TYPE_18__* %278, %struct.TYPE_18__** %15, align 8
  %279 = load i8*, i8** @IO_NULL, align 8
  %280 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %281 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %280, i32 0, i32 1
  store i8* %279, i8** %281, align 8
  %282 = load i64, i64* %7, align 8
  %283 = load i32, i32* %8, align 4
  %284 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %285 = call i32 @ipc_entry_dealloc(i64 %282, i32 %283, %struct.TYPE_19__* %284)
  br label %286

286:                                              ; preds = %262, %261
  %287 = load i64, i64* %7, align 8
  %288 = call i32 @is_write_unlock(i64 %287)
  %289 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %290 = load %struct.TYPE_18__*, %struct.TYPE_18__** @IP_NULL, align 8
  %291 = icmp ne %struct.TYPE_18__* %289, %290
  br i1 %291, label %292, label %296

292:                                              ; preds = %286
  %293 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %294 = load i32, i32* %17, align 4
  %295 = call i32 @ipc_notify_no_senders(%struct.TYPE_18__* %293, i32 %294)
  br label %296

296:                                              ; preds = %292, %286
  %297 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %298 = call i32 @ipc_port_destroy(%struct.TYPE_18__* %297)
  %299 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %300 = load %struct.TYPE_18__*, %struct.TYPE_18__** @IP_NULL, align 8
  %301 = icmp ne %struct.TYPE_18__* %299, %300
  br i1 %301, label %302, label %306

302:                                              ; preds = %296
  %303 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %304 = load i32, i32* %8, align 4
  %305 = call i32 @ipc_notify_port_deleted(%struct.TYPE_18__* %303, i32 %304)
  br label %306

306:                                              ; preds = %302, %296
  %307 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %307, i32* %6, align 4
  br label %315

308:                                              ; preds = %119, %50
  %309 = load i64, i64* %7, align 8
  %310 = call i32 @is_write_unlock(i64 %309)
  %311 = load i32, i32* %8, align 4
  %312 = load i32, i32* @kGUARD_EXC_INVALID_VALUE, align 4
  %313 = call i32 @mach_port_guard_exception(i32 %311, i32 0, i64 0, i32 %312)
  %314 = load i32, i32* @KERN_INVALID_VALUE, align 4
  store i32 %314, i32* %6, align 4
  br label %315

315:                                              ; preds = %308, %306, %90, %40
  %316 = load i32, i32* %6, align 4
  ret i32 %316
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @is_active(i64) #1

declare dso_local i32 @is_write_unlock(i64) #1

declare dso_local i32 @mach_port_guard_exception(i32, i32, i64, i32) #1

declare dso_local i32 @ip_lock(%struct.TYPE_18__*) #1

declare dso_local i32 @ip_active(%struct.TYPE_18__*) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_18__*) #1

declare dso_local i64 @IE_BITS_UREFS(i32) #1

declare dso_local i64 @MACH_PORT_UREFS_UNDERFLOW(i64, i64) #1

declare dso_local i32 @IE_BITS_TYPE(i32) #1

declare dso_local i32 @ipc_entry_modified(i64, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @ipc_hash_insert(i64, i32, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @ip_reference(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @ipc_right_request_cancel_macro(i64, %struct.TYPE_18__*, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @ipc_entry_dealloc(i64, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @ipc_notify_no_senders(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ipc_port_destroy(%struct.TYPE_18__*) #1

declare dso_local i32 @ipc_notify_port_deleted(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
