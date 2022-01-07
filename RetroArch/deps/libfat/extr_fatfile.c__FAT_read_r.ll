; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libfat/extr_fatfile.c__FAT_read_r.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libfat/extr_fatfile.c__FAT_read_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i8* }
%struct.TYPE_8__ = type { i64, i64, i64, %struct.TYPE_9__, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_9__ = type { i32, i64, i64 }
%struct.TYPE_7__ = type { i32, i64, i64, i32, i32* }

@EBADF = common dso_local global i8* null, align 8
@CLUSTER_FREE = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i8* null, align 8
@EIO = common dso_local global i8* null, align 8
@CLUSTER_EOF = common dso_local global i64 0, align 8
@LIMIT_SECTORS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_FAT_read_r(%struct._reent* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._reent*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_9__, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct._reent* %0, %struct._reent** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %10, align 8
  store i32 1, i32* %17, align 4
  %23 = load i64, i64* %9, align 8
  %24 = icmp ule i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %467

26:                                               ; preds = %4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %28 = icmp eq %struct.TYPE_8__* %27, null
  br i1 %28, label %39, label %29

29:                                               ; preds = %26
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %34, %29, %26
  %40 = load i8*, i8** @EBADF, align 8
  %41 = load %struct._reent*, %struct._reent** %6, align 8
  %42 = getelementptr inbounds %struct._reent, %struct._reent* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  store i32 -1, i32* %5, align 4
  br label %467

43:                                               ; preds = %34
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  store %struct.TYPE_7__* %46, %struct.TYPE_7__** %11, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  %49 = call i32 @_FAT_lock(i32* %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp sge i64 %52, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %43
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @CLUSTER_FREE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %57, %43
  %64 = load i8*, i8** @EOVERFLOW, align 8
  %65 = load %struct._reent*, %struct._reent** %6, align 8
  %66 = getelementptr inbounds %struct._reent, %struct._reent* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 3
  %69 = call i32 @_FAT_unlock(i32* %68)
  store i32 0, i32* %5, align 4
  br label %467

70:                                               ; preds = %57
  %71 = load i64, i64* %9, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %71, %74
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ugt i64 %75, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %70
  %81 = load i8*, i8** @EOVERFLOW, align 8
  %82 = load %struct._reent*, %struct._reent** %6, align 8
  %83 = getelementptr inbounds %struct._reent, %struct._reent* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %86, %89
  store i64 %90, i64* %9, align 8
  br label %91

91:                                               ; preds = %80, %70
  %92 = load i64, i64* %9, align 8
  store i64 %92, i64* %16, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 3
  %95 = bitcast %struct.TYPE_9__* %13 to i8*
  %96 = bitcast %struct.TYPE_9__* %94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %95, i8* align 8 %96, i64 24, i1 false)
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 4
  %101 = load i32*, i32** %100, align 8
  store i32* %101, i32** %12, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sub i32 %104, %106
  store i32 %107, i32* %15, align 4
  %108 = load i32, i32* %15, align 4
  %109 = zext i32 %108 to i64
  %110 = load i64, i64* %16, align 8
  %111 = icmp ugt i64 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %91
  %113 = load i64, i64* %16, align 8
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %15, align 4
  br label %115

115:                                              ; preds = %112, %91
  %116 = load i32, i32* %15, align 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp ult i32 %116, %119
  br i1 %120, label %121, label %163

121:                                              ; preds = %115
  %122 = load i32, i32* %17, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %163

124:                                              ; preds = %121
  %125 = load i32*, i32** %12, align 8
  %126 = load i8*, i8** %8, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = call i64 @_FAT_fat_clusterToSector(%struct.TYPE_7__* %127, i64 %129)
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = add i64 %130, %132
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %15, align 4
  %137 = zext i32 %136 to i64
  %138 = call i32 @_FAT_cache_readPartialSector(i32* %125, i8* %126, i64 %133, i32 %135, i64 %137)
  %139 = load i32, i32* %15, align 4
  %140 = zext i32 %139 to i64
  %141 = load i64, i64* %16, align 8
  %142 = sub i64 %141, %140
  store i64 %142, i64* %16, align 8
  %143 = load i32, i32* %15, align 4
  %144 = load i8*, i8** %8, align 8
  %145 = zext i32 %143 to i64
  %146 = getelementptr inbounds i8, i8* %144, i64 %145
  store i8* %146, i8** %8, align 8
  %147 = load i32, i32* %15, align 4
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = add i32 %149, %147
  store i32 %150, i32* %148, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp uge i32 %152, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %124
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  store i32 0, i32* %158, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %159, align 8
  br label %162

162:                                              ; preds = %157, %124
  br label %163

163:                                              ; preds = %162, %121, %115
  %164 = load i64, i64* %16, align 8
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = sub i64 %167, %169
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = zext i32 %173 to i64
  %175 = mul i64 %170, %174
  %176 = icmp ugt i64 %164, %175
  br i1 %176, label %177, label %185

177:                                              ; preds = %163
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = sub i64 %180, %182
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %15, align 4
  br label %193

185:                                              ; preds = %163
  %186 = load i64, i64* %16, align 8
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = zext i32 %189 to i64
  %191 = udiv i64 %186, %190
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %15, align 4
  br label %193

193:                                              ; preds = %185, %177
  %194 = load i32, i32* %15, align 4
  %195 = icmp ugt i32 %194, 0
  br i1 %195, label %196, label %239

196:                                              ; preds = %193
  %197 = load i32, i32* %17, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %239

199:                                              ; preds = %196
  %200 = load i32*, i32** %12, align 8
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = call i64 @_FAT_fat_clusterToSector(%struct.TYPE_7__* %201, i64 %203)
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = add i64 %204, %206
  %208 = load i32, i32* %15, align 4
  %209 = load i8*, i8** %8, align 8
  %210 = call i32 @_FAT_cache_readSectors(i32* %200, i64 %207, i32 %208, i8* %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %216, label %212

212:                                              ; preds = %199
  store i32 0, i32* %17, align 4
  %213 = load i8*, i8** @EIO, align 8
  %214 = load %struct._reent*, %struct._reent** %6, align 8
  %215 = getelementptr inbounds %struct._reent, %struct._reent* %214, i32 0, i32 0
  store i8* %213, i8** %215, align 8
  br label %238

216:                                              ; preds = %199
  %217 = load i32, i32* %15, align 4
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = mul i32 %217, %220
  %222 = load i8*, i8** %8, align 8
  %223 = zext i32 %221 to i64
  %224 = getelementptr inbounds i8, i8* %222, i64 %223
  store i8* %224, i8** %8, align 8
  %225 = load i32, i32* %15, align 4
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = mul i32 %225, %228
  %230 = zext i32 %229 to i64
  %231 = load i64, i64* %16, align 8
  %232 = sub i64 %231, %230
  store i64 %232, i64* %16, align 8
  %233 = load i32, i32* %15, align 4
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = add i64 %236, %234
  store i64 %237, i64* %235, align 8
  br label %238

238:                                              ; preds = %216, %212
  br label %239

239:                                              ; preds = %238, %196, %193
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = icmp uge i64 %241, %244
  br i1 %245, label %246, label %280

246:                                              ; preds = %239
  %247 = load i32, i32* %17, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %280

249:                                              ; preds = %246
  %250 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = call i64 @_FAT_fat_nextCluster(%struct.TYPE_7__* %250, i64 %252)
  store i64 %253, i64* %14, align 8
  %254 = load i64, i64* %16, align 8
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %256, label %265

256:                                              ; preds = %249
  %257 = load i64, i64* %14, align 8
  %258 = load i64, i64* @CLUSTER_EOF, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %265

260:                                              ; preds = %256
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  store i64 %263, i64* %264, align 8
  br label %279

265:                                              ; preds = %256, %249
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %267 = load i64, i64* %14, align 8
  %268 = call i32 @_FAT_fat_isValidCluster(%struct.TYPE_7__* %266, i64 %267)
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %274, label %270

270:                                              ; preds = %265
  %271 = load i8*, i8** @EIO, align 8
  %272 = load %struct._reent*, %struct._reent** %6, align 8
  %273 = getelementptr inbounds %struct._reent, %struct._reent* %272, i32 0, i32 0
  store i8* %271, i8** %273, align 8
  store i32 0, i32* %17, align 4
  br label %278

274:                                              ; preds = %265
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  store i64 0, i64* %275, align 8
  %276 = load i64, i64* %14, align 8
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  store i64 %276, i64* %277, align 8
  br label %278

278:                                              ; preds = %274, %270
  br label %279

279:                                              ; preds = %278, %260
  br label %280

280:                                              ; preds = %279, %246, %239
  br label %281

281:                                              ; preds = %374, %280
  %282 = load i64, i64* %16, align 8
  %283 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 2
  %285 = load i64, i64* %284, align 8
  %286 = icmp uge i64 %282, %285
  br i1 %286, label %287, label %290

287:                                              ; preds = %281
  %288 = load i32, i32* %17, align 4
  %289 = icmp ne i32 %288, 0
  br label %290

290:                                              ; preds = %287, %281
  %291 = phi i1 [ false, %281 ], [ %289, %287 ]
  br i1 %291, label %292, label %375

292:                                              ; preds = %290
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  store i64 %294, i64* %19, align 8
  store i64 0, i64* %20, align 8
  br label %295

295:                                              ; preds = %318, %292
  %296 = load i64, i64* %19, align 8
  store i64 %296, i64* %18, align 8
  %297 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %298 = load i64, i64* %18, align 8
  %299 = call i64 @_FAT_fat_nextCluster(%struct.TYPE_7__* %297, i64 %298)
  store i64 %299, i64* %19, align 8
  %300 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %300, i32 0, i32 2
  %302 = load i64, i64* %301, align 8
  %303 = load i64, i64* %20, align 8
  %304 = add i64 %303, %302
  store i64 %304, i64* %20, align 8
  br label %305

305:                                              ; preds = %295
  %306 = load i64, i64* %19, align 8
  %307 = load i64, i64* %18, align 8
  %308 = add nsw i64 %307, 1
  %309 = icmp eq i64 %306, %308
  br i1 %309, label %310, label %318

310:                                              ; preds = %305
  %311 = load i64, i64* %20, align 8
  %312 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %313 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %312, i32 0, i32 2
  %314 = load i64, i64* %313, align 8
  %315 = add i64 %311, %314
  %316 = load i64, i64* %16, align 8
  %317 = icmp ule i64 %315, %316
  br label %318

318:                                              ; preds = %310, %305
  %319 = phi i1 [ false, %305 ], [ %317, %310 ]
  br i1 %319, label %295, label %320

320:                                              ; preds = %318
  %321 = load i32*, i32** %12, align 8
  %322 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %323 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %324 = load i64, i64* %323, align 8
  %325 = call i64 @_FAT_fat_clusterToSector(%struct.TYPE_7__* %322, i64 %324)
  %326 = load i64, i64* %20, align 8
  %327 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = zext i32 %329 to i64
  %331 = udiv i64 %326, %330
  %332 = trunc i64 %331 to i32
  %333 = load i8*, i8** %8, align 8
  %334 = call i32 @_FAT_cache_readSectors(i32* %321, i64 %325, i32 %332, i8* %333)
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %340, label %336

336:                                              ; preds = %320
  store i32 0, i32* %17, align 4
  %337 = load i8*, i8** @EIO, align 8
  %338 = load %struct._reent*, %struct._reent** %6, align 8
  %339 = getelementptr inbounds %struct._reent, %struct._reent* %338, i32 0, i32 0
  store i8* %337, i8** %339, align 8
  br label %375

340:                                              ; preds = %320
  %341 = load i64, i64* %20, align 8
  %342 = load i8*, i8** %8, align 8
  %343 = getelementptr inbounds i8, i8* %342, i64 %341
  store i8* %343, i8** %8, align 8
  %344 = load i64, i64* %20, align 8
  %345 = load i64, i64* %16, align 8
  %346 = sub i64 %345, %344
  store i64 %346, i64* %16, align 8
  %347 = load i64, i64* %16, align 8
  %348 = icmp eq i64 %347, 0
  br i1 %348, label %349, label %360

349:                                              ; preds = %340
  %350 = load i64, i64* %19, align 8
  %351 = load i64, i64* @CLUSTER_EOF, align 8
  %352 = icmp eq i64 %350, %351
  br i1 %352, label %353, label %360

353:                                              ; preds = %349
  %354 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %355 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %354, i32 0, i32 1
  %356 = load i64, i64* %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  store i64 %356, i64* %357, align 8
  %358 = load i64, i64* %18, align 8
  %359 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  store i64 %358, i64* %359, align 8
  br label %374

360:                                              ; preds = %349, %340
  %361 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %362 = load i64, i64* %19, align 8
  %363 = call i32 @_FAT_fat_isValidCluster(%struct.TYPE_7__* %361, i64 %362)
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %369, label %365

365:                                              ; preds = %360
  %366 = load i8*, i8** @EIO, align 8
  %367 = load %struct._reent*, %struct._reent** %6, align 8
  %368 = getelementptr inbounds %struct._reent, %struct._reent* %367, i32 0, i32 0
  store i8* %366, i8** %368, align 8
  store i32 0, i32* %17, align 4
  br label %373

369:                                              ; preds = %360
  %370 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  store i64 0, i64* %370, align 8
  %371 = load i64, i64* %19, align 8
  %372 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  store i64 %371, i64* %372, align 8
  br label %373

373:                                              ; preds = %369, %365
  br label %374

374:                                              ; preds = %373, %353
  br label %281

375:                                              ; preds = %336, %290
  %376 = load i64, i64* %16, align 8
  %377 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %378 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = zext i32 %379 to i64
  %381 = udiv i64 %376, %380
  %382 = trunc i64 %381 to i32
  store i32 %382, i32* %15, align 4
  %383 = load i32, i32* %15, align 4
  %384 = icmp ugt i32 %383, 0
  br i1 %384, label %385, label %425

385:                                              ; preds = %375
  %386 = load i32, i32* %17, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %425

388:                                              ; preds = %385
  %389 = load i32*, i32** %12, align 8
  %390 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %391 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %392 = load i64, i64* %391, align 8
  %393 = call i64 @_FAT_fat_clusterToSector(%struct.TYPE_7__* %390, i64 %392)
  %394 = load i32, i32* %15, align 4
  %395 = load i8*, i8** %8, align 8
  %396 = call i32 @_FAT_cache_readSectors(i32* %389, i64 %393, i32 %394, i8* %395)
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %402, label %398

398:                                              ; preds = %388
  store i32 0, i32* %17, align 4
  %399 = load i8*, i8** @EIO, align 8
  %400 = load %struct._reent*, %struct._reent** %6, align 8
  %401 = getelementptr inbounds %struct._reent, %struct._reent* %400, i32 0, i32 0
  store i8* %399, i8** %401, align 8
  br label %424

402:                                              ; preds = %388
  %403 = load i32, i32* %15, align 4
  %404 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %405 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = mul i32 %403, %406
  %408 = load i8*, i8** %8, align 8
  %409 = zext i32 %407 to i64
  %410 = getelementptr inbounds i8, i8* %408, i64 %409
  store i8* %410, i8** %8, align 8
  %411 = load i32, i32* %15, align 4
  %412 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %413 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 8
  %415 = mul i32 %411, %414
  %416 = zext i32 %415 to i64
  %417 = load i64, i64* %16, align 8
  %418 = sub i64 %417, %416
  store i64 %418, i64* %16, align 8
  %419 = load i32, i32* %15, align 4
  %420 = zext i32 %419 to i64
  %421 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  %422 = load i64, i64* %421, align 8
  %423 = add i64 %422, %420
  store i64 %423, i64* %421, align 8
  br label %424

424:                                              ; preds = %402, %398
  br label %425

425:                                              ; preds = %424, %385, %375
  %426 = load i64, i64* %16, align 8
  %427 = icmp ugt i64 %426, 0
  br i1 %427, label %428, label %449

428:                                              ; preds = %425
  %429 = load i32, i32* %17, align 4
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %449

431:                                              ; preds = %428
  %432 = load i32*, i32** %12, align 8
  %433 = load i8*, i8** %8, align 8
  %434 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %435 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %436 = load i64, i64* %435, align 8
  %437 = call i64 @_FAT_fat_clusterToSector(%struct.TYPE_7__* %434, i64 %436)
  %438 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  %439 = load i64, i64* %438, align 8
  %440 = add i64 %437, %439
  %441 = load i64, i64* %16, align 8
  %442 = call i32 @_FAT_cache_readPartialSector(i32* %432, i8* %433, i64 %440, i32 0, i64 %441)
  %443 = load i64, i64* %16, align 8
  %444 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %445 = load i32, i32* %444, align 8
  %446 = zext i32 %445 to i64
  %447 = add i64 %446, %443
  %448 = trunc i64 %447 to i32
  store i32 %448, i32* %444, align 8
  store i64 0, i64* %16, align 8
  br label %449

449:                                              ; preds = %431, %428, %425
  %450 = load i64, i64* %9, align 8
  %451 = load i64, i64* %16, align 8
  %452 = sub i64 %450, %451
  store i64 %452, i64* %9, align 8
  %453 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %454 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %453, i32 0, i32 3
  %455 = bitcast %struct.TYPE_9__* %454 to i8*
  %456 = bitcast %struct.TYPE_9__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %455, i8* align 8 %456, i64 24, i1 false)
  %457 = load i64, i64* %9, align 8
  %458 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %459 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %458, i32 0, i32 0
  %460 = load i64, i64* %459, align 8
  %461 = add i64 %460, %457
  store i64 %461, i64* %459, align 8
  %462 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %463 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %462, i32 0, i32 3
  %464 = call i32 @_FAT_unlock(i32* %463)
  %465 = load i64, i64* %9, align 8
  %466 = trunc i64 %465 to i32
  store i32 %466, i32* %5, align 4
  br label %467

467:                                              ; preds = %449, %63, %39, %25
  %468 = load i32, i32* %5, align 4
  ret i32 %468
}

declare dso_local i32 @_FAT_lock(i32*) #1

declare dso_local i32 @_FAT_unlock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @_FAT_cache_readPartialSector(i32*, i8*, i64, i32, i64) #1

declare dso_local i64 @_FAT_fat_clusterToSector(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @_FAT_cache_readSectors(i32*, i64, i32, i8*) #1

declare dso_local i64 @_FAT_fat_nextCluster(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @_FAT_fat_isValidCluster(%struct.TYPE_7__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
