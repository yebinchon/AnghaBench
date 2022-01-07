; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdbg_control.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdbg_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.vfs_context = type { i32, i32 }
%struct.fileproc = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64, i32 }
%struct.vnode = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@kd_ctrl_page = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@KDBG_LOCKINIT = common dso_local global i32 0, align 4
@KTRACE_KDEBUG = common dso_local global i32 0, align 4
@nkdbufs = common dso_local global i32 0, align 4
@kd_mapcount = common dso_local global i32 0, align 4
@SLOW_NOLOG = common dso_local global i32 0, align 4
@KDBG_LP64 = common dso_local global i32 0, align 4
@KDBG_USERFLAGS = common dso_local global i32 0, align 4
@KDBG_BUFINIT = common dso_local global i32 0, align 4
@KDEBUG_ENABLE_TRACE = common dso_local global i32 0, align 4
@KDEBUG_ENABLE_PPT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@kdebug_enable = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@RAW_VERSION1 = common dso_local global i32 0, align 4
@DTYPE_VNODE = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@RAW_file_offset = common dso_local global i32 0, align 4
@TRACE_WRITING_EVENTS = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@RAW_VERSION3 = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kdbg_control(i32* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.vfs_context, align 4
  %18 = alloca %struct.fileproc*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.vnode*, align 8
  %21 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %10, align 4
  %22 = load i64*, i64** %9, align 8
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 129
  br i1 %27, label %63, label %28

28:                                               ; preds = %4
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 128
  br i1 %32, label %63, label %33

33:                                               ; preds = %28
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 131
  br i1 %37, label %63, label %38

38:                                               ; preds = %33
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 130
  br i1 %42, label %63, label %43

43:                                               ; preds = %38
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 146
  br i1 %47, label %63, label %48

48:                                               ; preds = %43
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 147
  br i1 %52, label %63, label %53

53:                                               ; preds = %48
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 145
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 137
  br i1 %62, label %63, label %72

63:                                               ; preds = %58, %53, %48, %43, %38, %33, %28, %4
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %64, 2
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32, i32* @EINVAL, align 4
  store i32 %67, i32* %5, align 4
  br label %424

68:                                               ; preds = %63
  %69 = load i32*, i32** %6, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %68, %58
  %73 = call i32 (...) @kdbg_lock_init()
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @kd_ctrl_page, i32 0, i32 0), align 4
  %75 = load i32, i32* @KDBG_LOCKINIT, align 4
  %76 = and i32 %74, %75
  %77 = call i32 @assert(i32 %76)
  %78 = call i32 (...) @ktrace_lock()
  %79 = load i32*, i32** %6, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 144
  br i1 %82, label %83, label %99

83:                                               ; preds = %72
  %84 = load i32*, i32** %6, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 143
  br i1 %87, label %88, label %99

88:                                               ; preds = %83
  %89 = load i32*, i32** %6, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 140
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load i32, i32* @KTRACE_KDEBUG, align 4
  %95 = call i32 @ktrace_configure(i32 %94)
  store i32 %95, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %421

98:                                               ; preds = %93
  br label %104

99:                                               ; preds = %88, %83, %72
  %100 = call i32 (...) @ktrace_read_check()
  store i32 %100, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  br label %421

103:                                              ; preds = %99
  br label %104

104:                                              ; preds = %103, %98
  %105 = load i32*, i32** %6, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  switch i32 %107, label %418 [
    i32 144, label %108
    i32 140, label %161
    i32 146, label %165
    i32 147, label %172
    i32 145, label %180
    i32 137, label %210
    i32 135, label %213
    i32 138, label %216
    i32 136, label %219
    i32 143, label %232
    i32 139, label %234
    i32 129, label %239
    i32 128, label %239
    i32 131, label %239
    i32 130, label %239
    i32 149, label %372
    i32 141, label %377
    i32 142, label %390
    i32 148, label %403
    i32 132, label %407
    i32 134, label %411
    i32 133, label %415
  ]

108:                                              ; preds = %104
  %109 = load i64, i64* %11, align 8
  %110 = icmp ult i64 %109, 4
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load i32, i32* @EINVAL, align 4
  store i32 %112, i32* %10, align 4
  br label %420

