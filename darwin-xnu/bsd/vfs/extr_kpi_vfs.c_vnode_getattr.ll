; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_kpi_vfs.c_vnode_getattr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_kpi_vfs.c_vnode_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32* }
%struct.vnode_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }

@VNODE_ATTR_ALL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@va_acl = common dso_local global i32 0, align 4
@va_uuuid = common dso_local global i32 0, align 4
@va_guuid = common dso_local global i32 0, align 4
@va_data_alloc = common dso_local global i32 0, align 4
@va_total_size = common dso_local global i32 0, align 4
@va_total_alloc = common dso_local global i32 0, align 4
@va_data_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ERROR - returning %d\00", align 1
@kauth_null_guid = common dso_local global i32 0, align 4
@KAUTH_FILESEC_NOACL = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@va_uid = common dso_local global i32 0, align 4
@MNT_IGNORE_OWNERSHIP = common dso_local global i32 0, align 4
@KAUTH_UID_NONE = common dso_local global i32 0, align 4
@va_gid = common dso_local global i32 0, align 4
@KAUTH_GID_NONE = common dso_local global i32 0, align 4
@va_iosize = common dso_local global i32 0, align 4
@va_flags = common dso_local global i32 0, align 4
@va_filerev = common dso_local global i32 0, align 4
@va_gen = common dso_local global i32 0, align 4
@VFS_KERNEL_EVENT = common dso_local global i32 0, align 4
@va_change_time = common dso_local global i32 0, align 4
@va_modify_time = common dso_local global i32 0, align 4
@va_type = common dso_local global i32 0, align 4
@va_fsid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnode_getattr(%struct.TYPE_18__* %0, %struct.vnode_attr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.vnode_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.vnode_attr* %1, %struct.vnode_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %14 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @VNODE_ATTR_ALL, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %4, align 4
  br label %513

22:                                               ; preds = %3
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %24 = call i32 @vnode_mount(%struct.TYPE_18__* %23)
  %25 = call i32 @vfs_extendedsecurity(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  %28 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %29 = load i32, i32* @va_acl, align 4
  %30 = call i32 @VATTR_CLEAR_ACTIVE(%struct.vnode_attr* %28, i32 %29)
  %31 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %32 = load i32, i32* @va_uuuid, align 4
  %33 = call i32 @VATTR_CLEAR_ACTIVE(%struct.vnode_attr* %31, i32 %32)
  %34 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %35 = load i32, i32* @va_guuid, align 4
  %36 = call i32 @VATTR_CLEAR_ACTIVE(%struct.vnode_attr* %34, i32 %35)
  br label %37

37:                                               ; preds = %27, %22
  %38 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %39 = load i32, i32* @va_data_alloc, align 4
  %40 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %37
  %43 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %44 = load i32, i32* @va_total_size, align 4
  %45 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %49 = load i32, i32* @va_total_alloc, align 4
  %50 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %47, %42, %37
  %53 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %54 = load i32, i32* @va_data_size, align 4
  %55 = call i32 @VATTR_SET_ACTIVE(%struct.vnode_attr* %53, i32 %54)
  %56 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %57 = load i32, i32* @va_data_alloc, align 4
  %58 = call i32 @VATTR_SET_ACTIVE(%struct.vnode_attr* %56, i32 %57)
  %59 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %60 = load i32, i32* @va_total_size, align 4
  %61 = call i32 @VATTR_SET_ACTIVE(%struct.vnode_attr* %59, i32 %60)
  %62 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %63 = load i32, i32* @va_total_alloc, align 4
  %64 = call i32 @VATTR_SET_ACTIVE(%struct.vnode_attr* %62, i32 %63)
  br label %65

65:                                               ; preds = %52, %47
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %67 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @VNOP_GETATTR(%struct.TYPE_18__* %66, %struct.vnode_attr* %67, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @KAUTH_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %511

75:                                               ; preds = %65
  %76 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %77 = load i32, i32* @va_acl, align 4
  %78 = call i64 @VATTR_NOT_RETURNED(%struct.vnode_attr* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %75
  %81 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %82 = load i32, i32* @va_uuuid, align 4
  %83 = call i64 @VATTR_NOT_RETURNED(%struct.vnode_attr* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %87 = load i32, i32* @va_guuid, align 4
  %88 = call i64 @VATTR_NOT_RETURNED(%struct.vnode_attr* %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %174

90:                                               ; preds = %85, %80, %75
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %8, align 8
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %92 = call i64 @XATTR_VNODE_SUPPORTED(%struct.TYPE_18__* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %90
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @vnode_get_filesec(%struct.TYPE_18__* %95, %struct.TYPE_19__** %8, i32 %96)
  store i32 %97, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %511

100:                                              ; preds = %94
  br label %101

101:                                              ; preds = %100, %90
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %103 = icmp eq %struct.TYPE_19__* %102, null
  br i1 %103, label %104, label %116

104:                                              ; preds = %101
  %105 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %106 = load i32, i32* @va_acl, align 4
  %107 = call i32 @VATTR_RETURN(%struct.vnode_attr* %105, i32 %106, i32 0)
  %108 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %109 = load i32, i32* @va_uuuid, align 4
  %110 = load i32, i32* @kauth_null_guid, align 4
  %111 = call i32 @VATTR_RETURN(%struct.vnode_attr* %108, i32 %109, i32 %110)
  %112 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %113 = load i32, i32* @va_guuid, align 4
  %114 = load i32, i32* @kauth_null_guid, align 4
  %115 = call i32 @VATTR_RETURN(%struct.vnode_attr* %112, i32 %113, i32 %114)
  br label %173

116:                                              ; preds = %101
  %117 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %118 = load i32, i32* @va_uuuid, align 4
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @VATTR_RETURN(%struct.vnode_attr* %117, i32 %118, i32 %121)
  %123 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %124 = load i32, i32* @va_guuid, align 4
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @VATTR_RETURN(%struct.vnode_attr* %123, i32 %124, i32 %127)
  %129 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %130 = load i32, i32* @va_acl, align 4
  %131 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %129, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %170

133:                                              ; preds = %116
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @KAUTH_FILESEC_NOACL, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %133
  %141 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %142 = load i32, i32* @va_acl, align 4
  %143 = call i32 @VATTR_RETURN(%struct.vnode_attr* %141, i32 %142, i32 0)
  br label %169

144:                                              ; preds = %133
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = call i32* @kauth_acl_alloc(i64 %148)
  store i32* %149, i32** %9, align 8
  %150 = load i32*, i32** %9, align 8
  %151 = icmp eq i32* %150, null
  br i1 %151, label %152, label %156

152:                                              ; preds = %144
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %154 = call i32 @kauth_filesec_free(%struct.TYPE_19__* %153)
  %155 = load i32, i32* @ENOMEM, align 4
  store i32 %155, i32* %10, align 4
  br label %511

156:                                              ; preds = %144
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 2
  %159 = load i32*, i32** %9, align 8
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 2
  %162 = call i32 @KAUTH_ACL_COPYSIZE(%struct.TYPE_15__* %161)
  %163 = call i32 @bcopy(%struct.TYPE_15__* %158, i32* %159, i32 %162)
  %164 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %165 = load i32, i32* @va_acl, align 4
  %166 = load i32*, i32** %9, align 8
  %167 = ptrtoint i32* %166 to i32
  %168 = call i32 @VATTR_RETURN(%struct.vnode_attr* %164, i32 %165, i32 %167)
  br label %169

169:                                              ; preds = %156, %140
  br label %170

170:                                              ; preds = %169, %116
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %172 = call i32 @kauth_filesec_free(%struct.TYPE_19__* %171)
  br label %173

173:                                              ; preds = %170, %104
  br label %174

174:                                              ; preds = %173, %85
  %175 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %176 = load i32, i32* @va_acl, align 4
  %177 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %175, i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %198

179:                                              ; preds = %174
  %180 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %181 = load i32, i32* @va_acl, align 4
  %182 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %180, i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %198, label %184

184:                                              ; preds = %179
  %185 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %186 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %185, i32 0, i32 8
  %187 = load i32*, i32** %186, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %194

189:                                              ; preds = %184
  %190 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %191 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %190, i32 0, i32 8
  %192 = load i32*, i32** %191, align 8
  %193 = call i32 @kauth_acl_free(i32* %192)
  br label %194

194:                                              ; preds = %189, %184
  %195 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %196 = load i32, i32* @va_acl, align 4
  %197 = call i32 @VATTR_CLEAR_SUPPORTED(%struct.vnode_attr* %195, i32 %196)
  br label %198

198:                                              ; preds = %194, %179, %174
  %199 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %200 = load i32, i32* @va_uid, align 4
  %201 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %199, i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %269

203:                                              ; preds = %198
  %204 = load i32, i32* %7, align 4
  %205 = call i64 @vfs_context_issuser(i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %216

207:                                              ; preds = %203
  %208 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %209 = load i32, i32* @va_uid, align 4
  %210 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %208, i32 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %207
  %213 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %214 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  store i32 %215, i32* %11, align 4
  br label %253

216:                                              ; preds = %207, %203
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @MNT_IGNORE_OWNERSHIP, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %236

225:                                              ; preds = %216
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  store i32 %230, i32* %11, align 4
  %231 = load i32, i32* %11, align 4
  %232 = load i32, i32* @KAUTH_UID_NONE, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %225
  store i32 99, i32* %11, align 4
  br label %235

235:                                              ; preds = %234, %225
  br label %252

236:                                              ; preds = %216
  %237 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %238 = load i32, i32* @va_uid, align 4
  %239 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %237, i32 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %236
  %242 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %243 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  store i32 %244, i32* %11, align 4
  br label %251

245:                                              ; preds = %236
  %246 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %246, i32 0, i32 1
  %248 = load %struct.TYPE_20__*, %struct.TYPE_20__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  store i32 %250, i32* %11, align 4
  br label %251

251:                                              ; preds = %245, %241
  br label %252

252:                                              ; preds = %251, %235
  br label %253

253:                                              ; preds = %252, %212
  %254 = load i32, i32* %11, align 4
  %255 = icmp eq i32 %254, 99
  br i1 %255, label %256, label %264

256:                                              ; preds = %253
  %257 = load i32, i32* %7, align 4
  %258 = call i64 @vfs_context_issuser(i32 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %264, label %260

260:                                              ; preds = %256
  %261 = load i32, i32* %7, align 4
  %262 = call i32 @vfs_context_ucred(i32 %261)
  %263 = call i32 @kauth_cred_getuid(i32 %262)
  store i32 %263, i32* %11, align 4
  br label %264

264:                                              ; preds = %260, %256, %253
  %265 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %266 = load i32, i32* @va_uid, align 4
  %267 = load i32, i32* %11, align 4
  %268 = call i32 @VATTR_RETURN(%struct.vnode_attr* %265, i32 %266, i32 %267)
  br label %269

269:                                              ; preds = %264, %198
  %270 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %271 = load i32, i32* @va_gid, align 4
  %272 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %270, i32 %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %340

274:                                              ; preds = %269
  %275 = load i32, i32* %7, align 4
  %276 = call i64 @vfs_context_issuser(i32 %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %287

278:                                              ; preds = %274
  %279 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %280 = load i32, i32* @va_gid, align 4
  %281 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %279, i32 %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %287

283:                                              ; preds = %278
  %284 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %285 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 8
  store i32 %286, i32* %12, align 4
  br label %324

287:                                              ; preds = %278, %274
  %288 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %288, i32 0, i32 1
  %290 = load %struct.TYPE_20__*, %struct.TYPE_20__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* @MNT_IGNORE_OWNERSHIP, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %307

296:                                              ; preds = %287
  %297 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %297, i32 0, i32 1
  %299 = load %struct.TYPE_20__*, %struct.TYPE_20__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 8
  store i32 %301, i32* %12, align 4
  %302 = load i32, i32* %12, align 4
  %303 = load i32, i32* @KAUTH_GID_NONE, align 4
  %304 = icmp eq i32 %302, %303
  br i1 %304, label %305, label %306

305:                                              ; preds = %296
  store i32 99, i32* %12, align 4
  br label %306

306:                                              ; preds = %305, %296
  br label %323

307:                                              ; preds = %287
  %308 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %309 = load i32, i32* @va_gid, align 4
  %310 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %308, i32 %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %316

312:                                              ; preds = %307
  %313 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %314 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 8
  store i32 %315, i32* %12, align 4
  br label %322

316:                                              ; preds = %307
  %317 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %317, i32 0, i32 1
  %319 = load %struct.TYPE_20__*, %struct.TYPE_20__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 8
  store i32 %321, i32* %12, align 4
  br label %322

322:                                              ; preds = %316, %312
  br label %323

323:                                              ; preds = %322, %306
  br label %324

324:                                              ; preds = %323, %283
  %325 = load i32, i32* %12, align 4
  %326 = icmp eq i32 %325, 99
  br i1 %326, label %327, label %335

327:                                              ; preds = %324
  %328 = load i32, i32* %7, align 4
  %329 = call i64 @vfs_context_issuser(i32 %328)
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %335, label %331

331:                                              ; preds = %327
  %332 = load i32, i32* %7, align 4
  %333 = call i32 @vfs_context_ucred(i32 %332)
  %334 = call i32 @kauth_cred_getgid(i32 %333)
  store i32 %334, i32* %12, align 4
  br label %335

335:                                              ; preds = %331, %327, %324
  %336 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %337 = load i32, i32* @va_gid, align 4
  %338 = load i32, i32* %12, align 4
  %339 = call i32 @VATTR_RETURN(%struct.vnode_attr* %336, i32 %337, i32 %338)
  br label %340

340:                                              ; preds = %335, %269
  %341 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %342 = load i32, i32* @va_iosize, align 4
  %343 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %341, i32 %342)
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %355, label %345

345:                                              ; preds = %340
  %346 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %347 = load i32, i32* @va_iosize, align 4
  %348 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %349 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %348, i32 0, i32 1
  %350 = load %struct.TYPE_20__*, %struct.TYPE_20__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %350, i32 0, i32 3
  %352 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = call i32 @VATTR_RETURN(%struct.vnode_attr* %346, i32 %347, i32 %353)
  br label %355

355:                                              ; preds = %345, %340
  %356 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %357 = load i32, i32* @va_flags, align 4
  %358 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %356, i32 %357)
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %364, label %360

360:                                              ; preds = %355
  %361 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %362 = load i32, i32* @va_flags, align 4
  %363 = call i32 @VATTR_RETURN(%struct.vnode_attr* %361, i32 %362, i32 0)
  br label %364

364:                                              ; preds = %360, %355
  %365 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %366 = load i32, i32* @va_filerev, align 4
  %367 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %365, i32 %366)
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %373, label %369

369:                                              ; preds = %364
  %370 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %371 = load i32, i32* @va_filerev, align 4
  %372 = call i32 @VATTR_RETURN(%struct.vnode_attr* %370, i32 %371, i32 0)
  br label %373

373:                                              ; preds = %369, %364
  %374 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %375 = load i32, i32* @va_gen, align 4
  %376 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %374, i32 %375)
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %382, label %378

378:                                              ; preds = %373
  %379 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %380 = load i32, i32* @va_gen, align 4
  %381 = call i32 @VATTR_RETURN(%struct.vnode_attr* %379, i32 %380, i32 0)
  br label %382

382:                                              ; preds = %378, %373
  %383 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %384 = load i32, i32* @va_data_size, align 4
  %385 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %383, i32 %384)
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %391, label %387

387:                                              ; preds = %382
  %388 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %389 = load i32, i32* @va_data_size, align 4
  %390 = call i32 @VATTR_RETURN(%struct.vnode_attr* %388, i32 %389, i32 0)
  br label %391

391:                                              ; preds = %387, %382
  %392 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %393 = load i32, i32* @va_data_alloc, align 4
  %394 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %392, i32 %393)
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %406, label %396

396:                                              ; preds = %391
  %397 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %398 = load i32, i32* @va_total_size, align 4
  %399 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %397, i32 %398)
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %406, label %401

401:                                              ; preds = %396
  %402 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %403 = load i32, i32* @va_total_alloc, align 4
  %404 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %402, i32 %403)
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %475

406:                                              ; preds = %401, %396, %391
  %407 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %408 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %407, i32 0, i32 1
  %409 = load %struct.TYPE_20__*, %struct.TYPE_20__** %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %409, i32 0, i32 3
  %411 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %410, i32 0, i32 1
  %412 = load i64, i64* %411, align 8
  %413 = icmp eq i64 %412, 0
  br i1 %413, label %414, label %424

414:                                              ; preds = %406
  %415 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %416 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %415, i32 0, i32 1
  %417 = load %struct.TYPE_20__*, %struct.TYPE_20__** %416, align 8
  %418 = load i32, i32* %7, align 4
  %419 = load i32, i32* @VFS_KERNEL_EVENT, align 4
  %420 = call i32 @vfs_update_vfsstat(%struct.TYPE_20__* %417, i32 %418, i32 %419)
  store i32 %420, i32* %10, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %423

422:                                              ; preds = %414
  br label %511

423:                                              ; preds = %414
  br label %424

424:                                              ; preds = %423, %406
  %425 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %426 = load i32, i32* @va_data_alloc, align 4
  %427 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %425, i32 %426)
  %428 = icmp ne i64 %427, 0
  br i1 %428, label %443, label %429

429:                                              ; preds = %424
  %430 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %431 = load i32, i32* @va_data_alloc, align 4
  %432 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %433 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %432, i32 0, i32 3
  %434 = load i32, i32* %433, align 4
  %435 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %436 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %435, i32 0, i32 1
  %437 = load %struct.TYPE_20__*, %struct.TYPE_20__** %436, align 8
  %438 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %437, i32 0, i32 3
  %439 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %438, i32 0, i32 1
  %440 = load i64, i64* %439, align 8
  %441 = call i32 @roundup(i32 %434, i64 %440)
  %442 = call i32 @VATTR_RETURN(%struct.vnode_attr* %430, i32 %431, i32 %441)
  br label %443

443:                                              ; preds = %429, %424
  %444 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %445 = load i32, i32* @va_total_size, align 4
  %446 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %444, i32 %445)
  %447 = icmp ne i64 %446, 0
  br i1 %447, label %455, label %448

