; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_getdirentriesattr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_getdirentriesattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.getdirentriesattr_args = type { i32, i32, i32, i32, i64, i64, i32, i32 }
%struct.vnode = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.fileproc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.attrlist = type { i32, i64, i64 }

@UIO_USERSPACE64 = common dso_local global i32 0, align 4
@UIO_USERSPACE32 = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@vnpath_withref = common dso_local global i32 0, align 4
@ARG_VNODE1 = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@vnpath = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@KAUTH_VNODE_LIST_DIRECTORY = common dso_local global i32 0, align 4
@ATTR_CMN_NAME = common dso_local global i32 0, align 4
@KAUTH_VNODE_SEARCH = common dso_local global i32 0, align 4
@MNT_UNION = common dso_local global i32 0, align 4
@O_EVTONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getdirentriesattr(i32 %0, %struct.getdirentriesattr_args* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.getdirentriesattr_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca %struct.fileproc*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.attrlist, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.vnode*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.getdirentriesattr_args* %1, %struct.getdirentriesattr_args** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %10, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @proc_is64bit(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* @UIO_USERSPACE64, align 4
  br label %33

31:                                               ; preds = %3
  %32 = load i32, i32* @UIO_USERSPACE32, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  store i32 %34, i32* %11, align 4
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %17, align 8
  %35 = call i32 (...) @vfs_context_current()
  store i32 %35, i32* %19, align 4
  %36 = load %struct.getdirentriesattr_args*, %struct.getdirentriesattr_args** %6, align 8
  %37 = getelementptr inbounds %struct.getdirentriesattr_args, %struct.getdirentriesattr_args* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %20, align 4
  %39 = call i32 @UIO_SIZEOF(i32 1)
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %21, align 8
  %42 = alloca i8, i64 %40, align 16
  store i64 %40, i64* %22, align 8
  %43 = load i32, i32* %20, align 4
  %44 = load i32, i32* %20, align 4
  %45 = call i32 (i32, ...) @AUDIT_ARG(i32 %43, i32 %44)
  %46 = load %struct.getdirentriesattr_args*, %struct.getdirentriesattr_args** %6, align 8
  %47 = getelementptr inbounds %struct.getdirentriesattr_args, %struct.getdirentriesattr_args* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = ptrtoint %struct.attrlist* %18 to i64
  %50 = call i32 @copyin(i32 %48, i64 %49, i32 24)
  store i32 %50, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %33
  %53 = load i32, i32* %15, align 4
  store i32 %53, i32* %4, align 4
  store i32 1, i32* %24, align 4
  br label %271

54:                                               ; preds = %33
  %55 = load %struct.getdirentriesattr_args*, %struct.getdirentriesattr_args** %6, align 8
  %56 = getelementptr inbounds %struct.getdirentriesattr_args, %struct.getdirentriesattr_args* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = ptrtoint i64* %12 to i64
  %59 = call i32 @copyin(i32 %57, i64 %58, i32 8)
  store i32 %59, i32* %15, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* %15, align 4
  store i32 %62, i32* %4, align 4
  store i32 1, i32* %24, align 4
  br label %271

63:                                               ; preds = %54
  %64 = load i64, i64* %12, align 8
  store i64 %64, i64* %13, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %20, align 4
  %67 = call i32 @fp_getfvp(i32 %65, i32 %66, %struct.fileproc** %9, %struct.vnode** %8)
  store i32 %67, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %15, align 4
  store i32 %70, i32* %4, align 4
  store i32 1, i32* %24, align 4
  br label %271

71:                                               ; preds = %63
  %72 = load %struct.fileproc*, %struct.fileproc** %9, align 8
  %73 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @FREAD, align 4
  %78 = and i32 %76, %77
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %71
  %81 = load i32, i32* @vnpath_withref, align 4
  %82 = load %struct.vnode*, %struct.vnode** %8, align 8
  %83 = load i32, i32* @ARG_VNODE1, align 4
  %84 = call i32 (i32, ...) @AUDIT_ARG(i32 %81, %struct.vnode* %82, i32 %83)
  %85 = load i32, i32* @EBADF, align 4
  store i32 %85, i32* %15, align 4
  br label %267

86:                                               ; preds = %71
  %87 = load %struct.vnode*, %struct.vnode** %8, align 8
  %88 = call i32 @vnode_getwithref(%struct.vnode* %87)
  store i32 %88, i32* %15, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %267

91:                                               ; preds = %86
  %92 = load i32, i32* @vnpath, align 4
  %93 = load %struct.vnode*, %struct.vnode** %8, align 8
  %94 = load i32, i32* @ARG_VNODE1, align 4
  %95 = call i32 (i32, ...) @AUDIT_ARG(i32 %92, %struct.vnode* %93, i32 %94)
  br label %96

96:                                               ; preds = %193, %91
  %97 = load %struct.vnode*, %struct.vnode** %8, align 8
  %98 = getelementptr inbounds %struct.vnode, %struct.vnode* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @VDIR, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load %struct.vnode*, %struct.vnode** %8, align 8
  %104 = call i32 @vnode_put(%struct.vnode* %103)
  %105 = load i32, i32* @EINVAL, align 4
  store i32 %105, i32* %15, align 4
  br label %267

106:                                              ; preds = %96
  %107 = load %struct.fileproc*, %struct.fileproc** %9, align 8
  %108 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %17, align 8
  %112 = load i64, i64* %17, align 8
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* @UIO_READ, align 4
  %115 = getelementptr inbounds i8, i8* %42, i64 0
  %116 = trunc i64 %40 to i32
  %117 = call i32* @uio_createwithbuffer(i32 1, i64 %112, i32 %113, i32 %114, i8* %115, i32 %116)
  store i32* %117, i32** %10, align 8
  %118 = load i32*, i32** %10, align 8
  %119 = load %struct.getdirentriesattr_args*, %struct.getdirentriesattr_args** %6, align 8
  %120 = getelementptr inbounds %struct.getdirentriesattr_args, %struct.getdirentriesattr_args* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.getdirentriesattr_args*, %struct.getdirentriesattr_args** %6, align 8
  %123 = getelementptr inbounds %struct.getdirentriesattr_args, %struct.getdirentriesattr_args* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @uio_addiov(i32* %118, i32 %121, i64 %124)
  %126 = load i32, i32* @KAUTH_VNODE_LIST_DIRECTORY, align 4
  store i32 %126, i32* %23, align 4
  %127 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %18, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @ATTR_CMN_NAME, align 4
  %130 = xor i32 %129, -1
  %131 = and i32 %128, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %141, label %133

133:                                              ; preds = %106
  %134 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %18, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %18, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %137, %133, %106
  %142 = load i32, i32* @KAUTH_VNODE_SEARCH, align 4
  %143 = load i32, i32* %23, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %23, align 4
  br label %145

145:                                              ; preds = %141, %137
  %146 = load %struct.vnode*, %struct.vnode** %8, align 8
  %147 = load i32, i32* %23, align 4
  %148 = load i32, i32* %19, align 4
  %149 = call i32 @vnode_authorize(%struct.vnode* %146, i32* null, i32 %147, i32 %148)
  store i32 %149, i32* %15, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %161

151:                                              ; preds = %145
  %152 = load %struct.vnode*, %struct.vnode** %8, align 8
  %153 = load i32*, i32** %10, align 8
  %154 = load i64, i64* %12, align 8
  %155 = load %struct.getdirentriesattr_args*, %struct.getdirentriesattr_args** %6, align 8
  %156 = getelementptr inbounds %struct.getdirentriesattr_args, %struct.getdirentriesattr_args* %155, i32 0, i32 5
  %157 = load i64, i64* %156, align 8
  %158 = trunc i64 %157 to i32
  %159 = load i32, i32* %19, align 4
  %160 = call i32 @VNOP_READDIRATTR(%struct.vnode* %152, %struct.attrlist* %18, i32* %153, i64 %154, i32 %158, i64* %14, i32* %16, i64* %12, i32 %159)
  store i32 %160, i32* %15, align 4
  br label %161

161:                                              ; preds = %151, %145
  %162 = load i32, i32* %15, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load %struct.vnode*, %struct.vnode** %8, align 8
  %166 = call i32 @vnode_put(%struct.vnode* %165)
  br label %267

167:                                              ; preds = %161
  %168 = load i32, i32* %16, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %228

170:                                              ; preds = %167
  %171 = load %struct.vnode*, %struct.vnode** %8, align 8
  %172 = getelementptr inbounds %struct.vnode, %struct.vnode* %171, i32 0, i32 1
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @MNT_UNION, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %228

179:                                              ; preds = %170
  %180 = load i32*, i32** %10, align 8
  %181 = call i64 @uio_resid(i32* %180)
  %182 = load %struct.getdirentriesattr_args*, %struct.getdirentriesattr_args** %6, align 8
  %183 = getelementptr inbounds %struct.getdirentriesattr_args, %struct.getdirentriesattr_args* %182, i32 0, i32 4
  %184 = load i64, i64* %183, align 8
  %185 = icmp slt i64 %181, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %179
  store i32 0, i32* %16, align 4
  br label %227

187:                                              ; preds = %179
  %188 = load %struct.vnode*, %struct.vnode** %8, align 8
  store %struct.vnode* %188, %struct.vnode** %25, align 8
  %189 = load %struct.vnode*, %struct.vnode** %25, align 8
  %190 = load i32, i32* %19, align 4
  %191 = call i64 @lookup_traverse_union(%struct.vnode* %189, %struct.vnode** %8, i32 %190)
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %225

193:                                              ; preds = %187
  %194 = load %struct.vnode*, %struct.vnode** %8, align 8
  %195 = load %struct.fileproc*, %struct.fileproc** %9, align 8
  %196 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %195, i32 0, i32 0
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @O_EVTONLY, align 4
  %201 = and i32 %199, %200
  %202 = call i32 @vnode_ref_ext(%struct.vnode* %194, i32 %201, i32 0)
  %203 = load %struct.vnode*, %struct.vnode** %8, align 8
  %204 = ptrtoint %struct.vnode* %203 to i64
  %205 = load %struct.fileproc*, %struct.fileproc** %9, align 8
  %206 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %205, i32 0, i32 0
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 2
  store i64 %204, i64* %208, align 8
  %209 = load %struct.fileproc*, %struct.fileproc** %9, align 8
  %210 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %209, i32 0, i32 0
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 1
  store i64 0, i64* %212, align 8
  %213 = load i64, i64* %13, align 8
  store i64 %213, i64* %12, align 8
  %214 = load %struct.vnode*, %struct.vnode** %25, align 8
  %215 = load %struct.fileproc*, %struct.fileproc** %9, align 8
  %216 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %215, i32 0, i32 0
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @O_EVTONLY, align 4
  %221 = and i32 %219, %220
  %222 = call i32 @vnode_rele_internal(%struct.vnode* %214, i32 %221, i32 0, i32 0)
  %223 = load %struct.vnode*, %struct.vnode** %25, align 8
  %224 = call i32 @vnode_put(%struct.vnode* %223)
  br label %96

225:                                              ; preds = %187
  %226 = load %struct.vnode*, %struct.vnode** %25, align 8
  store %struct.vnode* %226, %struct.vnode** %8, align 8
  br label %227

227:                                              ; preds = %225, %186
  br label %228

228:                                              ; preds = %227, %170, %167
  %229 = load %struct.vnode*, %struct.vnode** %8, align 8
  %230 = call i32 @vnode_put(%struct.vnode* %229)
  %231 = load i32, i32* %15, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %228
  br label %267

234:                                              ; preds = %228
  %235 = load i32*, i32** %10, align 8
  %236 = call i64 @uio_offset(i32* %235)
  %237 = load %struct.fileproc*, %struct.fileproc** %9, align 8
  %238 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %237, i32 0, i32 0
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 1
  store i64 %236, i64* %240, align 8
  %241 = ptrtoint i64* %12 to i64
  %242 = load %struct.getdirentriesattr_args*, %struct.getdirentriesattr_args** %6, align 8
  %243 = getelementptr inbounds %struct.getdirentriesattr_args, %struct.getdirentriesattr_args* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @copyout(i64 %241, i32 %244, i32 8)
  store i32 %245, i32* %15, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %234
  br label %267

248:                                              ; preds = %234
  %249 = ptrtoint i64* %14 to i64
  %250 = load %struct.getdirentriesattr_args*, %struct.getdirentriesattr_args** %6, align 8
  %251 = getelementptr inbounds %struct.getdirentriesattr_args, %struct.getdirentriesattr_args* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @copyout(i64 %249, i32 %252, i32 8)
  store i32 %253, i32* %15, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %248
  br label %267

256:                                              ; preds = %248
  %257 = ptrtoint i64* %17 to i64
  %258 = load %struct.getdirentriesattr_args*, %struct.getdirentriesattr_args** %6, align 8
  %259 = getelementptr inbounds %struct.getdirentriesattr_args, %struct.getdirentriesattr_args* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @copyout(i64 %257, i32 %260, i32 8)
  store i32 %261, i32* %15, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %256
  br label %267

264:                                              ; preds = %256
  %265 = load i32, i32* %16, align 4
  %266 = load i32*, i32** %7, align 8
  store i32 %265, i32* %266, align 4
  store i32 0, i32* %15, align 4
  br label %267

267:                                              ; preds = %264, %263, %255, %247, %233, %164, %102, %90, %80
  %268 = load i32, i32* %20, align 4
  %269 = call i32 @file_drop(i32 %268)
  %270 = load i32, i32* %15, align 4
  store i32 %270, i32* %4, align 4
  store i32 1, i32* %24, align 4
  br label %271

271:                                              ; preds = %267, %69, %61, %52
  %272 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %272)
  %273 = load i32, i32* %4, align 4
  ret i32 %273
}