113:                                              ; preds = %108
  %114 = call i32 @memset(%struct.TYPE_6__* %14, i32 0, i32 20)
  %115 = load i32, i32* @nkdbufs, align 4
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i32 %115, i32* %116, align 4
  %117 = load i32, i32* @kd_mapcount, align 4
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  store i32 %117, i32* %118, align 4
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @kd_ctrl_page, i32 0, i32 1), align 4
  %120 = load i32, i32* @SLOW_NOLOG, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %113
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  store i32 1, i32* %124, align 4
  br label %127

125:                                              ; preds = %113
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  store i32 0, i32* %126, align 4
  br label %127

127:                                              ; preds = %125, %123
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @kd_ctrl_page, i32 0, i32 0), align 4
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 3
  store i32 %128, i32* %129, align 4
  %130 = load i32, i32* @KDBG_LP64, align 4
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %130
  store i32 %133, i32* %131, align 4
  %134 = call i32 (...) @ktrace_get_owning_pid()
  store i32 %134, i32* %16, align 4
  %135 = load i32, i32* %16, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %127
  br label %140

138:                                              ; preds = %127
  %139 = load i32, i32* %16, align 4
  br label %140

140:                                              ; preds = %138, %137
  %141 = phi i32 [ -1, %137 ], [ %139, %138 ]
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 4
  store i32 %141, i32* %142, align 4
  %143 = load i64, i64* %11, align 8
  %144 = icmp uge i64 %143, 20
  br i1 %144, label %145, label %152

145:                                              ; preds = %140
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @copyout(%struct.TYPE_6__* %14, i32 %146, i64 20)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = load i32, i32* @EINVAL, align 4
  store i32 %150, i32* %10, align 4
  br label %151

151:                                              ; preds = %149, %145
  br label %160

152:                                              ; preds = %140
  %153 = load i32, i32* %8, align 4
  %154 = load i64, i64* %11, align 8
  %155 = call i32 @copyout(%struct.TYPE_6__* %14, i32 %153, i64 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = load i32, i32* @EINVAL, align 4
  store i32 %158, i32* %10, align 4
  br label %159

159:                                              ; preds = %157, %152
  br label %160

160:                                              ; preds = %159, %151
  br label %420

161:                                              ; preds = %104
  %162 = load i32, i32* %8, align 4
  %163 = load i64*, i64** %9, align 8
  %164 = call i32 @kdbg_readcurthrmap(i32 %162, i64* %163)
  store i32 %164, i32* %10, align 4
  br label %420

165:                                              ; preds = %104
  %166 = load i32, i32* @KDBG_USERFLAGS, align 4
  %167 = load i32, i32* %12, align 4
  %168 = and i32 %167, %166
  store i32 %168, i32* %12, align 4
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @kd_ctrl_page, i32 0, i32 0), align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @kd_ctrl_page, i32 0, i32 0), align 4
  br label %420

172:                                              ; preds = %104
  %173 = load i32, i32* @KDBG_USERFLAGS, align 4
  %174 = load i32, i32* %12, align 4
  %175 = and i32 %174, %173
  store i32 %175, i32* %12, align 4
  %176 = load i32, i32* %12, align 4
  %177 = xor i32 %176, -1
  %178 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @kd_ctrl_page, i32 0, i32 0), align 4
  %179 = and i32 %178, %177
  store i32 %179, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @kd_ctrl_page, i32 0, i32 0), align 4
  br label %420

180:                                              ; preds = %104
  %181 = load i32, i32* %12, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %203

183:                                              ; preds = %180
  %184 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @kd_ctrl_page, i32 0, i32 0), align 4
  %185 = load i32, i32* @KDBG_BUFINIT, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %183
  %189 = load i32, i32* %12, align 4
  %190 = load i32, i32* @KDEBUG_ENABLE_TRACE, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %198, label %192

192:                                              ; preds = %188
  %193 = load i32, i32* %12, align 4
  %194 = load i32, i32* @KDEBUG_ENABLE_PPT, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %198, label %196

196:                                              ; preds = %192, %183
  %197 = load i32, i32* @EINVAL, align 4
  store i32 %197, i32* %10, align 4
  br label %420

