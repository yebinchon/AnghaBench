; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_right.c_ipc_right_copyin.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_right.c_ipc_right_copyin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_20__*, i32 }
%struct.TYPE_21__ = type { i32, i64, i64 }

@IP_NULL = common dso_local global %struct.TYPE_20__* null, align 8
@MACH_PORT_TYPE_RECEIVE = common dso_local global i32 0, align 4
@IKOT_NONE = common dso_local global i32 0, align 4
@KERN_INVALID_CAPABILITY = common dso_local global i32 0, align 4
@MACH_PORT_TYPE_SEND = common dso_local global i32 0, align 4
@MACH_PORT_TYPE_SEND_RECEIVE = common dso_local global i32 0, align 4
@IO_NULL = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@MACH_PORT_NULL = common dso_local global i32 0, align 4
@MACH_PORT_TYPE_DEAD_NAME = common dso_local global i32 0, align 4
@MACH_PORT_TYPE_SEND_RIGHTS = common dso_local global i32 0, align 4
@MACH_PORT_TYPE_SEND_ONCE = common dso_local global i32 0, align 4
@IE_BITS_UREFS_MASK = common dso_local global i32 0, align 4
@MACH_PORT_UREFS_MAX = common dso_local global i32 0, align 4
@KERN_INVALID_RIGHT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@IE_REQ_NONE = common dso_local global i64 0, align 8
@IO_DEAD = common dso_local global i32 0, align 4
@IIT_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_right_copyin(i32 %0, i32 %1, %struct.TYPE_21__* %2, i32 %3, i32 %4, i32* %5, %struct.TYPE_20__** %6, %struct.TYPE_20__** %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_20__**, align 8
  %18 = alloca %struct.TYPE_20__**, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_20__*, align 8
  %22 = alloca %struct.TYPE_20__*, align 8
  %23 = alloca %struct.TYPE_20__*, align 8
  %24 = alloca %struct.TYPE_20__*, align 8
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32* %5, i32** %16, align 8
  store %struct.TYPE_20__** %6, %struct.TYPE_20__*** %17, align 8
  store %struct.TYPE_20__** %7, %struct.TYPE_20__*** %18, align 8
  store i32* %8, i32** %19, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** @IP_NULL, align 8
  %26 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %18, align 8
  store %struct.TYPE_20__* %25, %struct.TYPE_20__** %26, align 8
  %27 = load i32*, i32** %19, align 8
  store i32 0, i32* %27, align 4
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %20, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @is_active(i32 %31)
  %33 = call i32 @assert(i32 %32)
  %34 = load i32, i32* %14, align 4
  switch i32 %34, label %604 [
    i32 132, label %35
    i32 131, label %87
    i32 130, label %135
    i32 133, label %264
    i32 129, label %343
    i32 128, label %501
  ]

35:                                               ; preds = %9
  %36 = load i32, i32* %20, align 4
  %37 = load i32, i32* @MACH_PORT_TYPE_RECEIVE, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %605

41:                                               ; preds = %35
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %45, %struct.TYPE_20__** %21, align 8
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** @IP_NULL, align 8
  %48 = icmp ne %struct.TYPE_20__* %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %52 = call i32 @ip_lock(%struct.TYPE_20__* %51)
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %54 = call i32 @ip_active(%struct.TYPE_20__* %53)
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp eq i32 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = icmp eq i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 9
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %79 = call i32 @ip_reference(%struct.TYPE_20__* %78)
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %81 = call i32 @ip_unlock(%struct.TYPE_20__* %80)
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %83 = ptrtoint %struct.TYPE_20__* %82 to i32
  %84 = load i32*, i32** %16, align 8
  store i32 %83, i32* %84, align 4
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** @IP_NULL, align 8
  %86 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %17, align 8
  store %struct.TYPE_20__* %85, %struct.TYPE_20__** %86, align 8
  br label %607

87:                                               ; preds = %9
  %88 = load i32, i32* %20, align 4
  %89 = load i32, i32* @MACH_PORT_TYPE_RECEIVE, align 4
  %90 = and i32 %88, %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %605

93:                                               ; preds = %87
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %97, %struct.TYPE_20__** %21, align 8
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** @IP_NULL, align 8
  %100 = icmp ne %struct.TYPE_20__* %98, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %104 = call i32 @ip_lock(%struct.TYPE_20__* %103)
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %106 = call i32 @ip_active(%struct.TYPE_20__* %105)
  %107 = call i32 @assert(i32 %106)
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp eq i32 %110, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %11, align 4
  %119 = icmp eq i32 %117, %118
  %120 = zext i1 %119 to i32
  %121 = call i32 @assert(i32 %120)
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 8
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %127 = call i32 @ip_reference(%struct.TYPE_20__* %126)
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %129 = call i32 @ip_unlock(%struct.TYPE_20__* %128)
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %131 = ptrtoint %struct.TYPE_20__* %130 to i32
  %132 = load i32*, i32** %16, align 8
  store i32 %131, i32* %132, align 4
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** @IP_NULL, align 8
  %134 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %17, align 8
  store %struct.TYPE_20__* %133, %struct.TYPE_20__** %134, align 8
  br label %607

135:                                              ; preds = %9
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** @IP_NULL, align 8
  store %struct.TYPE_20__* %136, %struct.TYPE_20__** %22, align 8
  %137 = load i32, i32* %20, align 4
  %138 = load i32, i32* @MACH_PORT_TYPE_RECEIVE, align 4
  %139 = and i32 %137, %138
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  br label %605

142:                                              ; preds = %135
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @io_kotype(i64 %145)
  %147 = load i32, i32* @IKOT_NONE, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %142
  %150 = load i32, i32* @KERN_INVALID_CAPABILITY, align 4
  store i32 %150, i32* %10, align 4
  br label %700

151:                                              ; preds = %142
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = inttoptr i64 %154 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %155, %struct.TYPE_20__** %21, align 8
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** @IP_NULL, align 8
  %158 = icmp ne %struct.TYPE_20__* %156, %157
  %159 = zext i1 %158 to i32
  %160 = call i32 @assert(i32 %159)
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %162 = call i32 @ip_lock(%struct.TYPE_20__* %161)
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %164 = call i32 @ip_active(%struct.TYPE_20__* %163)
  %165 = call i32 @assert(i32 %164)
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %12, align 4
  %170 = icmp eq i32 %168, %169
  %171 = zext i1 %170 to i32
  %172 = call i32 @assert(i32 %171)
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* %11, align 4
  %177 = icmp eq i32 %175, %176
  %178 = zext i1 %177 to i32
  %179 = call i32 @assert(i32 %178)
  %180 = load i32, i32* %20, align 4
  %181 = load i32, i32* @MACH_PORT_TYPE_SEND, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %210

184:                                              ; preds = %151
  %185 = load i32, i32* %20, align 4
  %186 = call i32 @IE_BITS_TYPE(i32 %185)
  %187 = load i32, i32* @MACH_PORT_TYPE_SEND_RECEIVE, align 4
  %188 = icmp eq i32 %186, %187
  %189 = zext i1 %188 to i32
  %190 = call i32 @assert(i32 %189)
  %191 = load i32, i32* %20, align 4
  %192 = call i32 @IE_BITS_UREFS(i32 %191)
  %193 = icmp sgt i32 %192, 0
  %194 = zext i1 %193 to i32
  %195 = call i32 @assert(i32 %194)
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = icmp sgt i32 %198, 0
  %200 = zext i1 %199 to i32
  %201 = call i32 @assert(i32 %200)
  %202 = load i32, i32* %11, align 4
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %204 = ptrtoint %struct.TYPE_20__* %203 to i32
  %205 = load i32, i32* %12, align 4
  %206 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %207 = call i32 @ipc_hash_insert(i32 %202, i32 %204, i32 %205, %struct.TYPE_21__* %206)
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %209 = call i32 @ip_reference(%struct.TYPE_20__* %208)
  br label %231

210:                                              ; preds = %151
  %211 = load i32, i32* %20, align 4
  %212 = call i32 @IE_BITS_TYPE(i32 %211)
  %213 = load i32, i32* @MACH_PORT_TYPE_RECEIVE, align 4
  %214 = icmp eq i32 %212, %213
  %215 = zext i1 %214 to i32
  %216 = call i32 @assert(i32 %215)
  %217 = load i32, i32* %20, align 4
  %218 = call i32 @IE_BITS_UREFS(i32 %217)
  %219 = icmp eq i32 %218, 0
  %220 = zext i1 %219 to i32
  %221 = call i32 @assert(i32 %220)
  %222 = load i32, i32* %11, align 4
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %224 = load i32, i32* %12, align 4
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %226 = call %struct.TYPE_20__* @ipc_right_request_cancel_macro(i32 %222, %struct.TYPE_20__* %223, i32 %224, %struct.TYPE_21__* %225)
  store %struct.TYPE_20__* %226, %struct.TYPE_20__** %22, align 8
  %227 = load i8*, i8** @IO_NULL, align 8
  %228 = ptrtoint i8* %227 to i64
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 1
  store i64 %228, i64* %230, align 8
  br label %231

231:                                              ; preds = %210, %184
  %232 = load i32, i32* %20, align 4
  %233 = load i32, i32* @MACH_PORT_TYPE_RECEIVE, align 4
  %234 = xor i32 %233, -1
  %235 = and i32 %232, %234
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %237 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %236, i32 0, i32 0
  store i32 %235, i32* %237, align 8
  %238 = load i32, i32* %11, align 4
  %239 = load i32, i32* %12, align 4
  %240 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %241 = call i32 @ipc_entry_modified(i32 %238, i32 %239, %struct.TYPE_21__* %240)
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %243 = load i32, i32* @FALSE, align 4
  %244 = call i32 @ipc_port_clear_receiver(%struct.TYPE_20__* %242, i32 %243)
  %245 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %246 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %245, i32 0, i32 7
  %247 = call i32 @imq_lock(i32* %246)
  %248 = load i32, i32* @MACH_PORT_NULL, align 4
  %249 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %250 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %249, i32 0, i32 5
  store i32 %248, i32* %250, align 4
  %251 = load %struct.TYPE_20__*, %struct.TYPE_20__** @IP_NULL, align 8
  %252 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %253 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %252, i32 0, i32 8
  store %struct.TYPE_20__* %251, %struct.TYPE_20__** %253, align 8
  %254 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %255 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %254, i32 0, i32 7
  %256 = call i32 @imq_unlock(i32* %255)
  %257 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %258 = call i32 @ip_unlock(%struct.TYPE_20__* %257)
  %259 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %260 = ptrtoint %struct.TYPE_20__* %259 to i32
  %261 = load i32*, i32** %16, align 8
  store i32 %260, i32* %261, align 4
  %262 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %263 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %17, align 8
  store %struct.TYPE_20__* %262, %struct.TYPE_20__** %263, align 8
  br label %607

264:                                              ; preds = %9
  %265 = load i32, i32* %20, align 4
  %266 = load i32, i32* @MACH_PORT_TYPE_DEAD_NAME, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %264
  br label %609

270:                                              ; preds = %264
  %271 = load i32, i32* %20, align 4
  %272 = load i32, i32* @MACH_PORT_TYPE_SEND_RIGHTS, align 4
  %273 = and i32 %271, %272
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %270
  br label %605

276:                                              ; preds = %270
  %277 = load i32, i32* %20, align 4
  %278 = call i32 @IE_BITS_UREFS(i32 %277)
  %279 = icmp sgt i32 %278, 0
  %280 = zext i1 %279 to i32
  %281 = call i32 @assert(i32 %280)
  %282 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %283 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = inttoptr i64 %284 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %285, %struct.TYPE_20__** %21, align 8
  %286 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %287 = load %struct.TYPE_20__*, %struct.TYPE_20__** @IP_NULL, align 8
  %288 = icmp ne %struct.TYPE_20__* %286, %287
  %289 = zext i1 %288 to i32
  %290 = call i32 @assert(i32 %289)
  %291 = load i32, i32* %11, align 4
  %292 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %293 = load i32, i32* %12, align 4
  %294 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %295 = call i32 @ipc_right_check(i32 %291, %struct.TYPE_20__* %292, i32 %293, %struct.TYPE_21__* %294)
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %303

297:                                              ; preds = %276
  %298 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %299 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  store i32 %300, i32* %20, align 4
  %301 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %302 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %18, align 8
  store %struct.TYPE_20__* %301, %struct.TYPE_20__** %302, align 8
  br label %609

303:                                              ; preds = %276
  %304 = load i32, i32* %20, align 4
  %305 = load i32, i32* @MACH_PORT_TYPE_SEND, align 4
  %306 = and i32 %304, %305
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %323

308:                                              ; preds = %303
  %309 = load i32, i32* %20, align 4
  %310 = call i32 @IE_BITS_TYPE(i32 %309)
  %311 = load i32, i32* @MACH_PORT_TYPE_SEND_ONCE, align 4
  %312 = icmp eq i32 %310, %311
  %313 = zext i1 %312 to i32
  %314 = call i32 @assert(i32 %313)
  %315 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %316 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 8
  %318 = icmp sgt i32 %317, 0
  %319 = zext i1 %318 to i32
  %320 = call i32 @assert(i32 %319)
  %321 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %322 = call i32 @ip_unlock(%struct.TYPE_20__* %321)
  br label %605

323:                                              ; preds = %303
  %324 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %325 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %324, i32 0, i32 3
  %326 = load i32, i32* %325, align 4
  %327 = icmp sgt i32 %326, 0
  %328 = zext i1 %327 to i32
  %329 = call i32 @assert(i32 %328)
  %330 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %331 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %330, i32 0, i32 3
  %332 = load i32, i32* %331, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %331, align 4
  %334 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %335 = call i32 @ip_reference(%struct.TYPE_20__* %334)
  %336 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %337 = call i32 @ip_unlock(%struct.TYPE_20__* %336)
  %338 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %339 = ptrtoint %struct.TYPE_20__* %338 to i32
  %340 = load i32*, i32** %16, align 8
  store i32 %339, i32* %340, align 4
  %341 = load %struct.TYPE_20__*, %struct.TYPE_20__** @IP_NULL, align 8
  %342 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %17, align 8
  store %struct.TYPE_20__* %341, %struct.TYPE_20__** %342, align 8
  br label %607

343:                                              ; preds = %9
  %344 = load %struct.TYPE_20__*, %struct.TYPE_20__** @IP_NULL, align 8
  store %struct.TYPE_20__* %344, %struct.TYPE_20__** %23, align 8
  %345 = load i32, i32* %20, align 4
  %346 = load i32, i32* @MACH_PORT_TYPE_DEAD_NAME, align 4
  %347 = and i32 %345, %346
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %350

349:                                              ; preds = %343
  br label %643

350:                                              ; preds = %343
  %351 = load i32, i32* %20, align 4
  %352 = load i32, i32* @MACH_PORT_TYPE_SEND_RIGHTS, align 4
  %353 = and i32 %351, %352
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %356

355:                                              ; preds = %350
  br label %605

356:                                              ; preds = %350
  %357 = load i32, i32* %20, align 4
  %358 = call i32 @IE_BITS_UREFS(i32 %357)
  %359 = icmp sgt i32 %358, 0
  %360 = zext i1 %359 to i32
  %361 = call i32 @assert(i32 %360)
  %362 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %363 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %362, i32 0, i32 1
  %364 = load i64, i64* %363, align 8
  %365 = inttoptr i64 %364 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %365, %struct.TYPE_20__** %21, align 8
  %366 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %367 = load %struct.TYPE_20__*, %struct.TYPE_20__** @IP_NULL, align 8
  %368 = icmp ne %struct.TYPE_20__* %366, %367
  %369 = zext i1 %368 to i32
  %370 = call i32 @assert(i32 %369)
  %371 = load i32, i32* %11, align 4
  %372 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %373 = load i32, i32* %12, align 4
  %374 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %375 = call i32 @ipc_right_check(i32 %371, %struct.TYPE_20__* %372, i32 %373, %struct.TYPE_21__* %374)
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %383

377:                                              ; preds = %356
  %378 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %379 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  store i32 %380, i32* %20, align 4
  %381 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %382 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %18, align 8
  store %struct.TYPE_20__* %381, %struct.TYPE_20__** %382, align 8
  br label %643

383:                                              ; preds = %356
  %384 = load i32, i32* %20, align 4
  %385 = load i32, i32* @MACH_PORT_TYPE_SEND, align 4
  %386 = and i32 %384, %385
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %403

388:                                              ; preds = %383
  %389 = load i32, i32* %20, align 4
  %390 = call i32 @IE_BITS_TYPE(i32 %389)
  %391 = load i32, i32* @MACH_PORT_TYPE_SEND_ONCE, align 4
  %392 = icmp eq i32 %390, %391
  %393 = zext i1 %392 to i32
  %394 = call i32 @assert(i32 %393)
  %395 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %396 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %395, i32 0, i32 2
  %397 = load i32, i32* %396, align 8
  %398 = icmp sgt i32 %397, 0
  %399 = zext i1 %398 to i32
  %400 = call i32 @assert(i32 %399)
  %401 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %402 = call i32 @ip_unlock(%struct.TYPE_20__* %401)
  br label %605

403:                                              ; preds = %383
  %404 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %405 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %404, i32 0, i32 3
  %406 = load i32, i32* %405, align 4
  %407 = icmp sgt i32 %406, 0
  %408 = zext i1 %407 to i32
  %409 = call i32 @assert(i32 %408)
  %410 = load i32, i32* %20, align 4
  %411 = call i32 @IE_BITS_UREFS(i32 %410)
  %412 = icmp eq i32 %411, 1
  br i1 %412, label %413, label %472

413:                                              ; preds = %403
  %414 = load i32, i32* %20, align 4
  %415 = load i32, i32* @MACH_PORT_TYPE_RECEIVE, align 4
  %416 = and i32 %414, %415
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %441

418:                                              ; preds = %413
  %419 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %420 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %419, i32 0, i32 5
  %421 = load i32, i32* %420, align 4
  %422 = load i32, i32* %12, align 4
  %423 = icmp eq i32 %421, %422
  %424 = zext i1 %423 to i32
  %425 = call i32 @assert(i32 %424)
  %426 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %427 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %426, i32 0, i32 4
  %428 = load i32, i32* %427, align 8
  %429 = load i32, i32* %11, align 4
  %430 = icmp eq i32 %428, %429
  %431 = zext i1 %430 to i32
  %432 = call i32 @assert(i32 %431)
  %433 = load i32, i32* %20, align 4
  %434 = call i32 @IE_BITS_TYPE(i32 %433)
  %435 = load i32, i32* @MACH_PORT_TYPE_SEND_RECEIVE, align 4
  %436 = icmp eq i32 %434, %435
  %437 = zext i1 %436 to i32
  %438 = call i32 @assert(i32 %437)
  %439 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %440 = call i32 @ip_reference(%struct.TYPE_20__* %439)
  br label %463

441:                                              ; preds = %413
  %442 = load i32, i32* %20, align 4
  %443 = call i32 @IE_BITS_TYPE(i32 %442)
  %444 = load i32, i32* @MACH_PORT_TYPE_SEND, align 4
  %445 = icmp eq i32 %443, %444
  %446 = zext i1 %445 to i32
  %447 = call i32 @assert(i32 %446)
  %448 = load i32, i32* %11, align 4
  %449 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %450 = load i32, i32* %12, align 4
  %451 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %452 = call %struct.TYPE_20__* @ipc_right_request_cancel_macro(i32 %448, %struct.TYPE_20__* %449, i32 %450, %struct.TYPE_21__* %451)
  store %struct.TYPE_20__* %452, %struct.TYPE_20__** %23, align 8
  %453 = load i32, i32* %11, align 4
  %454 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %455 = ptrtoint %struct.TYPE_20__* %454 to i32
  %456 = load i32, i32* %12, align 4
  %457 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %458 = call i32 @ipc_hash_delete(i32 %453, i32 %455, i32 %456, %struct.TYPE_21__* %457)
  %459 = load i8*, i8** @IO_NULL, align 8
  %460 = ptrtoint i8* %459 to i64
  %461 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %462 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %461, i32 0, i32 1
  store i64 %460, i64* %462, align 8
  br label %463

463:                                              ; preds = %441, %418
  %464 = load i32, i32* %20, align 4
  %465 = load i32, i32* @IE_BITS_UREFS_MASK, align 4
  %466 = load i32, i32* @MACH_PORT_TYPE_SEND, align 4
  %467 = or i32 %465, %466
  %468 = xor i32 %467, -1
  %469 = and i32 %464, %468
  %470 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %471 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %470, i32 0, i32 0
  store i32 %469, i32* %471, align 8
  br label %489

472:                                              ; preds = %403
  %473 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %474 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %473, i32 0, i32 3
  %475 = load i32, i32* %474, align 4
  %476 = add nsw i32 %475, 1
  store i32 %476, i32* %474, align 4
  %477 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %478 = call i32 @ip_reference(%struct.TYPE_20__* %477)
  %479 = load i32, i32* %20, align 4
  %480 = call i32 @IE_BITS_UREFS(i32 %479)
  %481 = load i32, i32* @MACH_PORT_UREFS_MAX, align 4
  %482 = icmp slt i32 %480, %481
  br i1 %482, label %483, label %488

483:                                              ; preds = %472
  %484 = load i32, i32* %20, align 4
  %485 = sub nsw i32 %484, 1
  %486 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %487 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %486, i32 0, i32 0
  store i32 %485, i32* %487, align 8
  br label %488

488:                                              ; preds = %483, %472
  br label %489

489:                                              ; preds = %488, %463
  %490 = load i32, i32* %11, align 4
  %491 = load i32, i32* %12, align 4
  %492 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %493 = call i32 @ipc_entry_modified(i32 %490, i32 %491, %struct.TYPE_21__* %492)
  %494 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %495 = call i32 @ip_unlock(%struct.TYPE_20__* %494)
  %496 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %497 = ptrtoint %struct.TYPE_20__* %496 to i32
  %498 = load i32*, i32** %16, align 8
  store i32 %497, i32* %498, align 4
  %499 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %500 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %17, align 8
  store %struct.TYPE_20__* %499, %struct.TYPE_20__** %500, align 8
  br label %607

501:                                              ; preds = %9
  %502 = load i32, i32* %20, align 4
  %503 = load i32, i32* @MACH_PORT_TYPE_DEAD_NAME, align 4
  %504 = and i32 %502, %503
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %506, label %507

506:                                              ; preds = %501
  br label %643

507:                                              ; preds = %501
  %508 = load i32, i32* %20, align 4
  %509 = load i32, i32* @MACH_PORT_TYPE_SEND_RIGHTS, align 4
  %510 = and i32 %508, %509
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %512, label %513

512:                                              ; preds = %507
  br label %605

513:                                              ; preds = %507
  %514 = load i32, i32* %20, align 4
  %515 = call i32 @IE_BITS_UREFS(i32 %514)
  %516 = icmp sgt i32 %515, 0
  %517 = zext i1 %516 to i32
  %518 = call i32 @assert(i32 %517)
  %519 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %520 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %519, i32 0, i32 1
  %521 = load i64, i64* %520, align 8
  %522 = inttoptr i64 %521 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %522, %struct.TYPE_20__** %21, align 8
  %523 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %524 = load %struct.TYPE_20__*, %struct.TYPE_20__** @IP_NULL, align 8
  %525 = icmp ne %struct.TYPE_20__* %523, %524
  %526 = zext i1 %525 to i32
  %527 = call i32 @assert(i32 %526)
  %528 = load i32, i32* %11, align 4
  %529 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %530 = load i32, i32* %12, align 4
  %531 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %532 = call i32 @ipc_right_check(i32 %528, %struct.TYPE_20__* %529, i32 %530, %struct.TYPE_21__* %531)
  %533 = icmp ne i32 %532, 0
  br i1 %533, label %534, label %540

534:                                              ; preds = %513
  %535 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %536 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %535, i32 0, i32 0
  %537 = load i32, i32* %536, align 8
  store i32 %537, i32* %20, align 4
  %538 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %539 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %18, align 8
  store %struct.TYPE_20__* %538, %struct.TYPE_20__** %539, align 8
  br label %643

540:                                              ; preds = %513
  %541 = load i32, i32* %20, align 4
  %542 = load i32, i32* @MACH_PORT_TYPE_SEND_ONCE, align 4
  %543 = and i32 %541, %542
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %545, label %558

545:                                              ; preds = %540
  %546 = load i32, i32* %20, align 4
  %547 = load i32, i32* @MACH_PORT_TYPE_SEND, align 4
  %548 = and i32 %546, %547
  %549 = call i32 @assert(i32 %548)
  %550 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %551 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %550, i32 0, i32 3
  %552 = load i32, i32* %551, align 4
  %553 = icmp sgt i32 %552, 0
  %554 = zext i1 %553 to i32
  %555 = call i32 @assert(i32 %554)
  %556 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %557 = call i32 @ip_unlock(%struct.TYPE_20__* %556)
  br label %605

558:                                              ; preds = %540
  %559 = load i32, i32* %20, align 4
  %560 = call i32 @IE_BITS_TYPE(i32 %559)
  %561 = load i32, i32* @MACH_PORT_TYPE_SEND_ONCE, align 4
  %562 = icmp eq i32 %560, %561
  %563 = zext i1 %562 to i32
  %564 = call i32 @assert(i32 %563)
  %565 = load i32, i32* %20, align 4
  %566 = call i32 @IE_BITS_UREFS(i32 %565)
  %567 = icmp eq i32 %566, 1
  %568 = zext i1 %567 to i32
  %569 = call i32 @assert(i32 %568)
  %570 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %571 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %570, i32 0, i32 2
  %572 = load i32, i32* %571, align 8
  %573 = icmp sgt i32 %572, 0
  %574 = zext i1 %573 to i32
  %575 = call i32 @assert(i32 %574)
  %576 = load i32, i32* %11, align 4
  %577 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %578 = load i32, i32* %12, align 4
  %579 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %580 = call %struct.TYPE_20__* @ipc_right_request_cancel_macro(i32 %576, %struct.TYPE_20__* %577, i32 %578, %struct.TYPE_21__* %579)
  store %struct.TYPE_20__* %580, %struct.TYPE_20__** %24, align 8
  %581 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %582 = call i32 @ip_unlock(%struct.TYPE_20__* %581)
  %583 = load i8*, i8** @IO_NULL, align 8
  %584 = ptrtoint i8* %583 to i64
  %585 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %586 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %585, i32 0, i32 1
  store i64 %584, i64* %586, align 8
  %587 = load i32, i32* %20, align 4
  %588 = load i32, i32* @IE_BITS_UREFS_MASK, align 4
  %589 = load i32, i32* @MACH_PORT_TYPE_SEND_ONCE, align 4
  %590 = or i32 %588, %589
  %591 = xor i32 %590, -1
  %592 = and i32 %587, %591
  %593 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %594 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %593, i32 0, i32 0
  store i32 %592, i32* %594, align 8
  %595 = load i32, i32* %11, align 4
  %596 = load i32, i32* %12, align 4
  %597 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %598 = call i32 @ipc_entry_modified(i32 %595, i32 %596, %struct.TYPE_21__* %597)
  %599 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %600 = ptrtoint %struct.TYPE_20__* %599 to i32
  %601 = load i32*, i32** %16, align 8
  store i32 %600, i32* %601, align 4
  %602 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %603 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %17, align 8
  store %struct.TYPE_20__* %602, %struct.TYPE_20__** %603, align 8
  br label %607

604:                                              ; preds = %9
  br label %605

605:                                              ; preds = %670, %636, %604, %545, %512, %388, %355, %308, %275, %141, %92, %40
  %606 = load i32, i32* @KERN_INVALID_RIGHT, align 4
  store i32 %606, i32* %10, align 4
  br label %700

607:                                              ; preds = %558, %489, %323, %231, %93, %41
  %608 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %608, i32* %10, align 4
  br label %700

609:                                              ; preds = %297, %269
  %610 = load i32, i32* %20, align 4
  %611 = call i32 @IE_BITS_TYPE(i32 %610)
  %612 = load i32, i32* @MACH_PORT_TYPE_DEAD_NAME, align 4
  %613 = icmp eq i32 %611, %612
  %614 = zext i1 %613 to i32
  %615 = call i32 @assert(i32 %614)
  %616 = load i32, i32* %20, align 4
  %617 = call i32 @IE_BITS_UREFS(i32 %616)
  %618 = icmp sgt i32 %617, 0
  %619 = zext i1 %618 to i32
  %620 = call i32 @assert(i32 %619)
  %621 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %622 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %621, i32 0, i32 2
  %623 = load i64, i64* %622, align 8
  %624 = load i64, i64* @IE_REQ_NONE, align 8
  %625 = icmp eq i64 %623, %624
  %626 = zext i1 %625 to i32
  %627 = call i32 @assert(i32 %626)
  %628 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %629 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %628, i32 0, i32 1
  %630 = load i64, i64* %629, align 8
  %631 = icmp eq i64 %630, 0
  %632 = zext i1 %631 to i32
  %633 = call i32 @assert(i32 %632)
  %634 = load i32, i32* %15, align 4
  %635 = icmp ne i32 %634, 0
  br i1 %635, label %637, label %636

636:                                              ; preds = %609
  br label %605

637:                                              ; preds = %609
  %638 = load i32, i32* @IO_DEAD, align 4
  %639 = load i32*, i32** %16, align 8
  store i32 %638, i32* %639, align 4
  %640 = load %struct.TYPE_20__*, %struct.TYPE_20__** @IP_NULL, align 8
  %641 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %17, align 8
  store %struct.TYPE_20__* %640, %struct.TYPE_20__** %641, align 8
  %642 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %642, i32* %10, align 4
  br label %700

643:                                              ; preds = %534, %506, %377, %349
  %644 = load i32, i32* %20, align 4
  %645 = call i32 @IE_BITS_TYPE(i32 %644)
  %646 = load i32, i32* @MACH_PORT_TYPE_DEAD_NAME, align 4
  %647 = icmp eq i32 %645, %646
  %648 = zext i1 %647 to i32
  %649 = call i32 @assert(i32 %648)
  %650 = load i32, i32* %20, align 4
  %651 = call i32 @IE_BITS_UREFS(i32 %650)
  %652 = icmp sgt i32 %651, 0
  %653 = zext i1 %652 to i32
  %654 = call i32 @assert(i32 %653)
  %655 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %656 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %655, i32 0, i32 2
  %657 = load i64, i64* %656, align 8
  %658 = load i64, i64* @IE_REQ_NONE, align 8
  %659 = icmp eq i64 %657, %658
  %660 = zext i1 %659 to i32
  %661 = call i32 @assert(i32 %660)
  %662 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %663 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %662, i32 0, i32 1
  %664 = load i64, i64* %663, align 8
  %665 = icmp eq i64 %664, 0
  %666 = zext i1 %665 to i32
  %667 = call i32 @assert(i32 %666)
  %668 = load i32, i32* %15, align 4
  %669 = icmp ne i32 %668, 0
  br i1 %669, label %671, label %670

670:                                              ; preds = %643
  br label %605

671:                                              ; preds = %643
  %672 = load i32, i32* %20, align 4
  %673 = call i32 @IE_BITS_UREFS(i32 %672)
  %674 = icmp eq i32 %673, 1
  br i1 %674, label %675, label %680

675:                                              ; preds = %671
  %676 = load i32, i32* @MACH_PORT_TYPE_DEAD_NAME, align 4
  %677 = xor i32 %676, -1
  %678 = load i32, i32* %20, align 4
  %679 = and i32 %678, %677
  store i32 %679, i32* %20, align 4
  br label %680

680:                                              ; preds = %675, %671
  %681 = load i32, i32* %20, align 4
  %682 = call i32 @IE_BITS_UREFS(i32 %681)
  %683 = load i32, i32* @MACH_PORT_UREFS_MAX, align 4
  %684 = icmp slt i32 %682, %683
  br i1 %684, label %685, label %690

685:                                              ; preds = %680
  %686 = load i32, i32* %20, align 4
  %687 = sub nsw i32 %686, 1
  %688 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %689 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %688, i32 0, i32 0
  store i32 %687, i32* %689, align 8
  br label %690

690:                                              ; preds = %685, %680
  %691 = load i32, i32* %11, align 4
  %692 = load i32, i32* %12, align 4
  %693 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %694 = call i32 @ipc_entry_modified(i32 %691, i32 %692, %struct.TYPE_21__* %693)
  %695 = load i32, i32* @IO_DEAD, align 4
  %696 = load i32*, i32** %16, align 8
  store i32 %695, i32* %696, align 4
  %697 = load %struct.TYPE_20__*, %struct.TYPE_20__** @IP_NULL, align 8
  %698 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %17, align 8
  store %struct.TYPE_20__* %697, %struct.TYPE_20__** %698, align 8
  %699 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %699, i32* %10, align 4
  br label %700

700:                                              ; preds = %690, %637, %607, %605, %149
  %701 = load i32, i32* %10, align 4
  ret i32 %701
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @is_active(i32) #1

declare dso_local i32 @ip_lock(%struct.TYPE_20__*) #1

declare dso_local i32 @ip_active(%struct.TYPE_20__*) #1

declare dso_local i32 @ip_reference(%struct.TYPE_20__*) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_20__*) #1

declare dso_local i32 @io_kotype(i64) #1

declare dso_local i32 @IE_BITS_TYPE(i32) #1

declare dso_local i32 @IE_BITS_UREFS(i32) #1

declare dso_local i32 @ipc_hash_insert(i32, i32, i32, %struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_20__* @ipc_right_request_cancel_macro(i32, %struct.TYPE_20__*, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @ipc_entry_modified(i32, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @ipc_port_clear_receiver(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @imq_lock(i32*) #1

declare dso_local i32 @imq_unlock(i32*) #1

declare dso_local i32 @ipc_right_check(i32, %struct.TYPE_20__*, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @ipc_hash_delete(i32, i32, i32, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
