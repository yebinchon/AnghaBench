; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_files.c_FS_LoadZipFile.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_files.c_FS_LoadZipFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8*, i8*, i32, %struct.TYPE_11__*, i8*, i8*, %struct.TYPE_11__**, i32 }
%struct.TYPE_11__ = type { i8*, %struct.TYPE_11__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, i8* }

@MAX_ZPATH = common dso_local global i32 0, align 4
@UNZ_OK = common dso_local global i32 0, align 4
@fs_packFiles = common dso_local global i32 0, align 4
@MAX_FILEHASH_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".pk3\00", align 1
@fs_checksumFeed = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (i8*, i8*)* @FS_LoadZipFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @FS_LoadZipFile(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_9__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %21 = load i32, i32* @MAX_ZPATH, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %11, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %12, align 8
  store i32 0, i32* %17, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @unzOpen(i8* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @unzGetGlobalInfo(i32 %27, %struct.TYPE_8__* %10)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @UNZ_OK, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  store i32 1, i32* %20, align 4
  br label %301

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @fs_packFiles, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* @fs_packFiles, align 4
  store i32 0, i32* %15, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @unzGoToFirstFile(i32 %38)
  store i32 0, i32* %14, align 4
  br label %40

40:                                               ; preds = %60, %33
  %41 = load i32, i32* %14, align 4
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %40
  %46 = load i32, i32* %8, align 4
  %47 = trunc i64 %22 to i32
  %48 = call i32 @unzGetCurrentFileInfo(i32 %46, %struct.TYPE_9__* %13, i8* %24, i32 %47, i32* null, i32 0, i32* null, i32 0)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @UNZ_OK, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %63

53:                                               ; preds = %45
  %54 = call i32 @strlen(i8* %24)
  %55 = add nsw i32 %54, 1
  %56 = load i32, i32* %15, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @unzGoToNextFile(i32 %58)
  br label %60

60:                                               ; preds = %53
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %14, align 4
  br label %40

63:                                               ; preds = %52, %40
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 24
  %68 = load i32, i32* %15, align 4
  %69 = sext i32 %68 to i64
  %70 = add i64 %67, %69
  %71 = trunc i64 %70 to i32
  %72 = call i8* @Z_Malloc(i32 %71)
  %73 = bitcast i8* %72 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %73, %struct.TYPE_11__** %6, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %75 = bitcast %struct.TYPE_11__* %74 to i8*
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 24
  %80 = getelementptr inbounds i8, i8* %75, i64 %79
  store i8* %80, i8** %19, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 4
  %85 = trunc i64 %84 to i32
  %86 = call i8* @Z_Malloc(i32 %85)
  %87 = bitcast i8* %86 to i32*
  store i32* %87, i32** %18, align 8
  store i32 1, i32* %14, align 4
  br label %88

88:                                               ; preds = %99, %63
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* @MAX_FILEHASH_SIZE, align 4
  %91 = icmp sle i32 %89, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %88
  %93 = load i32, i32* %14, align 4
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp sgt i32 %93, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %102

98:                                               ; preds = %92
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %14, align 4
  %101 = shl i32 %100, 1
  store i32 %101, i32* %14, align 4
  br label %88

102:                                              ; preds = %97, %88
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = mul i64 %104, 8
  %106 = add i64 72, %105
  %107 = trunc i64 %106 to i32
  %108 = call i8* @Z_Malloc(i32 %107)
  %109 = bitcast i8* %108 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %109, %struct.TYPE_10__** %7, align 8
  %110 = load i32, i32* %14, align 4
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %114 = bitcast %struct.TYPE_10__* %113 to i8*
  %115 = getelementptr inbounds i8, i8* %114, i64 72
  %116 = bitcast i8* %115 to %struct.TYPE_11__**
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 7
  store %struct.TYPE_11__** %116, %struct.TYPE_11__*** %118, align 8
  store i32 0, i32* %14, align 4
  br label %119

119:                                              ; preds = %132, %102
  %120 = load i32, i32* %14, align 4
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %135

125:                                              ; preds = %119
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 7
  %128 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %127, align 8
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %128, i64 %130
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %131, align 8
  br label %132

132:                                              ; preds = %125
  %133 = load i32, i32* %14, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %14, align 4
  br label %119

135:                                              ; preds = %119
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = load i8*, i8** %4, align 8
  %140 = call i32 @Q_strncpyz(i8* %138, i8* %139, i32 8)
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 2
  %143 = load i8*, i8** %142, align 8
  %144 = load i8*, i8** %5, align 8
  %145 = call i32 @Q_strncpyz(i8* %143, i8* %144, i32 8)
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 2
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @strlen(i8* %148)
  %150 = icmp sgt i32 %149, 4
  br i1 %150, label %151, label %175

151:                                              ; preds = %135
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 2
  %154 = load i8*, i8** %153, align 8
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 2
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 @strlen(i8* %157)
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %154, i64 %159
  %161 = getelementptr inbounds i8, i8* %160, i64 -4
  %162 = call i32 @Q_stricmp(i8* %161, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %175, label %164

164:                                              ; preds = %151
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 2
  %167 = load i8*, i8** %166, align 8
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 2
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 @strlen(i8* %170)
  %172 = sub nsw i32 %171, 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %167, i64 %173
  store i8 0, i8* %174, align 1
  br label %175

175:                                              ; preds = %164, %151, %135
  %176 = load i32, i32* %8, align 4
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 8
  store i32 %176, i32* %178, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 3
  store i32 %180, i32* %182, align 8
  %183 = load i32, i32* %8, align 4
  %184 = call i32 @unzGoToFirstFile(i32 %183)
  store i32 0, i32* %14, align 4
  br label %185

185:                                              ; preds = %265, %175
  %186 = load i32, i32* %14, align 4
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = icmp slt i32 %186, %188
  br i1 %189, label %190, label %268

190:                                              ; preds = %185
  %191 = load i32, i32* %8, align 4
  %192 = trunc i64 %22 to i32
  %193 = call i32 @unzGetCurrentFileInfo(i32 %191, %struct.TYPE_9__* %13, i8* %24, i32 %192, i32* null, i32 0, i32* null, i32 0)
  store i32 %193, i32* %9, align 4
  %194 = load i32, i32* %9, align 4
  %195 = load i32, i32* @UNZ_OK, align 4
  %196 = icmp ne i32 %194, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %190
  br label %268

198:                                              ; preds = %190
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = icmp sgt i64 %200, 0
  br i1 %201, label %202, label %212

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %204 = load i8*, i8** %203, align 8
  %205 = call i8* @LittleLong(i8* %204)
  %206 = ptrtoint i8* %205 to i32
  %207 = load i32*, i32** %18, align 8
  %208 = load i32, i32* %17, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %17, align 4
  %210 = sext i32 %208 to i64
  %211 = getelementptr inbounds i32, i32* %207, i64 %210
  store i32 %206, i32* %211, align 4
  br label %212

212:                                              ; preds = %202, %198
  %213 = call i32 @Q_strlwr(i8* %24)
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = call i64 @FS_HashFileName(i8* %24, i32 %216)
  store i64 %217, i64* %16, align 8
  %218 = load i8*, i8** %19, align 8
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %220 = load i32, i32* %14, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 0
  store i8* %218, i8** %223, align 8
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %225 = load i32, i32* %14, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 0
  %229 = load i8*, i8** %228, align 8
  %230 = call i32 @strcpy(i8* %229, i8* %24)
  %231 = call i32 @strlen(i8* %24)
  %232 = add nsw i32 %231, 1
  %233 = load i8*, i8** %19, align 8
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds i8, i8* %233, i64 %234
  store i8* %235, i8** %19, align 8
  %236 = load i32, i32* %8, align 4
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %238 = load i32, i32* %14, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 2
  %242 = call i32 @unzGetCurrentFileInfoPosition(i32 %236, i32* %241)
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 7
  %245 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %244, align 8
  %246 = load i64, i64* %16, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %245, i64 %246
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %247, align 8
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %250 = load i32, i32* %14, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 1
  store %struct.TYPE_11__* %248, %struct.TYPE_11__** %253, align 8
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %255 = load i32, i32* %14, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i64 %256
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 7
  %260 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %259, align 8
  %261 = load i64, i64* %16, align 8
  %262 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %260, i64 %261
  store %struct.TYPE_11__* %257, %struct.TYPE_11__** %262, align 8
  %263 = load i32, i32* %8, align 4
  %264 = call i32 @unzGoToNextFile(i32 %263)
  br label %265

265:                                              ; preds = %212
  %266 = load i32, i32* %14, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %14, align 4
  br label %185

268:                                              ; preds = %197, %185
  %269 = load i32*, i32** %18, align 8
  %270 = load i32, i32* %17, align 4
  %271 = mul nsw i32 4, %270
  %272 = call i8* @Com_BlockChecksum(i32* %269, i32 %271)
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 6
  store i8* %272, i8** %274, align 8
  %275 = load i32*, i32** %18, align 8
  %276 = load i32, i32* %17, align 4
  %277 = mul nsw i32 4, %276
  %278 = load i8*, i8** @fs_checksumFeed, align 8
  %279 = call i8* @LittleLong(i8* %278)
  %280 = call i8* @Com_BlockChecksumKey(i32* %275, i32 %277, i8* %279)
  %281 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 5
  store i8* %280, i8** %282, align 8
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 6
  %285 = load i8*, i8** %284, align 8
  %286 = call i8* @LittleLong(i8* %285)
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 6
  store i8* %286, i8** %288, align 8
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 5
  %291 = load i8*, i8** %290, align 8
  %292 = call i8* @LittleLong(i8* %291)
  %293 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %293, i32 0, i32 5
  store i8* %292, i8** %294, align 8
  %295 = load i32*, i32** %18, align 8
  %296 = call i32 @Z_Free(i32* %295)
  %297 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %298 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i32 0, i32 4
  store %struct.TYPE_11__* %297, %struct.TYPE_11__** %299, align 8
  %300 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %300, %struct.TYPE_10__** %3, align 8
  store i32 1, i32* %20, align 4
  br label %301

301:                                              ; preds = %268, %32
  %302 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %302)
  %303 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  ret %struct.TYPE_10__* %303
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @unzOpen(i8*) #2

declare dso_local i32 @unzGetGlobalInfo(i32, %struct.TYPE_8__*) #2

declare dso_local i32 @unzGoToFirstFile(i32) #2

declare dso_local i32 @unzGetCurrentFileInfo(i32, %struct.TYPE_9__*, i8*, i32, i32*, i32, i32*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @unzGoToNextFile(i32) #2

declare dso_local i8* @Z_Malloc(i32) #2

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #2

declare dso_local i32 @Q_stricmp(i8*, i8*) #2

declare dso_local i8* @LittleLong(i8*) #2

declare dso_local i32 @Q_strlwr(i8*) #2

declare dso_local i64 @FS_HashFileName(i8*, i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @unzGetCurrentFileInfoPosition(i32, i32*) #2

declare dso_local i8* @Com_BlockChecksum(i32*, i32) #2

declare dso_local i8* @Com_BlockChecksumKey(i32*, i32, i8*) #2

declare dso_local i32 @Z_Free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