448:                                              ; preds = %443
  %449 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %450 = load i32, i32* @va_total_size, align 4
  %451 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %452 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %451, i32 0, i32 3
  %453 = load i32, i32* %452, align 4
  %454 = call i32 @VATTR_RETURN(%struct.vnode_attr* %449, i32 %450, i32 %453)
  br label %455

455:                                              ; preds = %448, %443
  %456 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %457 = load i32, i32* @va_total_alloc, align 4
  %458 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %456, i32 %457)
  %459 = icmp ne i64 %458, 0
  br i1 %459, label %474, label %460

460:                                              ; preds = %455
  %461 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %462 = load i32, i32* @va_total_alloc, align 4
  %463 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %464 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %463, i32 0, i32 4
  %465 = load i32, i32* %464, align 8
  %466 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %467 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %466, i32 0, i32 1
  %468 = load %struct.TYPE_20__*, %struct.TYPE_20__** %467, align 8
  %469 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %468, i32 0, i32 3
  %470 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %469, i32 0, i32 1
  %471 = load i64, i64* %470, align 8
  %472 = call i32 @roundup(i32 %465, i64 %471)
  %473 = call i32 @VATTR_RETURN(%struct.vnode_attr* %461, i32 %462, i32 %472)
  br label %474

474:                                              ; preds = %460, %455
  br label %475

