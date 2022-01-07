; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_fatfile.c__FAT_file_extend_r.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_fatfile.c__FAT_file_extend_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i8* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_13__, i32, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32, i32, i8* }
%struct.TYPE_11__ = type { i32, i32, i32, i32* }

@ENOSPC = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._reent*, %struct.TYPE_12__*)* @_FAT_file_extend_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_FAT_file_extend_r(%struct._reent* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._reent*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct._reent* %0, %struct._reent** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %6, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %7, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %9, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %10, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @memset(i32* %28, i32 0, i32 %31)
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = srem i32 %35, %38
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  store i32 %39, i32* %40, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = srem i32 %43, %46
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sdiv i32 %47, %50
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i8* @_FAT_fat_lastCluster(%struct.TYPE_11__* %53, i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  store i8* %57, i8** %58, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sub nsw i32 %61, %64
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i8*
  store i8* %67, i8** %11, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = icmp ugt i8* %68, null
  br i1 %69, label %70, label %100

70:                                               ; preds = %2
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %100

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %100

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %100

83:                                               ; preds = %79
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = call i8* @_FAT_fat_linkFreeCluster(%struct.TYPE_11__* %84, i8* %86)
  store i8* %87, i8** %12, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = call i32 @_FAT_fat_isValidCluster(%struct.TYPE_11__* %88, i8* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %83
  %93 = load i8*, i8** @ENOSPC, align 8
  %94 = load %struct._reent*, %struct._reent** %4, align 8
  %95 = getelementptr inbounds %struct._reent, %struct._reent* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %262

96:                                               ; preds = %83
  %97 = load i8*, i8** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  store i8* %97, i8** %98, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  store i32 0, i32* %99, align 4
  br label %100

100:                                              ; preds = %96, %79, %75, %70, %2
  %101 = load i8*, i8** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = getelementptr i8, i8* %101, i64 %104
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to i8*
  %111 = icmp ult i8* %105, %110
  br i1 %111, label %112, label %133

112:                                              ; preds = %100
  %113 = load i32*, i32** %7, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @_FAT_fat_clusterToSector(%struct.TYPE_11__* %114, i8* %116)
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = add i32 %117, %119
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = inttoptr i64 %123 to i8*
  %125 = load i8*, i8** %11, align 8
  %126 = call i32 @_FAT_cache_writePartialSector(i32* %113, i32* %28, i32 %120, i8* %124, i8* %125)
  %127 = load i8*, i8** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = getelementptr i8, i8* %127, i64 %130
  %132 = ptrtoint i8* %131 to i32
  store i32 %132, i32* %128, align 8
  br label %252

133:                                              ; preds = %100
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %173

137:                                              ; preds = %133
  %138 = load i32*, i32** %7, align 8
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @_FAT_fat_clusterToSector(%struct.TYPE_11__* %139, i8* %141)
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = add i32 %142, %144
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = inttoptr i64 %148 to i8*
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sub nsw i32 %152, %154
  %156 = sext i32 %155 to i64
  %157 = inttoptr i64 %156 to i8*
  %158 = call i32 @_FAT_cache_writePartialSector(i32* %138, i32* %28, i32 %145, i8* %149, i8* %157)
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = sub nsw i32 %161, %163
  %165 = load i8*, i8** %11, align 8
  %166 = sext i32 %164 to i64
  %167 = sub i64 0, %166
  %168 = getelementptr i8, i8* %165, i64 %167
  store i8* %168, i8** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  store i32 0, i32* %169, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %170, align 4
  br label %173

173:                                              ; preds = %137, %133
  br label %174

174:                                              ; preds = %206, %173
  %175 = load i8*, i8** %11, align 8
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = sext i32 %178 to i64
  %180 = inttoptr i64 %179 to i8*
  %181 = icmp uge i8* %175, %180
  br i1 %181, label %182, label %227

182:                                              ; preds = %174
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = icmp uge i32 %184, %187
  br i1 %188, label %189, label %206

189:                                              ; preds = %182
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  store i32 0, i32* %190, align 4
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  %193 = load i8*, i8** %192, align 8
  %194 = call i8* @_FAT_fat_linkFreeCluster(%struct.TYPE_11__* %191, i8* %193)
  store i8* %194, i8** %12, align 8
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %196 = load i8*, i8** %12, align 8
  %197 = call i32 @_FAT_fat_isValidCluster(%struct.TYPE_11__* %195, i8* %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %203, label %199

199:                                              ; preds = %189
  %200 = load i8*, i8** @ENOSPC, align 8
  %201 = load %struct._reent*, %struct._reent** %4, align 8
  %202 = getelementptr inbounds %struct._reent, %struct._reent* %201, i32 0, i32 0
  store i8* %200, i8** %202, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %262

203:                                              ; preds = %189
  %204 = load i8*, i8** %12, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  store i8* %204, i8** %205, align 8
  br label %206

206:                                              ; preds = %203, %182
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  %209 = load i8*, i8** %208, align 8
  %210 = call i32 @_FAT_fat_clusterToSector(%struct.TYPE_11__* %207, i8* %209)
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = add i32 %210, %212
  store i32 %213, i32* %13, align 4
  %214 = load i32*, i32** %7, align 8
  %215 = load i32, i32* %13, align 4
  %216 = call i32 @_FAT_cache_writeSectors(i32* %214, i32 %215, i32 1, i32* %28)
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i8*, i8** %11, align 8
  %221 = sext i32 %219 to i64
  %222 = sub i64 0, %221
  %223 = getelementptr i8, i8* %220, i64 %222
  store i8* %223, i8** %11, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %224, align 4
  br label %174

227:                                              ; preds = %174
  %228 = load %struct._reent*, %struct._reent** %4, align 8
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %230 = load i8*, i8** %11, align 8
  %231 = call i32 @_FAT_check_position_for_next_cluster(%struct._reent* %228, %struct.TYPE_13__* %8, %struct.TYPE_11__* %229, i8* %230, i32* null)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %234, label %233

233:                                              ; preds = %227
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %262

234:                                              ; preds = %227
  %235 = load i8*, i8** %11, align 8
  %236 = icmp ugt i8* %235, null
  br i1 %236, label %237, label %251

237:                                              ; preds = %234
  %238 = load i32*, i32** %7, align 8
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  %241 = load i8*, i8** %240, align 8
  %242 = call i32 @_FAT_fat_clusterToSector(%struct.TYPE_11__* %239, i8* %241)
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = add i32 %242, %244
  %246 = load i8*, i8** %11, align 8
  %247 = call i32 @_FAT_cache_writePartialSector(i32* %238, i32* %28, i32 %245, i8* null, i8* %246)
  %248 = load i8*, i8** %11, align 8
  %249 = ptrtoint i8* %248 to i32
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  store i32 %249, i32* %250, align 8
  br label %251

251:                                              ; preds = %237, %234
  br label %252

252:                                              ; preds = %251, %112
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 2
  %255 = bitcast %struct.TYPE_13__* %254 to i8*
  %256 = bitcast %struct.TYPE_13__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %255, i8* align 8 %256, i64 16, i1 false)
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 0
  store i32 %259, i32* %261, align 8
  store i32 1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %262

262:                                              ; preds = %252, %233, %199, %92
  %263 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %263)
  %264 = load i32, i32* %3, align 4
  ret i32 %264
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i8* @_FAT_fat_lastCluster(%struct.TYPE_11__*, i32) #2

declare dso_local i8* @_FAT_fat_linkFreeCluster(%struct.TYPE_11__*, i8*) #2

declare dso_local i32 @_FAT_fat_isValidCluster(%struct.TYPE_11__*, i8*) #2

declare dso_local i32 @_FAT_cache_writePartialSector(i32*, i32*, i32, i8*, i8*) #2

declare dso_local i32 @_FAT_fat_clusterToSector(%struct.TYPE_11__*, i8*) #2

declare dso_local i32 @_FAT_cache_writeSectors(i32*, i32, i32, i32*) #2

declare dso_local i32 @_FAT_check_position_for_next_cluster(%struct._reent*, %struct.TYPE_13__*, %struct.TYPE_11__*, i8*, i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
