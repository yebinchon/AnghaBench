; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_directory.c__FAT_directory_entryFromPath.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_directory.c__FAT_directory_entryFromPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i64 }
%struct.TYPE_13__ = type { i8*, i32* }

@MAX_ALIAS_LENGTH = common dso_local global i32 0, align 4
@DIR_SEPARATOR = common dso_local global i8 0, align 1
@NAME_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@DIR_ENTRY_attributes = common dso_local global i64 0, align 8
@ATTRIB_DIR = common dso_local global i32 0, align 4
@CLUSTER_ROOT = common dso_local global i64 0, align 8
@FS_FAT32 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_FAT_directory_entryFromPath(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %20 = load i32, i32* @MAX_ALIAS_LENGTH, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %15, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %16, align 8
  %24 = load i8*, i8** %8, align 8
  store i8* %24, i8** %11, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %25 = load i8*, i8** %9, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i8*, i8** %8, align 8
  %29 = call i8* @strchr(i8* %28, i8 signext 0)
  store i8* %29, i8** %9, align 8
  br label %30

30:                                               ; preds = %27, %4
  %31 = load i8*, i8** %11, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = load i8, i8* @DIR_SEPARATOR, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %62

38:                                               ; preds = %30
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %13, align 8
  br label %42

42:                                               ; preds = %50, %38
  %43 = load i8*, i8** %11, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = load i8, i8* @DIR_SEPARATOR, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i8*, i8** %11, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %11, align 8
  br label %42

53:                                               ; preds = %42
  %54 = load i8*, i8** %11, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = icmp uge i8* %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %60 = call i32 @_FAT_directory_getRootEntry(%struct.TYPE_12__* %58, %struct.TYPE_13__* %59)
  store i32 1, i32* %17, align 4
  br label %61

61:                                               ; preds = %57, %53
  br label %66

62:                                               ; preds = %30
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %13, align 8
  br label %66

66:                                               ; preds = %62, %61
  br label %67

67:                                               ; preds = %249, %66
  %68 = load i32, i32* %17, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %18, align 4
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  br label %74

74:                                               ; preds = %70, %67
  %75 = phi i1 [ false, %67 ], [ %73, %70 ]
  br i1 %75, label %76, label %250

76:                                               ; preds = %74
  %77 = load i8*, i8** %11, align 8
  %78 = load i8, i8* @DIR_SEPARATOR, align 1
  %79 = call i8* @strchr(i8* %77, i8 signext %78)
  store i8* %79, i8** %12, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load i8*, i8** %12, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = ptrtoint i8* %83 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  store i64 %87, i64* %10, align 8
  br label %91

88:                                               ; preds = %76
  %89 = load i8*, i8** %11, align 8
  %90 = call i64 @strlen(i8* %89)
  store i64 %90, i64* %10, align 8
  br label %91

91:                                               ; preds = %88, %82
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* @NAME_MAX, align 8
  %94 = icmp ugt i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i32 0, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %286

96:                                               ; preds = %91
  %97 = load i64, i64* %13, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %97, %100
  br i1 %101, label %102, label %116

102:                                              ; preds = %96
  %103 = load i8*, i8** %11, align 8
  %104 = load i64, i64* %10, align 8
  %105 = call i64 @strncmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %103, i64 %104)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %102
  %108 = load i8*, i8** %11, align 8
  %109 = load i64, i64* %10, align 8
  %110 = call i64 @strncmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %108, i64 %109)
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %107, %102
  store i32 1, i32* %14, align 4
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %115 = call i32 @_FAT_directory_getRootEntry(%struct.TYPE_12__* %113, %struct.TYPE_13__* %114)
  br label %192

116:                                              ; preds = %107, %96
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %119 = load i64, i64* %13, align 8
  %120 = call i32 @_FAT_directory_getFirstEntry(%struct.TYPE_12__* %117, %struct.TYPE_13__* %118, i64 %119)
  store i32 %120, i32* %14, align 4
  br label %121

121:                                              ; preds = %190, %116
  %122 = load i32, i32* %14, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %121
  %125 = load i32, i32* %17, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %124
  %128 = load i32, i32* %18, align 4
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  br label %131

131:                                              ; preds = %127, %124, %121
  %132 = phi i1 [ false, %124 ], [ false, %121 ], [ %130, %127 ]
  br i1 %132, label %133, label %191

133:                                              ; preds = %131
  %134 = load i64, i64* %10, align 8
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = load i64, i64* @NAME_MAX, align 8
  %139 = trunc i64 %138 to i32
  %140 = call i64 @strnlen(i8* %137, i32 %139)
  %141 = icmp eq i64 %134, %140
  br i1 %141, label %142, label %151

142:                                              ; preds = %133
  %143 = load i8*, i8** %11, align 8
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = load i64, i64* %10, align 8
  %148 = call i64 @_FAT_directory_mbsncasecmp(i8* %143, i8* %146, i64 %147)
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %142
  store i32 1, i32* %17, align 4
  br label %151

151:                                              ; preds = %150, %142, %133
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @_FAT_directory_entryGetAlias(i32* %154, i8* %23)
  %156 = load i64, i64* %10, align 8
  %157 = load i32, i32* @MAX_ALIAS_LENGTH, align 4
  %158 = call i64 @strnlen(i8* %23, i32 %157)
  %159 = icmp eq i64 %156, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %151
  %161 = load i8*, i8** %11, align 8
  %162 = load i64, i64* %10, align 8
  %163 = call i64 @strncasecmp(i8* %161, i8* %23, i64 %162)
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  store i32 1, i32* %17, align 4
  br label %166

