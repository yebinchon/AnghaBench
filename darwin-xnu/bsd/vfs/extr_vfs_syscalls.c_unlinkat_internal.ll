; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_unlinkat_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_unlinkat_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i64 }
%struct.nameidata = type { i32, %struct.TYPE_25__*, %struct.componentname, %struct.TYPE_25__* }
%struct.componentname = type { i32, i32 }
%struct.vnode_attr = type { i32 }

@LOCKPARENT = common dso_local global i32 0, align 4
@VNODE_REMOVE_NO_AUDIT_PATH = common dso_local global i32 0, align 4
@AUDITVNPATH1 = common dso_local global i32 0, align 4
@USEDVP = common dso_local global i32 0, align 4
@DELETE = common dso_local global i32 0, align 4
@OP_UNLINK = common dso_local global i32 0, align 4
@NAMEI_COMPOUNDREMOVE = common dso_local global i32 0, align 4
@VNODE_REMOVE_NODELETEBUSY = common dso_local global i32 0, align 4
@VNODE_REMOVE_SKIP_NAMESPACE_EVENT = common dso_local global i32 0, align 4
@VROOT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@MAX_AUTHORIZE_ENOENT_RETRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"No vp, but no compound remove?\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@EKEEPLOOKING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"EKEEPLOOKING, but not a filesystem that supports compound VNOPs?\00", align 1
@NAMEI_CONTLOOKUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"EKEEPLOOKING, but continue flag not set?\00", align 1
@EISDIR = common dso_local global i32 0, align 4
@KAUTH_FILEOP_DELETE = common dso_local global i32 0, align 4
@VISHARDLINK = common dso_local global i32 0, align 4
@VNODE_UPDATE_PARENT = common dso_local global i32 0, align 4
@CN_ALLOWRSRCFORK = common dso_local global i32 0, align 4
@CN_WANTSRSRCFORK = common dso_local global i32 0, align 4
@FSE_ARG_DONE = common dso_local global i32 0, align 4
@FSE_ARG_FINFO = common dso_local global i32 0, align 4
@FSE_ARG_STRING = common dso_local global i32 0, align 4
@FSE_DELETE = common dso_local global i32 0, align 4
@FSE_TRUNCATED_PATH = common dso_local global i32 0, align 4
@NULLVP = common dso_local global i64 0, align 8
@XATTR_RESOURCEFORK_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_25__*, i32, i32, i32)* @unlinkat_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unlinkat_internal(i32 %0, i32 %1, %struct.TYPE_25__* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nameidata, align 8
  %15 = alloca %struct.TYPE_25__*, align 8
  %16 = alloca %struct.TYPE_25__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.componentname*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.vnode_attr*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8* null, i8** %19, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %28, align 4
  %30 = load i32, i32* @LOCKPARENT, align 4
  store i32 %30, i32* %29, align 4
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* @VNODE_REMOVE_NO_AUDIT_PATH, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %6
  %36 = load i32, i32* @AUDITVNPATH1, align 4
  %37 = load i32, i32* %29, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %29, align 4
  br label %39

39:                                               ; preds = %35, %6
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %41 = icmp ne %struct.TYPE_25__* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* @USEDVP, align 4
  %44 = load i32, i32* %29, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %29, align 4
  br label %46

46:                                               ; preds = %42, %39
  br label %47

47:                                               ; preds = %278, %46
  store i32 0, i32* %27, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store %struct.vnode_attr* null, %struct.vnode_attr** %26, align 8
  %48 = load i32, i32* @DELETE, align 4
  %49 = load i32, i32* @OP_UNLINK, align 4
  %50 = load i32, i32* %29, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @NDINIT(%struct.nameidata* %14, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %53)
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %56 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 3
  store %struct.TYPE_25__* %55, %struct.TYPE_25__** %56, align 8
  %57 = load i32, i32* @NAMEI_COMPOUNDREMOVE, align 4
  %58 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %57
  store i32 %60, i32* %58, align 8
  %61 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 2
  store %struct.componentname* %61, %struct.componentname** %18, align 8
  br label %62

62:                                               ; preds = %210, %47
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @nameiat(%struct.nameidata* %14, i32 %63)
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %17, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* %17, align 4
  store i32 %68, i32* %7, align 4
  br label %281

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 3
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %70, align 8
  store %struct.TYPE_25__* %71, %struct.TYPE_25__** %16, align 8
  %72 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 1
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %72, align 8
  store %struct.TYPE_25__* %73, %struct.TYPE_25__** %15, align 8
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @VNODE_REMOVE_NODELETEBUSY, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %69
  %79 = load i32, i32* @VNODE_REMOVE_NODELETEBUSY, align 4
  %80 = load i32, i32* %21, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %21, align 4
  br label %82

82:                                               ; preds = %78, %69
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* @VNODE_REMOVE_SKIP_NAMESPACE_EVENT, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load i32, i32* @VNODE_REMOVE_SKIP_NAMESPACE_EVENT, align 4
  %89 = load i32, i32* %21, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %21, align 4
  br label %91

91:                                               ; preds = %87, %82
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %93 = icmp ne %struct.TYPE_25__* %92, null
  br i1 %93, label %94, label %146

94:                                               ; preds = %91
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %96 = call i32 @vnode_compound_remove_available(%struct.TYPE_25__* %95)
  store i32 %96, i32* %25, align 4
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @VROOT, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = load i32, i32* @EBUSY, align 4
  store i32 %104, i32* %17, align 4
  br label %105

105:                                              ; preds = %103, %94
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %107 = call i64 @vnode_isswap(%struct.TYPE_25__* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %105
  %110 = load i32, i32* %8, align 4
  %111 = call i32 (...) @vfs_context_kernel()
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = load i32, i32* @EPERM, align 4
  store i32 %114, i32* %17, align 4
  br label %260

115:                                              ; preds = %109, %105
  %116 = load i32, i32* %25, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %145, label %118

118:                                              ; preds = %115
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %121 = load %struct.componentname*, %struct.componentname** %18, align 8
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @vn_authorize_unlink(%struct.TYPE_25__* %119, %struct.TYPE_25__* %120, %struct.componentname* %121, i32 %122, i32* null)
  store i32 %123, i32* %17, align 4
  %124 = load i32, i32* %17, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %144

126:                                              ; preds = %118
  %127 = load i32, i32* %17, align 4
  %128 = load i32, i32* @ENOENT, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %143

130:                                              ; preds = %126
  %131 = load i32, i32* %28, align 4
  %132 = load i32, i32* @MAX_AUTHORIZE_ENOENT_RETRIES, align 4
  %133 = icmp slt i32 %131, %132
  %134 = zext i1 %133 to i32
  %135 = call i32 @assert(i32 %134)
  %136 = load i32, i32* %28, align 4
  %137 = load i32, i32* @MAX_AUTHORIZE_ENOENT_RETRIES, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %130
  store i32 1, i32* %27, align 4
  %140 = load i32, i32* %28, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %28, align 4
  br label %142

142:                                              ; preds = %139, %130
  br label %143

143:                                              ; preds = %142, %126
  br label %260

144:                                              ; preds = %118
  br label %145

145:                                              ; preds = %144, %115
  br label %153

146:                                              ; preds = %91
  store i32 1, i32* %25, align 4
  %147 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %148 = call i32 @vnode_compound_remove_available(%struct.TYPE_25__* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %146
  %151 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %152

152:                                              ; preds = %150, %146
  br label %153

153:                                              ; preds = %152, %145
  %154 = call i32 (...) @kauth_authorize_fileop_has_listeners()
  store i32 %154, i32* %23, align 4
  %155 = load i32, i32* %22, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %153
  %158 = load i32, i32* %23, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %179

160:                                              ; preds = %157, %153
  %161 = load i8*, i8** %19, align 8
  %162 = icmp eq i8* %161, null
  br i1 %162, label %163, label %171

163:                                              ; preds = %160
  %164 = load i8*, i8** %19, align 8
  %165 = call i32 @GET_PATH(i8* %164)
  %166 = load i8*, i8** %19, align 8
  %167 = icmp eq i8* %166, null
  br i1 %167, label %168, label %170

168:                                              ; preds = %163
  %169 = load i32, i32* @ENOMEM, align 4
  store i32 %169, i32* %17, align 4
  br label %260

170:                                              ; preds = %163
  br label %171

171:                                              ; preds = %170, %160
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %173 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 2
  %174 = getelementptr inbounds %struct.componentname, %struct.componentname* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i8*, i8** %19, align 8
  %177 = load i32, i32* @MAXPATHLEN, align 4
  %178 = call i32 @safe_getpath(%struct.TYPE_25__* %172, i32 %175, i8* %176, i32 %177, i32* %24)
  store i32 %178, i32* %20, align 4
  br label %179

179:                                              ; preds = %171, %157
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %181 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 1
  %182 = load i32, i32* %21, align 4
  %183 = load %struct.vnode_attr*, %struct.vnode_attr** %26, align 8
  %184 = load i32, i32* %8, align 4
  %185 = call i32 @vn_remove(%struct.TYPE_25__* %180, %struct.TYPE_25__** %181, %struct.nameidata* %14, i32 %182, %struct.vnode_attr* %183, i32 %184)
  store i32 %185, i32* %17, align 4
  %186 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 1
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %186, align 8
  store %struct.TYPE_25__* %187, %struct.TYPE_25__** %15, align 8
  %188 = load i32, i32* %17, align 4
  %189 = load i32, i32* @EKEEPLOOKING, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %211

191:                                              ; preds = %179
  %192 = load i32, i32* %25, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %196, label %194

194:                                              ; preds = %191
  %195 = call i32 @panic(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  br label %196

196:                                              ; preds = %194, %191
  %197 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @NAMEI_CONTLOOKUP, align 4
  %200 = and i32 %198, %199
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %196
  %203 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %204

204:                                              ; preds = %202, %196
  %205 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %206 = call i64 @vnode_isdir(%struct.TYPE_25__* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %204
  %209 = load i32, i32* @EISDIR, align 4
  store i32 %209, i32* %17, align 4
  br label %260

210:                                              ; preds = %204
  br label %62

211:                                              ; preds = %179
  %212 = load i32, i32* %17, align 4
  %213 = load i32, i32* @ENOENT, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %231

215:                                              ; preds = %211
  %216 = load i32, i32* %25, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %231

218:                                              ; preds = %215
  %219 = load i32, i32* %28, align 4
  %220 = load i32, i32* @MAX_AUTHORIZE_ENOENT_RETRIES, align 4
  %221 = icmp slt i32 %219, %220
  %222 = zext i1 %221 to i32
  %223 = call i32 @assert(i32 %222)
  %224 = load i32, i32* %28, align 4
  %225 = load i32, i32* @MAX_AUTHORIZE_ENOENT_RETRIES, align 4
  %226 = icmp slt i32 %224, %225
  br i1 %226, label %227, label %230

227:                                              ; preds = %218
  store i32 1, i32* %27, align 4
  %228 = load i32, i32* %28, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %28, align 4
  br label %260

230:                                              ; preds = %218
  br label %231

231:                                              ; preds = %230, %215, %211
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %17, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %259, label %235

235:                                              ; preds = %232
  %236 = load i32, i32* %23, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %247

238:                                              ; preds = %235
  %239 = load i32, i32* %8, align 4
  %240 = call i32 @vfs_context_ucred(i32 %239)
  %241 = load i32, i32* @KAUTH_FILEOP_DELETE, align 4
  %242 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %243 = ptrtoint %struct.TYPE_25__* %242 to i64
  %244 = load i8*, i8** %19, align 8
  %245 = ptrtoint i8* %244 to i64
  %246 = call i32 @kauth_authorize_fileop(i32 %240, i32 %241, i64 %243, i64 %245)
  br label %247

247:                                              ; preds = %238, %235
  %248 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %249 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* @VISHARDLINK, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %258

254:                                              ; preds = %247
  %255 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %256 = load i32, i32* @VNODE_UPDATE_PARENT, align 4
  %257 = call i32 @vnode_update_identity(%struct.TYPE_25__* %255, i32* null, i32* null, i32 0, i32 0, i32 %256)
  br label %258

258:                                              ; preds = %254, %247
  br label %259

259:                                              ; preds = %258, %232
  br label %260

260:                                              ; preds = %259, %227, %208, %168, %143, %113
  %261 = load i8*, i8** %19, align 8
  %262 = icmp ne i8* %261, null
  br i1 %262, label %263, label %266

263:                                              ; preds = %260
  %264 = load i8*, i8** %19, align 8
  %265 = call i32 @RELEASE_PATH(i8* %264)
  br label %266

266:                                              ; preds = %263, %260
  %267 = call i32 @nameidone(%struct.nameidata* %14)
  %268 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %269 = call i32 @vnode_put(%struct.TYPE_25__* %268)
  %270 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %271 = icmp ne %struct.TYPE_25__* %270, null
  br i1 %271, label %272, label %275

272:                                              ; preds = %266
  %273 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %274 = call i32 @vnode_put(%struct.TYPE_25__* %273)
  br label %275

275:                                              ; preds = %272, %266
  %276 = load i32, i32* %27, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %275
  br label %47

279:                                              ; preds = %275
  %280 = load i32, i32* %17, align 4
  store i32 %280, i32* %7, align 4
  br label %281

281:                                              ; preds = %279, %67
  %282 = load i32, i32* %7, align 4
  ret i32 %282
}

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nameiat(%struct.nameidata*, i32) #1

declare dso_local i32 @vnode_compound_remove_available(%struct.TYPE_25__*) #1

declare dso_local i64 @vnode_isswap(%struct.TYPE_25__*) #1

declare dso_local i32 @vfs_context_kernel(...) #1

declare dso_local i32 @vn_authorize_unlink(%struct.TYPE_25__*, %struct.TYPE_25__*, %struct.componentname*, i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @kauth_authorize_fileop_has_listeners(...) #1

declare dso_local i32 @GET_PATH(i8*) #1

declare dso_local i32 @safe_getpath(%struct.TYPE_25__*, i32, i8*, i32, i32*) #1

declare dso_local i32 @vn_remove(%struct.TYPE_25__*, %struct.TYPE_25__**, %struct.nameidata*, i32, %struct.vnode_attr*, i32) #1

declare dso_local i64 @vnode_isdir(%struct.TYPE_25__*) #1

declare dso_local i32 @kauth_authorize_fileop(i32, i32, i64, i64) #1

declare dso_local i32 @vfs_context_ucred(i32) #1

declare dso_local i32 @vnode_update_identity(%struct.TYPE_25__*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @RELEASE_PATH(i8*) #1

declare dso_local i32 @nameidone(%struct.nameidata*) #1

declare dso_local i32 @vnode_put(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
