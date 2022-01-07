; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ui_basic.c_FileSelector.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ui_basic.c_FileSelector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FILENAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"            Please wait...            \00", align 1
@n_filenames = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"No files inside directory\00", align 1
@FALSE = common dso_local global i32 0, align 4
@filenames = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Space: select current directory\00", align 1
@UI_USER_DELETE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Cannot enter parent directory\00", align 1
@UI_USER_TOGGLE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"[..]\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Cannot enter selected directory\00", align 1
@NCOLUMNS = common dso_local global i32 0, align 4
@NROWS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32)* @FileSelector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FileSelector(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %26 = load i32, i32* @FILENAME_MAX, align 4
  %27 = zext i32 %26 to i64
  %28 = load i32, i32* @FILENAME_MAX, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %10, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %11, align 8
  %32 = load i32, i32* @FILENAME_MAX, align 4
  %33 = add nsw i32 %32, 2
  %34 = zext i32 %33 to i64
  %35 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %12, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  store i8 0, i8* %36, align 16
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %4
  %43 = load i32, i32* %9, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i8*, i8** %8, align 8
  %47 = mul nsw i64 0, %27
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = call i32 @strcpy(i8* %31, i8* %48)
  br label %60

50:                                               ; preds = %42, %4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @strcpy(i8* %31, i8* %54)
  br label %59

56:                                               ; preds = %50
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @Util_splitpath(i8* %57, i8* %31, i8* %35)
  br label %59

59:                                               ; preds = %56, %53
  br label %60

60:                                               ; preds = %59, %45
  %61 = getelementptr inbounds i8, i8* %31, i64 0
  %62 = load i8, i8* %61, align 16
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = call i32 @GetCurrentDir(i8* %31)
  br label %67

67:                                               ; preds = %65, %60
  br label %68

68:                                               ; preds = %292, %67
  store i32 0, i32* %13, align 4
  %69 = call i32 @TitleScreen(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %70 = call i32 (...) @PLATFORM_DisplayScreen()
  br label %71

71:                                               ; preds = %99, %68
  %72 = call i32 @GetDirectory(i8* %31)
  %73 = load i32, i32* @n_filenames, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %100

76:                                               ; preds = %71
  %77 = call i32 (...) @FilenamesFree()
  %78 = load i32, i32* @FILENAME_MAX, align 4
  %79 = zext i32 %78 to i64
  %80 = call i8* @llvm.stacksave()
  store i8* %80, i8** %15, align 8
  %81 = alloca i8, i64 %79, align 16
  store i64 %79, i64* %16, align 8
  %82 = call i32 @strcpy(i8* %81, i8* %31)
  %83 = call i32 @Util_splitpath(i8* %81, i8* %31, i8* null)
  %84 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = getelementptr inbounds i8, i8* %31, i64 0
  %86 = load i8, i8* %85, align 16
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %76
  %90 = call i32 @GetCurrentDir(i8* %31)
  %91 = call i32 @GetDirectory(i8* %31)
  %92 = load i32, i32* @n_filenames, align 4
  %93 = icmp sge i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %100

95:                                               ; preds = %89
  %96 = call i32 (...) @FilenamesFree()
  %97 = call i32 @BasicUIMessage(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %98 = load i32, i32* @FALSE, align 4
  store i32 %98, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %294

99:                                               ; preds = %76
  br label %71

100:                                              ; preds = %94, %75
  %101 = getelementptr inbounds i8, i8* %35, i64 0
  %102 = load i8, i8* %101, align 16
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %125

105:                                              ; preds = %100
  store i32 0, i32* %14, align 4
  br label %106

106:                                              ; preds = %121, %105
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* @n_filenames, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %124

110:                                              ; preds = %106
  %111 = load i8**, i8*** @filenames, align 8
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = call i64 @strcmp(i8* %115, i8* %35)
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %110
  %119 = load i32, i32* %14, align 4
  store i32 %119, i32* %13, align 4
  br label %124

120:                                              ; preds = %110
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %14, align 4
  br label %106

124:                                              ; preds = %118, %106
  br label %125

125:                                              ; preds = %124, %100
  br label %126

126:                                              ; preds = %291, %279, %221, %125
  %127 = call i32 (...) @ClearScreen()
  %128 = call i32 @TitleScreen(i8* %31)
  %129 = call i32 @Box(i32 154, i32 148, i32 0, i32 1, i32 39, i32 23)
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* @n_filenames, align 4
  %132 = load i8**, i8*** @filenames, align 8
  %133 = load i32, i32* @FALSE, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* null
  %138 = call i32 @Select(i32 %130, i32 %131, i8** %132, i32* null, i32* null, i32* null, i32* null, i32 20, i32 2, i32 1, i32 2, i32 18, i32 %133, i8* %137, i32* %18)
  store i32 %138, i32* %13, align 4
  %139 = load i32, i32* %13, align 4
  %140 = icmp eq i32 %139, -2
  br i1 %140, label %141, label %196

141:                                              ; preds = %126
  %142 = load i32, i32* %9, align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %194

144:                                              ; preds = %141
  %145 = load i32, i32* %9, align 4
  %146 = sub nsw i32 %145, 1
  store i32 %146, i32* %20, align 4
  store i32 0, i32* %14, align 4
  br label %147

147:                                              ; preds = %162, %144
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* %9, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %165

151:                                              ; preds = %147
  %152 = load i8*, i8** %8, align 8
  %153 = load i32, i32* %14, align 4
  %154 = sext i32 %153 to i64
  %155 = mul nsw i64 %154, %27
  %156 = getelementptr inbounds i8, i8* %152, i64 %155
  %157 = call i64 @strcmp(i8* %156, i8* %31)
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %151
  %160 = load i32, i32* %14, align 4
  store i32 %160, i32* %20, align 4
  br label %165

161:                                              ; preds = %151
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %14, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %14, align 4
  br label %147

165:                                              ; preds = %159, %147
  %166 = load i32, i32* %20, align 4
  store i32 %166, i32* %14, align 4
  br label %167

167:                                              ; preds = %189, %165
  %168 = load i32, i32* %14, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %14, align 4
  %170 = load i32, i32* %9, align 4
  %171 = icmp sge i32 %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %167
  store i32 0, i32* %14, align 4
  br label %173

173:                                              ; preds = %172, %167
  %174 = load i8*, i8** %8, align 8
  %175 = load i32, i32* %14, align 4
  %176 = sext i32 %175 to i64
  %177 = mul nsw i64 %176, %27
  %178 = getelementptr inbounds i8, i8* %174, i64 %177
  %179 = call i64 @Util_direxists(i8* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %173
  %182 = load i8*, i8** %8, align 8
  %183 = load i32, i32* %14, align 4
  %184 = sext i32 %183 to i64
  %185 = mul nsw i64 %184, %27
  %186 = getelementptr inbounds i8, i8* %182, i64 %185
  %187 = call i32 @strcpy(i8* %31, i8* %186)
  br label %193

188:                                              ; preds = %173
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %14, align 4
  %191 = load i32, i32* %20, align 4
  %192 = icmp ne i32 %190, %191
  br i1 %192, label %167, label %193

193:                                              ; preds = %189, %181
  br label %194

194:                                              ; preds = %193, %141
  %195 = getelementptr inbounds i8, i8* %35, i64 0
  store i8 0, i8* %195, align 16
  br label %292

196:                                              ; preds = %126
  %197 = load i32, i32* %13, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = call i32 (...) @FilenamesFree()
  %201 = load i32, i32* @FALSE, align 4
  store i32 %201, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %294

202:                                              ; preds = %196
  %203 = load i32, i32* %18, align 4
  %204 = load i32, i32* @UI_USER_DELETE, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %224

206:                                              ; preds = %202
  %207 = load i32, i32* @FILENAME_MAX, align 4
  %208 = zext i32 %207 to i64
  %209 = call i8* @llvm.stacksave()
  store i8* %209, i8** %21, align 8
  %210 = alloca i8, i64 %208, align 16
  store i64 %208, i64* %22, align 8
  %211 = getelementptr inbounds i8, i8* %35, i64 1
  %212 = call i32 @Util_splitpath(i8* %31, i8* %210, i8* %211)
  %213 = call i64 @Util_direxists(i8* %210)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %206
  %216 = call i32 @strcpy(i8* %31, i8* %210)
  %217 = getelementptr inbounds i8, i8* %35, i64 0
  store i8 91, i8* %217, align 16
  %218 = call i32 @strcatchr(i8* %35, i8 signext 93)
  store i32 9, i32* %17, align 4
  br label %221

219:                                              ; preds = %206
  %220 = call i32 @BasicUIMessage(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 1)
  store i32 10, i32* %17, align 4
  br label %221

221:                                              ; preds = %219, %215
  %222 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %222)
  %223 = load i32, i32* %17, align 4
  switch i32 %223, label %297 [
    i32 9, label %292
    i32 10, label %126
  ]

224:                                              ; preds = %202
  %225 = load i32, i32* %18, align 4
  %226 = load i32, i32* @UI_USER_TOGGLE, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %236

228:                                              ; preds = %224
  %229 = load i32, i32* %7, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %228
  %232 = load i8*, i8** %6, align 8
  %233 = call i32 @strcpy(i8* %232, i8* %31)
  %234 = call i32 (...) @FilenamesFree()
  %235 = load i32, i32* @TRUE, align 4
  store i32 %235, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %294

236:                                              ; preds = %228, %224
  %237 = load i8**, i8*** @filenames, align 8
  %238 = load i32, i32* %13, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i8*, i8** %237, i64 %239
  %241 = load i8*, i8** %240, align 8
  store i8* %241, i8** %19, align 8
  %242 = load i8*, i8** %19, align 8
  %243 = getelementptr inbounds i8, i8* %242, i64 0
  %244 = load i8, i8* %243, align 1
  %245 = sext i8 %244 to i32
  %246 = icmp eq i32 %245, 91
  br i1 %246, label %247, label %282

247:                                              ; preds = %236
  %248 = load i32, i32* @FILENAME_MAX, align 4
  %249 = zext i32 %248 to i64
  %250 = call i8* @llvm.stacksave()
  store i8* %250, i8** %23, align 8
  %251 = alloca i8, i64 %249, align 16
  store i64 %249, i64* %24, align 8
  %252 = getelementptr inbounds i8, i8* %35, i64 0
  store i8 0, i8* %252, align 16
  %253 = load i8*, i8** %19, align 8
  %254 = call i64 @strcmp(i8* %253, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %256, label %261

256:                                              ; preds = %247
  %257 = getelementptr inbounds i8, i8* %35, i64 1
  %258 = call i32 @Util_splitpath(i8* %31, i8* %251, i8* %257)
  %259 = getelementptr inbounds i8, i8* %35, i64 0
  store i8 91, i8* %259, align 16
  %260 = call i32 @strcatchr(i8* %35, i8 signext 93)
  br label %272

261:                                              ; preds = %247
  %262 = load i8*, i8** %19, align 8
  %263 = call i8* @strrchr(i8* %262, i8 signext 93)
  store i8* %263, i8** %25, align 8
  %264 = load i8*, i8** %25, align 8
  %265 = icmp eq i8* %264, null
  br i1 %265, label %266, label %267

266:                                              ; preds = %261
  store i32 10, i32* %17, align 4
  br label %279

267:                                              ; preds = %261
  %268 = load i8*, i8** %25, align 8
  store i8 0, i8* %268, align 1
  %269 = load i8*, i8** %19, align 8
  %270 = getelementptr inbounds i8, i8* %269, i64 1
  %271 = call i32 @Util_catpath(i8* %251, i8* %31, i8* %270)
  br label %272

272:                                              ; preds = %267, %256
  %273 = call i64 @Util_direxists(i8* %251)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %272
  %276 = call i32 @strcpy(i8* %31, i8* %251)
  store i32 9, i32* %17, align 4
  br label %279

277:                                              ; preds = %272
  %278 = call i32 @BasicUIMessage(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 1)
  store i32 10, i32* %17, align 4
  br label %279

279:                                              ; preds = %277, %275, %266
  %280 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %280)
  %281 = load i32, i32* %17, align 4
  switch i32 %281, label %297 [
    i32 10, label %126
    i32 9, label %292
  ]

282:                                              ; preds = %236
  %283 = load i32, i32* %7, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %291, label %285

285:                                              ; preds = %282
  %286 = load i8*, i8** %6, align 8
  %287 = load i8*, i8** %19, align 8
  %288 = call i32 @Util_catpath(i8* %286, i8* %31, i8* %287)
  %289 = call i32 (...) @FilenamesFree()
  %290 = load i32, i32* @TRUE, align 4
  store i32 %290, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %294

291:                                              ; preds = %282
  br label %126

292:                                              ; preds = %279, %221, %194
  %293 = call i32 (...) @FilenamesFree()
  br label %68

294:                                              ; preds = %285, %231, %199, %95
  %295 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %295)
  %296 = load i32, i32* %5, align 4
  ret i32 %296

297:                                              ; preds = %279, %221
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @Util_splitpath(i8*, i8*, i8*) #2

declare dso_local i32 @GetCurrentDir(i8*) #2

declare dso_local i32 @TitleScreen(i8*) #2

declare dso_local i32 @PLATFORM_DisplayScreen(...) #2

declare dso_local i32 @GetDirectory(i8*) #2

declare dso_local i32 @FilenamesFree(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @BasicUIMessage(i8*, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @ClearScreen(...) #2

declare dso_local i32 @Box(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @Select(i32, i32, i8**, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i8*, i32*) #2

declare dso_local i64 @Util_direxists(i8*) #2

declare dso_local i32 @strcatchr(i8*, i8 signext) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @Util_catpath(i8*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
