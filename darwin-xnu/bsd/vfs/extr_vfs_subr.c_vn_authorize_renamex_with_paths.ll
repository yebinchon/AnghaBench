; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vn_authorize_renamex_with_paths.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vn_authorize_renamex_with_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64, %struct.vnode* }
%struct.componentname = type { i32, i8*, i32, i32 }

@VFS_RENAME_SWAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Passed something other than NULL as reserved field!\00", align 1
@VDIR = common dso_local global i64 0, align 8
@ISDOTDOT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NULLVP = common dso_local global %struct.vnode* null, align 8
@ENOTDIR = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@KAUTH_VNODE_ADD_SUBDIRECTORY = common dso_local global i32 0, align 4
@KAUTH_FILEOP_WILL_RENAME = common dso_local global i32 0, align 4
@KAUTH_VNODE_DELETE = common dso_local global i32 0, align 4
@KAUTH_VNODE_ADD_FILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_authorize_renamex_with_paths(%struct.vnode* %0, %struct.vnode* %1, %struct.componentname* %2, i8* %3, %struct.vnode* %4, %struct.vnode* %5, %struct.componentname* %6, i8* %7, i32 %8, i32 %9, i8* %10) #0 {
  %12 = alloca %struct.vnode*, align 8
  %13 = alloca %struct.vnode*, align 8
  %14 = alloca %struct.componentname*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.vnode*, align 8
  %17 = alloca %struct.vnode*, align 8
  %18 = alloca %struct.componentname*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %12, align 8
  store %struct.vnode* %1, %struct.vnode** %13, align 8
  store %struct.componentname* %2, %struct.componentname** %14, align 8
  store i8* %3, i8** %15, align 8
  store %struct.vnode* %4, %struct.vnode** %16, align 8
  store %struct.vnode* %5, %struct.vnode** %17, align 8
  store %struct.componentname* %6, %struct.componentname** %18, align 8
  store i8* %7, i8** %19, align 8
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i8* %10, i8** %22, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %28 = load i32, i32* %21, align 4
  %29 = load i32, i32* @VFS_RENAME_SWAP, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %25, align 4
  %31 = load i8*, i8** %22, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %11
  %34 = call i32 @panic(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %11
  %36 = load %struct.vnode*, %struct.vnode** %13, align 8
  %37 = getelementptr inbounds %struct.vnode, %struct.vnode* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @VDIR, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %71

41:                                               ; preds = %35
  %42 = load %struct.vnode*, %struct.vnode** %12, align 8
  %43 = load %struct.vnode*, %struct.vnode** %13, align 8
  %44 = icmp eq %struct.vnode* %42, %43
  br i1 %44, label %69, label %45

45:                                               ; preds = %41
  %46 = load %struct.componentname*, %struct.componentname** %14, align 8
  %47 = getelementptr inbounds %struct.componentname, %struct.componentname* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.componentname*, %struct.componentname** %14, align 8
  %52 = getelementptr inbounds %struct.componentname, %struct.componentname* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 46
  br i1 %57, label %69, label %58

58:                                               ; preds = %50, %45
  %59 = load %struct.componentname*, %struct.componentname** %14, align 8
  %60 = getelementptr inbounds %struct.componentname, %struct.componentname* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.componentname*, %struct.componentname** %18, align 8
  %63 = getelementptr inbounds %struct.componentname, %struct.componentname* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %61, %64
  %66 = load i32, i32* @ISDOTDOT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %58, %50, %41
  %70 = load i32, i32* @EINVAL, align 4
  store i32 %70, i32* %23, align 4
  br label %387

71:                                               ; preds = %58, %35
  %72 = load %struct.vnode*, %struct.vnode** %17, align 8
  %73 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %74 = icmp eq %struct.vnode* %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %71
  %76 = load %struct.vnode*, %struct.vnode** %16, align 8
  %77 = call i64 @vnode_compound_rename_available(%struct.vnode* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %75
  %80 = load %struct.componentname*, %struct.componentname** %18, align 8
  %81 = getelementptr inbounds %struct.componentname, %struct.componentname* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @lookup_validate_creation_path(i32 %82)
  store i32 %83, i32* %23, align 4
  %84 = load i32, i32* %23, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %387

87:                                               ; preds = %79
  br label %88

88:                                               ; preds = %87, %75, %71
  %89 = load %struct.vnode*, %struct.vnode** %17, align 8
  %90 = icmp ne %struct.vnode* %89, null
  br i1 %90, label %91, label %125

91:                                               ; preds = %88
  %92 = load i32, i32* %25, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %124, label %94

94:                                               ; preds = %91
  %95 = load %struct.vnode*, %struct.vnode** %13, align 8
  %96 = getelementptr inbounds %struct.vnode, %struct.vnode* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @VDIR, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %94
  %101 = load %struct.vnode*, %struct.vnode** %17, align 8
  %102 = getelementptr inbounds %struct.vnode, %struct.vnode* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @VDIR, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = load i32, i32* @ENOTDIR, align 4
  store i32 %107, i32* %23, align 4
  br label %387

108:                                              ; preds = %100, %94
  %109 = load %struct.vnode*, %struct.vnode** %13, align 8
  %110 = getelementptr inbounds %struct.vnode, %struct.vnode* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @VDIR, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %108
  %115 = load %struct.vnode*, %struct.vnode** %17, align 8
  %116 = getelementptr inbounds %struct.vnode, %struct.vnode* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @VDIR, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = load i32, i32* @EISDIR, align 4
  store i32 %121, i32* %23, align 4
  br label %387

122:                                              ; preds = %114, %108
  br label %123

123:                                              ; preds = %122
  br label %124

124:                                              ; preds = %123, %91
  br label %131

125:                                              ; preds = %88
  %126 = load i32, i32* %25, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = load i32, i32* @EINVAL, align 4
  store i32 %129, i32* %23, align 4
  br label %387

130:                                              ; preds = %125
  br label %131

131:                                              ; preds = %130, %124
  %132 = load %struct.vnode*, %struct.vnode** %13, align 8
  %133 = load %struct.vnode*, %struct.vnode** %16, align 8
  %134 = icmp eq %struct.vnode* %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = load i32, i32* @EINVAL, align 4
  store i32 %136, i32* %23, align 4
  br label %387

137:                                              ; preds = %131
  %138 = load %struct.vnode*, %struct.vnode** %16, align 8
  %139 = getelementptr inbounds %struct.vnode, %struct.vnode* %138, i32 0, i32 1
  %140 = load %struct.vnode*, %struct.vnode** %139, align 8
  %141 = load %struct.vnode*, %struct.vnode** %13, align 8
  %142 = icmp eq %struct.vnode* %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %137
  %144 = load i32, i32* @EINVAL, align 4
  store i32 %144, i32* %23, align 4
  br label %387

145:                                              ; preds = %137
  %146 = load i32, i32* %25, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %145
  %149 = load %struct.vnode*, %struct.vnode** %12, align 8
  %150 = getelementptr inbounds %struct.vnode, %struct.vnode* %149, i32 0, i32 1
  %151 = load %struct.vnode*, %struct.vnode** %150, align 8
  %152 = load %struct.vnode*, %struct.vnode** %17, align 8
  %153 = icmp eq %struct.vnode* %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %148
  %155 = load i32, i32* @EINVAL, align 4
  store i32 %155, i32* %23, align 4
  br label %387

156:                                              ; preds = %148, %145
  %157 = load i32, i32* %25, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %269

159:                                              ; preds = %156
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %160 = load %struct.vnode*, %struct.vnode** %12, align 8
  %161 = load %struct.vnode*, %struct.vnode** %16, align 8
  %162 = icmp ne %struct.vnode* %160, %161
  br i1 %162, label %163, label %176

163:                                              ; preds = %159
  %164 = load %struct.vnode*, %struct.vnode** %13, align 8
  %165 = call i64 @vnode_isdir(%struct.vnode* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = load i32, i32* @KAUTH_VNODE_ADD_SUBDIRECTORY, align 4
  store i32 %168, i32* %26, align 4
  br label %169

169:                                              ; preds = %167, %163
  %170 = load %struct.vnode*, %struct.vnode** %17, align 8
  %171 = call i64 @vnode_isdir(%struct.vnode* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %169
  %174 = load i32, i32* @KAUTH_VNODE_ADD_SUBDIRECTORY, align 4
  store i32 %174, i32* %27, align 4
  br label %175

175:                                              ; preds = %173, %169
  br label %176

176:                                              ; preds = %175, %159
  %177 = load i8*, i8** %19, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %188

179:                                              ; preds = %176
  %180 = load i32, i32* %20, align 4
  %181 = call i32 @vfs_context_ucred(i32 %180)
  %182 = load i32, i32* @KAUTH_FILEOP_WILL_RENAME, align 4
  %183 = load %struct.vnode*, %struct.vnode** %13, align 8
  %184 = ptrtoint %struct.vnode* %183 to i64
  %185 = load i8*, i8** %19, align 8
  %186 = ptrtoint i8* %185 to i64
  %187 = call i32 @kauth_authorize_fileop(i32 %181, i32 %182, i64 %184, i64 %186)
  br label %188

188:                                              ; preds = %179, %176
  %189 = load %struct.vnode*, %struct.vnode** %13, align 8
  %190 = load %struct.vnode*, %struct.vnode** %12, align 8
  %191 = load i32, i32* @KAUTH_VNODE_DELETE, align 4
  %192 = load i32, i32* %26, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* %20, align 4
  %195 = call i32 @vnode_authorize(%struct.vnode* %189, %struct.vnode* %190, i32 %193, i32 %194)
  store i32 %195, i32* %23, align 4
  %196 = load i32, i32* %23, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %188
  br label %387

199:                                              ; preds = %188
  %200 = load i8*, i8** %15, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %211

202:                                              ; preds = %199
  %203 = load i32, i32* %20, align 4
  %204 = call i32 @vfs_context_ucred(i32 %203)
  %205 = load i32, i32* @KAUTH_FILEOP_WILL_RENAME, align 4
  %206 = load %struct.vnode*, %struct.vnode** %17, align 8
  %207 = ptrtoint %struct.vnode* %206 to i64
  %208 = load i8*, i8** %15, align 8
  %209 = ptrtoint i8* %208 to i64
  %210 = call i32 @kauth_authorize_fileop(i32 %204, i32 %205, i64 %207, i64 %209)
  br label %211

211:                                              ; preds = %202, %199
  %212 = load %struct.vnode*, %struct.vnode** %17, align 8
  %213 = load %struct.vnode*, %struct.vnode** %16, align 8
  %214 = load i32, i32* @KAUTH_VNODE_DELETE, align 4
  %215 = load i32, i32* %27, align 4
  %216 = or i32 %214, %215
  %217 = load i32, i32* %20, align 4
  %218 = call i32 @vnode_authorize(%struct.vnode* %212, %struct.vnode* %213, i32 %216, i32 %217)
  store i32 %218, i32* %23, align 4
  %219 = load i32, i32* %23, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %211
  br label %387

222:                                              ; preds = %211
  %223 = load %struct.vnode*, %struct.vnode** %13, align 8
  %224 = call i64 @vnode_isdir(%struct.vnode* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %222
  %227 = load i32, i32* @KAUTH_VNODE_ADD_SUBDIRECTORY, align 4
  br label %230

228:                                              ; preds = %222
  %229 = load i32, i32* @KAUTH_VNODE_ADD_FILE, align 4
  br label %230

230:                                              ; preds = %228, %226
  %231 = phi i32 [ %227, %226 ], [ %229, %228 ]
  store i32 %231, i32* %26, align 4
  %232 = load %struct.vnode*, %struct.vnode** %17, align 8
  %233 = call i64 @vnode_isdir(%struct.vnode* %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %230
  %236 = load i32, i32* @KAUTH_VNODE_ADD_SUBDIRECTORY, align 4
  br label %239

237:                                              ; preds = %230
  %238 = load i32, i32* @KAUTH_VNODE_ADD_FILE, align 4
  br label %239

239:                                              ; preds = %237, %235
  %240 = phi i32 [ %236, %235 ], [ %238, %237 ]
  store i32 %240, i32* %27, align 4
  %241 = load %struct.vnode*, %struct.vnode** %12, align 8
  %242 = load %struct.vnode*, %struct.vnode** %16, align 8
  %243 = icmp eq %struct.vnode* %241, %242
  br i1 %243, label %244, label %251

244:                                              ; preds = %239
  %245 = load %struct.vnode*, %struct.vnode** %12, align 8
  %246 = load i32, i32* %26, align 4
  %247 = load i32, i32* %27, align 4
  %248 = or i32 %246, %247
  %249 = load i32, i32* %20, align 4
  %250 = call i32 @vnode_authorize(%struct.vnode* %245, %struct.vnode* null, i32 %248, i32 %249)
  store i32 %250, i32* %23, align 4
  br label %264

251:                                              ; preds = %239
  %252 = load %struct.vnode*, %struct.vnode** %12, align 8
  %253 = load i32, i32* %27, align 4
  %254 = load i32, i32* %20, align 4
  %255 = call i32 @vnode_authorize(%struct.vnode* %252, %struct.vnode* null, i32 %253, i32 %254)
  store i32 %255, i32* %23, align 4
  %256 = load i32, i32* %23, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %251
  br label %387

259:                                              ; preds = %251
  %260 = load %struct.vnode*, %struct.vnode** %16, align 8
  %261 = load i32, i32* %26, align 4
  %262 = load i32, i32* %20, align 4
  %263 = call i32 @vnode_authorize(%struct.vnode* %260, %struct.vnode* null, i32 %261, i32 %262)
  store i32 %263, i32* %23, align 4
  br label %264

264:                                              ; preds = %259, %244
  %265 = load i32, i32* %23, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %264
  br label %387

268:                                              ; preds = %264
  br label %386

269:                                              ; preds = %156
  store i32 0, i32* %23, align 4
  %270 = load %struct.vnode*, %struct.vnode** %17, align 8
  %271 = icmp ne %struct.vnode* %270, null
  br i1 %271, label %272, label %282

272:                                              ; preds = %269
  %273 = load %struct.vnode*, %struct.vnode** %17, align 8
  %274 = call i64 @vnode_isdir(%struct.vnode* %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %282

276:                                              ; preds = %272
  %277 = load %struct.vnode*, %struct.vnode** %17, align 8
  %278 = load %struct.vnode*, %struct.vnode** %12, align 8
  %279 = icmp ne %struct.vnode* %277, %278
  br i1 %279, label %280, label %281

280:                                              ; preds = %276
  store i32 1, i32* %24, align 4
  br label %281

281:                                              ; preds = %280, %276
  br label %288

282:                                              ; preds = %272, %269
  %283 = load %struct.vnode*, %struct.vnode** %16, align 8
  %284 = load %struct.vnode*, %struct.vnode** %12, align 8
  %285 = icmp ne %struct.vnode* %283, %284
  br i1 %285, label %286, label %287

286:                                              ; preds = %282
  store i32 1, i32* %24, align 4
  br label %287

287:                                              ; preds = %286, %282
  br label %288

288:                                              ; preds = %287, %281
  %289 = load i8*, i8** %19, align 8
  %290 = icmp ne i8* %289, null
  br i1 %290, label %291, label %300

291:                                              ; preds = %288
  %292 = load i32, i32* %20, align 4
  %293 = call i32 @vfs_context_ucred(i32 %292)
  %294 = load i32, i32* @KAUTH_FILEOP_WILL_RENAME, align 4
  %295 = load %struct.vnode*, %struct.vnode** %13, align 8
  %296 = ptrtoint %struct.vnode* %295 to i64
  %297 = load i8*, i8** %19, align 8
  %298 = ptrtoint i8* %297 to i64
  %299 = call i32 @kauth_authorize_fileop(i32 %293, i32 %294, i64 %296, i64 %298)
  br label %300

300:                                              ; preds = %291, %288
  %301 = load %struct.vnode*, %struct.vnode** %13, align 8
  %302 = call i64 @vnode_isdir(%struct.vnode* %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %315

304:                                              ; preds = %300
  %305 = load %struct.vnode*, %struct.vnode** %13, align 8
  %306 = load %struct.vnode*, %struct.vnode** %12, align 8
  %307 = load i32, i32* @KAUTH_VNODE_DELETE, align 4
  %308 = load i32, i32* @KAUTH_VNODE_ADD_SUBDIRECTORY, align 4
  %309 = or i32 %307, %308
  %310 = load i32, i32* %20, align 4
  %311 = call i32 @vnode_authorize(%struct.vnode* %305, %struct.vnode* %306, i32 %309, i32 %310)
  store i32 %311, i32* %23, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %304
  br label %387

314:                                              ; preds = %304
  br label %324

315:                                              ; preds = %300
  %316 = load %struct.vnode*, %struct.vnode** %13, align 8
  %317 = load %struct.vnode*, %struct.vnode** %12, align 8
  %318 = load i32, i32* @KAUTH_VNODE_DELETE, align 4
  %319 = load i32, i32* %20, align 4
  %320 = call i32 @vnode_authorize(%struct.vnode* %316, %struct.vnode* %317, i32 %318, i32 %319)
  store i32 %320, i32* %23, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %315
  br label %387

323:                                              ; preds = %315
  br label %324

324:                                              ; preds = %323, %314
  %325 = load i32, i32* %24, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %354

327:                                              ; preds = %324
  %328 = load %struct.vnode*, %struct.vnode** %17, align 8
  %329 = icmp ne %struct.vnode* %328, null
  br i1 %329, label %330, label %336

330:                                              ; preds = %327
  %331 = load %struct.vnode*, %struct.vnode** %17, align 8
  %332 = call i64 @vnode_isdir(%struct.vnode* %331)
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %336

334:                                              ; preds = %330
  %335 = load %struct.vnode*, %struct.vnode** %17, align 8
  br label %338

336:                                              ; preds = %330, %327
  %337 = load %struct.vnode*, %struct.vnode** %16, align 8
  br label %338

338:                                              ; preds = %336, %334
  %339 = phi %struct.vnode* [ %335, %334 ], [ %337, %336 ]
  %340 = load %struct.vnode*, %struct.vnode** %13, align 8
  %341 = call i64 @vnode_isdir(%struct.vnode* %340)
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %345

343:                                              ; preds = %338
  %344 = load i32, i32* @KAUTH_VNODE_ADD_SUBDIRECTORY, align 4
  br label %347

345:                                              ; preds = %338
  %346 = load i32, i32* @KAUTH_VNODE_ADD_FILE, align 4
  br label %347

347:                                              ; preds = %345, %343
  %348 = phi i32 [ %344, %343 ], [ %346, %345 ]
  %349 = load i32, i32* %20, align 4
  %350 = call i32 @vnode_authorize(%struct.vnode* %339, %struct.vnode* null, i32 %348, i32 %349)
  store i32 %350, i32* %23, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %353

352:                                              ; preds = %347
  br label %387

353:                                              ; preds = %347
  br label %370

354:                                              ; preds = %324
  %355 = load %struct.vnode*, %struct.vnode** %12, align 8
  %356 = load %struct.vnode*, %struct.vnode** %13, align 8
  %357 = call i64 @vnode_isdir(%struct.vnode* %356)
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %361

359:                                              ; preds = %354
  %360 = load i32, i32* @KAUTH_VNODE_ADD_SUBDIRECTORY, align 4
  br label %363

361:                                              ; preds = %354
  %362 = load i32, i32* @KAUTH_VNODE_ADD_FILE, align 4
  br label %363

363:                                              ; preds = %361, %359
  %364 = phi i32 [ %360, %359 ], [ %362, %361 ]
  %365 = load i32, i32* %20, align 4
  %366 = call i32 @vnode_authorize(%struct.vnode* %355, %struct.vnode* null, i32 %364, i32 %365)
  store i32 %366, i32* %23, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %369

368:                                              ; preds = %363
  br label %387

369:                                              ; preds = %363
  br label %370

370:                                              ; preds = %369, %353
  %371 = load %struct.vnode*, %struct.vnode** %17, align 8
  %372 = icmp ne %struct.vnode* %371, null
  br i1 %372, label %373, label %385

373:                                              ; preds = %370
  %374 = load %struct.vnode*, %struct.vnode** %17, align 8
  %375 = call i64 @vnode_isdir(%struct.vnode* %374)
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %385, label %377

377:                                              ; preds = %373
  %378 = load %struct.vnode*, %struct.vnode** %17, align 8
  %379 = load %struct.vnode*, %struct.vnode** %16, align 8
  %380 = load i32, i32* @KAUTH_VNODE_DELETE, align 4
  %381 = load i32, i32* %20, align 4
  %382 = call i32 @vnode_authorize(%struct.vnode* %378, %struct.vnode* %379, i32 %380, i32 %381)
  store i32 %382, i32* %23, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %385

384:                                              ; preds = %377
  br label %387

385:                                              ; preds = %377, %373, %370
  br label %386

386:                                              ; preds = %385, %268
  br label %387

387:                                              ; preds = %386, %384, %368, %352, %322, %313, %267, %258, %221, %198, %154, %143, %135, %128, %120, %106, %86, %69
  %388 = load i32, i32* %23, align 4
  ret i32 %388
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @vnode_compound_rename_available(%struct.vnode*) #1

declare dso_local i32 @lookup_validate_creation_path(i32) #1

declare dso_local i64 @vnode_isdir(%struct.vnode*) #1

declare dso_local i32 @kauth_authorize_fileop(i32, i32, i64, i64) #1

declare dso_local i32 @vfs_context_ucred(i32) #1

declare dso_local i32 @vnode_authorize(%struct.vnode*, %struct.vnode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
