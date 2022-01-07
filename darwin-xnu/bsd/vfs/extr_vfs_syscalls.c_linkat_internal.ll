; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_linkat_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_linkat_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }
%struct.nameidata = type { %struct.TYPE_23__, %struct.TYPE_25__*, %struct.TYPE_25__*, i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.vnode_attr = type { i64 }

@NULLVP = common dso_local global %struct.TYPE_25__* null, align 8
@AT_SYMLINK_FOLLOW = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@NOFOLLOW = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@OP_LOOKUP = common dso_local global i32 0, align 4
@AUDITVNPATH1 = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@MNTK_DIR_HARDLINKS = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@va_uid = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@CREATE = common dso_local global i32 0, align 4
@LOCKPARENT = common dso_local global i32 0, align 4
@AUDITVNPATH2 = common dso_local global i32 0, align 4
@CN_NBMOUNTLOOK = common dso_local global i32 0, align 4
@KAUTH_VNODE_LINKTARGET = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@KAUTH_VNODE_ADD_FILE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@KAUTH_FILEOP_LINK = common dso_local global i32 0, align 4
@FSE_ARG_DONE = common dso_local global i32 0, align 4
@FSE_ARG_FINFO = common dso_local global i32 0, align 4
@FSE_ARG_STRING = common dso_local global i32 0, align 4
@FSE_ARG_VNODE = common dso_local global i32 0, align 4
@FSE_CREATE_FILE = common dso_local global i32 0, align 4
@FSE_STAT_CHANGED = common dso_local global i32 0, align 4
@FSE_TRUNCATED_PATH = common dso_local global i32 0, align 4
@OP_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32, i32)* @linkat_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linkat_internal(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_25__*, align 8
  %17 = alloca %struct.TYPE_25__*, align 8
  %18 = alloca %struct.TYPE_25__*, align 8
  %19 = alloca %struct.nameidata, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.vnode_attr, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i8* null, i8** %24, align 8
  store i32 0, i32* %25, align 4
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** @NULLVP, align 8
  store %struct.TYPE_25__* %30, %struct.TYPE_25__** %18, align 8
  store %struct.TYPE_25__* %30, %struct.TYPE_25__** %17, align 8
  store %struct.TYPE_25__* %30, %struct.TYPE_25__** %16, align 8
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* @AT_SYMLINK_FOLLOW, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %7
  %36 = load i32, i32* @FOLLOW, align 4
  br label %39

37:                                               ; preds = %7
  %38 = load i32, i32* @NOFOLLOW, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  store i32 %40, i32* %20, align 4
  %41 = load i32, i32* @LOOKUP, align 4
  %42 = load i32, i32* @OP_LOOKUP, align 4
  %43 = load i32, i32* @AUDITVNPATH1, align 4
  %44 = load i32, i32* %20, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @NDINIT(%struct.nameidata* %19, i32 %41, i32 %42, i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @nameiat(%struct.nameidata* %19, i32 %50)
  store i32 %51, i32* %21, align 4
  %52 = load i32, i32* %21, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %39
  %55 = load i32, i32* %21, align 4
  store i32 %55, i32* %8, align 4
  br label %242

56:                                               ; preds = %39
  %57 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %19, i32 0, i32 1
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %57, align 8
  store %struct.TYPE_25__* %58, %struct.TYPE_25__** %16, align 8
  %59 = call i32 @nameidone(%struct.nameidata* %19)
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @VDIR, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %104

65:                                               ; preds = %56
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @MNTK_DIR_HARDLINKS, align 4
  %72 = call i32 @ISSET(i32 %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %65
  %75 = load i32, i32* @EPERM, align 4
  store i32 %75, i32* %21, align 4
  br label %226

76:                                               ; preds = %65
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @vfs_context_ucred(i32 %77)
  %79 = call i32 @kauth_cred_issuser(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %103, label %81

81:                                               ; preds = %76
  %82 = call i32 @VATTR_INIT(%struct.vnode_attr* %26)
  %83 = load i32, i32* @va_uid, align 4
  %84 = call i32 @VATTR_WANTED(%struct.vnode_attr* %26, i32 %83)
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i64 @vnode_getattr(%struct.TYPE_25__* %85, %struct.vnode_attr* %26, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %100, label %89

89:                                               ; preds = %81
  %90 = load i32, i32* @va_uid, align 4
  %91 = call i32 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %26, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %26, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @vfs_context_ucred(i32 %96)
  %98 = call i64 @kauth_cred_getuid(i32 %97)
  %99 = icmp ne i64 %95, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %93, %89, %81
  %101 = load i32, i32* @EACCES, align 4
  store i32 %101, i32* %21, align 4
  br label %226

102:                                              ; preds = %93
  br label %103

103:                                              ; preds = %102, %76
  br label %104

104:                                              ; preds = %103, %56
  %105 = load i32, i32* @CREATE, align 4
  %106 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %19, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* @LOCKPARENT, align 4
  %109 = load i32, i32* @AUDITVNPATH2, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @CN_NBMOUNTLOOK, align 4
  %112 = or i32 %110, %111
  %113 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %19, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* %13, align 4
  %116 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %19, i32 0, i32 3
  store i32 %115, i32* %116, align 8
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @nameiat(%struct.nameidata* %19, i32 %117)
  store i32 %118, i32* %21, align 4
  %119 = load i32, i32* %21, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %104
  br label %226

122:                                              ; preds = %104
  %123 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %19, i32 0, i32 2
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %123, align 8
  store %struct.TYPE_25__* %124, %struct.TYPE_25__** %17, align 8
  %125 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %19, i32 0, i32 1
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %125, align 8
  store %struct.TYPE_25__* %126, %struct.TYPE_25__** %18, align 8
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %128 = load i32, i32* @KAUTH_VNODE_LINKTARGET, align 4
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @vnode_authorize(%struct.TYPE_25__* %127, i32* null, i32 %128, i32 %129)
  store i32 %130, i32* %21, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %122
  br label %218

133:                                              ; preds = %122
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** @NULLVP, align 8
  %136 = icmp ne %struct.TYPE_25__* %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = load i32, i32* @EEXIST, align 4
  store i32 %138, i32* %21, align 4
  br label %218

139:                                              ; preds = %133
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %141 = call i64 @vnode_mount(%struct.TYPE_25__* %140)
  %142 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %143 = call i64 @vnode_mount(%struct.TYPE_25__* %142)
  %144 = icmp ne i64 %141, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %139
  %146 = load i32, i32* @EXDEV, align 4
  store i32 %146, i32* %21, align 4
  br label %218

147:                                              ; preds = %139
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %149 = load i32, i32* @KAUTH_VNODE_ADD_FILE, align 4
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @vnode_authorize(%struct.TYPE_25__* %148, i32* null, i32 %149, i32 %150)
  store i32 %151, i32* %21, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %147
  br label %218

154:                                              ; preds = %147
  %155 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %157 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %19, i32 0, i32 0
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @VNOP_LINK(%struct.TYPE_25__* %155, %struct.TYPE_25__* %156, %struct.TYPE_23__* %157, i32 %158)
  store i32 %159, i32* %21, align 4
  %160 = load i32, i32* %21, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %154
  br label %218

163:                                              ; preds = %154
  store i32 0, i32* %22, align 4
  %164 = call i32 (...) @kauth_authorize_fileop_has_listeners()
  store i32 %164, i32* %23, align 4
  %165 = load i32, i32* %22, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %163
  %168 = load i32, i32* %23, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %217

170:                                              ; preds = %167, %163
  store i8* null, i8** %27, align 8
  %171 = load i8*, i8** %24, align 8
  %172 = call i32 @GET_PATH(i8* %171)
  %173 = load i8*, i8** %24, align 8
  %174 = icmp eq i8* %173, null
  br i1 %174, label %175, label %177

175:                                              ; preds = %170
  %176 = load i32, i32* @ENOMEM, align 4
  store i32 %176, i32* %21, align 4
  br label %218

177:                                              ; preds = %170
  %178 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %179 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %19, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load i8*, i8** %24, align 8
  %183 = load i32, i32* @MAXPATHLEN, align 4
  %184 = call i32 @safe_getpath(%struct.TYPE_25__* %178, i32 %181, i8* %182, i32 %183, i32* %25)
  store i32 %184, i32* %28, align 4
  %185 = load i32, i32* %23, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %216

187:                                              ; preds = %177
  %188 = load i8*, i8** %27, align 8
  %189 = call i32 @GET_PATH(i8* %188)
  %190 = load i8*, i8** %27, align 8
  %191 = icmp eq i8* %190, null
  br i1 %191, label %192, label %194

192:                                              ; preds = %187
  %193 = load i32, i32* @ENOMEM, align 4
  store i32 %193, i32* %21, align 4
  br label %218

194:                                              ; preds = %187
  %195 = load i32, i32* @MAXPATHLEN, align 4
  store i32 %195, i32* %29, align 4
  %196 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %197 = load i8*, i8** %27, align 8
  %198 = call i64 @vn_getpath(%struct.TYPE_25__* %196, i8* %197, i32* %29)
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %209

200:                                              ; preds = %194
  %201 = load i32, i32* %9, align 4
  %202 = call i32 @vfs_context_ucred(i32 %201)
  %203 = load i32, i32* @KAUTH_FILEOP_LINK, align 4
  %204 = load i8*, i8** %27, align 8
  %205 = ptrtoint i8* %204 to i64
  %206 = load i8*, i8** %24, align 8
  %207 = ptrtoint i8* %206 to i64
  %208 = call i32 @kauth_authorize_fileop(i32 %202, i32 %203, i64 %205, i64 %207)
  br label %209

209:                                              ; preds = %200, %194
  %210 = load i8*, i8** %27, align 8
  %211 = icmp ne i8* %210, null
  br i1 %211, label %212, label %215

212:                                              ; preds = %209
  %213 = load i8*, i8** %27, align 8
  %214 = call i32 @RELEASE_PATH(i8* %213)
  br label %215

215:                                              ; preds = %212, %209
  br label %216

216:                                              ; preds = %215, %177
  br label %217

217:                                              ; preds = %216, %167
  br label %218

218:                                              ; preds = %217, %192, %175, %162, %153, %145, %137, %132
  %219 = call i32 @nameidone(%struct.nameidata* %19)
  %220 = load i8*, i8** %24, align 8
  %221 = icmp ne i8* %220, null
  br i1 %221, label %222, label %225

222:                                              ; preds = %218
  %223 = load i8*, i8** %24, align 8
  %224 = call i32 @RELEASE_PATH(i8* %223)
  br label %225

225:                                              ; preds = %222, %218
  br label %226

226:                                              ; preds = %225, %121, %100, %74
  %227 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %228 = icmp ne %struct.TYPE_25__* %227, null
  br i1 %228, label %229, label %232

229:                                              ; preds = %226
  %230 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %231 = call i32 @vnode_put(%struct.TYPE_25__* %230)
  br label %232

232:                                              ; preds = %229, %226
  %233 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %234 = icmp ne %struct.TYPE_25__* %233, null
  br i1 %234, label %235, label %238

235:                                              ; preds = %232
  %236 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %237 = call i32 @vnode_put(%struct.TYPE_25__* %236)
  br label %238

238:                                              ; preds = %235, %232
  %239 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %240 = call i32 @vnode_put(%struct.TYPE_25__* %239)
  %241 = load i32, i32* %21, align 4
  store i32 %241, i32* %8, align 4
  br label %242

242:                                              ; preds = %238, %54
  %243 = load i32, i32* %8, align 4
  ret i32 %243
}

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nameiat(%struct.nameidata*, i32) #1

declare dso_local i32 @nameidone(%struct.nameidata*) #1

declare dso_local i32 @ISSET(i32, i32) #1

declare dso_local i32 @kauth_cred_issuser(i32) #1

declare dso_local i32 @vfs_context_ucred(i32) #1

declare dso_local i32 @VATTR_INIT(%struct.vnode_attr*) #1

declare dso_local i32 @VATTR_WANTED(%struct.vnode_attr*, i32) #1

declare dso_local i64 @vnode_getattr(%struct.TYPE_25__*, %struct.vnode_attr*, i32) #1

declare dso_local i32 @VATTR_IS_SUPPORTED(%struct.vnode_attr*, i32) #1

declare dso_local i64 @kauth_cred_getuid(i32) #1

declare dso_local i32 @vnode_authorize(%struct.TYPE_25__*, i32*, i32, i32) #1

declare dso_local i64 @vnode_mount(%struct.TYPE_25__*) #1

declare dso_local i32 @VNOP_LINK(%struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @kauth_authorize_fileop_has_listeners(...) #1

declare dso_local i32 @GET_PATH(i8*) #1

declare dso_local i32 @safe_getpath(%struct.TYPE_25__*, i32, i8*, i32, i32*) #1

declare dso_local i64 @vn_getpath(%struct.TYPE_25__*, i8*, i32*) #1

declare dso_local i32 @kauth_authorize_fileop(i32, i32, i64, i64) #1

declare dso_local i32 @RELEASE_PATH(i8*) #1

declare dso_local i32 @vnode_put(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
