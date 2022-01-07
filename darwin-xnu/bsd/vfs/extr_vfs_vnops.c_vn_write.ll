; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_vnops.c_vn_write.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_vnops.c_vn_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileproc = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64, i64 }
%struct.uio = type { i64 }
%struct.vnode = type { i64, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }

@EPERM = common dso_local global i32 0, align 4
@IO_UNIT = common dso_local global i32 0, align 4
@IO_SYSCALL_DISPATCH = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@O_APPEND = common dso_local global i32 0, align 4
@IO_APPEND = common dso_local global i32 0, align 4
@FNONBLOCK = common dso_local global i32 0, align 4
@IO_NDELAY = common dso_local global i32 0, align 4
@FNOCACHE = common dso_local global i32 0, align 4
@IO_NOCACHE = common dso_local global i32 0, align 4
@FNODIRECT = common dso_local global i32 0, align 4
@IO_NODIRECT = common dso_local global i32 0, align 4
@FSINGLE_WRITER = common dso_local global i32 0, align 4
@IO_SINGLE_WRITER = common dso_local global i32 0, align 4
@O_EVTONLY = common dso_local global i32 0, align 4
@IO_EVTONLY = common dso_local global i32 0, align 4
@O_FSYNC = common dso_local global i32 0, align 4
@O_DSYNC = common dso_local global i32 0, align 4
@MNT_SYNCHRONOUS = common dso_local global i32 0, align 4
@IO_SYNC = common dso_local global i32 0, align 4
@FOF_OFFSET = common dso_local global i32 0, align 4
@RLIMIT_FSIZE = common dso_local global i64 0, align 8
@SIGXFSZ = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@VT_NFS = common dso_local global i64 0, align 8
@FOF_PCRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fileproc*, %struct.uio*, i32, i32)* @vn_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vn_write(%struct.fileproc* %0, %struct.uio* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fileproc*, align 8
  %7 = alloca %struct.uio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_12__*, align 8
  store %struct.fileproc* %0, %struct.fileproc** %6, align 8
  store %struct.uio* %1, %struct.uio** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %18, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call %struct.TYPE_12__* @vfs_context_proc(i32 %20)
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %19, align 8
  store i32 0, i32* %13, align 4
  %22 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %23 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.vnode*
  store %struct.vnode* %27, %struct.vnode** %10, align 8
  %28 = load %struct.vnode*, %struct.vnode** %10, align 8
  %29 = call i32 @vnode_getwithref(%struct.vnode* %28)
  store i32 %29, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %5, align 4
  br label %502

33:                                               ; preds = %4
  %34 = load %struct.vnode*, %struct.vnode** %10, align 8
  %35 = call i64 @vnode_isswap(%struct.vnode* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load %struct.vnode*, %struct.vnode** %10, align 8
  %39 = call i32 @vnode_put(%struct.vnode* %38)
  %40 = load i32, i32* @EPERM, align 4
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %5, align 4
  br label %502

42:                                               ; preds = %33
  %43 = load i32, i32* @IO_UNIT, align 4
  %44 = load i32, i32* @IO_SYSCALL_DISPATCH, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %12, align 4
  %46 = load %struct.vnode*, %struct.vnode** %10, align 8
  %47 = getelementptr inbounds %struct.vnode, %struct.vnode* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @VREG, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %42
  %52 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %53 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %52, i32 0, i32 0
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @O_APPEND, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = load i32, i32* @IO_APPEND, align 4
  %62 = load i32, i32* %12, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %60, %51, %42
  %65 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %66 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %65, i32 0, i32 0
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @FNONBLOCK, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %64
  %74 = load i32, i32* @IO_NDELAY, align 4
  %75 = load i32, i32* %12, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %73, %64
  %78 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %79 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %78, i32 0, i32 0
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @FNOCACHE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %77
  %87 = load %struct.vnode*, %struct.vnode** %10, align 8
  %88 = call i64 @vnode_isnocache(%struct.vnode* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %86, %77
  %91 = load i32, i32* @IO_NOCACHE, align 4
  %92 = load i32, i32* %12, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %12, align 4
  br label %94

94:                                               ; preds = %90, %86
  %95 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %96 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %95, i32 0, i32 0
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @FNODIRECT, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %94
  %104 = load i32, i32* @IO_NODIRECT, align 4
  %105 = load i32, i32* %12, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %12, align 4
  br label %107

107:                                              ; preds = %103, %94
  %108 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %109 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %108, i32 0, i32 0
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @FSINGLE_WRITER, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %107
  %117 = load i32, i32* @IO_SINGLE_WRITER, align 4
  %118 = load i32, i32* %12, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %12, align 4
  br label %120

120:                                              ; preds = %116, %107
  %121 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %122 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %121, i32 0, i32 0
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @O_EVTONLY, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %120
  %130 = load i32, i32* @IO_EVTONLY, align 4
  %131 = load i32, i32* %12, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %12, align 4
  br label %133

133:                                              ; preds = %129, %120
  %134 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %135 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %134, i32 0, i32 0
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @O_FSYNC, align 4
  %140 = load i32, i32* @O_DSYNC, align 4
  %141 = or i32 %139, %140
  %142 = and i32 %138, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %158, label %144

144:                                              ; preds = %133
  %145 = load %struct.vnode*, %struct.vnode** %10, align 8
  %146 = getelementptr inbounds %struct.vnode, %struct.vnode* %145, i32 0, i32 2
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = icmp ne %struct.TYPE_10__* %147, null
  br i1 %148, label %149, label %162

149:                                              ; preds = %144
  %150 = load %struct.vnode*, %struct.vnode** %10, align 8
  %151 = getelementptr inbounds %struct.vnode, %struct.vnode* %150, i32 0, i32 2
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @MNT_SYNCHRONOUS, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %149, %133
  %159 = load i32, i32* @IO_SYNC, align 4
  %160 = load i32, i32* %12, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %12, align 4
  br label %162

162:                                              ; preds = %158, %149, %144
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* @FOF_OFFSET, align 4
  %165 = and i32 %163, %164
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %191

167:                                              ; preds = %162
  %168 = load %struct.vnode*, %struct.vnode** %10, align 8
  %169 = call i64 @vnode_vtype(%struct.vnode* %168)
  %170 = load i64, i64* @VREG, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %181

172:                                              ; preds = %167
  %173 = load %struct.vnode*, %struct.vnode** %10, align 8
  %174 = call i64 @vnode_isswap(%struct.vnode* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %181, label %176

176:                                              ; preds = %172
  %177 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %178 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %177, i32 0, i32 0
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %178, align 8
  %180 = call i32 @vn_offset_lock(%struct.TYPE_13__* %179)
  store i32 1, i32* %18, align 4
  br label %181

181:                                              ; preds = %176, %172, %167
  %182 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %183 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %182, i32 0, i32 0
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.uio*, %struct.uio** %7, align 8
  %188 = getelementptr inbounds %struct.uio, %struct.uio* %187, i32 0, i32 0
  store i64 %186, i64* %188, align 8
  %189 = load %struct.uio*, %struct.uio** %7, align 8
  %190 = call i32 @uio_resid(%struct.uio* %189)
  store i32 %190, i32* %13, align 4
  br label %191

191:                                              ; preds = %181, %162
  %192 = load i32, i32* %8, align 4
  %193 = load i32, i32* @FOF_OFFSET, align 4
  %194 = and i32 %192, %193
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %318

196:                                              ; preds = %191
  %197 = load i32, i32* %9, align 4
  %198 = call %struct.TYPE_12__* @vfs_context_proc(i32 %197)
  %199 = icmp ne %struct.TYPE_12__* %198, null
  br i1 %199, label %200, label %318

200:                                              ; preds = %196
  %201 = load %struct.vnode*, %struct.vnode** %10, align 8
  %202 = getelementptr inbounds %struct.vnode, %struct.vnode* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @VREG, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %318

206:                                              ; preds = %200
  %207 = load %struct.uio*, %struct.uio** %7, align 8
  %208 = getelementptr inbounds %struct.uio, %struct.uio* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.uio*, %struct.uio** %7, align 8
  %211 = call i32 @uio_resid(%struct.uio* %210)
  %212 = sext i32 %211 to i64
  %213 = add nsw i64 %209, %212
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %215, align 8
  %217 = load i64, i64* @RLIMIT_FSIZE, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = icmp sgt i64 %213, %220
  br i1 %221, label %238, label %222

222:                                              ; preds = %206
  %223 = load %struct.uio*, %struct.uio** %7, align 8
  %224 = call i32 @uio_resid(%struct.uio* %223)
  %225 = sext i32 %224 to i64
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %227, align 8
  %229 = load i64, i64* @RLIMIT_FSIZE, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.uio*, %struct.uio** %7, align 8
  %234 = getelementptr inbounds %struct.uio, %struct.uio* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = sub nsw i64 %232, %235
  %237 = icmp sgt i64 %225, %236
  br i1 %237, label %238, label %318

238:                                              ; preds = %222, %206
  %239 = load %struct.uio*, %struct.uio** %7, align 8
  %240 = call i32 @uio_resid(%struct.uio* %239)
  store i32 %240, i32* %16, align 4
  %241 = load %struct.uio*, %struct.uio** %7, align 8
  %242 = getelementptr inbounds %struct.uio, %struct.uio* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.uio*, %struct.uio** %7, align 8
  %245 = call i32 @uio_resid(%struct.uio* %244)
  %246 = sext i32 %245 to i64
  %247 = add nsw i64 %243, %246
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** %249, align 8
  %251 = load i64, i64* @RLIMIT_FSIZE, align 8
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = icmp sgt i64 %247, %254
  br i1 %255, label %256, label %273

256:                                              ; preds = %238
  %257 = load %struct.uio*, %struct.uio** %7, align 8
  %258 = getelementptr inbounds %struct.uio, %struct.uio* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load %struct.uio*, %struct.uio** %7, align 8
  %261 = call i32 @uio_resid(%struct.uio* %260)
  %262 = sext i32 %261 to i64
  %263 = add nsw i64 %259, %262
  %264 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 0
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %265, align 8
  %267 = load i64, i64* @RLIMIT_FSIZE, align 8
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = sub nsw i64 %263, %270
  %272 = trunc i64 %271 to i32
  store i32 %272, i32* %14, align 4
  br label %303

273:                                              ; preds = %238
  %274 = load %struct.uio*, %struct.uio** %7, align 8
  %275 = call i32 @uio_resid(%struct.uio* %274)
  %276 = sext i32 %275 to i64
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 0
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %278, align 8
  %280 = load i64, i64* @RLIMIT_FSIZE, align 8
  %281 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = load %struct.uio*, %struct.uio** %7, align 8
  %285 = getelementptr inbounds %struct.uio, %struct.uio* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = sub nsw i64 %283, %286
  %288 = icmp sgt i64 %276, %287
  br i1 %288, label %289, label %302

289:                                              ; preds = %273
  %290 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 0
  %292 = load %struct.TYPE_11__*, %struct.TYPE_11__** %291, align 8
  %293 = load i64, i64* @RLIMIT_FSIZE, align 8
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = load %struct.uio*, %struct.uio** %7, align 8
  %298 = getelementptr inbounds %struct.uio, %struct.uio* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = sub nsw i64 %296, %299
  %301 = trunc i64 %300 to i32
  store i32 %301, i32* %14, align 4
  br label %302

302:                                              ; preds = %289, %273
  br label %303

303:                                              ; preds = %302, %256
  %304 = load i32, i32* %14, align 4
  %305 = load i32, i32* %16, align 4
  %306 = icmp sge i32 %304, %305
  br i1 %306, label %307, label %312

307:                                              ; preds = %303
  %308 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %309 = load i32, i32* @SIGXFSZ, align 4
  %310 = call i32 @psignal(%struct.TYPE_12__* %308, i32 %309)
  %311 = load i32, i32* @EFBIG, align 4
  store i32 %311, i32* %11, align 4
  br label %490

312:                                              ; preds = %303
  store i32 1, i32* %15, align 4
  %313 = load %struct.uio*, %struct.uio** %7, align 8
  %314 = load i32, i32* %16, align 4
  %315 = load i32, i32* %14, align 4
  %316 = sub nsw i32 %314, %315
  %317 = call i32 @uio_setresid(%struct.uio* %313, i32 %316)
  br label %318

318:                                              ; preds = %312, %222, %200, %196, %191
  %319 = load i32, i32* %8, align 4
  %320 = load i32, i32* @FOF_OFFSET, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %403

323:                                              ; preds = %318
  %324 = load i32, i32* @IO_APPEND, align 4
  %325 = xor i32 %324, -1
  %326 = load i32, i32* %12, align 4
  %327 = and i32 %326, %325
  store i32 %327, i32* %12, align 4
  %328 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %329 = icmp ne %struct.TYPE_12__* %328, null
  br i1 %329, label %330, label %353

330:                                              ; preds = %323
  %331 = load %struct.vnode*, %struct.vnode** %10, align 8
  %332 = getelementptr inbounds %struct.vnode, %struct.vnode* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = load i64, i64* @VREG, align 8
  %335 = icmp eq i64 %333, %334
  br i1 %335, label %336, label %353

336:                                              ; preds = %330
  %337 = load %struct.uio*, %struct.uio** %7, align 8
  %338 = getelementptr inbounds %struct.uio, %struct.uio* %337, i32 0, i32 0
  %339 = load i64, i64* %338, align 8
  %340 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %341 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %340, i32 0, i32 0
  %342 = load %struct.TYPE_11__*, %struct.TYPE_11__** %341, align 8
  %343 = load i64, i64* @RLIMIT_FSIZE, align 8
  %344 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %342, i64 %343
  %345 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = icmp sge i64 %339, %346
  br i1 %347, label %348, label %353

348:                                              ; preds = %336
  %349 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %350 = load i32, i32* @SIGXFSZ, align 4
  %351 = call i32 @psignal(%struct.TYPE_12__* %349, i32 %350)
  %352 = load i32, i32* @EFBIG, align 4
  store i32 %352, i32* %11, align 4
  br label %490

353:                                              ; preds = %336, %330, %323
  %354 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %355 = icmp ne %struct.TYPE_12__* %354, null
  br i1 %355, label %356, label %402

356:                                              ; preds = %353
  %357 = load %struct.vnode*, %struct.vnode** %10, align 8
  %358 = getelementptr inbounds %struct.vnode, %struct.vnode* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* @VREG, align 8
  %361 = icmp eq i64 %359, %360
  br i1 %361, label %362, label %402

362:                                              ; preds = %356
  %363 = load %struct.uio*, %struct.uio** %7, align 8
  %364 = getelementptr inbounds %struct.uio, %struct.uio* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = load %struct.uio*, %struct.uio** %7, align 8
  %367 = call i32 @uio_resid(%struct.uio* %366)
  %368 = sext i32 %367 to i64
  %369 = add nsw i64 %365, %368
  %370 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %371 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %370, i32 0, i32 0
  %372 = load %struct.TYPE_11__*, %struct.TYPE_11__** %371, align 8
  %373 = load i64, i64* @RLIMIT_FSIZE, align 8
  %374 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %372, i64 %373
  %375 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %374, i32 0, i32 0
  %376 = load i64, i64* %375, align 8
  %377 = icmp sgt i64 %369, %376
  br i1 %377, label %378, label %402

378:                                              ; preds = %362
  %379 = load %struct.uio*, %struct.uio** %7, align 8
  %380 = call i32 @uio_resid(%struct.uio* %379)
  store i32 %380, i32* %16, align 4
  %381 = load %struct.uio*, %struct.uio** %7, align 8
  %382 = getelementptr inbounds %struct.uio, %struct.uio* %381, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  %384 = load %struct.uio*, %struct.uio** %7, align 8
  %385 = call i32 @uio_resid(%struct.uio* %384)
  %386 = sext i32 %385 to i64
  %387 = add nsw i64 %383, %386
  %388 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %389 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %388, i32 0, i32 0
  %390 = load %struct.TYPE_11__*, %struct.TYPE_11__** %389, align 8
  %391 = load i64, i64* @RLIMIT_FSIZE, align 8
  %392 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %390, i64 %391
  %393 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %392, i32 0, i32 0
  %394 = load i64, i64* %393, align 8
  %395 = sub nsw i64 %387, %394
  %396 = trunc i64 %395 to i32
  store i32 %396, i32* %14, align 4
  store i32 1, i32* %15, align 4
  %397 = load %struct.uio*, %struct.uio** %7, align 8
  %398 = load i32, i32* %16, align 4
  %399 = load i32, i32* %14, align 4
  %400 = sub nsw i32 %398, %399
  %401 = call i32 @uio_setresid(%struct.uio* %397, i32 %400)
  br label %402

402:                                              ; preds = %378, %362, %356, %353
  br label %403

403:                                              ; preds = %402, %318
  %404 = load %struct.vnode*, %struct.vnode** %10, align 8
  %405 = load %struct.uio*, %struct.uio** %7, align 8
  %406 = load i32, i32* %12, align 4
  %407 = load i32, i32* %9, align 4
  %408 = call i32 @VNOP_WRITE(%struct.vnode* %404, %struct.uio* %405, i32 %406, i32 %407)
  store i32 %408, i32* %11, align 4
  %409 = load i32, i32* %15, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %419

411:                                              ; preds = %403
  %412 = load %struct.uio*, %struct.uio** %7, align 8
  %413 = call i32 @uio_resid(%struct.uio* %412)
  store i32 %413, i32* %17, align 4
  %414 = load %struct.uio*, %struct.uio** %7, align 8
  %415 = load i32, i32* %17, align 4
  %416 = load i32, i32* %14, align 4
  %417 = add nsw i32 %415, %416
  %418 = call i32 @uio_setresid(%struct.uio* %414, i32 %417)
  br label %419

419:                                              ; preds = %411, %403
  %420 = load i32, i32* %8, align 4
  %421 = load i32, i32* @FOF_OFFSET, align 4
  %422 = and i32 %420, %421
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %424, label %458

424:                                              ; preds = %419
  %425 = load i32, i32* %12, align 4
  %426 = load i32, i32* @IO_APPEND, align 4
  %427 = and i32 %425, %426
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %437

429:                                              ; preds = %424
  %430 = load %struct.uio*, %struct.uio** %7, align 8
  %431 = getelementptr inbounds %struct.uio, %struct.uio* %430, i32 0, i32 0
  %432 = load i64, i64* %431, align 8
  %433 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %434 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %433, i32 0, i32 0
  %435 = load %struct.TYPE_13__*, %struct.TYPE_13__** %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %435, i32 0, i32 1
  store i64 %432, i64* %436, align 8
  br label %449

437:                                              ; preds = %424
  %438 = load i32, i32* %13, align 4
  %439 = load %struct.uio*, %struct.uio** %7, align 8
  %440 = call i32 @uio_resid(%struct.uio* %439)
  %441 = sub nsw i32 %438, %440
  %442 = sext i32 %441 to i64
  %443 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %444 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %443, i32 0, i32 0
  %445 = load %struct.TYPE_13__*, %struct.TYPE_13__** %444, align 8
  %446 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %445, i32 0, i32 1
  %447 = load i64, i64* %446, align 8
  %448 = add nsw i64 %447, %442
  store i64 %448, i64* %446, align 8
  br label %449

449:                                              ; preds = %437, %429
  %450 = load i32, i32* %18, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %457

452:                                              ; preds = %449
  %453 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %454 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %453, i32 0, i32 0
  %455 = load %struct.TYPE_13__*, %struct.TYPE_13__** %454, align 8
  %456 = call i32 @vn_offset_unlock(%struct.TYPE_13__* %455)
  store i32 0, i32* %18, align 4
  br label %457

457:                                              ; preds = %452, %449
  br label %458

458:                                              ; preds = %457, %419
  %459 = load i32, i32* %11, align 4
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %461, label %486

461:                                              ; preds = %458
  %462 = load %struct.vnode*, %struct.vnode** %10, align 8
  %463 = getelementptr inbounds %struct.vnode, %struct.vnode* %462, i32 0, i32 1
  %464 = load i64, i64* %463, align 8
  %465 = load i64, i64* @VT_NFS, align 8
  %466 = icmp eq i64 %464, %465
  br i1 %466, label %467, label %486

467:                                              ; preds = %461
  %468 = load %struct.vnode*, %struct.vnode** %10, align 8
  %469 = call i64 @UBCINFOEXISTS(%struct.vnode* %468)
  %470 = icmp ne i64 %469, 0
  br i1 %470, label %471, label %486

471:                                              ; preds = %467
  %472 = load i32, i32* %8, align 4
  %473 = load i32, i32* @FOF_PCRED, align 4
  %474 = and i32 %472, %473
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %476, label %481

476:                                              ; preds = %471
  %477 = load %struct.vnode*, %struct.vnode** %10, align 8
  %478 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %479 = call i32 (...) @current_thread()
  %480 = call i32 @ubc_setthreadcred(%struct.vnode* %477, %struct.TYPE_12__* %478, i32 %479)
  br label %485

481:                                              ; preds = %471
  %482 = load %struct.vnode*, %struct.vnode** %10, align 8
  %483 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %484 = call i32 @ubc_setcred(%struct.vnode* %482, %struct.TYPE_12__* %483)
  br label %485

485:                                              ; preds = %481, %476
  br label %486

486:                                              ; preds = %485, %467, %461, %458
  %487 = load %struct.vnode*, %struct.vnode** %10, align 8
  %488 = call i32 @vnode_put(%struct.vnode* %487)
  %489 = load i32, i32* %11, align 4
  store i32 %489, i32* %5, align 4
  br label %502

490:                                              ; preds = %348, %307
  %491 = load i32, i32* %18, align 4
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %493, label %498

493:                                              ; preds = %490
  %494 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %495 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %494, i32 0, i32 0
  %496 = load %struct.TYPE_13__*, %struct.TYPE_13__** %495, align 8
  %497 = call i32 @vn_offset_unlock(%struct.TYPE_13__* %496)
  br label %498

498:                                              ; preds = %493, %490
  %499 = load %struct.vnode*, %struct.vnode** %10, align 8
  %500 = call i32 @vnode_put(%struct.vnode* %499)
  %501 = load i32, i32* %11, align 4
  store i32 %501, i32* %5, align 4
  br label %502

502:                                              ; preds = %498, %486, %37, %31
  %503 = load i32, i32* %5, align 4
  ret i32 %503
}

declare dso_local %struct.TYPE_12__* @vfs_context_proc(i32) #1

declare dso_local i32 @vnode_getwithref(%struct.vnode*) #1

declare dso_local i64 @vnode_isswap(%struct.vnode*) #1

declare dso_local i32 @vnode_put(%struct.vnode*) #1

declare dso_local i64 @vnode_isnocache(%struct.vnode*) #1

declare dso_local i64 @vnode_vtype(%struct.vnode*) #1

declare dso_local i32 @vn_offset_lock(%struct.TYPE_13__*) #1

declare dso_local i32 @uio_resid(%struct.uio*) #1

declare dso_local i32 @psignal(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @uio_setresid(%struct.uio*, i32) #1

declare dso_local i32 @VNOP_WRITE(%struct.vnode*, %struct.uio*, i32, i32) #1

declare dso_local i32 @vn_offset_unlock(%struct.TYPE_13__*) #1

declare dso_local i64 @UBCINFOEXISTS(%struct.vnode*) #1

declare dso_local i32 @ubc_setthreadcred(%struct.vnode*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @ubc_setcred(%struct.vnode*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