198:                                              ; preds = %192, %188
  %199 = call i32 (...) @kdbg_thrmap_init()
  %200 = load i32, i32* @TRUE, align 4
  %201 = load i32, i32* %12, align 4
  %202 = call i32 @kdbg_set_tracing_enabled(i32 %200, i32 %201)
  br label %209

203:                                              ; preds = %180
  %204 = load i32, i32* @kdebug_enable, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %207, label %206

206:                                              ; preds = %203
  br label %420

207:                                              ; preds = %203
  %208 = call i32 (...) @kernel_debug_disable()
  br label %209

209:                                              ; preds = %207, %198
  br label %420

210:                                              ; preds = %104
  %211 = load i32, i32* %12, align 4
  %212 = call i32 @kdbg_set_nkdbufs(i32 %211)
  br label %420

213:                                              ; preds = %104
  %214 = load i32, i32* @FALSE, align 4
  %215 = call i32 @kdbg_reinit(i32 %214)
  store i32 %215, i32* %10, align 4
  br label %420

216:                                              ; preds = %104
  %217 = load i32, i32* @KTRACE_KDEBUG, align 4
  %218 = call i32 @ktrace_reset(i32 %217)
  br label %420

219:                                              ; preds = %104
  %220 = load i64, i64* %11, align 8
  %221 = icmp ult i64 %220, 4
  br i1 %221, label %222, label %224

222:                                              ; preds = %219
  %223 = load i32, i32* @EINVAL, align 4
  store i32 %223, i32* %10, align 4
  br label %420

224:                                              ; preds = %219
  %225 = load i32, i32* %8, align 4
  %226 = call i32 @copyin(i32 %225, i32* %13, i32 4)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %224
  %229 = load i32, i32* @EINVAL, align 4
  store i32 %229, i32* %10, align 4
  br label %420

230:                                              ; preds = %224
  %231 = call i32 @kdbg_setreg(i32* %13)
  store i32 %231, i32* %10, align 4
  br label %420

232:                                              ; preds = %104
  %233 = load i32, i32* @EINVAL, align 4
  store i32 %233, i32* %10, align 4
  br label %420

234:                                              ; preds = %104
  %235 = load i32, i32* %8, align 4
  %236 = load i64*, i64** %9, align 8
  %237 = load i32, i32* @RAW_VERSION1, align 4
  %238 = call i32 @kdbg_read(i32 %235, i64* %236, %struct.vnode* null, %struct.vfs_context* null, i32 %237)
  store i32 %238, i32* %10, align 4
  br label %420

239:                                              ; preds = %104, %104, %104, %104
  %240 = load i32*, i32** %6, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 0
  %242 = load i32, i32* %241, align 4
  %243 = icmp eq i32 %242, 129
  br i1 %243, label %249, label %244

244:                                              ; preds = %239
  %245 = load i32*, i32** %6, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 0
  %247 = load i32, i32* %246, align 4
  %248 = icmp eq i32 %247, 128
  br i1 %248, label %249, label %253

249:                                              ; preds = %244, %239
  %250 = load i64, i64* %11, align 8
  %251 = load i32, i32* @TRUE, align 4
  %252 = call i64 @kdbg_wait(i64 %250, i32 %251)
  br label %253

253:                                              ; preds = %249, %244
  %254 = call i32 (...) @current_proc()
  store i32 %254, i32* %15, align 4
  %255 = load i32, i32* %12, align 4
  store i32 %255, i32* %21, align 4
  %256 = load i32, i32* %15, align 4
  %257 = call i32 @proc_fdlock(i32 %256)
  %258 = load i32, i32* %15, align 4
  %259 = load i32, i32* %21, align 4
  %260 = call i32 @fp_lookup(i32 %258, i32 %259, %struct.fileproc** %18, i32 1)
  store i32 %260, i32* %10, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %253
  %263 = load i32, i32* %15, align 4
  %264 = call i32 @proc_fdunlock(i32 %263)
  br label %420

