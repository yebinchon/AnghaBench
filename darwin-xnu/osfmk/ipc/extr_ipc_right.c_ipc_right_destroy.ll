; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_right.c_ipc_right_destroy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_right.c_ipc_right_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, %struct.TYPE_18__*, i32, i32, i32 }
%struct.TYPE_19__ = type { i8*, i32, i32 }

@IE_BITS_TYPE_MASK = common dso_local global i32 0, align 4
@IE_REQ_NONE = common dso_local global i32 0, align 4
@IO_NULL = common dso_local global i8* null, align 8
@IPS_NULL = common dso_local global i32 0, align 4
@IP_NULL = common dso_local global %struct.TYPE_18__* null, align 8
@kGUARD_EXC_DESTROY = common dso_local global i32 0, align 4
@KERN_INVALID_RIGHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ipc_right_destroy: strange type\00", align 1
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_right_destroy(i32 %0, i32 %1, %struct.TYPE_19__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_18__*, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* @IE_BITS_TYPE_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @IE_BITS_TYPE(i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @is_active(i32 %31)
  %33 = call i32 @assert(i32 %32)
  %34 = load i32, i32* %13, align 4
  switch i32 %34, label %276 [
    i32 133, label %35
    i32 132, label %56
    i32 130, label %89
    i32 131, label %89
    i32 128, label %89
    i32 129, label %89
  ]

35:                                               ; preds = %5
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @IE_REQ_NONE, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** @IO_NULL, align 8
  %47 = icmp eq i8* %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %53 = call i32 @ipc_entry_dealloc(i32 %50, i32 %51, %struct.TYPE_19__* %52)
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @is_write_unlock(i32 %54)
  br label %278

56:                                               ; preds = %5
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = ptrtoint i8* %59 to i32
  store i32 %60, i32* %14, align 4
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @IE_REQ_NONE, align 4
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @IPS_NULL, align 4
  %70 = icmp ne i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load i8*, i8** @IO_NULL, align 8
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %79 = call i32 @ipc_entry_dealloc(i32 %76, i32 %77, %struct.TYPE_19__* %78)
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @ips_lock(i32 %80)
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @is_write_unlock(i32 %82)
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @ips_active(i32 %84)
  %86 = call i32 @assert(i32 %85)
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @ipc_pset_destroy(i32 %87)
  br label %278

89:                                               ; preds = %5, %5, %5, %5
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = bitcast i8* %92 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %93, %struct.TYPE_18__** %15, align 8
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** @IP_NULL, align 8
  store %struct.TYPE_18__* %94, %struct.TYPE_18__** %16, align 8
  store i32 0, i32* %17, align 4
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** @IP_NULL, align 8
  %97 = icmp ne %struct.TYPE_18__* %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  %100 = load i32, i32* %13, align 4
  %101 = icmp eq i32 %100, 130
  br i1 %101, label %102, label %109

102:                                              ; preds = %89
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %105 = ptrtoint %struct.TYPE_18__* %104 to i32
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %108 = call i32 @ipc_hash_delete(i32 %103, i32 %105, i32 %106, %struct.TYPE_19__* %107)
  br label %109

109:                                              ; preds = %102, %89
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %111 = call i32 @ip_lock(%struct.TYPE_18__* %110)
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %113 = call i32 @ip_active(%struct.TYPE_18__* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %137, label %115

115:                                              ; preds = %109
  %116 = load i32, i32* %13, align 4
  %117 = and i32 %116, 131
  %118 = icmp eq i32 %117, 0
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert(i32 %119)
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %122 = call i32 @ip_unlock(%struct.TYPE_18__* %121)
  %123 = load i32, i32* @IE_REQ_NONE, align 4
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 8
  %126 = load i8*, i8** @IO_NULL, align 8
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 0
  store i8* %126, i8** %128, align 8
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %8, align 4
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %132 = call i32 @ipc_entry_dealloc(i32 %129, i32 %130, %struct.TYPE_19__* %131)
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @is_write_unlock(i32 %133)
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %136 = call i32 @ip_release(%struct.TYPE_18__* %135)
  br label %278

137:                                              ; preds = %109
  %138 = load i32, i32* %13, align 4
  %139 = and i32 %138, 131
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %168

141:                                              ; preds = %137
  %142 = load i32, i32* %10, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %168

144:                                              ; preds = %141
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %168

149:                                              ; preds = %144
  %150 = load i32, i32* %11, align 4
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %150, %153
  br i1 %154, label %155, label %168

155:                                              ; preds = %149
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %19, align 4
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %160 = call i32 @ip_unlock(%struct.TYPE_18__* %159)
  %161 = load i32, i32* %7, align 4
  %162 = call i32 @is_write_unlock(i32 %161)
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* %19, align 4
  %165 = load i32, i32* @kGUARD_EXC_DESTROY, align 4
  %166 = call i32 @mach_port_guard_exception(i32 %163, i32 0, i32 %164, i32 %165)
  %167 = load i32, i32* @KERN_INVALID_RIGHT, align 4
  store i32 %167, i32* %6, align 4
  br label %280

168:                                              ; preds = %149, %144, %141, %137
  %169 = load i32, i32* %7, align 4
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %171 = load i32, i32* %8, align 4
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %173 = call %struct.TYPE_18__* @ipc_right_request_cancel_macro(i32 %169, %struct.TYPE_18__* %170, i32 %171, %struct.TYPE_19__* %172)
  store %struct.TYPE_18__* %173, %struct.TYPE_18__** %18, align 8
  %174 = load i8*, i8** @IO_NULL, align 8
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 0
  store i8* %174, i8** %176, align 8
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* %8, align 4
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %180 = call i32 @ipc_entry_dealloc(i32 %177, i32 %178, %struct.TYPE_19__* %179)
  %181 = load i32, i32* %7, align 4
  %182 = call i32 @is_write_unlock(i32 %181)
  %183 = load i32, i32* %13, align 4
  %184 = and i32 %183, 130
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %214

186:                                              ; preds = %168
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = icmp sgt i32 %189, 0
  %191 = zext i1 %190 to i32
  %192 = call i32 @assert(i32 %191)
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 8
  %196 = add nsw i32 %195, -1
  store i32 %196, i32* %194, align 8
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %213

198:                                              ; preds = %186
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 3
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %200, align 8
  store %struct.TYPE_18__* %201, %struct.TYPE_18__** %16, align 8
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** @IP_NULL, align 8
  %204 = icmp ne %struct.TYPE_18__* %202, %203
  br i1 %204, label %205, label %212

205:                                              ; preds = %198
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** @IP_NULL, align 8
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 3
  store %struct.TYPE_18__* %206, %struct.TYPE_18__** %208, align 8
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  store i32 %211, i32* %17, align 4
  br label %212

212:                                              ; preds = %205, %198
  br label %213

213:                                              ; preds = %212, %186
  br label %214

214:                                              ; preds = %213, %168
  %215 = load i32, i32* %13, align 4
  %216 = and i32 %215, 131
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %231

218:                                              ; preds = %214
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %220 = call i32 @ip_active(%struct.TYPE_18__* %219)
  %221 = call i32 @assert(i32 %220)
  %222 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* %7, align 4
  %226 = icmp eq i32 %224, %225
  %227 = zext i1 %226 to i32
  %228 = call i32 @assert(i32 %227)
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %230 = call i32 @ipc_port_destroy(%struct.TYPE_18__* %229)
  br label %259

231:                                              ; preds = %214
  %232 = load i32, i32* %13, align 4
  %233 = and i32 %232, 129
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %246

235:                                              ; preds = %231
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = icmp sgt i32 %238, 0
  %240 = zext i1 %239 to i32
  %241 = call i32 @assert(i32 %240)
  %242 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %243 = call i32 @ip_unlock(%struct.TYPE_18__* %242)
  %244 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %245 = call i32 @ipc_notify_send_once(%struct.TYPE_18__* %244)
  br label %258

246:                                              ; preds = %231
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* %7, align 4
  %251 = icmp ne i32 %249, %250
  %252 = zext i1 %251 to i32
  %253 = call i32 @assert(i32 %252)
  %254 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %255 = call i32 @ip_unlock(%struct.TYPE_18__* %254)
  %256 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %257 = call i32 @ip_release(%struct.TYPE_18__* %256)
  br label %258

258:                                              ; preds = %246, %235
  br label %259

259:                                              ; preds = %258, %218
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %261 = load %struct.TYPE_18__*, %struct.TYPE_18__** @IP_NULL, align 8
  %262 = icmp ne %struct.TYPE_18__* %260, %261
  br i1 %262, label %263, label %267

263:                                              ; preds = %259
  %264 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %265 = load i32, i32* %17, align 4
  %266 = call i32 @ipc_notify_no_senders(%struct.TYPE_18__* %264, i32 %265)
  br label %267

267:                                              ; preds = %263, %259
  %268 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %269 = load %struct.TYPE_18__*, %struct.TYPE_18__** @IP_NULL, align 8
  %270 = icmp ne %struct.TYPE_18__* %268, %269
  br i1 %270, label %271, label %275

271:                                              ; preds = %267
  %272 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %273 = load i32, i32* %8, align 4
  %274 = call i32 @ipc_notify_port_deleted(%struct.TYPE_18__* %272, i32 %273)
  br label %275

275:                                              ; preds = %271, %267
  br label %278

276:                                              ; preds = %5
  %277 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %278

278:                                              ; preds = %276, %275, %115, %56, %35
  %279 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %279, i32* %6, align 4
  br label %280

280:                                              ; preds = %278, %155
  %281 = load i32, i32* %6, align 4
  ret i32 %281
}

declare dso_local i32 @IE_BITS_TYPE(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @is_active(i32) #1

declare dso_local i32 @ipc_entry_dealloc(i32, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @is_write_unlock(i32) #1

declare dso_local i32 @ips_lock(i32) #1

declare dso_local i32 @ips_active(i32) #1

declare dso_local i32 @ipc_pset_destroy(i32) #1

declare dso_local i32 @ipc_hash_delete(i32, i32, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @ip_lock(%struct.TYPE_18__*) #1

declare dso_local i32 @ip_active(%struct.TYPE_18__*) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_18__*) #1

declare dso_local i32 @ip_release(%struct.TYPE_18__*) #1

declare dso_local i32 @mach_port_guard_exception(i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_18__* @ipc_right_request_cancel_macro(i32, %struct.TYPE_18__*, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @ipc_port_destroy(%struct.TYPE_18__*) #1

declare dso_local i32 @ipc_notify_send_once(%struct.TYPE_18__*) #1

declare dso_local i32 @ipc_notify_no_senders(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ipc_notify_port_deleted(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
