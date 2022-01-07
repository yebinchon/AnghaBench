; ModuleID = '/home/carl/AnghaBench/TDengine/src/kit/shell/src/extr_shellWindows.c_shellParseArgument.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/kit/shell/src/extr_shellWindows.c_shellParseArgument.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arguments = type { i8*, i32, i8*, i8*, i32, i8*, i8*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"option -h requires an argument\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-P\00", align 1
@tsMgmtShellPort = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"option -P requires an argument\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-u\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"option -u requires an argument\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@configDir = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"Option -c requires an argument\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"option -s requires an argument\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"-r\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"option -f requires an argument\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"option -d requires an argument\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"option -t requires an argument\0A\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"wrong options\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shellParseArgument(i32 %0, i8** %1, %struct.arguments* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.arguments*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.arguments* %2, %struct.arguments** %6, align 8
  store i32 1, i32* %7, align 4
  br label %8

8:                                                ; preds = %287, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %290

12:                                               ; preds = %8
  %13 = load i8**, i8*** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %12
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %4, align 4
  %23 = sub nsw i32 %22, 1
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load i8**, i8*** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %26, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.arguments*, %struct.arguments** %6, align 8
  %33 = getelementptr inbounds %struct.arguments, %struct.arguments* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  br label %39

34:                                               ; preds = %20
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 @fprintf(i32 %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @EXIT_FAILURE, align 4
  %38 = call i32 @exit(i32 %37) #3
  unreachable

39:                                               ; preds = %25
  br label %286

40:                                               ; preds = %12
  %41 = load i8**, i8*** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load %struct.arguments*, %struct.arguments** %6, align 8
  %50 = getelementptr inbounds %struct.arguments, %struct.arguments* %49, i32 0, i32 1
  store i32 1, i32* %50, align 8
  br label %285

51:                                               ; preds = %40
  %52 = load i8**, i8*** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %78

59:                                               ; preds = %51
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %4, align 4
  %62 = sub nsw i32 %61, 1
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load i8**, i8*** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %65, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @atoi(i8* %70)
  store i32 %71, i32* @tsMgmtShellPort, align 4
  br label %77

72:                                               ; preds = %59
  %73 = load i32, i32* @stderr, align 4
  %74 = call i32 @fprintf(i32 %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %75 = load i32, i32* @EXIT_FAILURE, align 4
  %76 = call i32 @exit(i32 %75) #3
  unreachable

77:                                               ; preds = %64
  br label %284

78:                                               ; preds = %51
  %79 = load i8**, i8*** %5, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 @strcmp(i8* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %106

86:                                               ; preds = %78
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %4, align 4
  %89 = sub nsw i32 %88, 1
  %90 = icmp slt i32 %87, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %86
  %92 = load i8**, i8*** %5, align 8
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %92, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.arguments*, %struct.arguments** %6, align 8
  %99 = getelementptr inbounds %struct.arguments, %struct.arguments* %98, i32 0, i32 2
  store i8* %97, i8** %99, align 8
  br label %105

100:                                              ; preds = %86
  %101 = load i32, i32* @stderr, align 4
  %102 = call i32 @fprintf(i32 %101, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %103 = load i32, i32* @EXIT_FAILURE, align 4
  %104 = call i32 @exit(i32 %103) #3
  unreachable

105:                                              ; preds = %91
  br label %283

106:                                              ; preds = %78
  %107 = load i8**, i8*** %5, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = call i64 @strcmp(i8* %111, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %134

114:                                              ; preds = %106
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %4, align 4
  %117 = sub nsw i32 %116, 1
  %118 = icmp slt i32 %115, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %114
  %120 = load i32, i32* @configDir, align 4
  %121 = load i8**, i8*** %5, align 8
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %121, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @strcpy(i32 %120, i8* %126)
  br label %133

128:                                              ; preds = %114
  %129 = load i32, i32* @stderr, align 4
  %130 = call i32 @fprintf(i32 %129, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %131 = load i32, i32* @EXIT_FAILURE, align 4
  %132 = call i32 @exit(i32 %131) #3
  unreachable

133:                                              ; preds = %119
  br label %282

134:                                              ; preds = %106
  %135 = load i8**, i8*** %5, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8*, i8** %135, i64 %137
  %139 = load i8*, i8** %138, align 8
  %140 = call i64 @strcmp(i8* %139, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %162

142:                                              ; preds = %134
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* %4, align 4
  %145 = sub nsw i32 %144, 1
  %146 = icmp slt i32 %143, %145
  br i1 %146, label %147, label %156

147:                                              ; preds = %142
  %148 = load i8**, i8*** %5, align 8
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8*, i8** %148, i64 %151
  %153 = load i8*, i8** %152, align 8
  %154 = load %struct.arguments*, %struct.arguments** %6, align 8
  %155 = getelementptr inbounds %struct.arguments, %struct.arguments* %154, i32 0, i32 3
  store i8* %153, i8** %155, align 8
  br label %161

156:                                              ; preds = %142
  %157 = load i32, i32* @stderr, align 4
  %158 = call i32 @fprintf(i32 %157, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  %159 = load i32, i32* @EXIT_FAILURE, align 4
  %160 = call i32 @exit(i32 %159) #3
  unreachable

161:                                              ; preds = %147
  br label %281

162:                                              ; preds = %134
  %163 = load i8**, i8*** %5, align 8
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8*, i8** %163, i64 %165
  %167 = load i8*, i8** %166, align 8
  %168 = call i64 @strcmp(i8* %167, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %162
  %171 = load %struct.arguments*, %struct.arguments** %6, align 8
  %172 = getelementptr inbounds %struct.arguments, %struct.arguments* %171, i32 0, i32 4
  store i32 1, i32* %172, align 8
  br label %280

173:                                              ; preds = %162
  %174 = load i8**, i8*** %5, align 8
  %175 = load i32, i32* %7, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8*, i8** %174, i64 %176
  %178 = load i8*, i8** %177, align 8
  %179 = call i64 @strcmp(i8* %178, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %203

181:                                              ; preds = %173
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* %4, align 4
  %184 = sub nsw i32 %183, 1
  %185 = icmp slt i32 %182, %184
  br i1 %185, label %186, label %197

186:                                              ; preds = %181
  %187 = load %struct.arguments*, %struct.arguments** %6, align 8
  %188 = getelementptr inbounds %struct.arguments, %struct.arguments* %187, i32 0, i32 7
  %189 = load i32, i32* %188, align 8
  %190 = load i8**, i8*** %5, align 8
  %191 = load i32, i32* %7, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %7, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8*, i8** %190, i64 %193
  %195 = load i8*, i8** %194, align 8
  %196 = call i32 @strcpy(i32 %189, i8* %195)
  br label %202

197:                                              ; preds = %181
  %198 = load i32, i32* @stderr, align 4
  %199 = call i32 @fprintf(i32 %198, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0))
  %200 = load i32, i32* @EXIT_FAILURE, align 4
  %201 = call i32 @exit(i32 %200) #3
  unreachable

202:                                              ; preds = %186
  br label %279

203:                                              ; preds = %173
  %204 = load i8**, i8*** %5, align 8
  %205 = load i32, i32* %7, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8*, i8** %204, i64 %206
  %208 = load i8*, i8** %207, align 8
  %209 = call i64 @strcmp(i8* %208, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %231

211:                                              ; preds = %203
  %212 = load i32, i32* %7, align 4
  %213 = load i32, i32* %4, align 4
  %214 = sub nsw i32 %213, 1
  %215 = icmp slt i32 %212, %214
  br i1 %215, label %216, label %225

216:                                              ; preds = %211
  %217 = load i8**, i8*** %5, align 8
  %218 = load i32, i32* %7, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %7, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8*, i8** %217, i64 %220
  %222 = load i8*, i8** %221, align 8
  %223 = load %struct.arguments*, %struct.arguments** %6, align 8
  %224 = getelementptr inbounds %struct.arguments, %struct.arguments* %223, i32 0, i32 5
  store i8* %222, i8** %224, align 8
  br label %230

225:                                              ; preds = %211
  %226 = load i32, i32* @stderr, align 4
  %227 = call i32 @fprintf(i32 %226, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0))
  %228 = load i32, i32* @EXIT_FAILURE, align 4
  %229 = call i32 @exit(i32 %228) #3
  unreachable

230:                                              ; preds = %216
  br label %278

231:                                              ; preds = %203
  %232 = load i8**, i8*** %5, align 8
  %233 = load i32, i32* %7, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8*, i8** %232, i64 %234
  %236 = load i8*, i8** %235, align 8
  %237 = call i64 @strcmp(i8* %236, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %239, label %259

239:                                              ; preds = %231
  %240 = load i32, i32* %7, align 4
  %241 = load i32, i32* %4, align 4
  %242 = sub nsw i32 %241, 1
  %243 = icmp slt i32 %240, %242
  br i1 %243, label %244, label %253

244:                                              ; preds = %239
  %245 = load i8**, i8*** %5, align 8
  %246 = load i32, i32* %7, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %7, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8*, i8** %245, i64 %248
  %250 = load i8*, i8** %249, align 8
  %251 = load %struct.arguments*, %struct.arguments** %6, align 8
  %252 = getelementptr inbounds %struct.arguments, %struct.arguments* %251, i32 0, i32 6
  store i8* %250, i8** %252, align 8
  br label %258

253:                                              ; preds = %239
  %254 = load i32, i32* @stderr, align 4
  %255 = call i32 @fprintf(i32 %254, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0))
  %256 = load i32, i32* @EXIT_FAILURE, align 4
  %257 = call i32 @exit(i32 %256) #3
  unreachable

258:                                              ; preds = %244
  br label %277

259:                                              ; preds = %231
  %260 = load i8**, i8*** %5, align 8
  %261 = load i32, i32* %7, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i8*, i8** %260, i64 %262
  %264 = load i8*, i8** %263, align 8
  %265 = call i64 @strcmp(i8* %264, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0))
  %266 = icmp eq i64 %265, 0
  br i1 %266, label %267, label %271

267:                                              ; preds = %259
  %268 = call i32 (...) @printHelp()
  %269 = load i32, i32* @EXIT_FAILURE, align 4
  %270 = call i32 @exit(i32 %269) #3
  unreachable

271:                                              ; preds = %259
  %272 = load i32, i32* @stderr, align 4
  %273 = call i32 @fprintf(i32 %272, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  %274 = call i32 (...) @printHelp()
  %275 = load i32, i32* @EXIT_FAILURE, align 4
  %276 = call i32 @exit(i32 %275) #3
  unreachable

277:                                              ; preds = %258
  br label %278

278:                                              ; preds = %277, %230
  br label %279

279:                                              ; preds = %278, %202
  br label %280

280:                                              ; preds = %279, %170
  br label %281

281:                                              ; preds = %280, %161
  br label %282

282:                                              ; preds = %281, %133
  br label %283

283:                                              ; preds = %282, %105
  br label %284

284:                                              ; preds = %283, %77
  br label %285

285:                                              ; preds = %284, %48
  br label %286

286:                                              ; preds = %285, %39
  br label %287

287:                                              ; preds = %286
  %288 = load i32, i32* %7, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %7, align 4
  br label %8

290:                                              ; preds = %8
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @printHelp(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