265:                                              ; preds = %253
  %266 = call i32 (...) @current_thread()
  %267 = getelementptr inbounds %struct.vfs_context, %struct.vfs_context* %17, i32 0, i32 1
  store i32 %266, i32* %267, align 4
  %268 = load %struct.fileproc*, %struct.fileproc** %18, align 8
  %269 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %268, i32 0, i32 0
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = getelementptr inbounds %struct.vfs_context, %struct.vfs_context* %17, i32 0, i32 0
  store i32 %272, i32* %273, align 4
  %274 = load %struct.fileproc*, %struct.fileproc** %18, align 8
  %275 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %274, i32 0, i32 0
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** %275, align 8
  %277 = call i32 @FILEGLOB_DTYPE(%struct.TYPE_8__* %276)
  %278 = load i32, i32* @DTYPE_VNODE, align 4
  %279 = icmp ne i32 %277, %278
  br i1 %279, label %280, label %288

280:                                              ; preds = %265
  %281 = load i32, i32* %15, align 4
  %282 = load i32, i32* %21, align 4
  %283 = load %struct.fileproc*, %struct.fileproc** %18, align 8
  %284 = call i32 @fp_drop(i32 %281, i32 %282, %struct.fileproc* %283, i32 1)
  %285 = load i32, i32* %15, align 4
  %286 = call i32 @proc_fdunlock(i32 %285)
  %287 = load i32, i32* @EBADF, align 4
  store i32 %287, i32* %10, align 4
  br label %420

288:                                              ; preds = %265
  %289 = load %struct.fileproc*, %struct.fileproc** %18, align 8
  %290 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %289, i32 0, i32 0
  %291 = load %struct.TYPE_8__*, %struct.TYPE_8__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = inttoptr i64 %293 to %struct.vnode*
  store %struct.vnode* %294, %struct.vnode** %20, align 8
  %295 = load i32, i32* %15, align 4
  %296 = call i32 @proc_fdunlock(i32 %295)
  %297 = load %struct.vnode*, %struct.vnode** %20, align 8
  %298 = call i32 @vnode_getwithref(%struct.vnode* %297)
  store i32 %298, i32* %10, align 4
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %367

300:                                              ; preds = %288
  %301 = load %struct.fileproc*, %struct.fileproc** %18, align 8
  %302 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %301, i32 0, i32 0
  %303 = load %struct.TYPE_8__*, %struct.TYPE_8__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  store i32 %305, i32* @RAW_file_offset, align 4
  %306 = load i32*, i32** %6, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 0
  %308 = load i32, i32* %307, align 4
  %309 = icmp eq i32 %308, 129
  br i1 %309, label %315, label %310

310:                                              ; preds = %300
  %311 = load i32*, i32** %6, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 0
  %313 = load i32, i32* %312, align 4
  %314 = icmp eq i32 %313, 128
  br i1 %314, label %315, label %343

315:                                              ; preds = %310, %300
  %316 = load i32, i32* @nkdbufs, align 4
  %317 = sext i32 %316 to i64
  %318 = mul i64 %317, 4
  store i64 %318, i64* %19, align 8
  %319 = load i32, i32* @TRACE_WRITING_EVENTS, align 4
  %320 = load i32, i32* @DBG_FUNC_START, align 4
  %321 = or i32 %319, %320
  %322 = call i32 (i32, ...) @KDBG_RELEASE(i32 %321)
  %323 = load i32*, i32** %6, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 0
  %325 = load i32, i32* %324, align 4
  %326 = icmp eq i32 %325, 128
  br i1 %326, label %327, label %331

327:                                              ; preds = %315
  %328 = load %struct.vnode*, %struct.vnode** %20, align 8
  %329 = load i32, i32* @RAW_VERSION3, align 4
  %330 = call i32 @kdbg_read(i32 0, i64* %19, %struct.vnode* %328, %struct.vfs_context* %17, i32 %329)
  store i32 %330, i32* %10, align 4
  br label %335

331:                                              ; preds = %315
  %332 = load %struct.vnode*, %struct.vnode** %20, align 8
  %333 = load i32, i32* @RAW_VERSION1, align 4
  %334 = call i32 @kdbg_read(i32 0, i64* %19, %struct.vnode* %332, %struct.vfs_context* %17, i32 %333)
  store i32 %334, i32* %10, align 4
  br label %335

