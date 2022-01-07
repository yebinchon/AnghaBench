; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cache.c_vnode_update_identity.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cache.c_vnode_update_identity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i64, i8*, i32, i64, i32, %struct.TYPE_12__*, %struct.TYPE_12__*, i32, i64, i64, i32*, i32, i32 }
%struct.namecache = type { i32 }
%struct.uthread = type { i32, %struct.TYPE_12__* }

@NULLVP = common dso_local global %struct.TYPE_12__* null, align 8
@VISNAMEDSTREAM = common dso_local global i32 0, align 4
@VNODE_UPDATE_PARENT = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@VNODE_UPDATE_NAME = common dso_local global i32 0, align 4
@VNODE_UPDATE_PURGE = common dso_local global i32 0, align 4
@VNODE_UPDATE_CACHE = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32* null, align 8
@VDIR = common dso_local global i64 0, align 8
@VL_MARKTERM = common dso_local global i32 0, align 4
@VL_TERMINATE = common dso_local global i32 0, align 4
@VL_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnode_update_identity(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.namecache*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.uthread*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** @NULLVP, align 8
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %14, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @VISNAMEDSTREAM, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32* null, i32** %17, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @VNODE_UPDATE_PARENT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %72

31:                                               ; preds = %6
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %33 = icmp ne %struct.TYPE_12__* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %36 = call i64 @vnode_ref(%struct.TYPE_12__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** @NULLVP, align 8
  store %struct.TYPE_12__* %39, %struct.TYPE_12__** %8, align 8
  br label %40

40:                                               ; preds = %38, %34, %31
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %71

43:                                               ; preds = %40
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %45 = icmp ne %struct.TYPE_12__* %44, null
  br i1 %45, label %46, label %71

46:                                               ; preds = %43
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %49 = icmp ne %struct.TYPE_12__* %47, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %46
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = icmp ne %struct.TYPE_12__* %51, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %50
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @VREG, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %56
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %64 = call i32 @vnode_lock_spin(%struct.TYPE_12__* %63)
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %66, align 8
  store i32 1, i32* %16, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %70 = call i32 @vnode_unlock(%struct.TYPE_12__* %69)
  br label %71

71:                                               ; preds = %62, %56, %50, %46, %43, %40
  br label %74

72:                                               ; preds = %6
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** @NULLVP, align 8
  store %struct.TYPE_12__* %73, %struct.TYPE_12__** %8, align 8
  br label %74

74:                                               ; preds = %72, %71
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @VNODE_UPDATE_NAME, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %111

79:                                               ; preds = %74
  %80 = load i8*, i8** %9, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 3
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %80, %83
  br i1 %84, label %85, label %105

85:                                               ; preds = %79
  %86 = load i8*, i8** %9, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %104

88:                                               ; preds = %85
  %89 = load i8*, i8** %9, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %88
  %94 = load i32, i32* %10, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8
  %98 = call i32 @strlen(i8* %97)
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %96, %93
  %100 = load i8*, i8** %9, align 8
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i8* @vfs_addname(i8* %100, i32 %101, i32 %102, i32 0)
  store i8* %103, i8** %19, align 8
  br label %104

104:                                              ; preds = %99, %88, %85
  br label %110

105:                                              ; preds = %79
  %106 = load i32, i32* @VNODE_UPDATE_NAME, align 4
  %107 = xor i32 %106, -1
  %108 = load i32, i32* %12, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %12, align 4
  br label %110

110:                                              ; preds = %105, %104
  br label %111

111:                                              ; preds = %110, %74
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @VNODE_UPDATE_PURGE, align 4
  %114 = load i32, i32* @VNODE_UPDATE_PARENT, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @VNODE_UPDATE_CACHE, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @VNODE_UPDATE_NAME, align 4
  %119 = or i32 %117, %118
  %120 = and i32 %112, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %241

122:                                              ; preds = %111
  %123 = call i32 (...) @NAME_CACHE_LOCK()
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* @VNODE_UPDATE_PURGE, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %169

128:                                              ; preds = %122
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 8
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = icmp ne %struct.TYPE_12__* %131, null
  br i1 %132, label %133, label %140

133:                                              ; preds = %128
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 8
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 14
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %133, %128
  br label %141

141:                                              ; preds = %146, %140
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 9
  %144 = call %struct.namecache* @LIST_FIRST(i32* %143)
  store %struct.namecache* %144, %struct.namecache** %13, align 8
  %145 = icmp ne %struct.namecache* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = load %struct.namecache*, %struct.namecache** %13, align 8
  %148 = call i32 @cache_delete(%struct.namecache* %147, i32 1)
  br label %141

149:                                              ; preds = %141
  br label %150

150:                                              ; preds = %155, %149
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 13
  %153 = call %struct.namecache* @TAILQ_FIRST(i32* %152)
  store %struct.namecache* %153, %struct.namecache** %13, align 8
  %154 = icmp ne %struct.namecache* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load %struct.namecache*, %struct.namecache** %13, align 8
  %157 = call i32 @cache_delete(%struct.namecache* %156, i32 1)
  br label %150

158:                                              ; preds = %150
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 12
  %161 = load i32*, i32** %160, align 8
  store i32* %161, i32** %17, align 8
  %162 = load i32*, i32** @NOCRED, align 8
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 12
  store i32* %162, i32** %164, align 8
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 11
  store i64 0, i64* %166, align 8
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 10
  store i64 0, i64* %168, align 8
  br label %169

169:                                              ; preds = %158, %122
  %170 = load i32, i32* %12, align 4
  %171 = load i32, i32* @VNODE_UPDATE_NAME, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %169
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 3
  %177 = load i8*, i8** %176, align 8
  store i8* %177, i8** %18, align 8
  %178 = load i8*, i8** %19, align 8
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 3
  store i8* %178, i8** %180, align 8
  br label %181

181:                                              ; preds = %174, %169
  %182 = load i32, i32* %12, align 4
  %183 = load i32, i32* @VNODE_UPDATE_PARENT, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %212

186:                                              ; preds = %181
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %189 = icmp ne %struct.TYPE_12__* %187, %188
  br i1 %189, label %190, label %211

190:                                              ; preds = %186
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 8
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %193, align 8
  %195 = icmp ne %struct.TYPE_12__* %191, %194
  br i1 %195, label %196, label %211

196:                                              ; preds = %190
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 8
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %198, align 8
  store %struct.TYPE_12__* %199, %struct.TYPE_12__** %14, align 8
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 8
  store %struct.TYPE_12__* %200, %struct.TYPE_12__** %202, align 8
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** @NULLVP, align 8
  store %struct.TYPE_12__* %203, %struct.TYPE_12__** %8, align 8
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %205 = icmp ne %struct.TYPE_12__* %204, null
  br i1 %205, label %206, label %210

206:                                              ; preds = %196
  %207 = load i32, i32* @VNODE_UPDATE_CACHE, align 4
  %208 = load i32, i32* %12, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %12, align 4
  br label %210

210:                                              ; preds = %206, %196
  br label %211

211:                                              ; preds = %210, %190, %186
  br label %212

212:                                              ; preds = %211, %181
  %213 = load i32, i32* %12, align 4
  %214 = load i32, i32* @VNODE_UPDATE_CACHE, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %227

217:                                              ; preds = %212
  br label %218

218:                                              ; preds = %223, %217
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 9
  %221 = call %struct.namecache* @LIST_FIRST(i32* %220)
  store %struct.namecache* %221, %struct.namecache** %13, align 8
  %222 = icmp ne %struct.namecache* %221, null
  br i1 %222, label %223, label %226

223:                                              ; preds = %218
  %224 = load %struct.namecache*, %struct.namecache** %13, align 8
  %225 = call i32 @cache_delete(%struct.namecache* %224, i32 1)
  br label %218

226:                                              ; preds = %218
  br label %227

227:                                              ; preds = %226, %212
  %228 = call i32 (...) @NAME_CACHE_UNLOCK()
  %229 = load i8*, i8** %18, align 8
  %230 = icmp ne i8* %229, null
  br i1 %230, label %231, label %234

231:                                              ; preds = %227
  %232 = load i8*, i8** %18, align 8
  %233 = call i32 @vfs_removename(i8* %232)
  br label %234

234:                                              ; preds = %231, %227
  %235 = load i32*, i32** %17, align 8
  %236 = call i64 @IS_VALID_CRED(i32* %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %234
  %239 = call i32 @kauth_cred_unref(i32** %17)
  br label %240

240:                                              ; preds = %238, %234
  br label %241

241:                                              ; preds = %240, %111
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** @NULLVP, align 8
  %244 = icmp ne %struct.TYPE_12__* %242, %243
  br i1 %244, label %245, label %266

245:                                              ; preds = %241
  %246 = load i32, i32* %16, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %263

248:                                              ; preds = %245
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %250 = call i32 @vnode_lock_spin(%struct.TYPE_12__* %249)
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 2
  %253 = load i64, i64* %252, align 8
  %254 = icmp sgt i64 %253, 0
  br i1 %254, label %255, label %260

255:                                              ; preds = %248
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 2
  %258 = load i64, i64* %257, align 8
  %259 = add nsw i64 %258, -1
  store i64 %259, i64* %257, align 8
  br label %260

260:                                              ; preds = %255, %248
  %261 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %262 = call i32 @vnode_unlock(%struct.TYPE_12__* %261)
  br label %263

263:                                              ; preds = %260, %245
  %264 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %265 = call i32 @vnode_rele(%struct.TYPE_12__* %264)
  br label %266

266:                                              ; preds = %263, %241
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %268 = icmp ne %struct.TYPE_12__* %267, null
  br i1 %268, label %269, label %365

269:                                              ; preds = %266
  %270 = load i32, i32* %15, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %293

272:                                              ; preds = %269
  %273 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %274 = call i32 @vnode_lock_spin(%struct.TYPE_12__* %273)
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @VDIR, align 8
  %279 = icmp ne i64 %277, %278
  br i1 %279, label %280, label %290

280:                                              ; preds = %272
  %281 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 2
  %283 = load i64, i64* %282, align 8
  %284 = icmp sgt i64 %283, 0
  br i1 %284, label %285, label %290

285:                                              ; preds = %280
  %286 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i32 0, i32 2
  %288 = load i64, i64* %287, align 8
  %289 = add nsw i64 %288, -1
  store i64 %289, i64* %287, align 8
  br label %290

290:                                              ; preds = %285, %280, %272
  %291 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %292 = call i32 @vnode_unlock(%struct.TYPE_12__* %291)
  br label %293

293:                                              ; preds = %290, %269
  %294 = call i32 (...) @current_thread()
  %295 = call %struct.uthread* @get_bsdthread_info(i32 %294)
  store %struct.uthread* %295, %struct.uthread** %20, align 8
  %296 = load %struct.uthread*, %struct.uthread** %20, align 8
  %297 = getelementptr inbounds %struct.uthread, %struct.uthread* %296, i32 0, i32 0
  store i32 1, i32* %297, align 8
  %298 = load %struct.TYPE_12__*, %struct.TYPE_12__** @NULLVP, align 8
  %299 = load %struct.uthread*, %struct.uthread** %20, align 8
  %300 = getelementptr inbounds %struct.uthread, %struct.uthread* %299, i32 0, i32 1
  store %struct.TYPE_12__* %298, %struct.TYPE_12__** %300, align 8
  br label %301

301:                                              ; preds = %344, %293
  %302 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  store %struct.TYPE_12__* %302, %struct.TYPE_12__** %7, align 8
  %303 = load %struct.TYPE_12__*, %struct.TYPE_12__** @NULLVP, align 8
  %304 = icmp ne %struct.TYPE_12__* %302, %303
  br i1 %304, label %305, label %347

305:                                              ; preds = %301
  %306 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %307 = call i32 @vnode_lock_spin(%struct.TYPE_12__* %306)
  %308 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %309 = call i32 @vnode_rele_internal(%struct.TYPE_12__* %308, i32 0, i32 0, i32 1)
  %310 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %310, i32 0, i32 4
  %312 = load i32, i32* %311, align 8
  %313 = icmp eq i32 %312, 1
  br i1 %313, label %314, label %342

314:                                              ; preds = %305
  %315 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %316 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %315, i32 0, i32 5
  %317 = load i64, i64* %316, align 8
  %318 = icmp eq i64 %317, 0
  br i1 %318, label %319, label %342

319:                                              ; preds = %314
  %320 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %321 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %320, i32 0, i32 6
  %322 = load i32, i32* %321, align 8
  %323 = load i32, i32* @VL_MARKTERM, align 4
  %324 = load i32, i32* @VL_TERMINATE, align 4
  %325 = or i32 %323, %324
  %326 = load i32, i32* @VL_DEAD, align 4
  %327 = or i32 %325, %326
  %328 = and i32 %322, %327
  %329 = load i32, i32* @VL_MARKTERM, align 4
  %330 = icmp eq i32 %328, %329
  br i1 %330, label %331, label %342

331:                                              ; preds = %319
  %332 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %333 = call i32 @vnode_lock_convert(%struct.TYPE_12__* %332)
  %334 = call i32 (...) @NAME_CACHE_LOCK()
  %335 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %336 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %335, i32 0, i32 8
  %337 = load %struct.TYPE_12__*, %struct.TYPE_12__** %336, align 8
  store %struct.TYPE_12__* %337, %struct.TYPE_12__** %14, align 8
  %338 = load %struct.TYPE_12__*, %struct.TYPE_12__** @NULLVP, align 8
  %339 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %340 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %339, i32 0, i32 8
  store %struct.TYPE_12__* %338, %struct.TYPE_12__** %340, align 8
  %341 = call i32 (...) @NAME_CACHE_UNLOCK()
  br label %344

342:                                              ; preds = %319, %314, %305
  %343 = load %struct.TYPE_12__*, %struct.TYPE_12__** @NULLVP, align 8
  store %struct.TYPE_12__* %343, %struct.TYPE_12__** %14, align 8
  br label %344

344:                                              ; preds = %342, %331
  %345 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %346 = call i32 @vnode_unlock(%struct.TYPE_12__* %345)
  br label %301

347:                                              ; preds = %301
  %348 = load %struct.uthread*, %struct.uthread** %20, align 8
  %349 = getelementptr inbounds %struct.uthread, %struct.uthread* %348, i32 0, i32 0
  store i32 0, i32* %349, align 8
  br label %350

350:                                              ; preds = %356, %347
  %351 = load %struct.uthread*, %struct.uthread** %20, align 8
  %352 = getelementptr inbounds %struct.uthread, %struct.uthread* %351, i32 0, i32 1
  %353 = load %struct.TYPE_12__*, %struct.TYPE_12__** %352, align 8
  store %struct.TYPE_12__* %353, %struct.TYPE_12__** %7, align 8
  %354 = load %struct.TYPE_12__*, %struct.TYPE_12__** @NULLVP, align 8
  %355 = icmp ne %struct.TYPE_12__* %353, %354
  br i1 %355, label %356, label %364

356:                                              ; preds = %350
  %357 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %358 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %357, i32 0, i32 7
  %359 = load %struct.TYPE_12__*, %struct.TYPE_12__** %358, align 8
  %360 = load %struct.uthread*, %struct.uthread** %20, align 8
  %361 = getelementptr inbounds %struct.uthread, %struct.uthread* %360, i32 0, i32 1
  store %struct.TYPE_12__* %359, %struct.TYPE_12__** %361, align 8
  %362 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %363 = call i32 @vnode_put(%struct.TYPE_12__* %362)
  br label %350

364:                                              ; preds = %350
  br label %365

365:                                              ; preds = %364, %266
  ret void
}

declare dso_local i64 @vnode_ref(%struct.TYPE_12__*) #1

declare dso_local i32 @vnode_lock_spin(%struct.TYPE_12__*) #1

declare dso_local i32 @vnode_unlock(%struct.TYPE_12__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @vfs_addname(i8*, i32, i32, i32) #1

declare dso_local i32 @NAME_CACHE_LOCK(...) #1

declare dso_local %struct.namecache* @LIST_FIRST(i32*) #1

declare dso_local i32 @cache_delete(%struct.namecache*, i32) #1

declare dso_local %struct.namecache* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @NAME_CACHE_UNLOCK(...) #1

declare dso_local i32 @vfs_removename(i8*) #1

declare dso_local i64 @IS_VALID_CRED(i32*) #1

declare dso_local i32 @kauth_cred_unref(i32**) #1

declare dso_local i32 @vnode_rele(%struct.TYPE_12__*) #1

declare dso_local %struct.uthread* @get_bsdthread_info(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @vnode_rele_internal(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @vnode_lock_convert(%struct.TYPE_12__*) #1

declare dso_local i32 @vnode_put(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
