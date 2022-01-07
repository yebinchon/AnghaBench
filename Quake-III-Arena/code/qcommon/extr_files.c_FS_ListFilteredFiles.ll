; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_files.c_FS_ListFilteredFiles.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_files.c_FS_ListFilteredFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_12__ = type { i64 }

@MAX_FOUND_FILES = common dso_local global i32 0, align 4
@MAX_ZPATH = common dso_local global i32 0, align 4
@fs_searchpaths = common dso_local global %struct.TYPE_9__* null, align 8
@ERR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Filesystem call made without initialization\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@qfalse = common dso_local global i32 0, align 4
@fs_restrict = common dso_local global %struct.TYPE_12__* null, align 8
@fs_numServerPaks = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @FS_ListFilteredFiles(i8* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_10__*, align 8
  %22 = alloca %struct.TYPE_11__*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i8**, align 8
  %31 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %32 = load i32, i32* @MAX_FOUND_FILES, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %12, align 8
  %35 = alloca i8*, i64 %33, align 16
  store i64 %33, i64* %13, align 8
  %36 = load i32, i32* @MAX_ZPATH, align 4
  %37 = zext i32 %36 to i64
  %38 = alloca i8, i64 %37, align 16
  store i64 %37, i64* %23, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fs_searchpaths, align 8
  %40 = icmp ne %struct.TYPE_9__* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %4
  %42 = load i32, i32* @ERR_FATAL, align 4
  %43 = call i32 @Com_Error(i32 %42, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %4
  %45 = load i8*, i8** %6, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = load i32*, i32** %9, align 8
  store i32 0, i32* %48, align 4
  store i8** null, i8*** %5, align 8
  store i32 1, i32* %24, align 4
  br label %280

49:                                               ; preds = %44
  %50 = load i8*, i8** %7, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %53

53:                                               ; preds = %52, %49
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @strlen(i8* %54)
  store i32 %55, i32* %16, align 4
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* %16, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %56, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 92
  br i1 %63, label %73, label %64

64:                                               ; preds = %53
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* %16, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 47
  br i1 %72, label %73, label %76

73:                                               ; preds = %64, %53
  %74 = load i32, i32* %16, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %16, align 4
  br label %76

76:                                               ; preds = %73, %64
  %77 = load i8*, i8** %7, align 8
  %78 = call i32 @strlen(i8* %77)
  store i32 %78, i32* %17, align 4
  store i32 0, i32* %10, align 4
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @FS_ReturnPath(i8* %79, i8* %38, i32* %19)
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fs_searchpaths, align 8
  store %struct.TYPE_9__* %81, %struct.TYPE_9__** %14, align 8
  br label %82

82:                                               ; preds = %241, %76
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %84 = icmp ne %struct.TYPE_9__* %83, null
  br i1 %84, label %85, label %245

85:                                               ; preds = %82
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = icmp ne %struct.TYPE_10__* %88, null
  br i1 %89, label %90, label %187

90:                                               ; preds = %85
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = call i32 @FS_PakIsPure(%struct.TYPE_10__* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %90
  br label %241

97:                                               ; preds = %90
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  store %struct.TYPE_10__* %100, %struct.TYPE_10__** %21, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  store %struct.TYPE_11__* %103, %struct.TYPE_11__** %22, align 8
  store i32 0, i32* %15, align 4
  br label %104

104:                                              ; preds = %183, %97
  %105 = load i32, i32* %15, align 4
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %186

110:                                              ; preds = %104
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %112 = load i32, i32* %15, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  store i8* %116, i8** %25, align 8
  %117 = load i8*, i8** %8, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %130

119:                                              ; preds = %110
  %120 = load i8*, i8** %8, align 8
  %121 = load i8*, i8** %25, align 8
  %122 = load i32, i32* @qfalse, align 4
  %123 = call i32 @Com_FilterPath(i8* %120, i8* %121, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %119
  br label %183

126:                                              ; preds = %119
  %127 = load i8*, i8** %25, align 8
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @FS_AddFileToList(i8* %127, i8** %35, i32 %128)
  store i32 %129, i32* %10, align 4
  br label %182

130:                                              ; preds = %110
  %131 = load i8*, i8** %25, align 8
  %132 = call i32 @FS_ReturnPath(i8* %131, i8* %38, i32* %27)
  store i32 %132, i32* %26, align 4
  %133 = load i32, i32* %27, align 4
  %134 = load i32, i32* %19, align 4
  %135 = sub nsw i32 %133, %134
  %136 = icmp sgt i32 %135, 2
  br i1 %136, label %147, label %137

137:                                              ; preds = %130
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* %26, align 4
  %140 = icmp sgt i32 %138, %139
  br i1 %140, label %147, label %141

141:                                              ; preds = %137
  %142 = load i8*, i8** %25, align 8
  %143 = load i8*, i8** %6, align 8
  %144 = load i32, i32* %16, align 4
  %145 = call i64 @Q_stricmpn(i8* %142, i8* %143, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %141, %137, %130
  br label %183

148:                                              ; preds = %141
  %149 = load i8*, i8** %25, align 8
  %150 = call i32 @strlen(i8* %149)
  store i32 %150, i32* %18, align 4
  %151 = load i32, i32* %18, align 4
  %152 = load i32, i32* %17, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %148
  br label %183

155:                                              ; preds = %148
  %156 = load i8*, i8** %25, align 8
  %157 = load i32, i32* %18, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  %160 = load i32, i32* %17, align 4
  %161 = sext i32 %160 to i64
  %162 = sub i64 0, %161
  %163 = getelementptr inbounds i8, i8* %159, i64 %162
  %164 = load i8*, i8** %7, align 8
  %165 = call i64 @Q_stricmp(i8* %163, i8* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %155
  br label %183

168:                                              ; preds = %155
  %169 = load i32, i32* %16, align 4
  store i32 %169, i32* %20, align 4
  %170 = load i32, i32* %16, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %168
  %173 = load i32, i32* %20, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %20, align 4
  br label %175

175:                                              ; preds = %172, %168
  %176 = load i8*, i8** %25, align 8
  %177 = load i32, i32* %20, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %176, i64 %178
  %180 = load i32, i32* %10, align 4
  %181 = call i32 @FS_AddFileToList(i8* %179, i8** %35, i32 %180)
  store i32 %181, i32* %10, align 4
  br label %182

182:                                              ; preds = %175, %126
  br label %183

183:                                              ; preds = %182, %167, %154, %147, %125
  %184 = load i32, i32* %15, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %15, align 4
  br label %104

186:                                              ; preds = %104
  br label %240

187:                                              ; preds = %85
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %189, align 8
  %191 = icmp ne %struct.TYPE_8__* %190, null
  br i1 %191, label %192, label %239

192:                                              ; preds = %187
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fs_restrict, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %200, label %197

197:                                              ; preds = %192
  %198 = load i64, i64* @fs_numServerPaks, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %197, %192
  br label %241

201:                                              ; preds = %197
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i8*, i8** %6, align 8
  %213 = call i8* @FS_BuildOSPath(i32 %206, i32 %211, i8* %212)
  store i8* %213, i8** %28, align 8
  %214 = load i8*, i8** %28, align 8
  %215 = load i8*, i8** %7, align 8
  %216 = load i8*, i8** %8, align 8
  %217 = load i32, i32* @qfalse, align 4
  %218 = call i8** @Sys_ListFiles(i8* %214, i8* %215, i8* %216, i32* %29, i32 %217)
  store i8** %218, i8*** %30, align 8
  store i32 0, i32* %15, align 4
  br label %219

219:                                              ; preds = %232, %201
  %220 = load i32, i32* %15, align 4
  %221 = load i32, i32* %29, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %235

223:                                              ; preds = %219
  %224 = load i8**, i8*** %30, align 8
  %225 = load i32, i32* %15, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i8*, i8** %224, i64 %226
  %228 = load i8*, i8** %227, align 8
  store i8* %228, i8** %31, align 8
  %229 = load i8*, i8** %31, align 8
  %230 = load i32, i32* %10, align 4
  %231 = call i32 @FS_AddFileToList(i8* %229, i8** %35, i32 %230)
  store i32 %231, i32* %10, align 4
  br label %232

232:                                              ; preds = %223
  %233 = load i32, i32* %15, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %15, align 4
  br label %219

235:                                              ; preds = %219
  %236 = load i8**, i8*** %30, align 8
  %237 = call i32 @Sys_FreeFileList(i8** %236)
  br label %238

238:                                              ; preds = %235
  br label %239

239:                                              ; preds = %238, %187
  br label %240

240:                                              ; preds = %239, %186
  br label %241

241:                                              ; preds = %240, %200, %96
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 2
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %243, align 8
  store %struct.TYPE_9__* %244, %struct.TYPE_9__** %14, align 8
  br label %82

245:                                              ; preds = %82
  %246 = load i32, i32* %10, align 4
  %247 = load i32*, i32** %9, align 8
  store i32 %246, i32* %247, align 4
  %248 = load i32, i32* %10, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %251, label %250

250:                                              ; preds = %245
  store i8** null, i8*** %5, align 8
  store i32 1, i32* %24, align 4
  br label %280

251:                                              ; preds = %245
  %252 = load i32, i32* %10, align 4
  %253 = add nsw i32 %252, 1
  %254 = sext i32 %253 to i64
  %255 = mul i64 %254, 8
  %256 = trunc i64 %255 to i32
  %257 = call i8** @Z_Malloc(i32 %256)
  store i8** %257, i8*** %11, align 8
  store i32 0, i32* %15, align 4
  br label %258

258:                                              ; preds = %271, %251
  %259 = load i32, i32* %15, align 4
  %260 = load i32, i32* %10, align 4
  %261 = icmp slt i32 %259, %260
  br i1 %261, label %262, label %274

262:                                              ; preds = %258
  %263 = load i32, i32* %15, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i8*, i8** %35, i64 %264
  %266 = load i8*, i8** %265, align 8
  %267 = load i8**, i8*** %11, align 8
  %268 = load i32, i32* %15, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i8*, i8** %267, i64 %269
  store i8* %266, i8** %270, align 8
  br label %271

271:                                              ; preds = %262
  %272 = load i32, i32* %15, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %15, align 4
  br label %258

274:                                              ; preds = %258
  %275 = load i8**, i8*** %11, align 8
  %276 = load i32, i32* %15, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i8*, i8** %275, i64 %277
  store i8* null, i8** %278, align 8
  %279 = load i8**, i8*** %11, align 8
  store i8** %279, i8*** %5, align 8
  store i32 1, i32* %24, align 4
  br label %280

280:                                              ; preds = %274, %250, %47
  %281 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %281)
  %282 = load i8**, i8*** %5, align 8
  ret i8** %282
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Com_Error(i32, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @FS_ReturnPath(i8*, i8*, i32*) #2

declare dso_local i32 @FS_PakIsPure(%struct.TYPE_10__*) #2

declare dso_local i32 @Com_FilterPath(i8*, i8*, i32) #2

declare dso_local i32 @FS_AddFileToList(i8*, i8**, i32) #2

declare dso_local i64 @Q_stricmpn(i8*, i8*, i32) #2

declare dso_local i64 @Q_stricmp(i8*, i8*) #2

declare dso_local i8* @FS_BuildOSPath(i32, i32, i8*) #2

declare dso_local i8** @Sys_ListFiles(i8*, i8*, i8*, i32*, i32) #2

declare dso_local i32 @Sys_FreeFileList(i8**) #2

declare dso_local i8** @Z_Malloc(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