335:                                              ; preds = %331, %327
  %336 = load i32, i32* @TRACE_WRITING_EVENTS, align 4
  %337 = load i32, i32* @DBG_FUNC_END, align 4
  %338 = or i32 %336, %337
  %339 = load i64, i64* %19, align 8
  %340 = call i32 (i32, ...) @KDBG_RELEASE(i32 %338, i64 %339)
  %341 = load i64, i64* %19, align 8
  %342 = load i64*, i64** %9, align 8
  store i64 %341, i64* %342, align 8
  br label %359

343:                                              ; preds = %310
  %344 = load i32, i32* @kd_mapcount, align 4
  %345 = sext i32 %344 to i64
  %346 = mul i64 %345, 4
  store i64 %346, i64* %19, align 8
  %347 = load i32*, i32** %6, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 0
  %349 = load i32, i32* %348, align 4
  %350 = icmp eq i32 %349, 130
  br i1 %350, label %351, label %355

351:                                              ; preds = %343
  %352 = load i64, i64* %19, align 8
  %353 = load i32, i32* %21, align 4
  %354 = call i32 @kdbg_readthrmap_v3(i32 0, i64 %352, i32 %353)
  store i32 %354, i32* %10, align 4
  br label %358

355:                                              ; preds = %343
  %356 = load %struct.vnode*, %struct.vnode** %20, align 8
  %357 = call i32 @kdbg_write_thread_map(%struct.vnode* %356, %struct.vfs_context* %17)
  store i32 %357, i32* %10, align 4
  br label %358

358:                                              ; preds = %355, %351
  br label %359

359:                                              ; preds = %358, %335
  %360 = load i32, i32* @RAW_file_offset, align 4
  %361 = load %struct.fileproc*, %struct.fileproc** %18, align 8
  %362 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %361, i32 0, i32 0
  %363 = load %struct.TYPE_8__*, %struct.TYPE_8__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %363, i32 0, i32 0
  store i32 %360, i32* %364, align 8
  %365 = load %struct.vnode*, %struct.vnode** %20, align 8
  %366 = call i32 @vnode_put(%struct.vnode* %365)
  br label %367

367:                                              ; preds = %359, %288
  %368 = load i32, i32* %15, align 4
  %369 = load i32, i32* %21, align 4
  %370 = load %struct.fileproc*, %struct.fileproc** %18, align 8
  %371 = call i32 @fp_drop(i32 %368, i32 %369, %struct.fileproc* %370, i32 0)
  br label %420

372:                                              ; preds = %104
  %373 = load i64, i64* %11, align 8
  %374 = load i32, i32* @FALSE, align 4
  %375 = call i64 @kdbg_wait(i64 %373, i32 %374)
  %376 = load i64*, i64** %9, align 8
  store i64 %375, i64* %376, align 8
  br label %420

377:                                              ; preds = %104
  %378 = load i64, i64* %11, align 8
  %379 = icmp ult i64 %378, 4
  br i1 %379, label %380, label %382

380:                                              ; preds = %377
  %381 = load i32, i32* @EINVAL, align 4
  store i32 %381, i32* %10, align 4
  br label %420

382:                                              ; preds = %377
  %383 = load i32, i32* %8, align 4
  %384 = call i32 @copyin(i32 %383, i32* %13, i32 4)
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %388

386:                                              ; preds = %382
  %387 = load i32, i32* @EINVAL, align 4
  store i32 %387, i32* %10, align 4
  br label %420

388:                                              ; preds = %382
  %389 = call i32 @kdbg_setpid(i32* %13)
  store i32 %389, i32* %10, align 4
  br label %420

390:                                              ; preds = %104
  %391 = load i64, i64* %11, align 8
  %392 = icmp ult i64 %391, 4
  br i1 %392, label %393, label %395

393:                                              ; preds = %390
  %394 = load i32, i32* @EINVAL, align 4
  store i32 %394, i32* %10, align 4
  br label %420

395:                                              ; preds = %390
  %396 = load i32, i32* %8, align 4
  %397 = call i32 @copyin(i32 %396, i32* %13, i32 4)
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %401

399:                                              ; preds = %395
  %400 = load i32, i32* @EINVAL, align 4
  store i32 %400, i32* %10, align 4
  br label %420

401:                                              ; preds = %395
  %402 = call i32 @kdbg_setpidex(i32* %13)
  store i32 %402, i32* %10, align 4
  br label %420

