; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_kmsg.c_ipc_kmsg_copyout_header.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_kmsg.c_ipc_kmsg_copyout_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_22__*, %struct.TYPE_23__* }
%struct.TYPE_22__ = type { i32, i8*, %struct.TYPE_23__*, i64, i64 }
%struct.TYPE_25__ = type { i32, i64 }

@IP_NULL = common dso_local global i8* null, align 8
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@MACH_MSG_TYPE_MOVE_SEND = common dso_local global i64 0, align 8
@MACH_RCV_VOUCHER = common dso_local global i32 0, align 4
@MACH_RCV_HEADER_ERROR = common dso_local global i32 0, align 4
@MACH_MSG_IPC_SPACE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@ITS_SIZE_NONE = common dso_local global i32 0, align 4
@MACH_MSG_TYPE_PORT_SEND_ONCE = common dso_local global i64 0, align 8
@MACH_PORT_TYPE_SEND_RECEIVE = common dso_local global i32 0, align 4
@IP_DEAD = common dso_local global %struct.TYPE_23__* null, align 8
@MACH_PORT_DEAD = common dso_local global i32 0, align 4
@MACH_PORT_TYPE_NONE = common dso_local global i64 0, align 8
@IO_NULL = common dso_local global i64 0, align 8
@MACH_MSGH_BITS_ZERO = common dso_local global i64 0, align 8
@MACH_PORT_NULL = common dso_local global i32 0, align 4
@MACH_PORT_TYPE_SEND = common dso_local global i32 0, align 4
@IKOT_VOUCHER = common dso_local global i64 0, align 8
@DBG_MACH_IPC = common dso_local global i32 0, align 4
@MACH_IPC_MSG_RECV = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@MACH_IPC_MSG_RECV_VOUCHER_REFUSED = common dso_local global i32 0, align 4
@MACH_MSG_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_kmsg_copyout_header(%struct.TYPE_24__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca %struct.TYPE_23__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_23__*, align 8
  %19 = alloca %struct.TYPE_23__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_25__*, align 8
  %25 = alloca %struct.TYPE_25__*, align 8
  %26 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %28, align 8
  store %struct.TYPE_22__* %29, %struct.TYPE_22__** %8, align 8
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %9, align 8
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = bitcast i8* %35 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %36, %struct.TYPE_23__** %10, align 8
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %38 = call i32 @IP_VALID(%struct.TYPE_23__* %37)
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %41 = call i32 @ipc_port_spnotify(%struct.TYPE_23__* %40)
  %42 = load i64, i64* %9, align 8
  %43 = call i64 @MACH_MSGH_BITS_REMOTE(i64 %42)
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i64 @MACH_MSGH_BITS_LOCAL(i64 %44)
  store i64 %45, i64* %12, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i64 @MACH_MSGH_BITS_VOUCHER(i64 %46)
  store i64 %47, i64* %13, align 8
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %49, align 8
  store %struct.TYPE_23__* %50, %struct.TYPE_23__** %14, align 8
  %51 = load i8*, i8** @IP_NULL, align 8
  %52 = bitcast i8* %51 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %52, %struct.TYPE_23__** %15, align 8
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %54, align 8
  store %struct.TYPE_23__* %55, %struct.TYPE_23__** %18, align 8
  %56 = load i8*, i8** @IP_NULL, align 8
  %57 = bitcast i8* %56 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %57, %struct.TYPE_23__** %19, align 8
  store i64 0, i64* %21, align 8
  %58 = load i64, i64* @FALSE, align 8
  store i64 %58, i64* %22, align 8
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %60 = call i32 @IP_VALID(%struct.TYPE_23__* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %3
  %63 = load i64, i64* %21, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %21, align 8
  %65 = load i64, i64* @TRUE, align 8
  store i64 %65, i64* %22, align 8
  br label %66

66:                                               ; preds = %62, %3
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %68 = call i32 @IP_VALID(%struct.TYPE_23__* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %66
  %71 = load i64, i64* %13, align 8
  %72 = load i64, i64* @MACH_MSG_TYPE_MOVE_SEND, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @MACH_RCV_VOUCHER, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %70
  %81 = load i64, i64* %21, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %21, align 8
  br label %83

83:                                               ; preds = %80, %70
  %84 = load i64, i64* @TRUE, align 8
  store i64 %84, i64* %22, align 8
  br label %85

85:                                               ; preds = %83, %66
  %86 = load i64, i64* %22, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %314

88:                                               ; preds = %85
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @is_write_lock(i32 %89)
  br label %91

91:                                               ; preds = %123, %88
  %92 = load i64, i64* %21, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %124

94:                                               ; preds = %91
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @is_active(i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %94
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @is_write_unlock(i32 %99)
  %101 = load i32, i32* @MACH_RCV_HEADER_ERROR, align 4
  %102 = load i32, i32* @MACH_MSG_IPC_SPACE, align 4
  %103 = or i32 %101, %102
  store i32 %103, i32* %4, align 4
  br label %500

104:                                              ; preds = %94
  %105 = load i32, i32* %6, align 4
  %106 = load i64, i64* %21, align 8
  %107 = call i32 @ipc_entries_hold(i32 %105, i64 %106)
  store i32 %107, i32* %23, align 4
  %108 = load i32, i32* @KERN_SUCCESS, align 4
  %109 = load i32, i32* %23, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %124

112:                                              ; preds = %104
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @ITS_SIZE_NONE, align 4
  %115 = call i32 @ipc_entry_grow_table(i32 %113, i32 %114)
  store i32 %115, i32* %23, align 4
  %116 = load i32, i32* @KERN_SUCCESS, align 4
  %117 = load i32, i32* %23, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %112
  %120 = load i32, i32* @MACH_RCV_HEADER_ERROR, align 4
  %121 = load i32, i32* @MACH_MSG_IPC_SPACE, align 4
  %122 = or i32 %120, %121
  store i32 %122, i32* %4, align 4
  br label %500

123:                                              ; preds = %112
  br label %91

124:                                              ; preds = %111, %91
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %126 = call i32 @IP_VALID(%struct.TYPE_23__* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %202

128:                                              ; preds = %124
  %129 = load i64, i64* %12, align 8
  %130 = load i64, i64* @MACH_MSG_TYPE_PORT_SEND_ONCE, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %145

132:                                              ; preds = %128
  %133 = load i32, i32* %6, align 4
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %135 = bitcast %struct.TYPE_23__* %134 to i8*
  %136 = call i64 @ipc_right_reverse(i32 %133, i8* %135, i32* %17, %struct.TYPE_25__** %24)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %132
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %140 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @MACH_PORT_TYPE_SEND_RECEIVE, align 4
  %143 = and i32 %141, %142
  %144 = call i32 @assert(i32 %143)
  br label %186

145:                                              ; preds = %132, %128
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %147 = call i32 @ip_lock(%struct.TYPE_23__* %146)
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %149 = call i32 @ip_active(%struct.TYPE_23__* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %145
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %153 = call i32 @ip_unlock(%struct.TYPE_23__* %152)
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  store %struct.TYPE_23__* %154, %struct.TYPE_23__** %15, align 8
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** @IP_DEAD, align 8
  store %struct.TYPE_23__* %155, %struct.TYPE_23__** %14, align 8
  %156 = load i32, i32* @MACH_PORT_DEAD, align 4
  store i32 %156, i32* %17, align 4
  br label %206

157:                                              ; preds = %145
  %158 = load i64, i64* %21, align 8
  %159 = icmp sgt i64 %158, 0
  %160 = zext i1 %159 to i32
  %161 = call i32 @assert(i32 %160)
  %162 = load i64, i64* %21, align 8
  %163 = add nsw i64 %162, -1
  store i64 %163, i64* %21, align 8
  %164 = load i32, i32* %6, align 4
  %165 = call i32 @ipc_entry_claim(i32 %164, i32* %17, %struct.TYPE_25__** %24)
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %167 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i64 @IE_BITS_TYPE(i32 %168)
  %170 = load i64, i64* @MACH_PORT_TYPE_NONE, align 8
  %171 = icmp eq i64 %169, %170
  %172 = zext i1 %171 to i32
  %173 = call i32 @assert(i32 %172)
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %175 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @IO_NULL, align 8
  %178 = icmp eq i64 %176, %177
  %179 = zext i1 %178 to i32
  %180 = call i32 @assert(i32 %179)
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %182 = bitcast %struct.TYPE_23__* %181 to i8*
  %183 = ptrtoint i8* %182 to i64
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %185 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %184, i32 0, i32 1
  store i64 %183, i64* %185, align 8
  br label %186

186:                                              ; preds = %157, %138
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %188 = call i32 @ip_reference(%struct.TYPE_23__* %187)
  %189 = load i32, i32* %6, align 4
  %190 = load i32, i32* %17, align 4
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %192 = load i64, i64* %12, align 8
  %193 = load i64, i64* @TRUE, align 8
  %194 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %195 = bitcast %struct.TYPE_23__* %194 to i8*
  %196 = call i32 @ipc_right_copyout(i32 %189, i32 %190, %struct.TYPE_25__* %191, i64 %192, i64 %193, i8* %195)
  store i32 %196, i32* %23, align 4
  %197 = load i32, i32* %23, align 4
  %198 = load i32, i32* @KERN_SUCCESS, align 4
  %199 = icmp eq i32 %197, %198
  %200 = zext i1 %199 to i32
  %201 = call i32 @assert(i32 %200)
  br label %205

202:                                              ; preds = %124
  %203 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %204 = call i32 @CAST_MACH_PORT_TO_NAME(%struct.TYPE_23__* %203)
  store i32 %204, i32* %17, align 4
  br label %205

205:                                              ; preds = %202, %186
  br label %206

206:                                              ; preds = %205, %151
  %207 = load i64, i64* %13, align 8
  %208 = load i64, i64* @MACH_MSGH_BITS_ZERO, align 8
  %209 = icmp ne i64 %207, %208
  br i1 %209, label %210, label %304

210:                                              ; preds = %206
  %211 = load i64, i64* %13, align 8
  %212 = load i64, i64* @MACH_MSG_TYPE_MOVE_SEND, align 8
  %213 = icmp eq i64 %211, %212
  %214 = zext i1 %213 to i32
  %215 = call i32 @assert(i32 %214)
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %217 = call i32 @IP_VALID(%struct.TYPE_23__* %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %228, label %219

219:                                              ; preds = %210
  %220 = load i32, i32* %7, align 4
  %221 = load i32, i32* @MACH_RCV_VOUCHER, align 4
  %222 = and i32 %220, %221
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %219
  %225 = load i64, i64* @MACH_MSGH_BITS_ZERO, align 8
  store i64 %225, i64* %13, align 8
  br label %226

226:                                              ; preds = %224, %219
  %227 = load i32, i32* @MACH_PORT_NULL, align 4
  store i32 %227, i32* %20, align 4
  br label %309

228:                                              ; preds = %210
  %229 = load i8*, i8** @IP_NULL, align 8
  %230 = bitcast i8* %229 to %struct.TYPE_23__*
  %231 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %231, i32 0, i32 1
  store %struct.TYPE_23__* %230, %struct.TYPE_23__** %232, align 8
  %233 = load i32, i32* %7, align 4
  %234 = load i32, i32* @MACH_RCV_VOUCHER, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %299

237:                                              ; preds = %228
  %238 = load i32, i32* %6, align 4
  %239 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %240 = bitcast %struct.TYPE_23__* %239 to i8*
  %241 = call i64 @ipc_right_reverse(i32 %238, i8* %240, i32* %20, %struct.TYPE_25__** %25)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %250

243:                                              ; preds = %237
  %244 = load %struct.TYPE_25__*, %struct.TYPE_25__** %25, align 8
  %245 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @MACH_PORT_TYPE_SEND, align 4
  %248 = and i32 %246, %247
  %249 = call i32 @assert(i32 %248)
  br label %281

250:                                              ; preds = %237
  %251 = load i64, i64* %21, align 8
  %252 = icmp sgt i64 %251, 0
  %253 = zext i1 %252 to i32
  %254 = call i32 @assert(i32 %253)
  %255 = load i64, i64* %21, align 8
  %256 = add nsw i64 %255, -1
  store i64 %256, i64* %21, align 8
  %257 = load i32, i32* %6, align 4
  %258 = call i32 @ipc_entry_claim(i32 %257, i32* %20, %struct.TYPE_25__** %25)
  %259 = load %struct.TYPE_25__*, %struct.TYPE_25__** %25, align 8
  %260 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = call i64 @IE_BITS_TYPE(i32 %261)
  %263 = load i64, i64* @MACH_PORT_TYPE_NONE, align 8
  %264 = icmp eq i64 %262, %263
  %265 = zext i1 %264 to i32
  %266 = call i32 @assert(i32 %265)
  %267 = load %struct.TYPE_25__*, %struct.TYPE_25__** %25, align 8
  %268 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %267, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @IO_NULL, align 8
  %271 = icmp eq i64 %269, %270
  %272 = zext i1 %271 to i32
  %273 = call i32 @assert(i32 %272)
  %274 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %275 = bitcast %struct.TYPE_23__* %274 to i8*
  %276 = ptrtoint i8* %275 to i64
  %277 = load %struct.TYPE_25__*, %struct.TYPE_25__** %25, align 8
  %278 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %277, i32 0, i32 1
  store i64 %276, i64* %278, align 8
  %279 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %280 = call i32 @ip_lock(%struct.TYPE_23__* %279)
  br label %281

281:                                              ; preds = %250, %243
  %282 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %283 = call i32 @ip_active(%struct.TYPE_23__* %282)
  %284 = call i32 @assert(i32 %283)
  %285 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %286 = call i64 @ip_kotype(%struct.TYPE_23__* %285)
  %287 = load i64, i64* @IKOT_VOUCHER, align 8
  %288 = icmp eq i64 %286, %287
  %289 = zext i1 %288 to i32
  %290 = call i32 @assert(i32 %289)
  %291 = load i32, i32* %6, align 4
  %292 = load i32, i32* %20, align 4
  %293 = load %struct.TYPE_25__*, %struct.TYPE_25__** %25, align 8
  %294 = load i64, i64* @MACH_MSG_TYPE_MOVE_SEND, align 8
  %295 = load i64, i64* @TRUE, align 8
  %296 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %297 = bitcast %struct.TYPE_23__* %296 to i8*
  %298 = call i32 @ipc_right_copyout(i32 %291, i32 %292, %struct.TYPE_25__* %293, i64 %294, i64 %295, i8* %297)
  store i32 %298, i32* %23, align 4
  br label %303

299:                                              ; preds = %228
  %300 = load i64, i64* @MACH_MSGH_BITS_ZERO, align 8
  store i64 %300, i64* %13, align 8
  %301 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  store %struct.TYPE_23__* %301, %struct.TYPE_23__** %19, align 8
  %302 = load i32, i32* @MACH_PORT_NULL, align 4
  store i32 %302, i32* %20, align 4
  br label %303

303:                                              ; preds = %299, %281
  br label %308

304:                                              ; preds = %206
  %305 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %306 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  store i32 %307, i32* %20, align 4
  br label %308

308:                                              ; preds = %304, %303
  br label %309

309:                                              ; preds = %308, %226
  %310 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %311 = call i32 @ip_lock(%struct.TYPE_23__* %310)
  %312 = load i32, i32* %6, align 4
  %313 = call i32 @is_write_unlock(i32 %312)
  br label %355

314:                                              ; preds = %85
  %315 = load i32, i32* %6, align 4
  %316 = call i32 @is_read_lock(i32 %315)
  %317 = load i32, i32* %6, align 4
  %318 = call i32 @is_active(i32 %317)
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %326, label %320

320:                                              ; preds = %314
  %321 = load i32, i32* %6, align 4
  %322 = call i32 @is_read_unlock(i32 %321)
  %323 = load i32, i32* @MACH_RCV_HEADER_ERROR, align 4
  %324 = load i32, i32* @MACH_MSG_IPC_SPACE, align 4
  %325 = or i32 %323, %324
  store i32 %325, i32* %4, align 4
  br label %500

326:                                              ; preds = %314
  %327 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %328 = call i32 @ip_lock(%struct.TYPE_23__* %327)
  %329 = load i32, i32* %6, align 4
  %330 = call i32 @is_read_unlock(i32 %329)
  %331 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %332 = call i32 @CAST_MACH_PORT_TO_NAME(%struct.TYPE_23__* %331)
  store i32 %332, i32* %17, align 4
  %333 = load i64, i64* %13, align 8
  %334 = load i64, i64* @MACH_MSGH_BITS_ZERO, align 8
  %335 = icmp ne i64 %333, %334
  br i1 %335, label %336, label %350

336:                                              ; preds = %326
  %337 = load i64, i64* %13, align 8
  %338 = load i64, i64* @MACH_MSG_TYPE_MOVE_SEND, align 8
  %339 = icmp eq i64 %337, %338
  %340 = zext i1 %339 to i32
  %341 = call i32 @assert(i32 %340)
  %342 = load i32, i32* %7, align 4
  %343 = load i32, i32* @MACH_RCV_VOUCHER, align 4
  %344 = and i32 %342, %343
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %348

346:                                              ; preds = %336
  %347 = load i64, i64* @MACH_MSGH_BITS_ZERO, align 8
  store i64 %347, i64* %13, align 8
  br label %348

348:                                              ; preds = %346, %336
  %349 = load i32, i32* @MACH_PORT_NULL, align 4
  store i32 %349, i32* %20, align 4
  br label %354

350:                                              ; preds = %326
  %351 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %352 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  store i32 %353, i32* %20, align 4
  br label %354

354:                                              ; preds = %350, %348
  br label %355

355:                                              ; preds = %354, %309
  %356 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %357 = call i32 @ip_active(%struct.TYPE_23__* %356)
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %365

359:                                              ; preds = %355
  %360 = load i32, i32* %6, align 4
  %361 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %362 = bitcast %struct.TYPE_23__* %361 to i8*
  %363 = load i64, i64* %11, align 8
  %364 = call i32 @ipc_object_copyout_dest(i32 %360, i8* %362, i64 %363, i32* %16)
  br label %399

365:                                              ; preds = %355
  %366 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %367 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 4
  store i32 %368, i32* %26, align 4
  %369 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %370 = call i32 @ip_unlock(%struct.TYPE_23__* %369)
  %371 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %372 = call i32 @ip_release(%struct.TYPE_23__* %371)
  %373 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %374 = call i32 @IP_VALID(%struct.TYPE_23__* %373)
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %396

376:                                              ; preds = %365
  %377 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %378 = call i32 @ip_lock(%struct.TYPE_23__* %377)
  %379 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %380 = call i32 @ip_active(%struct.TYPE_23__* %379)
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %389, label %382

382:                                              ; preds = %376
  %383 = load i32, i32* %26, align 4
  %384 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %385 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 4
  %387 = call i64 @IP_TIMESTAMP_ORDER(i32 %383, i32 %386)
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %391

389:                                              ; preds = %382, %376
  %390 = load i32, i32* @MACH_PORT_DEAD, align 4
  store i32 %390, i32* %16, align 4
  br label %393

391:                                              ; preds = %382
  %392 = load i32, i32* @MACH_PORT_NULL, align 4
  store i32 %392, i32* %16, align 4
  br label %393

393:                                              ; preds = %391, %389
  %394 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %395 = call i32 @ip_unlock(%struct.TYPE_23__* %394)
  br label %398

396:                                              ; preds = %365
  %397 = load i32, i32* @MACH_PORT_DEAD, align 4
  store i32 %397, i32* %16, align 4
  br label %398

398:                                              ; preds = %396, %393
  br label %399

399:                                              ; preds = %398, %359
  %400 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %401 = call i32 @IP_VALID(%struct.TYPE_23__* %400)
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %406

403:                                              ; preds = %399
  %404 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %405 = call i32 @ip_release(%struct.TYPE_23__* %404)
  br label %406

406:                                              ; preds = %403, %399
  %407 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %408 = call i32 @IP_VALID(%struct.TYPE_23__* %407)
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %421

410:                                              ; preds = %406
  %411 = load i64, i64* %12, align 8
  %412 = load i64, i64* @MACH_MSG_TYPE_PORT_SEND_ONCE, align 8
  %413 = icmp eq i64 %411, %412
  br i1 %413, label %414, label %417

414:                                              ; preds = %410
  %415 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %416 = call i32 @ipc_port_release_sonce(%struct.TYPE_23__* %415)
  br label %420

417:                                              ; preds = %410
  %418 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %419 = call i32 @ipc_port_release_send(%struct.TYPE_23__* %418)
  br label %420

420:                                              ; preds = %417, %414
  br label %421

421:                                              ; preds = %420, %406
  %422 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %423 = call i32 @IP_VALID(%struct.TYPE_23__* %422)
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %428

425:                                              ; preds = %421
  %426 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %427 = call i32 @ipc_port_release_send(%struct.TYPE_23__* %426)
  br label %428

428:                                              ; preds = %425, %421
  %429 = load i32, i32* %7, align 4
  %430 = load i32, i32* @MACH_RCV_VOUCHER, align 4
  %431 = and i32 %429, %430
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %456

433:                                              ; preds = %428
  %434 = load i32, i32* @DBG_MACH_IPC, align 4
  %435 = load i32, i32* @MACH_IPC_MSG_RECV, align 4
  %436 = call i32 @MACHDBG_CODE(i32 %434, i32 %435)
  %437 = load i32, i32* @DBG_FUNC_NONE, align 4
  %438 = or i32 %436, %437
  %439 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %440 = ptrtoint %struct.TYPE_24__* %439 to i64
  %441 = call i32 @VM_KERNEL_ADDRPERM(i64 %440)
  %442 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %443 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %442, i32 0, i32 0
  %444 = load %struct.TYPE_22__*, %struct.TYPE_22__** %443, align 8
  %445 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %444, i32 0, i32 3
  %446 = load i64, i64* %445, align 8
  %447 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %448 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %447, i32 0, i32 0
  %449 = load %struct.TYPE_22__*, %struct.TYPE_22__** %448, align 8
  %450 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %449, i32 0, i32 4
  %451 = load i64, i64* %450, align 8
  %452 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %453 = call i64 @unsafe_convert_port_to_voucher(%struct.TYPE_23__* %452)
  %454 = call i32 @VM_KERNEL_ADDRPERM(i64 %453)
  %455 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %438, i32 %441, i64 %446, i64 %451, i32 %454, i32 0)
  br label %479

456:                                              ; preds = %428
  %457 = load i32, i32* @DBG_MACH_IPC, align 4
  %458 = load i32, i32* @MACH_IPC_MSG_RECV_VOUCHER_REFUSED, align 4
  %459 = call i32 @MACHDBG_CODE(i32 %457, i32 %458)
  %460 = load i32, i32* @DBG_FUNC_NONE, align 4
  %461 = or i32 %459, %460
  %462 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %463 = ptrtoint %struct.TYPE_24__* %462 to i64
  %464 = call i32 @VM_KERNEL_ADDRPERM(i64 %463)
  %465 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %466 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %465, i32 0, i32 0
  %467 = load %struct.TYPE_22__*, %struct.TYPE_22__** %466, align 8
  %468 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %467, i32 0, i32 3
  %469 = load i64, i64* %468, align 8
  %470 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %471 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %470, i32 0, i32 0
  %472 = load %struct.TYPE_22__*, %struct.TYPE_22__** %471, align 8
  %473 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %472, i32 0, i32 4
  %474 = load i64, i64* %473, align 8
  %475 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %476 = call i64 @unsafe_convert_port_to_voucher(%struct.TYPE_23__* %475)
  %477 = call i32 @VM_KERNEL_ADDRPERM(i64 %476)
  %478 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %461, i32 %464, i64 %469, i64 %474, i32 %477, i32 0)
  br label %479

479:                                              ; preds = %456, %433
  %480 = load i64, i64* %12, align 8
  %481 = load i64, i64* %11, align 8
  %482 = load i64, i64* %13, align 8
  %483 = load i64, i64* %9, align 8
  %484 = call i64 @MACH_MSGH_BITS_SET(i64 %480, i64 %481, i64 %482, i64 %483)
  %485 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %486 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %485, i32 0, i32 3
  store i64 %484, i64* %486, align 8
  %487 = load i32, i32* %16, align 4
  %488 = call i8* @CAST_MACH_NAME_TO_PORT(i32 %487)
  %489 = bitcast i8* %488 to %struct.TYPE_23__*
  %490 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %491 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %490, i32 0, i32 2
  store %struct.TYPE_23__* %489, %struct.TYPE_23__** %491, align 8
  %492 = load i32, i32* %17, align 4
  %493 = call i8* @CAST_MACH_NAME_TO_PORT(i32 %492)
  %494 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %495 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %494, i32 0, i32 1
  store i8* %493, i8** %495, align 8
  %496 = load i32, i32* %20, align 4
  %497 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %498 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %497, i32 0, i32 0
  store i32 %496, i32* %498, align 8
  %499 = load i32, i32* @MACH_MSG_SUCCESS, align 4
  store i32 %499, i32* %4, align 4
  br label %500

500:                                              ; preds = %479, %320, %119, %98
  %501 = load i32, i32* %4, align 4
  ret i32 %501
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @IP_VALID(%struct.TYPE_23__*) #1

declare dso_local i32 @ipc_port_spnotify(%struct.TYPE_23__*) #1

declare dso_local i64 @MACH_MSGH_BITS_REMOTE(i64) #1

declare dso_local i64 @MACH_MSGH_BITS_LOCAL(i64) #1

declare dso_local i64 @MACH_MSGH_BITS_VOUCHER(i64) #1

declare dso_local i32 @is_write_lock(i32) #1

declare dso_local i32 @is_active(i32) #1

declare dso_local i32 @is_write_unlock(i32) #1

declare dso_local i32 @ipc_entries_hold(i32, i64) #1

declare dso_local i32 @ipc_entry_grow_table(i32, i32) #1

declare dso_local i64 @ipc_right_reverse(i32, i8*, i32*, %struct.TYPE_25__**) #1

declare dso_local i32 @ip_lock(%struct.TYPE_23__*) #1

declare dso_local i32 @ip_active(%struct.TYPE_23__*) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_23__*) #1

declare dso_local i32 @ipc_entry_claim(i32, i32*, %struct.TYPE_25__**) #1

declare dso_local i64 @IE_BITS_TYPE(i32) #1

declare dso_local i32 @ip_reference(%struct.TYPE_23__*) #1

declare dso_local i32 @ipc_right_copyout(i32, i32, %struct.TYPE_25__*, i64, i64, i8*) #1

declare dso_local i32 @CAST_MACH_PORT_TO_NAME(%struct.TYPE_23__*) #1

declare dso_local i64 @ip_kotype(%struct.TYPE_23__*) #1

declare dso_local i32 @is_read_lock(i32) #1

declare dso_local i32 @is_read_unlock(i32) #1

declare dso_local i32 @ipc_object_copyout_dest(i32, i8*, i64, i32*) #1

declare dso_local i32 @ip_release(%struct.TYPE_23__*) #1

declare dso_local i64 @IP_TIMESTAMP_ORDER(i32, i32) #1

declare dso_local i32 @ipc_port_release_sonce(%struct.TYPE_23__*) #1

declare dso_local i32 @ipc_port_release_send(%struct.TYPE_23__*) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT(i32, i32, i64, i64, i32, i32) #1

declare dso_local i32 @MACHDBG_CODE(i32, i32) #1

declare dso_local i32 @VM_KERNEL_ADDRPERM(i64) #1

declare dso_local i64 @unsafe_convert_port_to_voucher(%struct.TYPE_23__*) #1

declare dso_local i64 @MACH_MSGH_BITS_SET(i64, i64, i64, i64) #1

declare dso_local i8* @CAST_MACH_NAME_TO_PORT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
