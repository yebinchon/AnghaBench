; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_rmdir_remove_orphaned_appleDouble.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_rmdir_remove_orphaned_appleDouble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.dirent = type { i64, i32, i8*, i32 }

@EBUSY = common dso_local global i64 0, align 8
@caddr_t = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@FREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"._\00", align 1
@ENOTEMPTY = common dso_local global i64 0, align 8
@VT_HFS = common dso_local global i64 0, align 8
@VT_NFS = common dso_local global i64 0, align 8
@VNODE_REMOVE_SKIP_NAMESPACE_EVENT = common dso_local global i32 0, align 4
@VNODE_REMOVE_NO_AUDIT_PATH = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i64 0, align 8
@UIO_BUFF_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rmdir_remove_orphaned_appleDouble(%struct.TYPE_9__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.dirent*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32 2048, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %22 = call i32 @UIO_SIZEOF(i32 1)
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %14, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %15, align 8
  store i8* null, i8** %16, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = call i64 @vnode_suspend(%struct.TYPE_9__* %26)
  store i64 %27, i64* %20, align 8
  %28 = load i64, i64* %20, align 8
  %29 = load i64, i64* @EBUSY, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32*, i32** %7, align 8
  store i32 1, i32* %32, align 4
  br label %33

33:                                               ; preds = %31, %3
  %34 = load i64, i64* %20, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i64, i64* %20, align 8
  store i64 %37, i64* %4, align 8
  store i32 1, i32* %21, align 4
  br label %418

38:                                               ; preds = %33
  %39 = load i8*, i8** %16, align 8
  %40 = load i32, i32* @caddr_t, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @M_TEMP, align 4
  %43 = load i32, i32* @M_WAITOK, align 4
  %44 = call i32 @MALLOC(i8* %39, i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = load i8*, i8** %16, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %38
  %48 = load i32, i32* @UIO_SYSSPACE, align 4
  %49 = load i32, i32* @UIO_READ, align 4
  %50 = getelementptr inbounds i8, i8* %25, i64 0
  %51 = trunc i64 %23 to i32
  %52 = call i32* @uio_createwithbuffer(i32 1, i32 0, i32 %48, i32 %49, i8* %50, i32 %51)
  store i32* %52, i32** %8, align 8
  br label %53

53:                                               ; preds = %47, %38
  %54 = load i8*, i8** %16, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32*, i32** %8, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %56, %53
  %60 = load i64, i64* @ENOMEM, align 8
  store i64 %60, i64* %20, align 8
  br label %397

61:                                               ; preds = %56
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @uio_setoffset(i32* %62, i32 0)
  store i32 0, i32* %9, align 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %65 = load i32, i32* @FREAD, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i64 @VNOP_OPEN(%struct.TYPE_9__* %64, i32 %65, i32 %66)
  store i64 %67, i64* %20, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %397

70:                                               ; preds = %61
  store i32 1, i32* %12, align 4
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %230, %71
  store i32 2048, i32* %10, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @uio_offset(i32* %74)
  %76 = load i32, i32* @UIO_SYSSPACE, align 4
  %77 = load i32, i32* @UIO_READ, align 4
  %78 = call i32 @uio_reset(i32* %73, i32 %75, i32 %76, i32 %77)
  %79 = load i32*, i32** %8, align 8
  %80 = load i8*, i8** %16, align 8
  %81 = call i32 @CAST_USER_ADDR_T(i8* %80)
  %82 = call i32 @uio_addiov(i32* %79, i32 %81, i32 2048)
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i64 @VNOP_READDIR(%struct.TYPE_9__* %83, i32* %84, i32 0, i32* %9, i32* %11, i32 %85)
  store i64 %86, i64* %20, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %72
  br label %397

89:                                               ; preds = %72
  %90 = load i32*, i32** %8, align 8
  %91 = call i64 @uio_resid(i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %89
  %94 = load i32*, i32** %8, align 8
  %95 = call i64 @uio_resid(i32* %94)
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = sub nsw i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %10, align 4
  br label %100

100:                                              ; preds = %93, %89
  %101 = load i8*, i8** %16, align 8
  store i8* %101, i8** %17, align 8
  %102 = load i8*, i8** %16, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  store i8* %105, i8** %18, align 8
  %106 = load i8*, i8** %17, align 8
  %107 = bitcast i8* %106 to %struct.dirent*
  store %struct.dirent* %107, %struct.dirent** %19, align 8
  %108 = load i8*, i8** %17, align 8
  %109 = load i8*, i8** %18, align 8
  %110 = icmp eq i8* %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %100
  store i32 1, i32* %9, align 4
  br label %112

112:                                              ; preds = %111, %100
  br label %113

113:                                              ; preds = %182, %112
  %114 = load i8*, i8** %17, align 8
  %115 = load i8*, i8** %18, align 8
  %116 = icmp ult i8* %114, %115
  br i1 %116, label %117, label %193

117:                                              ; preds = %113
  %118 = load %struct.dirent*, %struct.dirent** %19, align 8
  %119 = getelementptr inbounds %struct.dirent, %struct.dirent* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %182

122:                                              ; preds = %117
  %123 = load %struct.dirent*, %struct.dirent** %19, align 8
  %124 = getelementptr inbounds %struct.dirent, %struct.dirent* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = icmp eq i32 %125, 1
  br i1 %126, label %127, label %135

127:                                              ; preds = %122
  %128 = load %struct.dirent*, %struct.dirent** %19, align 8
  %129 = getelementptr inbounds %struct.dirent, %struct.dirent* %128, i32 0, i32 2
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 0
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 46
  br i1 %134, label %182, label %135

135:                                              ; preds = %127, %122
  %136 = load %struct.dirent*, %struct.dirent** %19, align 8
  %137 = getelementptr inbounds %struct.dirent, %struct.dirent* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = icmp eq i32 %138, 2
  br i1 %139, label %140, label %156

140:                                              ; preds = %135
  %141 = load %struct.dirent*, %struct.dirent** %19, align 8
  %142 = getelementptr inbounds %struct.dirent, %struct.dirent* %141, i32 0, i32 2
  %143 = load i8*, i8** %142, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 0
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 46
  br i1 %147, label %148, label %156

148:                                              ; preds = %140
  %149 = load %struct.dirent*, %struct.dirent** %19, align 8
  %150 = getelementptr inbounds %struct.dirent, %struct.dirent* %149, i32 0, i32 2
  %151 = load i8*, i8** %150, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 1
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 46
  br i1 %155, label %182, label %156

156:                                              ; preds = %148, %140, %135
  %157 = load %struct.dirent*, %struct.dirent** %19, align 8
  %158 = getelementptr inbounds %struct.dirent, %struct.dirent* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = icmp slt i32 %159, 2
  br i1 %160, label %179, label %161

161:                                              ; preds = %156
  %162 = load %struct.dirent*, %struct.dirent** %19, align 8
  %163 = getelementptr inbounds %struct.dirent, %struct.dirent* %162, i32 0, i32 2
  %164 = load i8*, i8** %163, align 8
  %165 = call i64 @strncmp(i8* %164, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %179, label %167

167:                                              ; preds = %161
  %168 = load %struct.dirent*, %struct.dirent** %19, align 8
  %169 = getelementptr inbounds %struct.dirent, %struct.dirent* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = icmp sge i32 %170, 4
  br i1 %171, label %172, label %181

172:                                              ; preds = %167
  %173 = load %struct.dirent*, %struct.dirent** %19, align 8
  %174 = getelementptr inbounds %struct.dirent, %struct.dirent* %173, i32 0, i32 2
  %175 = load i8*, i8** %174, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 2
  %177 = call i64 @strncmp(i8* %176, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %172, %161, %156
  %180 = load i64, i64* @ENOTEMPTY, align 8
  store i64 %180, i64* %20, align 8
  br label %397

181:                                              ; preds = %172, %167
  br label %182

182:                                              ; preds = %181, %148, %127, %117
  %183 = load i8*, i8** %17, align 8
  %184 = bitcast i8* %183 to i32*
  %185 = load %struct.dirent*, %struct.dirent** %19, align 8
  %186 = getelementptr inbounds %struct.dirent, %struct.dirent* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %184, i64 %188
  %190 = bitcast i32* %189 to i8*
  store i8* %190, i8** %17, align 8
  %191 = load i8*, i8** %17, align 8
  %192 = bitcast i8* %191 to %struct.dirent*
  store %struct.dirent* %192, %struct.dirent** %19, align 8
  br label %113

193:                                              ; preds = %113
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @VT_HFS, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %193
  %200 = load i32, i32* %11, align 4
  %201 = icmp sgt i32 %200, 2
  br i1 %201, label %202, label %203

202:                                              ; preds = %199
  store i32 0, i32* %9, align 4
  br label %203

203:                                              ; preds = %202, %199, %193
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @VT_NFS, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %229

209:                                              ; preds = %203
  %210 = load i32, i32* %9, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %220

212:                                              ; preds = %209
  %213 = load i32, i32* %13, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %220, label %215

215:                                              ; preds = %212
  store i32 1, i32* %13, align 4
  store i32 0, i32* %9, align 4
  %216 = load i32*, i32** %8, align 8
  %217 = load i32, i32* @UIO_SYSSPACE, align 4
  %218 = load i32, i32* @UIO_READ, align 4
  %219 = call i32 @uio_reset(i32* %216, i32 0, i32 %217, i32 %218)
  br label %228

220:                                              ; preds = %212, %209
  %221 = load i32, i32* %9, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %227, label %223

223:                                              ; preds = %220
  %224 = load i32, i32* %13, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %223
  store i32 0, i32* %13, align 4
  br label %227

227:                                              ; preds = %226, %223, %220
  br label %228

228:                                              ; preds = %227, %215
  br label %229

229:                                              ; preds = %228, %203
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %9, align 4
  %232 = icmp ne i32 %231, 0
  %233 = xor i1 %232, true
  br i1 %233, label %72, label %234

234:                                              ; preds = %230
  %235 = load i32*, i32** %8, align 8
  %236 = load i32, i32* @UIO_SYSSPACE, align 4
  %237 = load i32, i32* @UIO_READ, align 4
  %238 = call i32 @uio_reset(i32* %235, i32 0, i32 %236, i32 %237)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %13, align 4
  br label %239

239:                                              ; preds = %392, %234
  store i32 2048, i32* %10, align 4
  %240 = load i32*, i32** %8, align 8
  %241 = load i32*, i32** %8, align 8
  %242 = call i32 @uio_offset(i32* %241)
  %243 = load i32, i32* @UIO_SYSSPACE, align 4
  %244 = load i32, i32* @UIO_READ, align 4
  %245 = call i32 @uio_reset(i32* %240, i32 %242, i32 %243, i32 %244)
  %246 = load i32*, i32** %8, align 8
  %247 = load i8*, i8** %16, align 8
  %248 = call i32 @CAST_USER_ADDR_T(i8* %247)
  %249 = call i32 @uio_addiov(i32* %246, i32 %248, i32 2048)
  %250 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %251 = load i32*, i32** %8, align 8
  %252 = load i32, i32* %6, align 4
  %253 = call i64 @VNOP_READDIR(%struct.TYPE_9__* %250, i32* %251, i32 0, i32* %9, i32* %11, i32 %252)
  store i64 %253, i64* %20, align 8
  %254 = load i64, i64* %20, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %239
  br label %397

257:                                              ; preds = %239
  %258 = load i32*, i32** %8, align 8
  %259 = call i64 @uio_resid(i32* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %268

261:                                              ; preds = %257
  %262 = load i32*, i32** %8, align 8
  %263 = call i64 @uio_resid(i32* %262)
  %264 = load i32, i32* %10, align 4
  %265 = sext i32 %264 to i64
  %266 = sub nsw i64 %265, %263
  %267 = trunc i64 %266 to i32
  store i32 %267, i32* %10, align 4
  br label %268

268:                                              ; preds = %261, %257
  %269 = load i8*, i8** %16, align 8
  store i8* %269, i8** %17, align 8
  %270 = load i8*, i8** %16, align 8
  %271 = load i32, i32* %10, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i8, i8* %270, i64 %272
  store i8* %273, i8** %18, align 8
  %274 = load i8*, i8** %17, align 8
  %275 = bitcast i8* %274 to %struct.dirent*
  store %struct.dirent* %275, %struct.dirent** %19, align 8
  %276 = load i8*, i8** %17, align 8
  %277 = load i8*, i8** %18, align 8
  %278 = icmp eq i8* %276, %277
  br i1 %278, label %279, label %280

279:                                              ; preds = %268
  store i32 1, i32* %9, align 4
  br label %280

280:                                              ; preds = %279, %268
  br label %281

281:                                              ; preds = %344, %280
  %282 = load i8*, i8** %17, align 8
  %283 = load i8*, i8** %18, align 8
  %284 = icmp ult i8* %282, %283
  br i1 %284, label %285, label %355

285:                                              ; preds = %281
  %286 = load %struct.dirent*, %struct.dirent** %19, align 8
  %287 = getelementptr inbounds %struct.dirent, %struct.dirent* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %344

290:                                              ; preds = %285
  %291 = load %struct.dirent*, %struct.dirent** %19, align 8
  %292 = getelementptr inbounds %struct.dirent, %struct.dirent* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = icmp eq i32 %293, 1
  br i1 %294, label %295, label %303

295:                                              ; preds = %290
  %296 = load %struct.dirent*, %struct.dirent** %19, align 8
  %297 = getelementptr inbounds %struct.dirent, %struct.dirent* %296, i32 0, i32 2
  %298 = load i8*, i8** %297, align 8
  %299 = getelementptr inbounds i8, i8* %298, i64 0
  %300 = load i8, i8* %299, align 1
  %301 = sext i8 %300 to i32
  %302 = icmp eq i32 %301, 46
  br i1 %302, label %344, label %303

303:                                              ; preds = %295, %290
  %304 = load %struct.dirent*, %struct.dirent** %19, align 8
  %305 = getelementptr inbounds %struct.dirent, %struct.dirent* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 8
  %307 = icmp eq i32 %306, 2
  br i1 %307, label %308, label %324

308:                                              ; preds = %303
  %309 = load %struct.dirent*, %struct.dirent** %19, align 8
  %310 = getelementptr inbounds %struct.dirent, %struct.dirent* %309, i32 0, i32 2
  %311 = load i8*, i8** %310, align 8
  %312 = getelementptr inbounds i8, i8* %311, i64 0
  %313 = load i8, i8* %312, align 1
  %314 = sext i8 %313 to i32
  %315 = icmp eq i32 %314, 46
  br i1 %315, label %316, label %324

316:                                              ; preds = %308
  %317 = load %struct.dirent*, %struct.dirent** %19, align 8
  %318 = getelementptr inbounds %struct.dirent, %struct.dirent* %317, i32 0, i32 2
  %319 = load i8*, i8** %318, align 8
  %320 = getelementptr inbounds i8, i8* %319, i64 1
  %321 = load i8, i8* %320, align 1
  %322 = sext i8 %321 to i32
  %323 = icmp eq i32 %322, 46
  br i1 %323, label %344, label %324

324:                                              ; preds = %316, %308, %303
  %325 = load i32, i32* %6, align 4
  %326 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %327 = load %struct.dirent*, %struct.dirent** %19, align 8
  %328 = getelementptr inbounds %struct.dirent, %struct.dirent* %327, i32 0, i32 2
  %329 = load i8*, i8** %328, align 8
  %330 = call i32 @CAST_USER_ADDR_T(i8* %329)
  %331 = load i32, i32* @UIO_SYSSPACE, align 4
  %332 = load i32, i32* @VNODE_REMOVE_SKIP_NAMESPACE_EVENT, align 4
  %333 = load i32, i32* @VNODE_REMOVE_NO_AUDIT_PATH, align 4
  %334 = or i32 %332, %333
  %335 = call i64 @unlink1(i32 %325, %struct.TYPE_9__* %326, i32 %330, i32 %331, i32 %334)
  store i64 %335, i64* %20, align 8
  %336 = load i64, i64* %20, align 8
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %343

338:                                              ; preds = %324
  %339 = load i64, i64* %20, align 8
  %340 = load i64, i64* @ENOENT, align 8
  %341 = icmp ne i64 %339, %340
  br i1 %341, label %342, label %343

342:                                              ; preds = %338
  br label %397

343:                                              ; preds = %338, %324
  br label %344

344:                                              ; preds = %343, %316, %295, %285
  %345 = load i8*, i8** %17, align 8
  %346 = bitcast i8* %345 to i32*
  %347 = load %struct.dirent*, %struct.dirent** %19, align 8
  %348 = getelementptr inbounds %struct.dirent, %struct.dirent* %347, i32 0, i32 3
  %349 = load i32, i32* %348, align 8
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %346, i64 %350
  %352 = bitcast i32* %351 to i8*
  store i8* %352, i8** %17, align 8
  %353 = load i8*, i8** %17, align 8
  %354 = bitcast i8* %353 to %struct.dirent*
  store %struct.dirent* %354, %struct.dirent** %19, align 8
  br label %281

355:                                              ; preds = %281
  %356 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %356, i32 0, i32 0
  %358 = load i64, i64* %357, align 8
  %359 = load i64, i64* @VT_HFS, align 8
  %360 = icmp eq i64 %358, %359
  br i1 %360, label %361, label %365

361:                                              ; preds = %355
  %362 = load i32, i32* %11, align 4
  %363 = icmp sgt i32 %362, 2
  br i1 %363, label %364, label %365

364:                                              ; preds = %361
  store i32 0, i32* %9, align 4
  br label %365

365:                                              ; preds = %364, %361, %355
  %366 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %367 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %366, i32 0, i32 0
  %368 = load i64, i64* %367, align 8
  %369 = load i64, i64* @VT_NFS, align 8
  %370 = icmp eq i64 %368, %369
  br i1 %370, label %371, label %391

371:                                              ; preds = %365
  %372 = load i32, i32* %9, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %382

374:                                              ; preds = %371
  %375 = load i32, i32* %13, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %382, label %377

377:                                              ; preds = %374
  store i32 1, i32* %13, align 4
  store i32 0, i32* %9, align 4
  %378 = load i32*, i32** %8, align 8
  %379 = load i32, i32* @UIO_SYSSPACE, align 4
  %380 = load i32, i32* @UIO_READ, align 4
  %381 = call i32 @uio_reset(i32* %378, i32 0, i32 %379, i32 %380)
  br label %390

382:                                              ; preds = %374, %371
  %383 = load i32, i32* %9, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %389, label %385

385:                                              ; preds = %382
  %386 = load i32, i32* %13, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %389

388:                                              ; preds = %385
  store i32 0, i32* %13, align 4
  br label %389

389:                                              ; preds = %388, %385, %382
  br label %390

390:                                              ; preds = %389, %377
  br label %391

391:                                              ; preds = %390, %365
  br label %392

392:                                              ; preds = %391
  %393 = load i32, i32* %9, align 4
  %394 = icmp ne i32 %393, 0
  %395 = xor i1 %394, true
  br i1 %395, label %239, label %396

396:                                              ; preds = %392
  store i64 0, i64* %20, align 8
  br label %397

397:                                              ; preds = %396, %342, %256, %179, %88, %69, %59
  %398 = load i32, i32* %12, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %405

400:                                              ; preds = %397
  %401 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %402 = load i32, i32* @FREAD, align 4
  %403 = load i32, i32* %6, align 4
  %404 = call i32 @VNOP_CLOSE(%struct.TYPE_9__* %401, i32 %402, i32 %403)
  br label %405

405:                                              ; preds = %400, %397
  %406 = load i32*, i32** %8, align 8
  %407 = icmp ne i32* %406, null
  br i1 %407, label %408, label %411

408:                                              ; preds = %405
  %409 = load i32*, i32** %8, align 8
  %410 = call i32 @uio_free(i32* %409)
  br label %411

411:                                              ; preds = %408, %405
  %412 = load i8*, i8** %16, align 8
  %413 = load i32, i32* @M_TEMP, align 4
  %414 = call i32 @FREE(i8* %412, i32 %413)
  %415 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %416 = call i32 @vnode_resume(%struct.TYPE_9__* %415)
  %417 = load i64, i64* %20, align 8
  store i64 %417, i64* %4, align 8
  store i32 1, i32* %21, align 4
  br label %418

418:                                              ; preds = %411, %36
  %419 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %419)
  %420 = load i64, i64* %4, align 8
  ret i64 %420
}

declare dso_local i32 @UIO_SIZEOF(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @vnode_suspend(%struct.TYPE_9__*) #1

declare dso_local i32 @MALLOC(i8*, i32, i32, i32, i32) #1

declare dso_local i32* @uio_createwithbuffer(i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @uio_setoffset(i32*, i32) #1

declare dso_local i64 @VNOP_OPEN(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @uio_reset(i32*, i32, i32, i32) #1

declare dso_local i32 @uio_offset(i32*) #1

declare dso_local i32 @uio_addiov(i32*, i32, i32) #1

declare dso_local i32 @CAST_USER_ADDR_T(i8*) #1

declare dso_local i64 @VNOP_READDIR(%struct.TYPE_9__*, i32*, i32, i32*, i32*, i32) #1

declare dso_local i64 @uio_resid(i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @unlink1(i32, %struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @VNOP_CLOSE(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @uio_free(i32*) #1

declare dso_local i32 @FREE(i8*, i32) #1

declare dso_local i32 @vnode_resume(%struct.TYPE_9__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