403:                                              ; preds = %104
  %404 = load i32, i32* %8, align 4
  %405 = load i64*, i64** %9, align 8
  %406 = call i32 @kdbg_readcpumap(i32 %404, i64* %405)
  store i32 %406, i32* %10, align 4
  br label %420

407:                                              ; preds = %104
  %408 = load i32, i32* %8, align 4
  %409 = load i64*, i64** %9, align 8
  %410 = call i32 @kdbg_copyout_thread_map(i32 %408, i64* %409)
  store i32 %410, i32* %10, align 4
  br label %420

411:                                              ; preds = %104
  %412 = load i32, i32* %8, align 4
  %413 = load i64, i64* %11, align 8
  %414 = call i32 @kdbg_copyin_typefilter(i32 %412, i64 %413)
  store i32 %414, i32* %10, align 4
  br label %420

415:                                              ; preds = %104
  %416 = load i64, i64* %11, align 8
  %417 = call i32 @kdbg_test(i64 %416)
  store i32 %417, i32* %10, align 4
  br label %420

418:                                              ; preds = %104
  %419 = load i32, i32* @EINVAL, align 4
  store i32 %419, i32* %10, align 4
  br label %420

420:                                              ; preds = %418, %415, %411, %407, %403, %401, %399, %393, %388, %386, %380, %372, %367, %280, %262, %234, %232, %230, %228, %222, %216, %213, %210, %209, %206, %196, %172, %165, %161, %160, %111
  br label %421

421:                                              ; preds = %420, %102, %97
  %422 = call i32 (...) @ktrace_unlock()
  %423 = load i32, i32* %10, align 4
  store i32 %423, i32* %5, align 4
  br label %424

424:                                              ; preds = %421, %66
  %425 = load i32, i32* %5, align 4
  ret i32 %425
}

declare dso_local i32 @kdbg_lock_init(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ktrace_lock(...) #1

declare dso_local i32 @ktrace_configure(i32) #1

declare dso_local i32 @ktrace_read_check(...) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @ktrace_get_owning_pid(...) #1

declare dso_local i32 @copyout(%struct.TYPE_6__*, i32, i64) #1

declare dso_local i32 @kdbg_readcurthrmap(i32, i64*) #1

declare dso_local i32 @kdbg_thrmap_init(...) #1

declare dso_local i32 @kdbg_set_tracing_enabled(i32, i32) #1

declare dso_local i32 @kernel_debug_disable(...) #1

declare dso_local i32 @kdbg_set_nkdbufs(i32) #1

declare dso_local i32 @kdbg_reinit(i32) #1

declare dso_local i32 @ktrace_reset(i32) #1

declare dso_local i32 @copyin(i32, i32*, i32) #1

declare dso_local i32 @kdbg_setreg(i32*) #1

declare dso_local i32 @kdbg_read(i32, i64*, %struct.vnode*, %struct.vfs_context*, i32) #1

declare dso_local i64 @kdbg_wait(i64, i32) #1

declare dso_local i32 @current_proc(...) #1

declare dso_local i32 @proc_fdlock(i32) #1

declare dso_local i32 @fp_lookup(i32, i32, %struct.fileproc**, i32) #1

declare dso_local i32 @proc_fdunlock(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @FILEGLOB_DTYPE(%struct.TYPE_8__*) #1

declare dso_local i32 @fp_drop(i32, i32, %struct.fileproc*, i32) #1

declare dso_local i32 @vnode_getwithref(%struct.vnode*) #1

declare dso_local i32 @KDBG_RELEASE(i32, ...) #1

declare dso_local i32 @kdbg_readthrmap_v3(i32, i64, i32) #1

declare dso_local i32 @kdbg_write_thread_map(%struct.vnode*, %struct.vfs_context*) #1

declare dso_local i32 @vnode_put(%struct.vnode*) #1

declare dso_local i32 @kdbg_setpid(i32*) #1

declare dso_local i32 @kdbg_setpidex(i32*) #1

declare dso_local i32 @kdbg_readcpumap(i32, i64*) #1

declare dso_local i32 @kdbg_copyout_thread_map(i32, i64*) #1

declare dso_local i32 @kdbg_copyin_typefilter(i32, i64) #1

declare dso_local i32 @kdbg_test(i64) #1

declare dso_local i32 @ktrace_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
