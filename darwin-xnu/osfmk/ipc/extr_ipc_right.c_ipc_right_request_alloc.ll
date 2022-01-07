; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_right.c_ipc_right_request_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_right.c_ipc_right_request_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64 }
%struct.TYPE_22__ = type { i64, i32, i64 }

@IP_NULL = common dso_local global %struct.TYPE_21__* null, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4
@IE_REQ_NONE = common dso_local global i64 0, align 8
@MACH_PORT_TYPE_PORT_RIGHTS = common dso_local global i32 0, align 4
@MACH_PORT_TYPE_SEND_ONCE = common dso_local global i32 0, align 4
@ipc_space_kernel = common dso_local global i64 0, align 8
@ITS_SIZE_NONE = common dso_local global i32 0, align 4
@MACH_PORT_TYPE_DEAD_NAME = common dso_local global i32 0, align 4
@MACH_PORT_UREFS_MAX = common dso_local global i64 0, align 8
@MACH_PORT_TYPE_PORT_OR_DEAD = common dso_local global i32 0, align 4
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@KERN_INVALID_RIGHT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@IPID_OPTION_SENDPOSSIBLE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_right_request_alloc(i32 %0, i32 %1, i64 %2, i64 %3, %struct.TYPE_21__* %4, %struct.TYPE_21__** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_21__**, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_21__*, align 8
  %16 = alloca %struct.TYPE_22__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_21__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.TYPE_21__* %4, %struct.TYPE_21__** %12, align 8
  store %struct.TYPE_21__** %5, %struct.TYPE_21__*** %13, align 8
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** @IP_NULL, align 8
  store %struct.TYPE_21__* %21, %struct.TYPE_21__** %15, align 8
  br label %22

22:                                               ; preds = %179, %6
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** @IP_NULL, align 8
  store %struct.TYPE_21__* %23, %struct.TYPE_21__** %18, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @ipc_right_lookup_write(i32 %24, i32 %25, %struct.TYPE_22__** %16)
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* %17, align 4
  %28 = load i32, i32* @KERN_SUCCESS, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %17, align 4
  store i32 %31, i32* %7, align 4
  br label %277

32:                                               ; preds = %22
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %14, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** @IP_NULL, align 8
  %38 = icmp eq %struct.TYPE_21__* %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %32
  %40 = load i64, i64* %14, align 8
  %41 = load i64, i64* @IE_REQ_NONE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @is_write_unlock(i32 %44)
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** @IP_NULL, align 8
  %47 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %13, align 8
  store %struct.TYPE_21__* %46, %struct.TYPE_21__** %47, align 8
  %48 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %48, i32* %7, align 4
  br label %277

49:                                               ; preds = %39, %32
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @MACH_PORT_TYPE_PORT_RIGHTS, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %198

56:                                               ; preds = %49
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %60, %struct.TYPE_21__** %18, align 8
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** @IP_NULL, align 8
  %63 = icmp ne %struct.TYPE_21__* %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %70 = call i32 @ipc_right_check(i32 %66, %struct.TYPE_21__* %67, i32 %68, %struct.TYPE_22__* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %197, label %72

72:                                               ; preds = %56
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** @IP_NULL, align 8
  %75 = icmp eq %struct.TYPE_21__* %73, %74
  br i1 %75, label %76, label %97

76:                                               ; preds = %72
  %77 = load i64, i64* %14, align 8
  %78 = load i64, i64* @IE_REQ_NONE, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i64, i64* %14, align 8
  %84 = call %struct.TYPE_21__* @ipc_port_request_cancel(%struct.TYPE_21__* %81, i32 %82, i64 %83)
  store %struct.TYPE_21__* %84, %struct.TYPE_21__** %15, align 8
  br label %85

85:                                               ; preds = %80, %76
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %87 = call i32 @ip_unlock(%struct.TYPE_21__* %86)
  %88 = load i64, i64* @IE_REQ_NONE, align 8
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %94 = call i32 @ipc_entry_modified(i32 %91, i32 %92, %struct.TYPE_22__* %93)
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @is_write_unlock(i32 %95)
  br label %273

97:                                               ; preds = %72
  %98 = load i64, i64* %11, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %144

100:                                              ; preds = %97
  %101 = load i64, i64* %10, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %144

103:                                              ; preds = %100
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @MACH_PORT_TYPE_SEND_ONCE, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %120, label %110

110:                                              ; preds = %103
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @ipc_space_kernel, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %120, label %116

116:                                              ; preds = %110
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %118 = call i32 @ip_full(%struct.TYPE_21__* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %144, label %120

120:                                              ; preds = %116, %110, %103
  %121 = load i64, i64* %14, align 8
  %122 = load i64, i64* @IE_REQ_NONE, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %126 = load i32, i32* %9, align 4
  %127 = load i64, i64* %14, align 8
  %128 = call %struct.TYPE_21__* @ipc_port_request_cancel(%struct.TYPE_21__* %125, i32 %126, i64 %127)
  store %struct.TYPE_21__* %128, %struct.TYPE_21__** %15, align 8
  br label %129

129:                                              ; preds = %124, %120
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %131 = call i32 @ip_unlock(%struct.TYPE_21__* %130)
  %132 = load i64, i64* @IE_REQ_NONE, align 8
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %9, align 4
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %138 = call i32 @ipc_entry_modified(i32 %135, i32 %136, %struct.TYPE_22__* %137)
  %139 = load i32, i32* %8, align 4
  %140 = call i32 @is_write_unlock(i32 %139)
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @ipc_notify_send_possible(%struct.TYPE_21__* %141, i32 %142)
  br label %273

144:                                              ; preds = %116, %100, %97
  %145 = load i64, i64* %14, align 8
  %146 = load i64, i64* @IE_REQ_NONE, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %144
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %150 = load i32, i32* %9, align 4
  %151 = load i64, i64* %14, align 8
  %152 = call %struct.TYPE_21__* @ipc_port_request_cancel(%struct.TYPE_21__* %149, i32 %150, i64 %151)
  store %struct.TYPE_21__* %152, %struct.TYPE_21__** %15, align 8
  br label %153

153:                                              ; preds = %148, %144
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %155 = load i32, i32* %9, align 4
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %157 = load i64, i64* %11, align 8
  %158 = load i64, i64* %10, align 8
  %159 = call i32 (%struct.TYPE_21__*, i32, %struct.TYPE_21__*, i64, i64, i64*, ...) @ipc_port_request_alloc(%struct.TYPE_21__* %154, i32 %155, %struct.TYPE_21__* %156, i64 %157, i64 %158, i64* %19)
  store i32 %159, i32* %17, align 4
  %160 = load i32, i32* %17, align 4
  %161 = load i32, i32* @KERN_SUCCESS, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %163, label %180

163:                                              ; preds = %153
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** @IP_NULL, align 8
  %166 = icmp eq %struct.TYPE_21__* %164, %165
  %167 = zext i1 %166 to i32
  %168 = call i32 @assert(i32 %167)
  %169 = load i32, i32* %8, align 4
  %170 = call i32 @is_write_unlock(i32 %169)
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %172 = load i32, i32* @ITS_SIZE_NONE, align 4
  %173 = call i32 @ipc_port_request_grow(%struct.TYPE_21__* %171, i32 %172)
  store i32 %173, i32* %17, align 4
  %174 = load i32, i32* %17, align 4
  %175 = load i32, i32* @KERN_SUCCESS, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %179

177:                                              ; preds = %163
  %178 = load i32, i32* %17, align 4
  store i32 %178, i32* %7, align 4
  br label %277

179:                                              ; preds = %163
  br label %22

180:                                              ; preds = %153
  %181 = load i64, i64* %19, align 8
  %182 = load i64, i64* @IE_REQ_NONE, align 8
  %183 = icmp ne i64 %181, %182
  %184 = zext i1 %183 to i32
  %185 = call i32 @assert(i32 %184)
  %186 = load i64, i64* %19, align 8
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 0
  store i64 %186, i64* %188, align 8
  %189 = load i32, i32* %8, align 4
  %190 = load i32, i32* %9, align 4
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %192 = call i32 @ipc_entry_modified(i32 %189, i32 %190, %struct.TYPE_22__* %191)
  %193 = load i32, i32* %8, align 4
  %194 = call i32 @is_write_unlock(i32 %193)
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %196 = call i32 @ip_unlock(%struct.TYPE_21__* %195)
  br label %273

197:                                              ; preds = %56
  br label %198

198:                                              ; preds = %197, %49
  %199 = load i64, i64* %11, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %204, label %201

201:                                              ; preds = %198
  %202 = load i64, i64* %10, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %250

204:                                              ; preds = %201, %198
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %206 = load %struct.TYPE_21__*, %struct.TYPE_21__** @IP_NULL, align 8
  %207 = icmp ne %struct.TYPE_21__* %205, %206
  br i1 %207, label %208, label %250

208:                                              ; preds = %204
  %209 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @MACH_PORT_TYPE_DEAD_NAME, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %250

215:                                              ; preds = %208
  %216 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = call i64 @IE_BITS_UREFS(i32 %218)
  store i64 %219, i64* %20, align 8
  %220 = load i64, i64* %20, align 8
  %221 = icmp sgt i64 %220, 0
  %222 = zext i1 %221 to i32
  %223 = call i32 @assert(i32 %222)
  %224 = load i64, i64* %20, align 8
  %225 = load i64, i64* @MACH_PORT_UREFS_MAX, align 8
  %226 = icmp slt i64 %224, %225
  br i1 %226, label %227, label %232

227:                                              ; preds = %215
  %228 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %229 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %229, align 8
  br label %232

232:                                              ; preds = %227, %215
  %233 = load i32, i32* %8, align 4
  %234 = load i32, i32* %9, align 4
  %235 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %236 = call i32 @ipc_entry_modified(i32 %233, i32 %234, %struct.TYPE_22__* %235)
  %237 = load i32, i32* %8, align 4
  %238 = call i32 @is_write_unlock(i32 %237)
  %239 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %240 = load %struct.TYPE_21__*, %struct.TYPE_21__** @IP_NULL, align 8
  %241 = icmp ne %struct.TYPE_21__* %239, %240
  br i1 %241, label %242, label %245

242:                                              ; preds = %232
  %243 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %244 = call i32 @ip_release(%struct.TYPE_21__* %243)
  br label %245

245:                                              ; preds = %242, %232
  %246 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %247 = load i32, i32* %9, align 4
  %248 = call i32 @ipc_notify_dead_name(%struct.TYPE_21__* %246, i32 %247)
  %249 = load %struct.TYPE_21__*, %struct.TYPE_21__** @IP_NULL, align 8
  store %struct.TYPE_21__* %249, %struct.TYPE_21__** %15, align 8
  br label %273

250:                                              ; preds = %208, %204, %201
  %251 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %252 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @MACH_PORT_TYPE_PORT_OR_DEAD, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %250
  %258 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  br label %261

259:                                              ; preds = %250
  %260 = load i32, i32* @KERN_INVALID_RIGHT, align 4
  br label %261

261:                                              ; preds = %259, %257
  %262 = phi i32 [ %258, %257 ], [ %260, %259 ]
  store i32 %262, i32* %17, align 4
  %263 = load i32, i32* %8, align 4
  %264 = call i32 @is_write_unlock(i32 %263)
  %265 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %266 = load %struct.TYPE_21__*, %struct.TYPE_21__** @IP_NULL, align 8
  %267 = icmp ne %struct.TYPE_21__* %265, %266
  br i1 %267, label %268, label %271

268:                                              ; preds = %261
  %269 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %270 = call i32 @ip_release(%struct.TYPE_21__* %269)
  br label %271

271:                                              ; preds = %268, %261
  %272 = load i32, i32* %17, align 4
  store i32 %272, i32* %7, align 4
  br label %277

273:                                              ; preds = %245, %180, %129, %85
  %274 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %275 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %13, align 8
  store %struct.TYPE_21__* %274, %struct.TYPE_21__** %275, align 8
  %276 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %276, i32* %7, align 4
  br label %277

277:                                              ; preds = %273, %271, %177, %43, %30
  %278 = load i32, i32* %7, align 4
  ret i32 %278
}

declare dso_local i32 @ipc_right_lookup_write(i32, i32, %struct.TYPE_22__**) #1

declare dso_local i32 @is_write_unlock(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ipc_right_check(i32, %struct.TYPE_21__*, i32, %struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_21__* @ipc_port_request_cancel(%struct.TYPE_21__*, i32, i64) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_21__*) #1

declare dso_local i32 @ipc_entry_modified(i32, i32, %struct.TYPE_22__*) #1

declare dso_local i32 @ip_full(%struct.TYPE_21__*) #1

declare dso_local i32 @ipc_notify_send_possible(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ipc_port_request_alloc(%struct.TYPE_21__*, i32, %struct.TYPE_21__*, i64, i64, i64*, ...) #1

declare dso_local i32 @ipc_port_request_grow(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @IE_BITS_UREFS(i32) #1

declare dso_local i32 @ip_release(%struct.TYPE_21__*) #1

declare dso_local i32 @ipc_notify_dead_name(%struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
