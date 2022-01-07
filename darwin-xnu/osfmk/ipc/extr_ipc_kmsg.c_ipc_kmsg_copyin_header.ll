; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_kmsg.c_ipc_kmsg_copyin_header.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_kmsg.c_ipc_kmsg_copyin_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i64 }
%struct.TYPE_31__ = type { i32, i64, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_29__*, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, i64, %struct.TYPE_29__*, %struct.TYPE_29__* }

@MACH_MSGH_BITS_USER = common dso_local global i32 0, align 4
@MACH_PORT_NULL = common dso_local global i64 0, align 8
@IO_NULL = common dso_local global i64 0, align 8
@IP_NULL = common dso_local global %struct.TYPE_29__* null, align 8
@IE_NULL = common dso_local global %struct.TYPE_31__* null, align 8
@MACH_SEND_INVALID_HEADER = common dso_local global i32 0, align 4
@MACH_SEND_INVALID_DEST = common dso_local global i32 0, align 4
@MACH_MSGH_BITS_ZERO = common dso_local global i64 0, align 8
@MACH_PORT_DEAD = common dso_local global i64 0, align 8
@MACH_MSG_TYPE_MOVE_SEND = common dso_local global i64 0, align 8
@MACH_MSG_TYPE_COPY_SEND = common dso_local global i64 0, align 8
@MACH_SEND_KERNEL = common dso_local global i32 0, align 4
@kGUARD_EXC_SEND_INVALID_VOUCHER = common dso_local global i32 0, align 4
@MACH_SEND_INVALID_VOUCHER = common dso_local global i32 0, align 4
@MACH_PORT_TYPE_SEND = common dso_local global i32 0, align 4
@IKOT_VOUCHER = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@KERN_INVALID_CAPABILITY = common dso_local global i64 0, align 8
@MACH_MSG_TYPE_MAKE_SEND = common dso_local global i64 0, align 8
@MACH_MSG_TYPE_MAKE_SEND_ONCE = common dso_local global i64 0, align 8
@MACH_MSG_TYPE_MOVE_SEND_ONCE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@MACH_PORT_TYPE_NONE = common dso_local global i64 0, align 8
@MACH_SEND_NOTIFY = common dso_local global i32 0, align 4
@MACH_MSG_TYPE_PORT_SEND_ONCE = common dso_local global i64 0, align 8
@IE_REQ_NONE = common dso_local global i64 0, align 8
@ipc_space_kernel = common dso_local global i64 0, align 8
@MACH_SEND_ALWAYS = common dso_local global i32 0, align 4
@MACH_MSG_SUCCESS = common dso_local global i32 0, align 4
@kGUARD_EXC_SEND_INVALID_REPLY = common dso_local global i32 0, align 4
@MACH_SEND_INVALID_REPLY = common dso_local global i32 0, align 4
@IPID_OPTION_SENDPOSSIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_kmsg_copyin_header(%struct.TYPE_30__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_29__*, align 8
  %22 = alloca %struct.TYPE_29__*, align 8
  %23 = alloca %struct.TYPE_29__*, align 8
  %24 = alloca %struct.TYPE_29__*, align 8
  %25 = alloca %struct.TYPE_29__*, align 8
  %26 = alloca %struct.TYPE_29__*, align 8
  %27 = alloca %struct.TYPE_31__*, align 8
  %28 = alloca %struct.TYPE_31__*, align 8
  %29 = alloca %struct.TYPE_31__*, align 8
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %32 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_28__*, %struct.TYPE_28__** %33, align 8
  store %struct.TYPE_28__* %34, %struct.TYPE_28__** %10, align 8
  %35 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @MACH_MSGH_BITS_USER, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %11, align 4
  %40 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_29__*, %struct.TYPE_29__** %41, align 8
  %43 = call i64 @CAST_MACH_PORT_TO_NAME(%struct.TYPE_29__* %42)
  store i64 %43, i64* %12, align 8
  %44 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_29__*, %struct.TYPE_29__** %45, align 8
  %47 = call i64 @CAST_MACH_PORT_TO_NAME(%struct.TYPE_29__* %46)
  store i64 %47, i64* %13, align 8
  %48 = load i64, i64* @MACH_PORT_NULL, align 8
  store i64 %48, i64* %14, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i64 @MACH_MSGH_BITS_REMOTE(i32 %49)
  store i64 %50, i64* %16, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i64 @MACH_MSGH_BITS_LOCAL(i32 %51)
  store i64 %52, i64* %17, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i64 @MACH_MSGH_BITS_VOUCHER(i32 %53)
  store i64 %54, i64* %18, align 8
  %55 = load i64, i64* @IO_NULL, align 8
  store i64 %55, i64* %19, align 8
  %56 = load i64, i64* @IO_NULL, align 8
  store i64 %56, i64* %20, align 8
  %57 = load %struct.TYPE_29__*, %struct.TYPE_29__** @IP_NULL, align 8
  store %struct.TYPE_29__* %57, %struct.TYPE_29__** %21, align 8
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** @IP_NULL, align 8
  store %struct.TYPE_29__* %58, %struct.TYPE_29__** %22, align 8
  %59 = load %struct.TYPE_29__*, %struct.TYPE_29__** @IP_NULL, align 8
  store %struct.TYPE_29__* %59, %struct.TYPE_29__** %23, align 8
  %60 = load %struct.TYPE_29__*, %struct.TYPE_29__** @IP_NULL, align 8
  store %struct.TYPE_29__* %60, %struct.TYPE_29__** %24, align 8
  %61 = load %struct.TYPE_29__*, %struct.TYPE_29__** @IP_NULL, align 8
  store %struct.TYPE_29__* %61, %struct.TYPE_29__** %25, align 8
  %62 = load %struct.TYPE_29__*, %struct.TYPE_29__** @IP_NULL, align 8
  store %struct.TYPE_29__* %62, %struct.TYPE_29__** %26, align 8
  %63 = load %struct.TYPE_31__*, %struct.TYPE_31__** @IE_NULL, align 8
  store %struct.TYPE_31__* %63, %struct.TYPE_31__** %27, align 8
  %64 = load %struct.TYPE_31__*, %struct.TYPE_31__** @IE_NULL, align 8
  store %struct.TYPE_31__* %64, %struct.TYPE_31__** %28, align 8
  %65 = load %struct.TYPE_31__*, %struct.TYPE_31__** @IE_NULL, align 8
  store %struct.TYPE_31__* %65, %struct.TYPE_31__** %29, align 8
  store i32 0, i32* %30, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %66, %69
  br i1 %70, label %86, label %71

71:                                               ; preds = %4
  %72 = load i64, i64* %16, align 8
  %73 = call i32 @MACH_MSG_TYPE_PORT_ANY_SEND(i64 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %71
  %76 = load i64, i64* %17, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i64, i64* %13, align 8
  %80 = load i64, i64* @MACH_PORT_NULL, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %86, label %88

82:                                               ; preds = %75
  %83 = load i64, i64* %17, align 8
  %84 = call i32 @MACH_MSG_TYPE_PORT_ANY_SEND(i64 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %82, %78, %71, %4
  %87 = load i32, i32* @MACH_SEND_INVALID_HEADER, align 4
  store i32 %87, i32* %5, align 4
  br label %715

88:                                               ; preds = %82, %78
  %89 = load i64, i64* %12, align 8
  %90 = call i64 @MACH_PORT_VALID(i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* @MACH_SEND_INVALID_DEST, align 4
  store i32 %93, i32* %5, align 4
  br label %715

94:                                               ; preds = %88
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @is_write_lock(i32 %95)
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @is_active(i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %94
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @is_write_unlock(i32 %101)
  %103 = load i32, i32* @MACH_SEND_INVALID_DEST, align 4
  store i32 %103, i32* %5, align 4
  br label %715

104:                                              ; preds = %94
  %105 = load i64, i64* %18, align 8
  %106 = load i64, i64* @MACH_MSGH_BITS_ZERO, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %180

108:                                              ; preds = %104
  %109 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %14, align 8
  %112 = load i64, i64* %14, align 8
  %113 = load i64, i64* @MACH_PORT_DEAD, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %123, label %115

115:                                              ; preds = %108
  %116 = load i64, i64* %18, align 8
  %117 = load i64, i64* @MACH_MSG_TYPE_MOVE_SEND, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %137

119:                                              ; preds = %115
  %120 = load i64, i64* %18, align 8
  %121 = load i64, i64* @MACH_MSG_TYPE_COPY_SEND, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %137

123:                                              ; preds = %119, %108
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @is_write_unlock(i32 %124)
  %126 = load i32*, i32** %9, align 8
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @MACH_SEND_KERNEL, align 4
  %129 = and i32 %127, %128
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %123
  %132 = load i64, i64* %14, align 8
  %133 = load i32, i32* @kGUARD_EXC_SEND_INVALID_VOUCHER, align 4
  %134 = call i32 @mach_port_guard_exception(i64 %132, i32 0, i32 0, i32 %133)
  br label %135

135:                                              ; preds = %131, %123
  %136 = load i32, i32* @MACH_SEND_INVALID_VOUCHER, align 4
  store i32 %136, i32* %5, align 4
  br label %715

137:                                              ; preds = %119, %115
  %138 = load i64, i64* %14, align 8
  %139 = load i64, i64* @MACH_PORT_NULL, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %177

141:                                              ; preds = %137
  %142 = load i32, i32* %7, align 4
  %143 = load i64, i64* %14, align 8
  %144 = call %struct.TYPE_31__* @ipc_entry_lookup(i32 %142, i64 %143)
  store %struct.TYPE_31__* %144, %struct.TYPE_31__** %29, align 8
  %145 = load %struct.TYPE_31__*, %struct.TYPE_31__** %29, align 8
  %146 = load %struct.TYPE_31__*, %struct.TYPE_31__** @IE_NULL, align 8
  %147 = icmp eq %struct.TYPE_31__* %145, %146
  br i1 %147, label %162, label %148

148:                                              ; preds = %141
  %149 = load %struct.TYPE_31__*, %struct.TYPE_31__** %29, align 8
  %150 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @MACH_PORT_TYPE_SEND, align 4
  %153 = and i32 %151, %152
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %162, label %155

155:                                              ; preds = %148
  %156 = load %struct.TYPE_31__*, %struct.TYPE_31__** %29, align 8
  %157 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = call i64 @io_kotype(i32 %158)
  %160 = load i64, i64* @IKOT_VOUCHER, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %176

162:                                              ; preds = %155, %148, %141
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @is_write_unlock(i32 %163)
  %165 = load i32*, i32** %9, align 8
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @MACH_SEND_KERNEL, align 4
  %168 = and i32 %166, %167
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %162
  %171 = load i64, i64* %14, align 8
  %172 = load i32, i32* @kGUARD_EXC_SEND_INVALID_VOUCHER, align 4
  %173 = call i32 @mach_port_guard_exception(i64 %171, i32 0, i32 0, i32 %172)
  br label %174

174:                                              ; preds = %170, %162
  %175 = load i32, i32* @MACH_SEND_INVALID_VOUCHER, align 4
  store i32 %175, i32* %5, align 4
  br label %715

176:                                              ; preds = %155
  br label %179

177:                                              ; preds = %137
  %178 = load i64, i64* @MACH_MSG_TYPE_MOVE_SEND, align 8
  store i64 %178, i64* %18, align 8
  br label %179

179:                                              ; preds = %177, %176
  br label %180

180:                                              ; preds = %179, %104
  %181 = load i64, i64* %12, align 8
  %182 = load i64, i64* %14, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %279

184:                                              ; preds = %180
  %185 = load %struct.TYPE_31__*, %struct.TYPE_31__** %29, align 8
  store %struct.TYPE_31__* %185, %struct.TYPE_31__** %27, align 8
  %186 = load %struct.TYPE_31__*, %struct.TYPE_31__** %27, align 8
  %187 = load %struct.TYPE_31__*, %struct.TYPE_31__** @IE_NULL, align 8
  %188 = icmp eq %struct.TYPE_31__* %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %184
  br label %686

190:                                              ; preds = %184
  %191 = load i64, i64* %13, align 8
  %192 = call i64 @MACH_PORT_VALID(i64 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %225

194:                                              ; preds = %190
  %195 = load i64, i64* %17, align 8
  %196 = icmp ne i64 %195, 0
  %197 = zext i1 %196 to i32
  %198 = call i32 @assert(i32 %197)
  %199 = load i64, i64* %14, align 8
  %200 = load i64, i64* %13, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %194
  br label %655

203:                                              ; preds = %194
  %204 = load i32, i32* %7, align 4
  %205 = load i64, i64* %13, align 8
  %206 = call %struct.TYPE_31__* @ipc_entry_lookup(i32 %204, i64 %205)
  store %struct.TYPE_31__* %206, %struct.TYPE_31__** %28, align 8
  %207 = load %struct.TYPE_31__*, %struct.TYPE_31__** %28, align 8
  %208 = load %struct.TYPE_31__*, %struct.TYPE_31__** @IE_NULL, align 8
  %209 = icmp eq %struct.TYPE_31__* %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %203
  br label %655

211:                                              ; preds = %203
  %212 = load %struct.TYPE_31__*, %struct.TYPE_31__** %27, align 8
  %213 = load %struct.TYPE_31__*, %struct.TYPE_31__** %28, align 8
  %214 = icmp ne %struct.TYPE_31__* %212, %213
  %215 = zext i1 %214 to i32
  %216 = call i32 @assert(i32 %215)
  %217 = load i32, i32* %7, align 4
  %218 = load i64, i64* %13, align 8
  %219 = load %struct.TYPE_31__*, %struct.TYPE_31__** %28, align 8
  %220 = load i64, i64* %17, align 8
  %221 = call i32 @ipc_right_copyin_check(i32 %217, i64 %218, %struct.TYPE_31__* %219, i64 %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %211
  br label %655

224:                                              ; preds = %211
  br label %225

225:                                              ; preds = %224, %190
  %226 = load i32, i32* %7, align 4
  %227 = load i64, i64* %12, align 8
  %228 = load %struct.TYPE_31__*, %struct.TYPE_31__** %27, align 8
  %229 = load i64, i64* %16, align 8
  %230 = load i64, i64* %18, align 8
  %231 = call i64 @ipc_right_copyin_two(i32 %226, i64 %227, %struct.TYPE_31__* %228, i64 %229, i64 %230, i64* %19, %struct.TYPE_29__** %21, %struct.TYPE_29__** %24)
  store i64 %231, i64* %15, align 8
  %232 = load i64, i64* %15, align 8
  %233 = load i64, i64* @KERN_SUCCESS, align 8
  %234 = icmp ne i64 %232, %233
  br i1 %234, label %235, label %241

235:                                              ; preds = %225
  %236 = load i64, i64* %15, align 8
  %237 = load i64, i64* @KERN_INVALID_CAPABILITY, align 8
  %238 = icmp ne i64 %236, %237
  %239 = zext i1 %238 to i32
  %240 = call i32 @assert(i32 %239)
  br label %686

241:                                              ; preds = %225
  %242 = load i64, i64* %19, align 8
  %243 = inttoptr i64 %242 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %243, %struct.TYPE_29__** %25, align 8
  %244 = load i64, i64* %16, align 8
  %245 = load i64, i64* @MACH_MSG_TYPE_MAKE_SEND, align 8
  %246 = icmp ne i64 %244, %245
  %247 = zext i1 %246 to i32
  %248 = call i32 @assert(i32 %247)
  %249 = load i64, i64* %16, align 8
  %250 = load i64, i64* @MACH_MSG_TYPE_MAKE_SEND_ONCE, align 8
  %251 = icmp ne i64 %249, %250
  %252 = zext i1 %251 to i32
  %253 = call i32 @assert(i32 %252)
  %254 = load i64, i64* %16, align 8
  %255 = load i64, i64* @MACH_MSG_TYPE_MOVE_SEND_ONCE, align 8
  %256 = icmp ne i64 %254, %255
  %257 = zext i1 %256 to i32
  %258 = call i32 @assert(i32 %257)
  %259 = load %struct.TYPE_31__*, %struct.TYPE_31__** %28, align 8
  %260 = load %struct.TYPE_31__*, %struct.TYPE_31__** @IE_NULL, align 8
  %261 = icmp ne %struct.TYPE_31__* %259, %260
  br i1 %261, label %262, label %278

262:                                              ; preds = %241
  %263 = load i32, i32* %7, align 4
  %264 = load i64, i64* %13, align 8
  %265 = load %struct.TYPE_31__*, %struct.TYPE_31__** %28, align 8
  %266 = load i64, i64* %17, align 8
  %267 = load i64, i64* @TRUE, align 8
  %268 = call i64 @ipc_right_copyin(i32 %263, i64 %264, %struct.TYPE_31__* %265, i64 %266, i64 %267, i64* %20, %struct.TYPE_29__** %22, %struct.TYPE_29__** %24, i32* %30)
  store i64 %268, i64* %15, align 8
  %269 = load i32, i32* %30, align 4
  %270 = icmp eq i32 %269, 0
  %271 = zext i1 %270 to i32
  %272 = call i32 @assert(i32 %271)
  %273 = load i64, i64* %15, align 8
  %274 = load i64, i64* @KERN_SUCCESS, align 8
  %275 = icmp eq i64 %273, %274
  %276 = zext i1 %275 to i32
  %277 = call i32 @assert(i32 %276)
  br label %278

278:                                              ; preds = %262, %241
  br label %439

279:                                              ; preds = %180
  %280 = load i64, i64* %12, align 8
  %281 = load i64, i64* %13, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %283, label %315

283:                                              ; preds = %279
  %284 = load i32, i32* %7, align 4
  %285 = load i64, i64* %12, align 8
  %286 = call %struct.TYPE_31__* @ipc_entry_lookup(i32 %284, i64 %285)
  store %struct.TYPE_31__* %286, %struct.TYPE_31__** %27, align 8
  %287 = load %struct.TYPE_31__*, %struct.TYPE_31__** %27, align 8
  %288 = load %struct.TYPE_31__*, %struct.TYPE_31__** @IE_NULL, align 8
  %289 = icmp eq %struct.TYPE_31__* %287, %288
  br i1 %289, label %290, label %291

290:                                              ; preds = %283
  br label %686

291:                                              ; preds = %283
  %292 = load %struct.TYPE_31__*, %struct.TYPE_31__** %27, align 8
  store %struct.TYPE_31__* %292, %struct.TYPE_31__** %28, align 8
  %293 = load i64, i64* %17, align 8
  %294 = icmp ne i64 %293, 0
  %295 = zext i1 %294 to i32
  %296 = call i32 @assert(i32 %295)
  %297 = load i32, i32* %7, align 4
  %298 = load i64, i64* %12, align 8
  %299 = load %struct.TYPE_31__*, %struct.TYPE_31__** %27, align 8
  %300 = load i64, i64* %16, align 8
  %301 = load i64, i64* %17, align 8
  %302 = call i64 @ipc_right_copyin_two(i32 %297, i64 %298, %struct.TYPE_31__* %299, i64 %300, i64 %301, i64* %19, %struct.TYPE_29__** %21, %struct.TYPE_29__** %24)
  store i64 %302, i64* %15, align 8
  %303 = load i64, i64* %15, align 8
  %304 = load i64, i64* @KERN_INVALID_CAPABILITY, align 8
  %305 = icmp eq i64 %303, %304
  br i1 %305, label %306, label %307

306:                                              ; preds = %291
  br label %655

307:                                              ; preds = %291
  %308 = load i64, i64* %15, align 8
  %309 = load i64, i64* @KERN_SUCCESS, align 8
  %310 = icmp ne i64 %308, %309
  br i1 %310, label %311, label %312

311:                                              ; preds = %307
  br label %686

312:                                              ; preds = %307
  br label %313

313:                                              ; preds = %312
  %314 = load i64, i64* %19, align 8
  store i64 %314, i64* %20, align 8
  br label %411

315:                                              ; preds = %279
  %316 = load i32, i32* %7, align 4
  %317 = load i64, i64* %12, align 8
  %318 = call %struct.TYPE_31__* @ipc_entry_lookup(i32 %316, i64 %317)
  store %struct.TYPE_31__* %318, %struct.TYPE_31__** %27, align 8
  %319 = load %struct.TYPE_31__*, %struct.TYPE_31__** %27, align 8
  %320 = load %struct.TYPE_31__*, %struct.TYPE_31__** @IE_NULL, align 8
  %321 = icmp eq %struct.TYPE_31__* %319, %320
  br i1 %321, label %322, label %323

322:                                              ; preds = %315
  br label %686

323:                                              ; preds = %315
  %324 = load %struct.TYPE_31__*, %struct.TYPE_31__** %27, align 8
  %325 = load %struct.TYPE_31__*, %struct.TYPE_31__** %29, align 8
  %326 = icmp ne %struct.TYPE_31__* %324, %325
  %327 = zext i1 %326 to i32
  %328 = call i32 @assert(i32 %327)
  %329 = load i64, i64* %13, align 8
  %330 = call i64 @MACH_PORT_VALID(i64 %329)
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %363

332:                                              ; preds = %323
  %333 = load i64, i64* %13, align 8
  %334 = load i64, i64* %14, align 8
  %335 = icmp eq i64 %333, %334
  br i1 %335, label %336, label %337

336:                                              ; preds = %332
  br label %655

337:                                              ; preds = %332
  %338 = load i32, i32* %7, align 4
  %339 = load i64, i64* %13, align 8
  %340 = call %struct.TYPE_31__* @ipc_entry_lookup(i32 %338, i64 %339)
  store %struct.TYPE_31__* %340, %struct.TYPE_31__** %28, align 8
  %341 = load %struct.TYPE_31__*, %struct.TYPE_31__** %28, align 8
  %342 = load %struct.TYPE_31__*, %struct.TYPE_31__** @IE_NULL, align 8
  %343 = icmp eq %struct.TYPE_31__* %341, %342
  br i1 %343, label %344, label %345

344:                                              ; preds = %337
  br label %655

345:                                              ; preds = %337
  %346 = load %struct.TYPE_31__*, %struct.TYPE_31__** %27, align 8
  %347 = load %struct.TYPE_31__*, %struct.TYPE_31__** %28, align 8
  %348 = icmp ne %struct.TYPE_31__* %346, %347
  %349 = zext i1 %348 to i32
  %350 = call i32 @assert(i32 %349)
  %351 = load i64, i64* %17, align 8
  %352 = icmp ne i64 %351, 0
  %353 = zext i1 %352 to i32
  %354 = call i32 @assert(i32 %353)
  %355 = load i32, i32* %7, align 4
  %356 = load i64, i64* %13, align 8
  %357 = load %struct.TYPE_31__*, %struct.TYPE_31__** %28, align 8
  %358 = load i64, i64* %17, align 8
  %359 = call i32 @ipc_right_copyin_check(i32 %355, i64 %356, %struct.TYPE_31__* %357, i64 %358)
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %362, label %361

361:                                              ; preds = %345
  br label %655

362:                                              ; preds = %345
  br label %363

363:                                              ; preds = %362, %323
  %364 = load i32, i32* %7, align 4
  %365 = load i64, i64* %12, align 8
  %366 = load %struct.TYPE_31__*, %struct.TYPE_31__** %27, align 8
  %367 = load i64, i64* %16, align 8
  %368 = load i64, i64* @FALSE, align 8
  %369 = call i64 @ipc_right_copyin(i32 %364, i64 %365, %struct.TYPE_31__* %366, i64 %367, i64 %368, i64* %19, %struct.TYPE_29__** %21, %struct.TYPE_29__** %24, i32* %30)
  store i64 %369, i64* %15, align 8
  %370 = load i32, i32* %30, align 4
  %371 = icmp eq i32 %370, 0
  %372 = zext i1 %371 to i32
  %373 = call i32 @assert(i32 %372)
  %374 = load i64, i64* %15, align 8
  %375 = load i64, i64* @KERN_SUCCESS, align 8
  %376 = icmp ne i64 %374, %375
  br i1 %376, label %377, label %378

377:                                              ; preds = %363
  br label %686

378:                                              ; preds = %363
  %379 = load i64, i64* %19, align 8
  %380 = call i32 @IO_VALID(i64 %379)
  %381 = call i32 @assert(i32 %380)
  %382 = load %struct.TYPE_29__*, %struct.TYPE_29__** %24, align 8
  %383 = call i32 @IP_VALID(%struct.TYPE_29__* %382)
  %384 = icmp ne i32 %383, 0
  %385 = xor i1 %384, true
  %386 = zext i1 %385 to i32
  %387 = call i32 @assert(i32 %386)
  %388 = load i64, i64* %13, align 8
  %389 = call i64 @MACH_PORT_VALID(i64 %388)
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %407

391:                                              ; preds = %378
  %392 = load i32, i32* %7, align 4
  %393 = load i64, i64* %13, align 8
  %394 = load %struct.TYPE_31__*, %struct.TYPE_31__** %28, align 8
  %395 = load i64, i64* %17, align 8
  %396 = load i64, i64* @TRUE, align 8
  %397 = call i64 @ipc_right_copyin(i32 %392, i64 %393, %struct.TYPE_31__* %394, i64 %395, i64 %396, i64* %20, %struct.TYPE_29__** %22, %struct.TYPE_29__** %24, i32* %30)
  store i64 %397, i64* %15, align 8
  %398 = load i32, i32* %30, align 4
  %399 = icmp eq i32 %398, 0
  %400 = zext i1 %399 to i32
  %401 = call i32 @assert(i32 %400)
  %402 = load i64, i64* %15, align 8
  %403 = load i64, i64* @KERN_SUCCESS, align 8
  %404 = icmp eq i64 %402, %403
  %405 = zext i1 %404 to i32
  %406 = call i32 @assert(i32 %405)
  br label %410

407:                                              ; preds = %378
  %408 = load i64, i64* %13, align 8
  %409 = call i64 @CAST_MACH_NAME_TO_PORT(i64 %408)
  store i64 %409, i64* %20, align 8
  br label %410

410:                                              ; preds = %407, %391
  br label %411

411:                                              ; preds = %410, %313
  %412 = load %struct.TYPE_31__*, %struct.TYPE_31__** @IE_NULL, align 8
  %413 = load %struct.TYPE_31__*, %struct.TYPE_31__** %29, align 8
  %414 = icmp ne %struct.TYPE_31__* %412, %413
  br i1 %414, label %415, label %438

415:                                              ; preds = %411
  %416 = load i32, i32* %7, align 4
  %417 = load i64, i64* %14, align 8
  %418 = load %struct.TYPE_31__*, %struct.TYPE_31__** %29, align 8
  %419 = load i64, i64* %18, align 8
  %420 = load i64, i64* @FALSE, align 8
  %421 = bitcast %struct.TYPE_29__** %25 to i64*
  %422 = call i64 @ipc_right_copyin(i32 %416, i64 %417, %struct.TYPE_31__* %418, i64 %419, i64 %420, i64* %421, %struct.TYPE_29__** %23, %struct.TYPE_29__** %26, i32* %30)
  store i64 %422, i64* %15, align 8
  %423 = load i32, i32* %30, align 4
  %424 = icmp eq i32 %423, 0
  %425 = zext i1 %424 to i32
  %426 = call i32 @assert(i32 %425)
  %427 = load i64, i64* @KERN_SUCCESS, align 8
  %428 = load i64, i64* %15, align 8
  %429 = icmp eq i64 %427, %428
  %430 = zext i1 %429 to i32
  %431 = call i32 @assert(i32 %430)
  %432 = load %struct.TYPE_29__*, %struct.TYPE_29__** %25, align 8
  %433 = call i32 @IP_VALID(%struct.TYPE_29__* %432)
  %434 = call i32 @assert(i32 %433)
  %435 = load %struct.TYPE_29__*, %struct.TYPE_29__** %25, align 8
  %436 = call i32 @ip_active(%struct.TYPE_29__* %435)
  %437 = call i32 @assert(i32 %436)
  br label %438

438:                                              ; preds = %415, %411
  br label %439

439:                                              ; preds = %438, %278
  %440 = load %struct.TYPE_31__*, %struct.TYPE_31__** @IE_NULL, align 8
  %441 = load %struct.TYPE_31__*, %struct.TYPE_31__** %27, align 8
  %442 = icmp ne %struct.TYPE_31__* %440, %441
  %443 = zext i1 %442 to i32
  %444 = call i32 @assert(i32 %443)
  %445 = load %struct.TYPE_31__*, %struct.TYPE_31__** @IE_NULL, align 8
  %446 = load %struct.TYPE_31__*, %struct.TYPE_31__** %28, align 8
  %447 = icmp ne %struct.TYPE_31__* %445, %446
  br i1 %447, label %448, label %454

448:                                              ; preds = %439
  %449 = load %struct.TYPE_31__*, %struct.TYPE_31__** %28, align 8
  %450 = load %struct.TYPE_31__*, %struct.TYPE_31__** %29, align 8
  %451 = icmp ne %struct.TYPE_31__* %449, %450
  %452 = zext i1 %451 to i32
  %453 = call i32 @assert(i32 %452)
  br label %454

454:                                              ; preds = %448, %439
  %455 = load %struct.TYPE_31__*, %struct.TYPE_31__** %27, align 8
  %456 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 8
  %458 = call i64 @IE_BITS_TYPE(i32 %457)
  %459 = load i64, i64* @MACH_PORT_TYPE_NONE, align 8
  %460 = icmp eq i64 %458, %459
  br i1 %460, label %461, label %479

461:                                              ; preds = %454
  %462 = load i32, i32* %7, align 4
  %463 = load i64, i64* %12, align 8
  %464 = load %struct.TYPE_31__*, %struct.TYPE_31__** %27, align 8
  %465 = call i32 @ipc_entry_dealloc(i32 %462, i64 %463, %struct.TYPE_31__* %464)
  %466 = load %struct.TYPE_31__*, %struct.TYPE_31__** %27, align 8
  %467 = load %struct.TYPE_31__*, %struct.TYPE_31__** %28, align 8
  %468 = icmp eq %struct.TYPE_31__* %466, %467
  br i1 %468, label %469, label %471

469:                                              ; preds = %461
  %470 = load %struct.TYPE_31__*, %struct.TYPE_31__** @IE_NULL, align 8
  store %struct.TYPE_31__* %470, %struct.TYPE_31__** %28, align 8
  br label %471

471:                                              ; preds = %469, %461
  %472 = load %struct.TYPE_31__*, %struct.TYPE_31__** %27, align 8
  %473 = load %struct.TYPE_31__*, %struct.TYPE_31__** %29, align 8
  %474 = icmp eq %struct.TYPE_31__* %472, %473
  br i1 %474, label %475, label %477

475:                                              ; preds = %471
  %476 = load %struct.TYPE_31__*, %struct.TYPE_31__** @IE_NULL, align 8
  store %struct.TYPE_31__* %476, %struct.TYPE_31__** %29, align 8
  br label %477

477:                                              ; preds = %475, %471
  %478 = load %struct.TYPE_31__*, %struct.TYPE_31__** @IE_NULL, align 8
  store %struct.TYPE_31__* %478, %struct.TYPE_31__** %27, align 8
  br label %479

479:                                              ; preds = %477, %454
  %480 = load %struct.TYPE_31__*, %struct.TYPE_31__** @IE_NULL, align 8
  %481 = load %struct.TYPE_31__*, %struct.TYPE_31__** %28, align 8
  %482 = icmp ne %struct.TYPE_31__* %480, %481
  br i1 %482, label %483, label %496

483:                                              ; preds = %479
  %484 = load %struct.TYPE_31__*, %struct.TYPE_31__** %28, align 8
  %485 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %484, i32 0, i32 0
  %486 = load i32, i32* %485, align 8
  %487 = call i64 @IE_BITS_TYPE(i32 %486)
  %488 = load i64, i64* @MACH_PORT_TYPE_NONE, align 8
  %489 = icmp eq i64 %487, %488
  br i1 %489, label %490, label %496

490:                                              ; preds = %483
  %491 = load i32, i32* %7, align 4
  %492 = load i64, i64* %13, align 8
  %493 = load %struct.TYPE_31__*, %struct.TYPE_31__** %28, align 8
  %494 = call i32 @ipc_entry_dealloc(i32 %491, i64 %492, %struct.TYPE_31__* %493)
  %495 = load %struct.TYPE_31__*, %struct.TYPE_31__** @IE_NULL, align 8
  store %struct.TYPE_31__* %495, %struct.TYPE_31__** %28, align 8
  br label %496

496:                                              ; preds = %490, %483, %479
  %497 = load %struct.TYPE_31__*, %struct.TYPE_31__** @IE_NULL, align 8
  %498 = load %struct.TYPE_31__*, %struct.TYPE_31__** %29, align 8
  %499 = icmp ne %struct.TYPE_31__* %497, %498
  br i1 %499, label %500, label %513

500:                                              ; preds = %496
  %501 = load %struct.TYPE_31__*, %struct.TYPE_31__** %29, align 8
  %502 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %501, i32 0, i32 0
  %503 = load i32, i32* %502, align 8
  %504 = call i64 @IE_BITS_TYPE(i32 %503)
  %505 = load i64, i64* @MACH_PORT_TYPE_NONE, align 8
  %506 = icmp eq i64 %504, %505
  br i1 %506, label %507, label %513

507:                                              ; preds = %500
  %508 = load i32, i32* %7, align 4
  %509 = load i64, i64* %14, align 8
  %510 = load %struct.TYPE_31__*, %struct.TYPE_31__** %29, align 8
  %511 = call i32 @ipc_entry_dealloc(i32 %508, i64 %509, %struct.TYPE_31__* %510)
  %512 = load %struct.TYPE_31__*, %struct.TYPE_31__** @IE_NULL, align 8
  store %struct.TYPE_31__* %512, %struct.TYPE_31__** %29, align 8
  br label %513

513:                                              ; preds = %507, %500, %496
  %514 = load i64, i64* %16, align 8
  %515 = call i64 @ipc_object_copyin_type(i64 %514)
  store i64 %515, i64* %16, align 8
  %516 = load i64, i64* %17, align 8
  %517 = call i64 @ipc_object_copyin_type(i64 %516)
  store i64 %517, i64* %17, align 8
  %518 = load i32*, i32** %9, align 8
  %519 = load i32, i32* %518, align 4
  %520 = load i32, i32* @MACH_SEND_NOTIFY, align 4
  %521 = and i32 %519, %520
  %522 = icmp ne i32 %521, 0
  br i1 %522, label %523, label %584

523:                                              ; preds = %513
  %524 = load i64, i64* %16, align 8
  %525 = load i64, i64* @MACH_MSG_TYPE_PORT_SEND_ONCE, align 8
  %526 = icmp ne i64 %524, %525
  br i1 %526, label %527, label %584

527:                                              ; preds = %523
  %528 = load %struct.TYPE_31__*, %struct.TYPE_31__** %27, align 8
  %529 = load %struct.TYPE_31__*, %struct.TYPE_31__** @IE_NULL, align 8
  %530 = icmp ne %struct.TYPE_31__* %528, %529
  br i1 %530, label %531, label %584

531:                                              ; preds = %527
  %532 = load %struct.TYPE_31__*, %struct.TYPE_31__** %27, align 8
  %533 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %532, i32 0, i32 1
  %534 = load i64, i64* %533, align 8
  %535 = load i64, i64* @IE_REQ_NONE, align 8
  %536 = icmp ne i64 %534, %535
  br i1 %536, label %537, label %584

537:                                              ; preds = %531
  %538 = load i64, i64* %19, align 8
  %539 = inttoptr i64 %538 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %539, %struct.TYPE_29__** %31, align 8
  %540 = load %struct.TYPE_29__*, %struct.TYPE_29__** %31, align 8
  %541 = load %struct.TYPE_29__*, %struct.TYPE_29__** @IP_NULL, align 8
  %542 = icmp ne %struct.TYPE_29__* %540, %541
  %543 = zext i1 %542 to i32
  %544 = call i32 @assert(i32 %543)
  %545 = load %struct.TYPE_29__*, %struct.TYPE_29__** %31, align 8
  %546 = call i32 @ip_lock(%struct.TYPE_29__* %545)
  %547 = load %struct.TYPE_29__*, %struct.TYPE_29__** %31, align 8
  %548 = call i32 @ip_active(%struct.TYPE_29__* %547)
  %549 = icmp ne i32 %548, 0
  br i1 %549, label %550, label %580

550:                                              ; preds = %537
  %551 = load %struct.TYPE_29__*, %struct.TYPE_29__** %31, align 8
  %552 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %551, i32 0, i32 0
  %553 = load i64, i64* %552, align 8
  %554 = load i64, i64* @ipc_space_kernel, align 8
  %555 = icmp ne i64 %553, %554
  br i1 %555, label %556, label %580

556:                                              ; preds = %550
  %557 = load %struct.TYPE_29__*, %struct.TYPE_29__** %31, align 8
  %558 = call i64 @ip_full(%struct.TYPE_29__* %557)
  %559 = icmp ne i64 %558, 0
  br i1 %559, label %560, label %572

560:                                              ; preds = %556
  %561 = load %struct.TYPE_29__*, %struct.TYPE_29__** %31, align 8
  %562 = load i64, i64* %12, align 8
  %563 = load %struct.TYPE_31__*, %struct.TYPE_31__** %27, align 8
  %564 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %563, i32 0, i32 1
  %565 = load i64, i64* %564, align 8
  %566 = load i32*, i32** %9, align 8
  %567 = load i32, i32* %566, align 4
  %568 = load i32, i32* %8, align 4
  %569 = call i64 @ipc_port_request_sparm(%struct.TYPE_29__* %561, i64 %562, i64 %565, i32 %567, i32 %568)
  %570 = load %struct.TYPE_29__*, %struct.TYPE_29__** %31, align 8
  %571 = call i32 @ip_unlock(%struct.TYPE_29__* %570)
  br label %579

572:                                              ; preds = %556
  %573 = load i32, i32* @MACH_SEND_ALWAYS, align 4
  %574 = load i32*, i32** %9, align 8
  %575 = load i32, i32* %574, align 4
  %576 = or i32 %575, %573
  store i32 %576, i32* %574, align 4
  %577 = load %struct.TYPE_29__*, %struct.TYPE_29__** %31, align 8
  %578 = call i32 @ip_unlock(%struct.TYPE_29__* %577)
  br label %579

579:                                              ; preds = %572, %560
  br label %583

580:                                              ; preds = %550, %537
  %581 = load %struct.TYPE_29__*, %struct.TYPE_29__** %31, align 8
  %582 = call i32 @ip_unlock(%struct.TYPE_29__* %581)
  br label %583

583:                                              ; preds = %580, %579
  br label %584

584:                                              ; preds = %583, %531, %527, %523, %513
  %585 = load i32, i32* %7, align 4
  %586 = call i32 @is_write_unlock(i32 %585)
  %587 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %588 = load %struct.TYPE_29__*, %struct.TYPE_29__** @IP_NULL, align 8
  %589 = icmp ne %struct.TYPE_29__* %587, %588
  br i1 %589, label %590, label %594

590:                                              ; preds = %584
  %591 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %592 = load i64, i64* %12, align 8
  %593 = call i32 @ipc_notify_port_deleted(%struct.TYPE_29__* %591, i64 %592)
  br label %594

594:                                              ; preds = %590, %584
  %595 = load %struct.TYPE_29__*, %struct.TYPE_29__** %22, align 8
  %596 = load %struct.TYPE_29__*, %struct.TYPE_29__** @IP_NULL, align 8
  %597 = icmp ne %struct.TYPE_29__* %595, %596
  br i1 %597, label %598, label %602

598:                                              ; preds = %594
  %599 = load %struct.TYPE_29__*, %struct.TYPE_29__** %22, align 8
  %600 = load i64, i64* %13, align 8
  %601 = call i32 @ipc_notify_port_deleted(%struct.TYPE_29__* %599, i64 %600)
  br label %602

602:                                              ; preds = %598, %594
  %603 = load %struct.TYPE_29__*, %struct.TYPE_29__** %23, align 8
  %604 = load %struct.TYPE_29__*, %struct.TYPE_29__** @IP_NULL, align 8
  %605 = icmp ne %struct.TYPE_29__* %603, %604
  br i1 %605, label %606, label %610

606:                                              ; preds = %602
  %607 = load %struct.TYPE_29__*, %struct.TYPE_29__** %23, align 8
  %608 = load i64, i64* %14, align 8
  %609 = call i32 @ipc_notify_port_deleted(%struct.TYPE_29__* %607, i64 %608)
  br label %610

610:                                              ; preds = %606, %602
  %611 = load %struct.TYPE_29__*, %struct.TYPE_29__** %25, align 8
  %612 = call i32 @IP_VALID(%struct.TYPE_29__* %611)
  %613 = icmp ne i32 %612, 0
  br i1 %613, label %614, label %619

614:                                              ; preds = %610
  %615 = load %struct.TYPE_29__*, %struct.TYPE_29__** %25, align 8
  %616 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %617 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %616, i32 0, i32 0
  store %struct.TYPE_29__* %615, %struct.TYPE_29__** %617, align 8
  %618 = load i64, i64* @MACH_MSG_TYPE_MOVE_SEND, align 8
  store i64 %618, i64* %18, align 8
  br label %619

619:                                              ; preds = %614, %610
  %620 = load i64, i64* %16, align 8
  %621 = load i64, i64* %17, align 8
  %622 = load i64, i64* %18, align 8
  %623 = load i32, i32* %11, align 4
  %624 = call i32 @MACH_MSGH_BITS_SET(i64 %620, i64 %621, i64 %622, i32 %623)
  %625 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %626 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %625, i32 0, i32 0
  store i32 %624, i32* %626, align 8
  %627 = load i64, i64* %19, align 8
  %628 = inttoptr i64 %627 to %struct.TYPE_29__*
  %629 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %630 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %629, i32 0, i32 3
  store %struct.TYPE_29__* %628, %struct.TYPE_29__** %630, align 8
  %631 = load i64, i64* %20, align 8
  %632 = inttoptr i64 %631 to %struct.TYPE_29__*
  %633 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %634 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %633, i32 0, i32 2
  store %struct.TYPE_29__* %632, %struct.TYPE_29__** %634, align 8
  %635 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %636 = load i32*, i32** %9, align 8
  %637 = load i32, i32* %636, align 4
  %638 = load i32, i32* %8, align 4
  %639 = call i32 @ipc_kmsg_set_qos(%struct.TYPE_30__* %635, i32 %637, i32 %638)
  %640 = load %struct.TYPE_29__*, %struct.TYPE_29__** %24, align 8
  %641 = load %struct.TYPE_29__*, %struct.TYPE_29__** @IP_NULL, align 8
  %642 = icmp ne %struct.TYPE_29__* %640, %641
  br i1 %642, label %643, label %646

643:                                              ; preds = %619
  %644 = load %struct.TYPE_29__*, %struct.TYPE_29__** %24, align 8
  %645 = call i32 @ip_release(%struct.TYPE_29__* %644)
  br label %646

646:                                              ; preds = %643, %619
  %647 = load %struct.TYPE_29__*, %struct.TYPE_29__** %26, align 8
  %648 = load %struct.TYPE_29__*, %struct.TYPE_29__** @IP_NULL, align 8
  %649 = icmp ne %struct.TYPE_29__* %647, %648
  br i1 %649, label %650, label %653

650:                                              ; preds = %646
  %651 = load %struct.TYPE_29__*, %struct.TYPE_29__** %26, align 8
  %652 = call i32 @ip_release(%struct.TYPE_29__* %651)
  br label %653

653:                                              ; preds = %650, %646
  %654 = load i32, i32* @MACH_MSG_SUCCESS, align 4
  store i32 %654, i32* %5, align 4
  br label %715

655:                                              ; preds = %361, %344, %336, %306, %223, %210, %202
  %656 = load i32, i32* %7, align 4
  %657 = call i32 @is_write_unlock(i32 %656)
  %658 = load %struct.TYPE_29__*, %struct.TYPE_29__** %24, align 8
  %659 = load %struct.TYPE_29__*, %struct.TYPE_29__** @IP_NULL, align 8
  %660 = icmp ne %struct.TYPE_29__* %658, %659
  br i1 %660, label %661, label %664

661:                                              ; preds = %655
  %662 = load %struct.TYPE_29__*, %struct.TYPE_29__** %24, align 8
  %663 = call i32 @ip_release(%struct.TYPE_29__* %662)
  br label %664

664:                                              ; preds = %661, %655
  %665 = load %struct.TYPE_29__*, %struct.TYPE_29__** %25, align 8
  %666 = load %struct.TYPE_29__*, %struct.TYPE_29__** @IP_NULL, align 8
  %667 = icmp eq %struct.TYPE_29__* %665, %666
  %668 = zext i1 %667 to i32
  %669 = call i32 @assert(i32 %668)
  %670 = load %struct.TYPE_29__*, %struct.TYPE_29__** %23, align 8
  %671 = load %struct.TYPE_29__*, %struct.TYPE_29__** @IP_NULL, align 8
  %672 = icmp eq %struct.TYPE_29__* %670, %671
  %673 = zext i1 %672 to i32
  %674 = call i32 @assert(i32 %673)
  %675 = load i32*, i32** %9, align 8
  %676 = load i32, i32* %675, align 4
  %677 = load i32, i32* @MACH_SEND_KERNEL, align 4
  %678 = and i32 %676, %677
  %679 = icmp eq i32 %678, 0
  br i1 %679, label %680, label %684

680:                                              ; preds = %664
  %681 = load i64, i64* %13, align 8
  %682 = load i32, i32* @kGUARD_EXC_SEND_INVALID_REPLY, align 4
  %683 = call i32 @mach_port_guard_exception(i64 %681, i32 0, i32 0, i32 %682)
  br label %684

684:                                              ; preds = %680, %664
  %685 = load i32, i32* @MACH_SEND_INVALID_REPLY, align 4
  store i32 %685, i32* %5, align 4
  br label %715

686:                                              ; preds = %377, %322, %311, %290, %235, %189
  %687 = load i32, i32* %7, align 4
  %688 = call i32 @is_write_unlock(i32 %687)
  %689 = load %struct.TYPE_29__*, %struct.TYPE_29__** %24, align 8
  %690 = load %struct.TYPE_29__*, %struct.TYPE_29__** @IP_NULL, align 8
  %691 = icmp ne %struct.TYPE_29__* %689, %690
  br i1 %691, label %692, label %695

692:                                              ; preds = %686
  %693 = load %struct.TYPE_29__*, %struct.TYPE_29__** %24, align 8
  %694 = call i32 @ip_release(%struct.TYPE_29__* %693)
  br label %695

695:                                              ; preds = %692, %686
  %696 = load %struct.TYPE_29__*, %struct.TYPE_29__** %22, align 8
  %697 = load %struct.TYPE_29__*, %struct.TYPE_29__** @IP_NULL, align 8
  %698 = icmp ne %struct.TYPE_29__* %696, %697
  br i1 %698, label %699, label %703

699:                                              ; preds = %695
  %700 = load %struct.TYPE_29__*, %struct.TYPE_29__** %22, align 8
  %701 = load i64, i64* %13, align 8
  %702 = call i32 @ipc_notify_port_deleted(%struct.TYPE_29__* %700, i64 %701)
  br label %703

703:                                              ; preds = %699, %695
  %704 = load %struct.TYPE_29__*, %struct.TYPE_29__** %25, align 8
  %705 = load %struct.TYPE_29__*, %struct.TYPE_29__** @IP_NULL, align 8
  %706 = icmp eq %struct.TYPE_29__* %704, %705
  %707 = zext i1 %706 to i32
  %708 = call i32 @assert(i32 %707)
  %709 = load %struct.TYPE_29__*, %struct.TYPE_29__** %23, align 8
  %710 = load %struct.TYPE_29__*, %struct.TYPE_29__** @IP_NULL, align 8
  %711 = icmp eq %struct.TYPE_29__* %709, %710
  %712 = zext i1 %711 to i32
  %713 = call i32 @assert(i32 %712)
  %714 = load i32, i32* @MACH_SEND_INVALID_DEST, align 4
  store i32 %714, i32* %5, align 4
  br label %715

715:                                              ; preds = %703, %684, %653, %174, %135, %100, %92, %86
  %716 = load i32, i32* %5, align 4
  ret i32 %716
}

declare dso_local i64 @CAST_MACH_PORT_TO_NAME(%struct.TYPE_29__*) #1

declare dso_local i64 @MACH_MSGH_BITS_REMOTE(i32) #1

declare dso_local i64 @MACH_MSGH_BITS_LOCAL(i32) #1

declare dso_local i64 @MACH_MSGH_BITS_VOUCHER(i32) #1

declare dso_local i32 @MACH_MSG_TYPE_PORT_ANY_SEND(i64) #1

declare dso_local i64 @MACH_PORT_VALID(i64) #1

declare dso_local i32 @is_write_lock(i32) #1

declare dso_local i32 @is_active(i32) #1

declare dso_local i32 @is_write_unlock(i32) #1

declare dso_local i32 @mach_port_guard_exception(i64, i32, i32, i32) #1

declare dso_local %struct.TYPE_31__* @ipc_entry_lookup(i32, i64) #1

declare dso_local i64 @io_kotype(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ipc_right_copyin_check(i32, i64, %struct.TYPE_31__*, i64) #1

declare dso_local i64 @ipc_right_copyin_two(i32, i64, %struct.TYPE_31__*, i64, i64, i64*, %struct.TYPE_29__**, %struct.TYPE_29__**) #1

declare dso_local i64 @ipc_right_copyin(i32, i64, %struct.TYPE_31__*, i64, i64, i64*, %struct.TYPE_29__**, %struct.TYPE_29__**, i32*) #1

declare dso_local i32 @IO_VALID(i64) #1

declare dso_local i32 @IP_VALID(%struct.TYPE_29__*) #1

declare dso_local i64 @CAST_MACH_NAME_TO_PORT(i64) #1

declare dso_local i32 @ip_active(%struct.TYPE_29__*) #1

declare dso_local i64 @IE_BITS_TYPE(i32) #1

declare dso_local i32 @ipc_entry_dealloc(i32, i64, %struct.TYPE_31__*) #1

declare dso_local i64 @ipc_object_copyin_type(i64) #1

declare dso_local i32 @ip_lock(%struct.TYPE_29__*) #1

declare dso_local i64 @ip_full(%struct.TYPE_29__*) #1

declare dso_local i64 @ipc_port_request_sparm(%struct.TYPE_29__*, i64, i64, i32, i32) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_29__*) #1

declare dso_local i32 @ipc_notify_port_deleted(%struct.TYPE_29__*, i64) #1

declare dso_local i32 @MACH_MSGH_BITS_SET(i64, i64, i64, i32) #1

declare dso_local i32 @ipc_kmsg_set_qos(%struct.TYPE_30__*, i32, i32) #1

declare dso_local i32 @ip_release(%struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
