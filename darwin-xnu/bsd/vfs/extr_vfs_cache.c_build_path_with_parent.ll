; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cache.c_build_path_with_parent.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cache.c_build_path_with_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i8*, i32, %struct.TYPE_18__*, %struct.TYPE_20__* }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_20__* }
%struct.vnode_attr = type { i8*, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_20__* }

@NULLVP = common dso_local global %struct.TYPE_20__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@VROOT = common dso_local global i32 0, align 4
@MNT_ROOTFS = common dso_local global i32 0, align 4
@BUILDPATH_VOLUME_RELATIVE = common dso_local global i32 0, align 4
@VISHARDLINK = common dso_local global i32 0, align 4
@MNTK_PATH_FROM_ID = common dso_local global i32 0, align 4
@BUILDPATH_NO_FS_ENTER = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@rootvnode = common dso_local global %struct.TYPE_20__* null, align 8
@va_parentid = common dso_local global i32 0, align 4
@va_name = common dso_local global i32 0, align 4
@caddr_t = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@M_NAMEI = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@VNODE_UPDATE_NAME = common dso_local global i32 0, align 4
@VNODE_UPDATE_PARENT = common dso_local global i32 0, align 4
@BUILDPATH_CHECKACCESS = common dso_local global i32 0, align 4
@KAUTH_VNODE_SEARCH = common dso_local global i32 0, align 4
@BUILDPATH_CHECK_MOVED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @build_path_with_parent(%struct.TYPE_20__* %0, %struct.TYPE_20__* %1, i8* %2, i32 %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_20__*, align 8
  %17 = alloca %struct.TYPE_20__*, align 8
  %18 = alloca %struct.TYPE_20__*, align 8
  %19 = alloca %struct.TYPE_20__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.vnode_attr, align 8
  %27 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %9, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %23, align 4
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** @NULLVP, align 8
  %30 = icmp eq %struct.TYPE_20__* %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %7
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %8, align 4
  br label %585

33:                                               ; preds = %7
  %34 = load i32, i32* %12, align 4
  %35 = icmp sle i32 %34, 1
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @ENOSPC, align 4
  store i32 %37, i32* %8, align 4
  br label %585

38:                                               ; preds = %33
  %39 = load i32, i32* %15, align 4
  %40 = call %struct.TYPE_17__* @vfs_context_proc(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %41, align 8
  %43 = icmp ne %struct.TYPE_19__* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load i32, i32* %15, align 4
  %46 = call %struct.TYPE_17__* @vfs_context_proc(i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %49, align 8
  store %struct.TYPE_20__* %50, %struct.TYPE_20__** %19, align 8
  br label %52

51:                                               ; preds = %38
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %19, align 8
  br label %52

52:                                               ; preds = %51, %44
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** @NULLVP, align 8
  store %struct.TYPE_20__* %53, %struct.TYPE_20__** %18, align 8
  br label %54

54:                                               ; preds = %486, %294, %52
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  store %struct.TYPE_20__* %55, %struct.TYPE_20__** %16, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %56, i64 %59
  store i8* %60, i8** %20, align 8
  %61 = load i8*, i8** %20, align 8
  store i8 0, i8* %61, align 1
  %62 = call i32 (...) @NAME_CACHE_LOCK_SHARED()
  br label %63

63:                                               ; preds = %113, %54
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %65 = icmp ne %struct.TYPE_20__* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @VROOT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br label %73

73:                                               ; preds = %66, %63
  %74 = phi i1 [ false, %63 ], [ %72, %66 ]
  br i1 %74, label %75, label %114

75:                                               ; preds = %73
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %77, align 8
  %79 = icmp eq %struct.TYPE_18__* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* @EINVAL, align 4
  store i32 %81, i32* %23, align 4
  br label %542

82:                                               ; preds = %75
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @MNT_ROOTFS, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %82
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %94 = icmp eq %struct.TYPE_20__* %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %91, %82
  %96 = load i8*, i8** %20, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 -1
  store i8* %97, i8** %20, align 8
  store i8 47, i8* %97, align 1
  br label %542

98:                                               ; preds = %91
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* @BUILDPATH_VOLUME_RELATIVE, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i8*, i8** %20, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 -1
  store i8* %105, i8** %20, align 8
  store i8 47, i8* %105, align 1
  br label %542

106:                                              ; preds = %98
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %110, align 8
  store %struct.TYPE_20__* %111, %struct.TYPE_20__** %16, align 8
  br label %112

112:                                              ; preds = %106
  br label %113

113:                                              ; preds = %112
  br label %63

114:                                              ; preds = %73
  br label %115

115:                                              ; preds = %539, %114
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** @NULLVP, align 8
  %118 = icmp ne %struct.TYPE_20__* %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %115
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 4
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %121, align 8
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %124 = icmp ne %struct.TYPE_20__* %122, %123
  br label %125

125:                                              ; preds = %119, %115
  %126 = phi i1 [ false, %115 ], [ %124, %119 ]
  br i1 %126, label %127, label %541

127:                                              ; preds = %125
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @VISHARDLINK, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %149

134:                                              ; preds = %127
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 3
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @MNTK_PATH_FROM_ID, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %134
  %144 = load i32, i32* %14, align 4
  %145 = load i32, i32* @BUILDPATH_NO_FS_ENTER, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  br label %149

149:                                              ; preds = %143, %134, %127
  %150 = phi i1 [ false, %134 ], [ false, %127 ], [ %148, %143 ]
  %151 = zext i1 %150 to i32
  store i32 %151, i32* %24, align 4
  %152 = load i32, i32* %24, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %209, label %154

154:                                              ; preds = %149
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  store i8* %157, i8** %21, align 8
  %158 = load i8*, i8** %21, align 8
  %159 = icmp eq i8* %158, null
  br i1 %159, label %165, label %160

160:                                              ; preds = %154
  %161 = load i8*, i8** %21, align 8
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %175

165:                                              ; preds = %160, %154
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 4
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %167, align 8
  %169 = icmp ne %struct.TYPE_20__* %168, null
  br i1 %169, label %170, label %172

170:                                              ; preds = %165
  %171 = load i32, i32* @EINVAL, align 4
  store i32 %171, i32* %23, align 4
  br label %174

172:                                              ; preds = %165
  %173 = load i32, i32* @ENOENT, align 4
  store i32 %173, i32* %23, align 4
  br label %174

174:                                              ; preds = %172, %170
  br label %542

175:                                              ; preds = %160
  %176 = load i8*, i8** %21, align 8
  %177 = call i32 @strlen(i8* %176)
  store i32 %177, i32* %22, align 4
  %178 = load i8*, i8** %20, align 8
  %179 = load i8*, i8** %11, align 8
  %180 = ptrtoint i8* %178 to i64
  %181 = ptrtoint i8* %179 to i64
  %182 = sub i64 %180, %181
  %183 = load i32, i32* %22, align 4
  %184 = add nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = icmp slt i64 %182, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %175
  %188 = load i32, i32* @ENOSPC, align 4
  store i32 %188, i32* %23, align 4
  br label %542

189:                                              ; preds = %175
  %190 = load i32, i32* %22, align 4
  %191 = load i8*, i8** %21, align 8
  %192 = sext i32 %190 to i64
  %193 = getelementptr inbounds i8, i8* %191, i64 %192
  store i8* %193, i8** %21, align 8
  br label %194

194:                                              ; preds = %203, %189
  %195 = load i32, i32* %22, align 4
  %196 = icmp sgt i32 %195, 0
  br i1 %196, label %197, label %206

197:                                              ; preds = %194
  %198 = load i8*, i8** %21, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 -1
  store i8* %199, i8** %21, align 8
  %200 = load i8, i8* %199, align 1
  %201 = load i8*, i8** %20, align 8
  %202 = getelementptr inbounds i8, i8* %201, i32 -1
  store i8* %202, i8** %20, align 8
  store i8 %200, i8* %202, align 1
  br label %203

203:                                              ; preds = %197
  %204 = load i32, i32* %22, align 4
  %205 = add nsw i32 %204, -1
  store i32 %205, i32* %22, align 4
  br label %194

206:                                              ; preds = %194
  %207 = load i8*, i8** %20, align 8
  %208 = getelementptr inbounds i8, i8* %207, i32 -1
  store i8* %208, i8** %20, align 8
  store i8 47, i8* %208, align 1
  br label %209

209:                                              ; preds = %206, %149
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 4
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %211, align 8
  %213 = load %struct.TYPE_20__*, %struct.TYPE_20__** @NULLVP, align 8
  %214 = icmp ne %struct.TYPE_20__* %212, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %209
  %216 = load i32, i32* %24, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %215, %209
  %219 = load i32, i32* %14, align 4
  %220 = load i32, i32* @BUILDPATH_NO_FS_ENTER, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %255

223:                                              ; preds = %218, %215
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %224, i32 0, i32 4
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** %225, align 8
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** @NULLVP, align 8
  %228 = icmp eq %struct.TYPE_20__* %226, %227
  br i1 %228, label %229, label %235

229:                                              ; preds = %223
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** @rootvnode, align 8
  %231 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %232 = icmp ne %struct.TYPE_20__* %230, %231
  br i1 %232, label %233, label %235

233:                                              ; preds = %229
  %234 = load i32, i32* @ENOENT, align 4
  store i32 %234, i32* %23, align 4
  br label %235

235:                                              ; preds = %233, %229, %223
  %236 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %237 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %236, i32 0, i32 4
  %238 = load %struct.TYPE_20__*, %struct.TYPE_20__** %237, align 8
  store %struct.TYPE_20__* %238, %struct.TYPE_20__** %16, align 8
  %239 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %240 = icmp ne %struct.TYPE_20__* %239, null
  br i1 %240, label %241, label %254

241:                                              ; preds = %235
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %243 = call i32 @vnode_isdir(%struct.TYPE_20__* %242)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %254, label %245

245:                                              ; preds = %241
  %246 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %247 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %246, i32 0, i32 4
  %248 = load %struct.TYPE_20__*, %struct.TYPE_20__** %247, align 8
  %249 = icmp ne %struct.TYPE_20__* %248, null
  br i1 %249, label %250, label %254

250:                                              ; preds = %245
  %251 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %252 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %251, i32 0, i32 4
  %253 = load %struct.TYPE_20__*, %struct.TYPE_20__** %252, align 8
  store %struct.TYPE_20__* %253, %struct.TYPE_20__** %16, align 8
  br label %254

254:                                              ; preds = %250, %245, %241, %235
  br label %450

255:                                              ; preds = %218
  %256 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %257 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %256, i32 0, i32 3
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @MNTK_PATH_FROM_ID, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %266, label %264

264:                                              ; preds = %255
  %265 = load i32, i32* @ENOENT, align 4
  store i32 %265, i32* %23, align 4
  br label %542

266:                                              ; preds = %255
  %267 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %268 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  store i32 %269, i32* %25, align 4
  %270 = call i32 (...) @NAME_CACHE_UNLOCK()
  %271 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %272 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %273 = icmp ne %struct.TYPE_20__* %271, %272
  br i1 %273, label %274, label %297

274:                                              ; preds = %266
  %275 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %276 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %277 = icmp ne %struct.TYPE_20__* %275, %276
  br i1 %277, label %278, label %297

278:                                              ; preds = %274
  %279 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %280 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %281 = icmp ne %struct.TYPE_20__* %279, %280
  br i1 %281, label %282, label %297

282:                                              ; preds = %278
  %283 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %284 = icmp ne %struct.TYPE_20__* %283, null
  br i1 %284, label %285, label %289

285:                                              ; preds = %282
  %286 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %287 = call i32 @vnode_put(%struct.TYPE_20__* %286)
  %288 = load %struct.TYPE_20__*, %struct.TYPE_20__** @NULLVP, align 8
  store %struct.TYPE_20__* %288, %struct.TYPE_20__** %18, align 8
  br label %289

289:                                              ; preds = %285, %282
  %290 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %291 = load i32, i32* %25, align 4
  %292 = call i64 @vnode_getwithvid(%struct.TYPE_20__* %290, i32 %291)
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %289
  br label %54

295:                                              ; preds = %289
  %296 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  store %struct.TYPE_20__* %296, %struct.TYPE_20__** %18, align 8
  br label %297

297:                                              ; preds = %295, %278, %274, %266
  %298 = call i32 @VATTR_INIT(%struct.vnode_attr* %26)
  %299 = load i32, i32* @va_parentid, align 4
  %300 = call i32 @VATTR_WANTED(%struct.vnode_attr* %26, i32 %299)
  %301 = load i32, i32* %24, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %313

303:                                              ; preds = %297
  %304 = load i32, i32* @va_name, align 4
  %305 = call i32 @VATTR_WANTED(%struct.vnode_attr* %26, i32 %304)
  %306 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %26, i32 0, i32 0
  %307 = load i8*, i8** %306, align 8
  %308 = load i32, i32* @caddr_t, align 4
  %309 = load i32, i32* @MAXPATHLEN, align 4
  %310 = load i32, i32* @M_NAMEI, align 4
  %311 = load i32, i32* @M_WAITOK, align 4
  %312 = call i32 @MALLOC_ZONE(i8* %307, i32 %308, i32 %309, i32 %310, i32 %311)
  br label %315

313:                                              ; preds = %297
  %314 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %26, i32 0, i32 0
  store i8* null, i8** %314, align 8
  br label %315

315:                                              ; preds = %313, %303
  %316 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %317 = load i32, i32* %15, align 4
  %318 = call i32 @vnode_getattr(%struct.TYPE_20__* %316, %struct.vnode_attr* %26, i32 %317)
  store i32 %318, i32* %23, align 4
  %319 = load i32, i32* %24, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %390

321:                                              ; preds = %315
  %322 = load i32, i32* %23, align 4
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %337

324:                                              ; preds = %321
  %325 = load i32, i32* @va_name, align 4
  %326 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %26, i32 %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %337

328:                                              ; preds = %324
  %329 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %26, i32 0, i32 0
  %330 = load i8*, i8** %329, align 8
  store i8* %330, i8** %21, align 8
  %331 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %332 = load i8*, i8** %21, align 8
  %333 = load i8*, i8** %21, align 8
  %334 = call i32 @strlen(i8* %333)
  %335 = load i32, i32* @VNODE_UPDATE_NAME, align 4
  %336 = call i32 @vnode_update_identity(%struct.TYPE_20__* %331, %struct.TYPE_20__* null, i8* %332, i32 %334, i32 0, i32 %335)
  br label %349

337:                                              ; preds = %324, %321
  %338 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %339 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %338, i32 0, i32 1
  %340 = load i8*, i8** %339, align 8
  %341 = icmp ne i8* %340, null
  br i1 %341, label %342, label %346

342:                                              ; preds = %337
  %343 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %344 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %343, i32 0, i32 1
  %345 = load i8*, i8** %344, align 8
  store i8* %345, i8** %21, align 8
  store i32 0, i32* %23, align 4
  br label %348

346:                                              ; preds = %337
  %347 = load i32, i32* @ENOENT, align 4
  store i32 %347, i32* %23, align 4
  br label %384

348:                                              ; preds = %342
  br label %349

349:                                              ; preds = %348, %328
  %350 = load i8*, i8** %21, align 8
  %351 = call i32 @strlen(i8* %350)
  store i32 %351, i32* %22, align 4
  %352 = load i8*, i8** %20, align 8
  %353 = load i8*, i8** %11, align 8
  %354 = ptrtoint i8* %352 to i64
  %355 = ptrtoint i8* %353 to i64
  %356 = sub i64 %354, %355
  %357 = load i32, i32* %22, align 4
  %358 = add nsw i32 %357, 1
  %359 = sext i32 %358 to i64
  %360 = icmp slt i64 %356, %359
  br i1 %360, label %361, label %363

361:                                              ; preds = %349
  %362 = load i32, i32* @ENOSPC, align 4
  store i32 %362, i32* %23, align 4
  br label %383

363:                                              ; preds = %349
  %364 = load i32, i32* %22, align 4
  %365 = load i8*, i8** %21, align 8
  %366 = sext i32 %364 to i64
  %367 = getelementptr inbounds i8, i8* %365, i64 %366
  store i8* %367, i8** %21, align 8
  br label %368

368:                                              ; preds = %377, %363
  %369 = load i32, i32* %22, align 4
  %370 = icmp sgt i32 %369, 0
  br i1 %370, label %371, label %380

371:                                              ; preds = %368
  %372 = load i8*, i8** %21, align 8
  %373 = getelementptr inbounds i8, i8* %372, i32 -1
  store i8* %373, i8** %21, align 8
  %374 = load i8, i8* %373, align 1
  %375 = load i8*, i8** %20, align 8
  %376 = getelementptr inbounds i8, i8* %375, i32 -1
  store i8* %376, i8** %20, align 8
  store i8 %374, i8* %376, align 1
  br label %377

377:                                              ; preds = %371
  %378 = load i32, i32* %22, align 4
  %379 = add nsw i32 %378, -1
  store i32 %379, i32* %22, align 4
  br label %368

380:                                              ; preds = %368
  %381 = load i8*, i8** %20, align 8
  %382 = getelementptr inbounds i8, i8* %381, i32 -1
  store i8* %382, i8** %20, align 8
  store i8 47, i8* %382, align 1
  br label %383

383:                                              ; preds = %380, %361
  br label %384

384:                                              ; preds = %383, %346
  %385 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %26, i32 0, i32 0
  %386 = load i8*, i8** %385, align 8
  %387 = load i32, i32* @MAXPATHLEN, align 4
  %388 = load i32, i32* @M_NAMEI, align 4
  %389 = call i32 @FREE_ZONE(i8* %386, i32 %387, i32 %388)
  br label %390

390:                                              ; preds = %384, %315
  %391 = load i32, i32* %23, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %397, label %393

393:                                              ; preds = %390
  %394 = load i32, i32* @va_parentid, align 4
  %395 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %26, i32 %394)
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %399, label %397

397:                                              ; preds = %393, %390
  %398 = load i32, i32* @ENOENT, align 4
  store i32 %398, i32* %23, align 4
  br label %544

399:                                              ; preds = %393
  %400 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %401 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %400, i32 0, i32 3
  %402 = load %struct.TYPE_18__*, %struct.TYPE_18__** %401, align 8
  %403 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %26, i32 0, i32 1
  %404 = load i64, i64* %403, align 8
  %405 = trunc i64 %404 to i32
  %406 = load i32, i32* %15, align 4
  %407 = call i32 @VFS_VGET(%struct.TYPE_18__* %402, i32 %405, %struct.TYPE_20__** %27, i32 %406)
  store i32 %407, i32* %23, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %410

409:                                              ; preds = %399
  br label %544

410:                                              ; preds = %399
  %411 = load i32, i32* %24, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %424, label %413

413:                                              ; preds = %410
  %414 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %415 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %414, i32 0, i32 4
  %416 = load %struct.TYPE_20__*, %struct.TYPE_20__** %415, align 8
  %417 = load %struct.TYPE_20__*, %struct.TYPE_20__** %27, align 8
  %418 = icmp ne %struct.TYPE_20__* %416, %417
  br i1 %418, label %419, label %424

419:                                              ; preds = %413
  %420 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %421 = load %struct.TYPE_20__*, %struct.TYPE_20__** %27, align 8
  %422 = load i32, i32* @VNODE_UPDATE_PARENT, align 4
  %423 = call i32 @vnode_update_identity(%struct.TYPE_20__* %420, %struct.TYPE_20__* %421, i8* null, i32 0, i32 0, i32 %422)
  br label %424

424:                                              ; preds = %419, %413, %410
  %425 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %426 = icmp ne %struct.TYPE_20__* %425, null
  br i1 %426, label %427, label %430

427:                                              ; preds = %424
  %428 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %429 = call i32 @vnode_put(%struct.TYPE_20__* %428)
  br label %430

430:                                              ; preds = %427, %424
  %431 = load %struct.TYPE_20__*, %struct.TYPE_20__** %27, align 8
  store %struct.TYPE_20__* %431, %struct.TYPE_20__** %16, align 8
  %432 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  store %struct.TYPE_20__* %432, %struct.TYPE_20__** %18, align 8
  %433 = call i32 (...) @NAME_CACHE_LOCK_SHARED()
  %434 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %435 = icmp ne %struct.TYPE_20__* %434, null
  br i1 %435, label %436, label %449

436:                                              ; preds = %430
  %437 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %438 = call i32 @vnode_isdir(%struct.TYPE_20__* %437)
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %449, label %440

440:                                              ; preds = %436
  %441 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %442 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %441, i32 0, i32 4
  %443 = load %struct.TYPE_20__*, %struct.TYPE_20__** %442, align 8
  %444 = icmp ne %struct.TYPE_20__* %443, null
  br i1 %444, label %445, label %449

445:                                              ; preds = %440
  %446 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %447 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %446, i32 0, i32 4
  %448 = load %struct.TYPE_20__*, %struct.TYPE_20__** %447, align 8
  store %struct.TYPE_20__* %448, %struct.TYPE_20__** %16, align 8
  br label %449

449:                                              ; preds = %445, %440, %436, %430
  br label %450

450:                                              ; preds = %449, %254
  %451 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %452 = icmp ne %struct.TYPE_20__* %451, null
  br i1 %452, label %453, label %498

453:                                              ; preds = %450
  %454 = load i32, i32* %14, align 4
  %455 = load i32, i32* @BUILDPATH_CHECKACCESS, align 4
  %456 = and i32 %454, %455
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %498

458:                                              ; preds = %453
  %459 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %460 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %459, i32 0, i32 2
  %461 = load i32, i32* %460, align 8
  store i32 %461, i32* %25, align 4
  %462 = call i32 (...) @NAME_CACHE_UNLOCK()
  %463 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %464 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %465 = icmp ne %struct.TYPE_20__* %463, %464
  br i1 %465, label %466, label %489

466:                                              ; preds = %458
  %467 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %468 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %469 = icmp ne %struct.TYPE_20__* %467, %468
  br i1 %469, label %470, label %489

470:                                              ; preds = %466
  %471 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %472 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %473 = icmp ne %struct.TYPE_20__* %471, %472
  br i1 %473, label %474, label %489

474:                                              ; preds = %470
  %475 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %476 = icmp ne %struct.TYPE_20__* %475, null
  br i1 %476, label %477, label %481

477:                                              ; preds = %474
  %478 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %479 = call i32 @vnode_put(%struct.TYPE_20__* %478)
  %480 = load %struct.TYPE_20__*, %struct.TYPE_20__** @NULLVP, align 8
  store %struct.TYPE_20__* %480, %struct.TYPE_20__** %18, align 8
  br label %481

481:                                              ; preds = %477, %474
  %482 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %483 = load i32, i32* %25, align 4
  %484 = call i64 @vnode_getwithvid(%struct.TYPE_20__* %482, i32 %483)
  %485 = icmp ne i64 %484, 0
  br i1 %485, label %486, label %487

486:                                              ; preds = %481
  br label %54

487:                                              ; preds = %481
  %488 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  store %struct.TYPE_20__* %488, %struct.TYPE_20__** %18, align 8
  br label %489

489:                                              ; preds = %487, %470, %466, %458
  %490 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %491 = load i32, i32* @KAUTH_VNODE_SEARCH, align 4
  %492 = load i32, i32* %15, align 4
  %493 = call i32 @vnode_authorize(%struct.TYPE_20__* %490, i32* null, i32 %491, i32 %492)
  store i32 %493, i32* %23, align 4
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %495, label %496

495:                                              ; preds = %489
  br label %544

496:                                              ; preds = %489
  %497 = call i32 (...) @NAME_CACHE_LOCK_SHARED()
  br label %498

498:                                              ; preds = %496, %453, %450
  %499 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  store %struct.TYPE_20__* %499, %struct.TYPE_20__** %17, align 8
  br label %500

500:                                              ; preds = %533, %498
  %501 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %502 = icmp ne %struct.TYPE_20__* %501, null
  br i1 %502, label %503, label %534

503:                                              ; preds = %500
  %504 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %505 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %506 = icmp eq %struct.TYPE_20__* %504, %505
  br i1 %506, label %507, label %508

507:                                              ; preds = %503
  br label %542

508:                                              ; preds = %503
  %509 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %510 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %509, i32 0, i32 0
  %511 = load i32, i32* %510, align 8
  %512 = load i32, i32* @VROOT, align 4
  %513 = and i32 %511, %512
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %515, label %520

515:                                              ; preds = %508
  %516 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %517 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %516, i32 0, i32 3
  %518 = load %struct.TYPE_18__*, %struct.TYPE_18__** %517, align 8
  %519 = icmp ne %struct.TYPE_18__* %518, null
  br i1 %519, label %521, label %520

520:                                              ; preds = %515, %508
  br label %534

521:                                              ; preds = %515
  %522 = load i32, i32* %14, align 4
  %523 = load i32, i32* @BUILDPATH_VOLUME_RELATIVE, align 4
  %524 = and i32 %522, %523
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %526, label %527

526:                                              ; preds = %521
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %17, align 8
  br label %533

527:                                              ; preds = %521
  %528 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %529 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %528, i32 0, i32 3
  %530 = load %struct.TYPE_18__*, %struct.TYPE_18__** %529, align 8
  %531 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %530, i32 0, i32 2
  %532 = load %struct.TYPE_20__*, %struct.TYPE_20__** %531, align 8
  store %struct.TYPE_20__* %532, %struct.TYPE_20__** %17, align 8
  br label %533

533:                                              ; preds = %527, %526
  br label %500

534:                                              ; preds = %520, %500
  %535 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %536 = load %struct.TYPE_20__*, %struct.TYPE_20__** @NULLVP, align 8
  %537 = icmp eq %struct.TYPE_20__* %535, %536
  br i1 %537, label %538, label %539

538:                                              ; preds = %534
  br label %542

539:                                              ; preds = %534
  %540 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  store %struct.TYPE_20__* %540, %struct.TYPE_20__** %16, align 8
  br label %115

541:                                              ; preds = %125
  br label %542

542:                                              ; preds = %541, %538, %507, %264, %187, %174, %103, %95, %80
  %543 = call i32 (...) @NAME_CACHE_UNLOCK()
  br label %544

544:                                              ; preds = %542, %495, %409, %397
  %545 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %546 = icmp ne %struct.TYPE_20__* %545, null
  br i1 %546, label %547, label %550

547:                                              ; preds = %544
  %548 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %549 = call i32 @vnode_put(%struct.TYPE_20__* %548)
  br label %550

550:                                              ; preds = %547, %544
  %551 = load i8*, i8** %11, align 8
  %552 = load i8*, i8** %20, align 8
  %553 = load i8*, i8** %11, align 8
  %554 = load i32, i32* %12, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds i8, i8* %553, i64 %555
  %557 = load i8*, i8** %20, align 8
  %558 = ptrtoint i8* %556 to i64
  %559 = ptrtoint i8* %557 to i64
  %560 = sub i64 %558, %559
  %561 = trunc i64 %560 to i32
  %562 = call i32 @memmove(i8* %551, i8* %552, i32 %561)
  %563 = load i8*, i8** %11, align 8
  %564 = load i32, i32* %12, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds i8, i8* %563, i64 %565
  %567 = load i8*, i8** %20, align 8
  %568 = ptrtoint i8* %566 to i64
  %569 = ptrtoint i8* %567 to i64
  %570 = sub i64 %568, %569
  %571 = trunc i64 %570 to i32
  %572 = load i32*, i32** %13, align 8
  store i32 %571, i32* %572, align 4
  %573 = load i32, i32* %23, align 4
  %574 = load i32, i32* @ENOENT, align 4
  %575 = icmp eq i32 %573, %574
  br i1 %575, label %576, label %583

576:                                              ; preds = %550
  %577 = load i32, i32* %14, align 4
  %578 = load i32, i32* @BUILDPATH_CHECK_MOVED, align 4
  %579 = and i32 %577, %578
  %580 = icmp ne i32 %579, 0
  br i1 %580, label %581, label %583

581:                                              ; preds = %576
  %582 = load i32, i32* @EAGAIN, align 4
  store i32 %582, i32* %23, align 4
  br label %583

583:                                              ; preds = %581, %576, %550
  %584 = load i32, i32* %23, align 4
  store i32 %584, i32* %8, align 4
  br label %585

585:                                              ; preds = %583, %36, %31
  %586 = load i32, i32* %8, align 4
  ret i32 %586
}

declare dso_local %struct.TYPE_17__* @vfs_context_proc(i32) #1

declare dso_local i32 @NAME_CACHE_LOCK_SHARED(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @vnode_isdir(%struct.TYPE_20__*) #1

declare dso_local i32 @NAME_CACHE_UNLOCK(...) #1

declare dso_local i32 @vnode_put(%struct.TYPE_20__*) #1

declare dso_local i64 @vnode_getwithvid(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @VATTR_INIT(%struct.vnode_attr*) #1

declare dso_local i32 @VATTR_WANTED(%struct.vnode_attr*, i32) #1

declare dso_local i32 @MALLOC_ZONE(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @vnode_getattr(%struct.TYPE_20__*, %struct.vnode_attr*, i32) #1

declare dso_local i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr*, i32) #1

declare dso_local i32 @vnode_update_identity(%struct.TYPE_20__*, %struct.TYPE_20__*, i8*, i32, i32, i32) #1

declare dso_local i32 @FREE_ZONE(i8*, i32, i32) #1

declare dso_local i32 @VFS_VGET(%struct.TYPE_18__*, i32, %struct.TYPE_20__**, i32) #1

declare dso_local i32 @vnode_authorize(%struct.TYPE_20__*, i32*, i32, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