475:                                              ; preds = %474, %401
  %476 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %477 = load i32, i32* @va_change_time, align 4
  %478 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %476, i32 %477)
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %492, label %480

480:                                              ; preds = %475
  %481 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %482 = load i32, i32* @va_modify_time, align 4
  %483 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %481, i32 %482)
  %484 = icmp ne i64 %483, 0
  br i1 %484, label %485, label %492

485:                                              ; preds = %480
  %486 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %487 = load i32, i32* @va_change_time, align 4
  %488 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %489 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %488, i32 0, i32 5
  %490 = load i32, i32* %489, align 4
  %491 = call i32 @VATTR_RETURN(%struct.vnode_attr* %486, i32 %487, i32 %490)
  br label %492

492:                                              ; preds = %485, %480, %475
  %493 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %494 = load i32, i32* @va_type, align 4
  %495 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %496 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %495, i32 0, i32 0
  %497 = load i32, i32* %496, align 8
  %498 = call i32 @VATTR_RETURN(%struct.vnode_attr* %493, i32 %494, i32 %497)
  %499 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %500 = load i32, i32* @va_fsid, align 4
  %501 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %502 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %501, i32 0, i32 1
  %503 = load %struct.TYPE_20__*, %struct.TYPE_20__** %502, align 8
  %504 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %503, i32 0, i32 3
  %505 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %504, i32 0, i32 2
  %506 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %505, i32 0, i32 0
  %507 = load i32*, i32** %506, align 8
  %508 = getelementptr inbounds i32, i32* %507, i64 0
  %509 = load i32, i32* %508, align 4
  %510 = call i32 @VATTR_RETURN(%struct.vnode_attr* %499, i32 %500, i32 %509)
  br label %511

