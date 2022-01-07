; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_vnop_access.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_vnop_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_access_args = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i64*, i32*, i32 }
%struct.nfsmount = type { i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_10__*, i32*, i32, i32)* }
%struct.timeval = type { i64 }

@ENXIO = common dso_local global i32 0, align 4
@NFS_VER2 = common dso_local global i32 0, align 4
@KAUTH_VNODE_WRITE_RIGHTS = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@KAUTH_VNODE_LIST_DIRECTORY = common dso_local global i32 0, align 4
@KAUTH_VNODE_READ_EXTATTRIBUTES = common dso_local global i32 0, align 4
@NFS_ACCESS_READ = common dso_local global i32 0, align 4
@KAUTH_VNODE_SEARCH = common dso_local global i32 0, align 4
@NFS_ACCESS_LOOKUP = common dso_local global i32 0, align 4
@KAUTH_VNODE_ADD_FILE = common dso_local global i32 0, align 4
@KAUTH_VNODE_ADD_SUBDIRECTORY = common dso_local global i32 0, align 4
@NFS_ACCESS_MODIFY = common dso_local global i32 0, align 4
@NFS_ACCESS_EXTEND = common dso_local global i32 0, align 4
@KAUTH_VNODE_DELETE_CHILD = common dso_local global i32 0, align 4
@KAUTH_VNODE_READ_DATA = common dso_local global i32 0, align 4
@KAUTH_VNODE_WRITE_DATA = common dso_local global i32 0, align 4
@KAUTH_VNODE_APPEND_DATA = common dso_local global i32 0, align 4
@KAUTH_VNODE_EXECUTE = common dso_local global i32 0, align 4
@NFS_ACCESS_EXECUTE = common dso_local global i32 0, align 4
@KAUTH_VNODE_DELETE = common dso_local global i32 0, align 4
@NFS_ACCESS_DELETE = common dso_local global i32 0, align 4
@KAUTH_VNODE_WRITE_ATTRIBUTES = common dso_local global i32 0, align 4
@KAUTH_VNODE_WRITE_EXTATTRIBUTES = common dso_local global i32 0, align 4
@KAUTH_VNODE_WRITE_SECURITY = common dso_local global i32 0, align 4
@KAUTH_VNODE_CHANGE_OWNER = common dso_local global i32 0, align 4
@nfs_access_cache_timeout = common dso_local global i64 0, align 8
@R_SOFT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_vnop_access(%struct.vnop_access_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_access_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.nfsmount*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.timeval, align 8
  %16 = alloca i32, align 4
  store %struct.vnop_access_args* %0, %struct.vnop_access_args** %3, align 8
  %17 = load %struct.vnop_access_args*, %struct.vnop_access_args** %3, align 8
  %18 = getelementptr inbounds %struct.vnop_access_args, %struct.vnop_access_args* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %4, align 4
  %20 = load %struct.vnop_access_args*, %struct.vnop_access_args** %3, align 8
  %21 = getelementptr inbounds %struct.vnop_access_args, %struct.vnop_access_args* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.TYPE_10__* @VTONFS(i32 %23)
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %12, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call %struct.nfsmount* @VTONMP(i32 %25)
  store %struct.nfsmount* %26, %struct.nfsmount** %13, align 8
  %27 = load %struct.nfsmount*, %struct.nfsmount** %13, align 8
  %28 = call i64 @nfs_mount_gone(%struct.nfsmount* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %2, align 4
  br label %344

32:                                               ; preds = %1
  %33 = load %struct.nfsmount*, %struct.nfsmount** %13, align 8
  %34 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* @NFS_VER2, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %32
  %40 = load %struct.vnop_access_args*, %struct.vnop_access_args** %3, align 8
  %41 = getelementptr inbounds %struct.vnop_access_args, %struct.vnop_access_args* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @KAUTH_VNODE_WRITE_RIGHTS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @vnode_mount(i32 %47)
  %49 = call i64 @vfs_isrdonly(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @EROFS, align 4
  store i32 %52, i32* %2, align 4
  br label %344

53:                                               ; preds = %46, %39
  store i32 0, i32* %2, align 4
  br label %344

54:                                               ; preds = %32
  store i32 0, i32* %10, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i64 @vnode_isdir(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %109

58:                                               ; preds = %54
  %59 = load %struct.vnop_access_args*, %struct.vnop_access_args** %3, align 8
  %60 = getelementptr inbounds %struct.vnop_access_args, %struct.vnop_access_args* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @KAUTH_VNODE_LIST_DIRECTORY, align 4
  %63 = load i32, i32* @KAUTH_VNODE_READ_EXTATTRIBUTES, align 4
  %64 = or i32 %62, %63
  %65 = and i32 %61, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = load i32, i32* @NFS_ACCESS_READ, align 4
  %69 = load i32, i32* %10, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %67, %58
  %72 = load %struct.vnop_access_args*, %struct.vnop_access_args** %3, align 8
  %73 = getelementptr inbounds %struct.vnop_access_args, %struct.vnop_access_args* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @KAUTH_VNODE_SEARCH, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load i32, i32* @NFS_ACCESS_LOOKUP, align 4
  %80 = load i32, i32* %10, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %78, %71
  %83 = load %struct.vnop_access_args*, %struct.vnop_access_args** %3, align 8
  %84 = getelementptr inbounds %struct.vnop_access_args, %struct.vnop_access_args* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @KAUTH_VNODE_ADD_FILE, align 4
  %87 = load i32, i32* @KAUTH_VNODE_ADD_SUBDIRECTORY, align 4
  %88 = or i32 %86, %87
  %89 = and i32 %85, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %82
  %92 = load i32, i32* @NFS_ACCESS_MODIFY, align 4
  %93 = load i32, i32* @NFS_ACCESS_EXTEND, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* %10, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %91, %82
  %98 = load %struct.vnop_access_args*, %struct.vnop_access_args** %3, align 8
  %99 = getelementptr inbounds %struct.vnop_access_args, %struct.vnop_access_args* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @KAUTH_VNODE_DELETE_CHILD, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %97
  %105 = load i32, i32* @NFS_ACCESS_MODIFY, align 4
  %106 = load i32, i32* %10, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %104, %97
  br label %158

109:                                              ; preds = %54
  %110 = load %struct.vnop_access_args*, %struct.vnop_access_args** %3, align 8
  %111 = getelementptr inbounds %struct.vnop_access_args, %struct.vnop_access_args* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @KAUTH_VNODE_READ_DATA, align 4
  %114 = load i32, i32* @KAUTH_VNODE_READ_EXTATTRIBUTES, align 4
  %115 = or i32 %113, %114
  %116 = and i32 %112, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %109
  %119 = load i32, i32* @NFS_ACCESS_READ, align 4
  %120 = load i32, i32* %10, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %118, %109
  %123 = load %struct.vnop_access_args*, %struct.vnop_access_args** %3, align 8
  %124 = getelementptr inbounds %struct.vnop_access_args, %struct.vnop_access_args* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @KAUTH_VNODE_WRITE_DATA, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %122
  %130 = load i32, i32* @NFS_ACCESS_MODIFY, align 4
  %131 = load i32, i32* @NFS_ACCESS_EXTEND, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* %10, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %10, align 4
  br label %135

135:                                              ; preds = %129, %122
  %136 = load %struct.vnop_access_args*, %struct.vnop_access_args** %3, align 8
  %137 = getelementptr inbounds %struct.vnop_access_args, %struct.vnop_access_args* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @KAUTH_VNODE_APPEND_DATA, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %135
  %143 = load i32, i32* @NFS_ACCESS_EXTEND, align 4
  %144 = load i32, i32* %10, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %10, align 4
  br label %146

146:                                              ; preds = %142, %135
  %147 = load %struct.vnop_access_args*, %struct.vnop_access_args** %3, align 8
  %148 = getelementptr inbounds %struct.vnop_access_args, %struct.vnop_access_args* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @KAUTH_VNODE_EXECUTE, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %146
  %154 = load i32, i32* @NFS_ACCESS_EXECUTE, align 4
  %155 = load i32, i32* %10, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %10, align 4
  br label %157

157:                                              ; preds = %153, %146
  br label %158

158:                                              ; preds = %157, %108
  %159 = load %struct.vnop_access_args*, %struct.vnop_access_args** %3, align 8
  %160 = getelementptr inbounds %struct.vnop_access_args, %struct.vnop_access_args* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @KAUTH_VNODE_DELETE, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %158
  %166 = load i32, i32* @NFS_ACCESS_DELETE, align 4
  %167 = load i32, i32* %10, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %10, align 4
  br label %169

169:                                              ; preds = %165, %158
  %170 = load %struct.vnop_access_args*, %struct.vnop_access_args** %3, align 8
  %171 = getelementptr inbounds %struct.vnop_access_args, %struct.vnop_access_args* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @KAUTH_VNODE_WRITE_ATTRIBUTES, align 4
  %174 = load i32, i32* @KAUTH_VNODE_WRITE_EXTATTRIBUTES, align 4
  %175 = or i32 %173, %174
  %176 = load i32, i32* @KAUTH_VNODE_WRITE_SECURITY, align 4
  %177 = or i32 %175, %176
  %178 = and i32 %172, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %169
  %181 = load i32, i32* @NFS_ACCESS_MODIFY, align 4
  %182 = load i32, i32* %10, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %10, align 4
  br label %184

184:                                              ; preds = %180, %169
  %185 = load %struct.vnop_access_args*, %struct.vnop_access_args** %3, align 8
  %186 = getelementptr inbounds %struct.vnop_access_args, %struct.vnop_access_args* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @KAUTH_VNODE_CHANGE_OWNER, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %184
  %192 = load i32, i32* @NFS_ACCESS_MODIFY, align 4
  %193 = load i32, i32* %10, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %10, align 4
  br label %195

195:                                              ; preds = %191, %184
  %196 = load i64, i64* @nfs_access_cache_timeout, align 8
  %197 = icmp sgt i64 %196, 0
  br i1 %197, label %198, label %210

198:                                              ; preds = %195
  %199 = load i32, i32* @NFS_ACCESS_READ, align 4
  %200 = load i32, i32* @NFS_ACCESS_MODIFY, align 4
  %201 = or i32 %199, %200
  %202 = load i32, i32* @NFS_ACCESS_EXTEND, align 4
  %203 = or i32 %201, %202
  %204 = load i32, i32* @NFS_ACCESS_EXECUTE, align 4
  %205 = or i32 %203, %204
  %206 = load i32, i32* @NFS_ACCESS_DELETE, align 4
  %207 = or i32 %205, %206
  %208 = load i32, i32* @NFS_ACCESS_LOOKUP, align 4
  %209 = or i32 %207, %208
  store i32 %209, i32* %11, align 4
  br label %212

210:                                              ; preds = %195
  %211 = load i32, i32* %10, align 4
  store i32 %211, i32* %11, align 4
  br label %212

212:                                              ; preds = %210, %198
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %214 = call i32 @nfs_node_lock(%struct.TYPE_10__* %213)
  store i32 %214, i32* %6, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %212
  %217 = load i32, i32* %6, align 4
  store i32 %217, i32* %2, align 4
  br label %344

218:                                              ; preds = %212
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = call i64 @auth_is_kerberized(i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %230, label %224

224:                                              ; preds = %218
  %225 = load %struct.nfsmount*, %struct.nfsmount** %13, align 8
  %226 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = call i64 @auth_is_kerberized(i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %224, %218
  %231 = load i32, i32* %4, align 4
  %232 = call i32 @vfs_context_ucred(i32 %231)
  %233 = call i32 @nfs_cred_getasid2uid(i32 %232)
  store i32 %233, i32* %16, align 4
  br label %238

234:                                              ; preds = %224
  %235 = load i32, i32* %4, align 4
  %236 = call i32 @vfs_context_ucred(i32 %235)
  %237 = call i32 @kauth_cred_getuid(i32 %236)
  store i32 %237, i32* %16, align 4
  br label %238

238:                                              ; preds = %234, %230
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %240 = load i32, i32* %16, align 4
  %241 = call i32 @nfs_node_access_slot(%struct.TYPE_10__* %239, i32 %240, i32 0)
  store i32 %241, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %242 = load i32, i32* %10, align 4
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %238
  store i32 0, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %290

245:                                              ; preds = %238
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %247 = load i32, i32* %7, align 4
  %248 = call i64 @NACCESSVALID(%struct.TYPE_10__* %246, i32 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %289

250:                                              ; preds = %245
  %251 = call i32 @microuptime(%struct.timeval* %15)
  %252 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 0
  %256 = load i64*, i64** %255, align 8
  %257 = load i32, i32* %7, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i64, i64* %256, i64 %258
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* @nfs_access_cache_timeout, align 8
  %262 = add nsw i64 %260, %261
  %263 = icmp slt i64 %253, %262
  br i1 %263, label %264, label %276

264:                                              ; preds = %250
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 1
  %267 = load i32*, i32** %266, align 8
  %268 = load i32, i32* %7, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* %10, align 4
  %273 = and i32 %271, %272
  %274 = load i32, i32* %10, align 4
  %275 = icmp eq i32 %273, %274
  br i1 %275, label %280, label %276

276:                                              ; preds = %264, %250
  %277 = load %struct.nfsmount*, %struct.nfsmount** %13, align 8
  %278 = call i64 @nfs_use_cache(%struct.nfsmount* %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %288

280:                                              ; preds = %276, %264
  store i32 0, i32* %8, align 4
  %281 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 1
  %283 = load i32*, i32** %282, align 8
  %284 = load i32, i32* %7, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  %287 = load i32, i32* %286, align 4
  store i32 %287, i32* %11, align 4
  br label %288

288:                                              ; preds = %280, %276
  br label %289

289:                                              ; preds = %288, %245
  br label %290

290:                                              ; preds = %289, %244
  %291 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %292 = call i32 @nfs_node_unlock(%struct.TYPE_10__* %291)
  %293 = load i32, i32* %8, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %331

295:                                              ; preds = %290
  %296 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %297 = load i32, i32* %7, align 4
  %298 = call i64 @NACCESSVALID(%struct.TYPE_10__* %296, i32 %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %304

300:                                              ; preds = %295
  %301 = load i32, i32* @R_SOFT, align 4
  %302 = load i32, i32* %9, align 4
  %303 = or i32 %302, %301
  store i32 %303, i32* %9, align 4
  br label %304

304:                                              ; preds = %300, %295
  %305 = load %struct.nfsmount*, %struct.nfsmount** %13, align 8
  %306 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %305, i32 0, i32 1
  %307 = load %struct.TYPE_9__*, %struct.TYPE_9__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i32 0, i32 0
  %309 = load i32 (%struct.TYPE_10__*, i32*, i32, i32)*, i32 (%struct.TYPE_10__*, i32*, i32, i32)** %308, align 8
  %310 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %311 = load i32, i32* %9, align 4
  %312 = load i32, i32* %4, align 4
  %313 = call i32 %309(%struct.TYPE_10__* %310, i32* %11, i32 %311, i32 %312)
  store i32 %313, i32* %6, align 4
  %314 = load i32, i32* %6, align 4
  %315 = load i32, i32* @ETIMEDOUT, align 4
  %316 = icmp eq i32 %314, %315
  br i1 %316, label %317, label %330

317:                                              ; preds = %304
  %318 = load i32, i32* %9, align 4
  %319 = load i32, i32* @R_SOFT, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %330

322:                                              ; preds = %317
  store i32 0, i32* %6, align 4
  %323 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %324 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %323, i32 0, i32 1
  %325 = load i32*, i32** %324, align 8
  %326 = load i32, i32* %7, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %325, i64 %327
  %329 = load i32, i32* %328, align 4
  store i32 %329, i32* %11, align 4
  br label %330

330:                                              ; preds = %322, %317, %304
  br label %331

331:                                              ; preds = %330, %290
  %332 = load i32, i32* %6, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %342, label %334

334:                                              ; preds = %331
  %335 = load i32, i32* %11, align 4
  %336 = load i32, i32* %10, align 4
  %337 = and i32 %335, %336
  %338 = load i32, i32* %10, align 4
  %339 = icmp ne i32 %337, %338
  br i1 %339, label %340, label %342

340:                                              ; preds = %334
  %341 = load i32, i32* @EACCES, align 4
  store i32 %341, i32* %6, align 4
  br label %342

342:                                              ; preds = %340, %334, %331
  %343 = load i32, i32* %6, align 4
  store i32 %343, i32* %2, align 4
  br label %344

344:                                              ; preds = %342, %216, %53, %51, %30
  %345 = load i32, i32* %2, align 4
  ret i32 %345
}

declare dso_local %struct.TYPE_10__* @VTONFS(i32) #1

declare dso_local %struct.nfsmount* @VTONMP(i32) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i64 @vfs_isrdonly(i32) #1

declare dso_local i32 @vnode_mount(i32) #1

declare dso_local i64 @vnode_isdir(i32) #1

declare dso_local i32 @nfs_node_lock(%struct.TYPE_10__*) #1

declare dso_local i64 @auth_is_kerberized(i32) #1

declare dso_local i32 @nfs_cred_getasid2uid(i32) #1

declare dso_local i32 @vfs_context_ucred(i32) #1

declare dso_local i32 @kauth_cred_getuid(i32) #1

declare dso_local i32 @nfs_node_access_slot(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i64 @NACCESSVALID(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @microuptime(%struct.timeval*) #1

declare dso_local i64 @nfs_use_cache(%struct.nfsmount*) #1

declare dso_local i32 @nfs_node_unlock(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