declare dso_local i64 @proc_is64bit(i32) #1

declare dso_local i32 @vfs_context_current(...) #1

declare dso_local i32 @UIO_SIZEOF(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @AUDIT_ARG(i32, ...) #1

declare dso_local i32 @copyin(i32, i64, i32) #1

declare dso_local i32 @fp_getfvp(i32, i32, %struct.fileproc**, %struct.vnode**) #1

declare dso_local i32 @vnode_getwithref(%struct.vnode*) #1

declare dso_local i32 @vnode_put(%struct.vnode*) #1

declare dso_local i32* @uio_createwithbuffer(i32, i64, i32, i32, i8*, i32) #1

declare dso_local i32 @uio_addiov(i32*, i32, i64) #1

declare dso_local i32 @vnode_authorize(%struct.vnode*, i32*, i32, i32) #1

declare dso_local i32 @VNOP_READDIRATTR(%struct.vnode*, %struct.attrlist*, i32*, i64, i32, i64*, i32*, i64*, i32) #1

declare dso_local i64 @uio_resid(i32*) #1

declare dso_local i64 @lookup_traverse_union(%struct.vnode*, %struct.vnode**, i32) #1

declare dso_local i32 @vnode_ref_ext(%struct.vnode*, i32, i32) #1

declare dso_local i32 @vnode_rele_internal(%struct.vnode*, i32, i32, i32) #1

declare dso_local i64 @uio_offset(i32*) #1

declare dso_local i32 @copyout(i64, i32, i32) #1

declare dso_local i32 @file_drop(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