166:                                              ; preds = %165, %160, %151
  %167 = load i32, i32* %17, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %183

169:                                              ; preds = %166
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = load i64, i64* @DIR_ENTRY_attributes, align 8
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @ATTRIB_DIR, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %169
  %180 = load i8*, i8** %12, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %183

182:                                              ; preds = %179
  store i32 0, i32* %17, align 4
  br label %183

183:                                              ; preds = %182, %179, %169, %166
  %184 = load i32, i32* %17, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %190, label %186

186:                                              ; preds = %183
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %189 = call i32 @_FAT_directory_getNextEntry(%struct.TYPE_12__* %187, %struct.TYPE_13__* %188)
  store i32 %189, i32* %14, align 4
  br label %190

190:                                              ; preds = %186, %183
  br label %121

191:                                              ; preds = %131
  br label %192

192:                                              ; preds = %191, %112
  %193 = load i32, i32* %14, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %196, label %195

195:                                              ; preds = %192
  store i32 1, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %249

196:                                              ; preds = %192
  %197 = load i8*, i8** %12, align 8
  %198 = icmp eq i8* %197, null
  br i1 %198, label %203, label %199

199:                                              ; preds = %196
  %200 = load i8*, i8** %12, align 8
  %201 = load i8*, i8** %9, align 8
  %202 = icmp uge i8* %200, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %199, %196
  store i32 1, i32* %17, align 4
  br label %248

204:                                              ; preds = %199
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  %208 = load i64, i64* @DIR_ENTRY_attributes, align 8
  %209 = getelementptr inbounds i32, i32* %207, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @ATTRIB_DIR, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %247

214:                                              ; preds = %204
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 1
  %218 = load i32*, i32** %217, align 8
  %219 = call i64 @_FAT_directory_entryGetCluster(%struct.TYPE_12__* %215, i32* %218)
  store i64 %219, i64* %13, align 8
  %220 = load i64, i64* %13, align 8
  %221 = load i64, i64* @CLUSTER_ROOT, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %227

223:                                              ; preds = %214
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  store i64 %226, i64* %13, align 8
  br label %227

227:                                              ; preds = %223, %214
  %228 = load i8*, i8** %12, align 8
  store i8* %228, i8** %11, align 8
  br label %229

229:                                              ; preds = %237, %227
  %230 = load i8*, i8** %11, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 0
  %232 = load i8, i8* %231, align 1
  %233 = sext i8 %232 to i32
  %234 = load i8, i8* @DIR_SEPARATOR, align 1
  %235 = sext i8 %234 to i32
  %236 = icmp eq i32 %233, %235
  br i1 %236, label %237, label %240

237:                                              ; preds = %229
  %238 = load i8*, i8** %11, align 8
  %239 = getelementptr inbounds i8, i8* %238, i32 1
  store i8* %239, i8** %11, align 8
  br label %229

240:                                              ; preds = %229
  %241 = load i8*, i8** %11, align 8
  %242 = load i8*, i8** %9, align 8
  %243 = icmp uge i8* %241, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %240
  store i32 1, i32* %17, align 4
  br label %246

245:                                              ; preds = %240
  store i32 0, i32* %17, align 4
  br label %246

246:                                              ; preds = %245, %244
  br label %247

247:                                              ; preds = %246, %204
  br label %248

248:                                              ; preds = %247, %203
  br label %249

249:                                              ; preds = %248, %195
  br label %67

250:                                              ; preds = %74
  %251 = load i32, i32* %17, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %285

253:                                              ; preds = %250
  %254 = load i32, i32* %18, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %285, label %256

256:                                              ; preds = %253
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @FS_FAT32, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %284

262:                                              ; preds = %256
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 0, i32 1
  %265 = load i32*, i32** %264, align 8
  %266 = load i64, i64* @DIR_ENTRY_attributes, align 8
  %267 = getelementptr inbounds i32, i32* %265, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @ATTRIB_DIR, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %284

272:                                              ; preds = %262
  %273 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 1
  %276 = load i32*, i32** %275, align 8
  %277 = call i64 @_FAT_directory_entryGetCluster(%struct.TYPE_12__* %273, i32* %276)
  %278 = load i64, i64* @CLUSTER_ROOT, align 8
  %279 = icmp eq i64 %277, %278
  br i1 %279, label %280, label %284

280:                                              ; preds = %272
  %281 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %283 = call i32 @_FAT_directory_getRootEntry(%struct.TYPE_12__* %281, %struct.TYPE_13__* %282)
  br label %284

284:                                              ; preds = %280, %272, %262, %256
  store i32 1, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %286

285:                                              ; preds = %253, %250
  store i32 0, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %286

286:                                              ; preds = %285, %284, %95
  %287 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %287)
  %288 = load i32, i32* %5, align 4
  ret i32 %288
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @_FAT_directory_getRootEntry(%struct.TYPE_12__*, %struct.TYPE_13__*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @strncmp(i8*, i8*, i64) #2

declare dso_local i32 @_FAT_directory_getFirstEntry(%struct.TYPE_12__*, %struct.TYPE_13__*, i64) #2

declare dso_local i64 @strnlen(i8*, i32) #2

declare dso_local i64 @_FAT_directory_mbsncasecmp(i8*, i8*, i64) #2

declare dso_local i32 @_FAT_directory_entryGetAlias(i32*, i8*) #2

declare dso_local i64 @strncasecmp(i8*, i8*, i64) #2

declare dso_local i32 @_FAT_directory_getNextEntry(%struct.TYPE_12__*, %struct.TYPE_13__*) #2

declare dso_local i64 @_FAT_directory_entryGetCluster(%struct.TYPE_12__*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
