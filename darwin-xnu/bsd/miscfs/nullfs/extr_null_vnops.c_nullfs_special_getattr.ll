; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/nullfs/extr_null_vnops.c_nullfs_special_getattr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/nullfs/extr_null_vnops.c_nullfs_special_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_getattr_args = type { i64, %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_15__, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.null_mount = type { i64, i32, i32* }
%struct.vnode_attr = type { i32, i32, %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }

@NULL_ROOT_INO = common dso_local global i32 0, align 4
@va_uid = common dso_local global i32 0, align 4
@va_gid = common dso_local global i32 0, align 4
@va_create_time = common dso_local global i32 0, align 4
@va_modify_time = common dso_local global i32 0, align 4
@va_access_time = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@NULL_SECOND_INO = common dso_local global i32 0, align 4
@va_type = common dso_local global i32 0, align 4
@va_rdev = common dso_local global i32 0, align 4
@va_nlink = common dso_local global i32 0, align 4
@va_total_size = common dso_local global i32 0, align 4
@va_data_size = common dso_local global i32 0, align 4
@va_data_alloc = common dso_local global i32 0, align 4
@va_iosize = common dso_local global i32 0, align 4
@va_fileid = common dso_local global i32 0, align 4
@va_linkid = common dso_local global i32 0, align 4
@va_fsid = common dso_local global i32 0, align 4
@va_filerev = common dso_local global i32 0, align 4
@va_gen = common dso_local global i32 0, align 4
@va_flags = common dso_local global i32 0, align 4
@UF_HIDDEN = common dso_local global i32 0, align 4
@va_parentid = common dso_local global i32 0, align 4
@va_mode = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnop_getattr_args*)* @nullfs_special_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nullfs_special_getattr(%struct.vnop_getattr_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_getattr_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.null_mount*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnode_attr, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.vnop_getattr_args* %0, %struct.vnop_getattr_args** %3, align 8
  %10 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %11 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @vnode_mount(i64 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.null_mount* @MOUNTTONULLMOUNT(i32 %14)
  store %struct.null_mount* %15, %struct.null_mount** %5, align 8
  %16 = load i32, i32* @NULL_ROOT_INO, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.null_mount*, %struct.null_mount** %5, align 8
  %18 = getelementptr inbounds %struct.null_mount, %struct.null_mount* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %8, align 8
  %20 = call i32 @VATTR_INIT(%struct.vnode_attr* %7)
  %21 = load i32, i32* @va_uid, align 4
  %22 = call i32 @VATTR_WANTED(%struct.vnode_attr* %7, i32 %21)
  %23 = load i32, i32* @va_gid, align 4
  %24 = call i32 @VATTR_WANTED(%struct.vnode_attr* %7, i32 %23)
  %25 = load i32, i32* @va_create_time, align 4
  %26 = call i32 @VATTR_WANTED(%struct.vnode_attr* %7, i32 %25)
  %27 = load i32, i32* @va_modify_time, align 4
  %28 = call i32 @VATTR_WANTED(%struct.vnode_attr* %7, i32 %27)
  %29 = load i32, i32* @va_access_time, align 4
  %30 = call i32 @VATTR_WANTED(%struct.vnode_attr* %7, i32 %29)
  %31 = load i32*, i32** %8, align 8
  %32 = load %struct.null_mount*, %struct.null_mount** %5, align 8
  %33 = getelementptr inbounds %struct.null_mount, %struct.null_mount* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @vnode_getwithvid(i32* %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %1
  %38 = load i32, i32* %4, align 4
  %39 = call i32* @vfs_vnodecovered(i32 %38)
  store i32* %39, i32** %8, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @EIO, align 4
  store i32 %43, i32* %2, align 4
  br label %305

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %1
  %46 = load i32*, i32** %8, align 8
  %47 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %48 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @vnode_getattr(i32* %46, %struct.vnode_attr* %7, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @vnode_put(i32* %51)
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %2, align 4
  br label %305

57:                                               ; preds = %45
  %58 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %59 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.null_mount*, %struct.null_mount** %5, align 8
  %62 = getelementptr inbounds %struct.null_mount, %struct.null_mount* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* @NULL_SECOND_INO, align 4
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %65, %57
  %68 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %69 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %68, i32 0, i32 1
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %69, align 8
  %71 = load i32, i32* @va_type, align 4
  %72 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %73 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @vnode_vtype(i64 %74)
  %76 = call i32 @VATTR_RETURN(%struct.TYPE_18__* %70, i32 %71, i32 %75)
  %77 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %78 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %77, i32 0, i32 1
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %78, align 8
  %80 = load i32, i32* @va_rdev, align 4
  %81 = call i32 @VATTR_RETURN(%struct.TYPE_18__* %79, i32 %80, i32 0)
  %82 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %83 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %82, i32 0, i32 1
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %83, align 8
  %85 = load i32, i32* @va_nlink, align 4
  %86 = call i32 @VATTR_RETURN(%struct.TYPE_18__* %84, i32 %85, i32 3)
  %87 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %88 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %87, i32 0, i32 1
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %88, align 8
  %90 = load i32, i32* @va_total_size, align 4
  %91 = call i32 @VATTR_RETURN(%struct.TYPE_18__* %89, i32 %90, i32 0)
  %92 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %93 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %92, i32 0, i32 1
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %93, align 8
  %95 = load i32, i32* @va_data_size, align 4
  %96 = call i32 @VATTR_RETURN(%struct.TYPE_18__* %94, i32 %95, i32 0)
  %97 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %98 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %97, i32 0, i32 1
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %98, align 8
  %100 = load i32, i32* @va_data_alloc, align 4
  %101 = call i32 @VATTR_RETURN(%struct.TYPE_18__* %99, i32 %100, i32 0)
  %102 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %103 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %102, i32 0, i32 1
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %103, align 8
  %105 = load i32, i32* @va_iosize, align 4
  %106 = load i32, i32* %4, align 4
  %107 = call %struct.TYPE_17__* @vfs_statfs(i32 %106)
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @VATTR_RETURN(%struct.TYPE_18__* %104, i32 %105, i32 %109)
  %111 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %112 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %111, i32 0, i32 1
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %112, align 8
  %114 = load i32, i32* @va_fileid, align 4
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @VATTR_RETURN(%struct.TYPE_18__* %113, i32 %114, i32 %115)
  %117 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %118 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %117, i32 0, i32 1
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %118, align 8
  %120 = load i32, i32* @va_linkid, align 4
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @VATTR_RETURN(%struct.TYPE_18__* %119, i32 %120, i32 %121)
  %123 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %124 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %123, i32 0, i32 1
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %124, align 8
  %126 = load i32, i32* @va_fsid, align 4
  %127 = load i32, i32* %4, align 4
  %128 = call %struct.TYPE_17__* @vfs_statfs(i32 %127)
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @VATTR_RETURN(%struct.TYPE_18__* %125, i32 %126, i32 %133)
  %135 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %136 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %135, i32 0, i32 1
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %136, align 8
  %138 = load i32, i32* @va_filerev, align 4
  %139 = call i32 @VATTR_RETURN(%struct.TYPE_18__* %137, i32 %138, i32 0)
  %140 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %141 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %140, i32 0, i32 1
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %141, align 8
  %143 = load i32, i32* @va_gen, align 4
  %144 = call i32 @VATTR_RETURN(%struct.TYPE_18__* %142, i32 %143, i32 0)
  %145 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %146 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %145, i32 0, i32 1
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %146, align 8
  %148 = load i32, i32* @va_flags, align 4
  %149 = load i32, i32* @UF_HIDDEN, align 4
  %150 = call i32 @VATTR_RETURN(%struct.TYPE_18__* %147, i32 %148, i32 %149)
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* @NULL_SECOND_INO, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %161

154:                                              ; preds = %67
  %155 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %156 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %155, i32 0, i32 1
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %156, align 8
  %158 = load i32, i32* @va_parentid, align 4
  %159 = load i32, i32* @NULL_ROOT_INO, align 4
  %160 = call i32 @VATTR_RETURN(%struct.TYPE_18__* %157, i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %154, %67
  %162 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %163 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %162, i32 0, i32 1
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %163, align 8
  %165 = load i32, i32* @va_mode, align 4
  %166 = call i64 @VATTR_IS_ACTIVE(%struct.TYPE_18__* %164, i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %187

168:                                              ; preds = %161
  %169 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %170 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %169, i32 0, i32 1
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %170, align 8
  %172 = load i32, i32* @va_mode, align 4
  %173 = load i32, i32* @S_IFDIR, align 4
  %174 = load i32, i32* @S_IRUSR, align 4
  %175 = or i32 %173, %174
  %176 = load i32, i32* @S_IXUSR, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @S_IRGRP, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @S_IXGRP, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* @S_IROTH, align 4
  %183 = or i32 %181, %182
  %184 = load i32, i32* @S_IXOTH, align 4
  %185 = or i32 %183, %184
  %186 = call i32 @VATTR_RETURN(%struct.TYPE_18__* %171, i32 %172, i32 %185)
  br label %187

187:                                              ; preds = %168, %161
  %188 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %189 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %188, i32 0, i32 1
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %189, align 8
  %191 = load i32, i32* @va_uid, align 4
  %192 = call i64 @VATTR_IS_ACTIVE(%struct.TYPE_18__* %190, i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %202

194:                                              ; preds = %187
  %195 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %196 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %195, i32 0, i32 1
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %196, align 8
  %198 = load i32, i32* @va_uid, align 4
  %199 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %7, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @VATTR_RETURN(%struct.TYPE_18__* %197, i32 %198, i32 %200)
  br label %202

202:                                              ; preds = %194, %187
  %203 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %204 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %203, i32 0, i32 1
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %204, align 8
  %206 = load i32, i32* @va_gid, align 4
  %207 = call i64 @VATTR_IS_ACTIVE(%struct.TYPE_18__* %205, i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %217

209:                                              ; preds = %202
  %210 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %211 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %210, i32 0, i32 1
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %211, align 8
  %213 = load i32, i32* @va_gid, align 4
  %214 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %7, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @VATTR_RETURN(%struct.TYPE_18__* %212, i32 %213, i32 %215)
  br label %217

217:                                              ; preds = %209, %202
  %218 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %219 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %218, i32 0, i32 1
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %219, align 8
  %221 = load i32, i32* @va_create_time, align 4
  %222 = call i64 @VATTR_IS_ACTIVE(%struct.TYPE_18__* %220, i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %246

224:                                              ; preds = %217
  %225 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %226 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %225, i32 0, i32 1
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %226, align 8
  %228 = load i32, i32* @va_create_time, align 4
  %229 = call i32 @VATTR_SET_SUPPORTED(%struct.TYPE_18__* %227, i32 %228)
  %230 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %7, i32 0, i32 4
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %234 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %233, i32 0, i32 1
  %235 = load %struct.TYPE_18__*, %struct.TYPE_18__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 1
  store i32 %232, i32* %237, align 4
  %238 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %7, i32 0, i32 4
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %242 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %241, i32 0, i32 1
  %243 = load %struct.TYPE_18__*, %struct.TYPE_18__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 0
  store i32 %240, i32* %245, align 4
  br label %246

246:                                              ; preds = %224, %217
  %247 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %248 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %247, i32 0, i32 1
  %249 = load %struct.TYPE_18__*, %struct.TYPE_18__** %248, align 8
  %250 = load i32, i32* @va_modify_time, align 4
  %251 = call i64 @VATTR_IS_ACTIVE(%struct.TYPE_18__* %249, i32 %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %275

253:                                              ; preds = %246
  %254 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %255 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %254, i32 0, i32 1
  %256 = load %struct.TYPE_18__*, %struct.TYPE_18__** %255, align 8
  %257 = load i32, i32* @va_modify_time, align 4
  %258 = call i32 @VATTR_SET_SUPPORTED(%struct.TYPE_18__* %256, i32 %257)
  %259 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %7, i32 0, i32 3
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %263 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %262, i32 0, i32 1
  %264 = load %struct.TYPE_18__*, %struct.TYPE_18__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 1
  store i32 %261, i32* %266, align 4
  %267 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %7, i32 0, i32 3
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %271 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %270, i32 0, i32 1
  %272 = load %struct.TYPE_18__*, %struct.TYPE_18__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %273, i32 0, i32 0
  store i32 %269, i32* %274, align 4
  br label %275

275:                                              ; preds = %253, %246
  %276 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %277 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %276, i32 0, i32 1
  %278 = load %struct.TYPE_18__*, %struct.TYPE_18__** %277, align 8
  %279 = load i32, i32* @va_access_time, align 4
  %280 = call i64 @VATTR_IS_ACTIVE(%struct.TYPE_18__* %278, i32 %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %304

282:                                              ; preds = %275
  %283 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %284 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %283, i32 0, i32 1
  %285 = load %struct.TYPE_18__*, %struct.TYPE_18__** %284, align 8
  %286 = load i32, i32* @va_access_time, align 4
  %287 = call i32 @VATTR_SET_SUPPORTED(%struct.TYPE_18__* %285, i32 %286)
  %288 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %7, i32 0, i32 2
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %292 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %291, i32 0, i32 1
  %293 = load %struct.TYPE_18__*, %struct.TYPE_18__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %294, i32 0, i32 1
  store i32 %290, i32* %295, align 4
  %296 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %7, i32 0, i32 2
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %300 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %299, i32 0, i32 1
  %301 = load %struct.TYPE_18__*, %struct.TYPE_18__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %302, i32 0, i32 0
  store i32 %298, i32* %303, align 4
  br label %304

304:                                              ; preds = %282, %275
  store i32 0, i32* %2, align 4
  br label %305

305:                                              ; preds = %304, %55, %42
  %306 = load i32, i32* %2, align 4
  ret i32 %306
}

declare dso_local i32 @vnode_mount(i64) #1

declare dso_local %struct.null_mount* @MOUNTTONULLMOUNT(i32) #1

declare dso_local i32 @VATTR_INIT(%struct.vnode_attr*) #1

declare dso_local i32 @VATTR_WANTED(%struct.vnode_attr*, i32) #1

declare dso_local i64 @vnode_getwithvid(i32*, i32) #1

declare dso_local i32* @vfs_vnodecovered(i32) #1

declare dso_local i32 @vnode_getattr(i32*, %struct.vnode_attr*, i32) #1

declare dso_local i32 @vnode_put(i32*) #1

declare dso_local i32 @VATTR_RETURN(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @vnode_vtype(i64) #1

declare dso_local %struct.TYPE_17__* @vfs_statfs(i32) #1

declare dso_local i64 @VATTR_IS_ACTIVE(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @VATTR_SET_SUPPORTED(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