511:                                              ; preds = %492, %422, %152, %99, %72
  %512 = load i32, i32* %10, align 4
  store i32 %512, i32* %4, align 4
  br label %513

513:                                              ; preds = %511, %20
  %514 = load i32, i32* %4, align 4
  ret i32 %514
}

declare dso_local i32 @vfs_extendedsecurity(i32) #1

declare dso_local i32 @vnode_mount(%struct.TYPE_18__*) #1

declare dso_local i32 @VATTR_CLEAR_ACTIVE(%struct.vnode_attr*, i32) #1

declare dso_local i64 @VATTR_IS_ACTIVE(%struct.vnode_attr*, i32) #1

declare dso_local i32 @VATTR_SET_ACTIVE(%struct.vnode_attr*, i32) #1

declare dso_local i32 @VNOP_GETATTR(%struct.TYPE_18__*, %struct.vnode_attr*, i32) #1

declare dso_local i32 @KAUTH_DEBUG(i8*, i32) #1

declare dso_local i64 @VATTR_NOT_RETURNED(%struct.vnode_attr*, i32) #1

declare dso_local i64 @XATTR_VNODE_SUPPORTED(%struct.TYPE_18__*) #1

declare dso_local i32 @vnode_get_filesec(%struct.TYPE_18__*, %struct.TYPE_19__**, i32) #1

declare dso_local i32 @VATTR_RETURN(%struct.vnode_attr*, i32, i32) #1

declare dso_local i32* @kauth_acl_alloc(i64) #1

declare dso_local i32 @kauth_filesec_free(%struct.TYPE_19__*) #1

declare dso_local i32 @bcopy(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @KAUTH_ACL_COPYSIZE(%struct.TYPE_15__*) #1

declare dso_local i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr*, i32) #1

declare dso_local i32 @kauth_acl_free(i32*) #1

declare dso_local i32 @VATTR_CLEAR_SUPPORTED(%struct.vnode_attr*, i32) #1

declare dso_local i64 @vfs_context_issuser(i32) #1

declare dso_local i32 @kauth_cred_getuid(i32) #1

declare dso_local i32 @vfs_context_ucred(i32) #1

declare dso_local i32 @kauth_cred_getgid(i32) #1

declare dso_local i32 @vfs_update_vfsstat(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @roundup(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
