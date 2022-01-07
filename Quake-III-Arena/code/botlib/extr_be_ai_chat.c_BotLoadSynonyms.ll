; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_chat.c_BotLoadSynonyms.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_chat.c_BotLoadSynonyms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 (i32, i8*, i8*)* }
%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i8*, i64, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i64, i64, i32, i64 }

@BOTFILESBASEFOLDER = common dso_local global i32 0, align 4
@botimport = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@PRT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"counldn't load %s\0A\00", align 1
@TT_NUMBER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"more than 32 context levels\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@TT_PUNCTUATION = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"too many }\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@TT_STRING = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [13 x i8] c"empty string\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"synonym must have at least two entries\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"unexpected %s\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"missing }\00", align 1
@PRT_MESSAGE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [11 x i8] c"loaded %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @BotLoadSynonyms(i8* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [32 x i64], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_8__, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %5, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %16, align 8
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %291, %1
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %21, label %294

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @GetClearedHunkMemory(i32 %28)
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %10, align 8
  br label %31

31:                                               ; preds = %27, %24, %21
  %32 = load i32, i32* @BOTFILESBASEFOLDER, align 4
  %33 = call i32 @PC_SetBaseFolder(i32 %32)
  %34 = load i8*, i8** %3, align 8
  %35 = call i32* @LoadSourceFile(i8* %34)
  store i32* %35, i32** %11, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %31
  %39 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botimport, i32 0, i32 0), align 8
  %40 = load i32, i32* @PRT_ERROR, align 4
  %41 = load i8*, i8** %3, align 8
  %42 = call i32 %39(i32 %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %41)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %300

43:                                               ; preds = %31
  store i64 0, i64* %8, align 8
  store i32 0, i32* %6, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %14, align 8
  br label %44

44:                                               ; preds = %281, %43
  %45 = load i32*, i32** %11, align 8
  %46 = call i64 @PC_ReadToken(i32* %45, %struct.TYPE_8__* %12)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %282

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @TT_NUMBER, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %80

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = or i64 %56, %55
  store i64 %57, i64* %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [32 x i64], [32 x i64]* %9, i64 0, i64 %61
  store i64 %59, i64* %62, align 8
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp sge i32 %65, 32
  br i1 %66, label %67, label %72

67:                                               ; preds = %53
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 (i32*, i8*, ...) @SourceError(i32* %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32*, i32** %11, align 8
  %71 = call i32 @FreeSource(i32* %70)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %300

72:                                               ; preds = %53
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @PC_ExpectTokenString(i32* %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = load i32*, i32** %11, align 8
  %78 = call i32 @FreeSource(i32* %77)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %300

79:                                               ; preds = %72
  br label %281

80:                                               ; preds = %48
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @TT_PUNCTUATION, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %280

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @strcmp(i32 %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %108, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load i32*, i32** %11, align 8
  %97 = call i32 (i32*, i8*, ...) @SourceError(i32* %96, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %98 = load i32*, i32** %11, align 8
  %99 = call i32 @FreeSource(i32* %98)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %300

100:                                              ; preds = %90
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [32 x i64], [32 x i64]* %9, i64 0, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = xor i64 %104, -1
  %106 = load i64, i64* %8, align 8
  %107 = and i64 %106, %105
  store i64 %107, i64* %8, align 8
  br label %279

108:                                              ; preds = %85
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @strcmp(i32 %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %271, label %113

113:                                              ; preds = %108
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = add i64 %115, 32
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %4, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %142

120:                                              ; preds = %113
  %121 = load i8*, i8** %10, align 8
  %122 = bitcast i8* %121 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %122, %struct.TYPE_9__** %15, align 8
  %123 = load i8*, i8** %10, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 32
  store i8* %124, i8** %10, align 8
  %125 = load i64, i64* %8, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 2
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %129, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 3
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %131, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %133 = icmp ne %struct.TYPE_9__* %132, null
  br i1 %133, label %134, label %138

134:                                              ; preds = %120
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 3
  store %struct.TYPE_9__* %135, %struct.TYPE_9__** %137, align 8
  br label %140

138:                                              ; preds = %120
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %139, %struct.TYPE_9__** %13, align 8
  br label %140

140:                                              ; preds = %138, %134
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %141, %struct.TYPE_9__** %14, align 8
  br label %142

142:                                              ; preds = %140, %113
  store i32 0, i32* %7, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %17, align 8
  br label %143

143:                                              ; preds = %142, %261
  %144 = load i32*, i32** %11, align 8
  %145 = call i32 @PC_ExpectTokenString(i32* %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %143
  %148 = load i32*, i32** %11, align 8
  %149 = load i64, i64* @TT_STRING, align 8
  %150 = call i32 @PC_ExpectTokenType(i32* %148, i64 %149, i32 0, %struct.TYPE_8__* %12)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %147, %143
  %153 = load i32*, i32** %11, align 8
  %154 = call i32 @FreeSource(i32* %153)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %300

155:                                              ; preds = %147
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @StripDoubleQuotes(i32 %157)
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = call i64 @strlen(i32 %160)
  %162 = icmp sle i64 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %155
  %164 = load i32*, i32** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i32 (i32*, i8*, ...) @SourceError(i32* %164, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %166)
  %168 = load i32*, i32** %11, align 8
  %169 = call i32 @FreeSource(i32* %168)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %300

170:                                              ; preds = %155
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = call i64 @strlen(i32 %172)
  %174 = add i64 24, %173
  %175 = add i64 %174, 1
  %176 = load i32, i32* %5, align 4
  %177 = sext i32 %176 to i64
  %178 = add i64 %177, %175
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %5, align 4
  %180 = load i32, i32* %4, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %214

182:                                              ; preds = %170
  %183 = load i8*, i8** %10, align 8
  %184 = bitcast i8* %183 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %184, %struct.TYPE_10__** %16, align 8
  %185 = load i8*, i8** %10, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 24
  store i8* %186, i8** %10, align 8
  %187 = load i8*, i8** %10, align 8
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  store i8* %187, i8** %189, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = call i64 @strlen(i32 %191)
  %193 = add nsw i64 %192, 1
  %194 = load i8*, i8** %10, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 %193
  store i8* %195, i8** %10, align 8
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @strcpy(i8* %198, i32 %200)
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %203 = icmp ne %struct.TYPE_10__* %202, null
  br i1 %203, label %204, label %208

204:                                              ; preds = %182
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 2
  store %struct.TYPE_10__* %205, %struct.TYPE_10__** %207, align 8
  br label %212

208:                                              ; preds = %182
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 2
  store %struct.TYPE_10__* %209, %struct.TYPE_10__** %211, align 8
  br label %212

212:                                              ; preds = %208, %204
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  store %struct.TYPE_10__* %213, %struct.TYPE_10__** %17, align 8
  br label %214

214:                                              ; preds = %212, %170
  %215 = load i32, i32* %7, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %7, align 4
  %217 = load i32*, i32** %11, align 8
  %218 = call i32 @PC_ExpectTokenString(i32* %217, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %229

220:                                              ; preds = %214
  %221 = load i32*, i32** %11, align 8
  %222 = load i64, i64* @TT_NUMBER, align 8
  %223 = call i32 @PC_ExpectTokenType(i32* %221, i64 %222, i32 0, %struct.TYPE_8__* %12)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %220
  %226 = load i32*, i32** %11, align 8
  %227 = call i32 @PC_ExpectTokenString(i32* %226, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %232, label %229

229:                                              ; preds = %225, %220, %214
  %230 = load i32*, i32** %11, align 8
  %231 = call i32 @FreeSource(i32* %230)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %300

232:                                              ; preds = %225
  %233 = load i32, i32* %4, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %249

235:                                              ; preds = %232
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 3
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 1
  store i64 %237, i64* %239, align 8
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = sext i32 %245 to i64
  %247 = add nsw i64 %246, %242
  %248 = trunc i64 %247 to i32
  store i32 %248, i32* %244, align 8
  br label %249

249:                                              ; preds = %235, %232
  %250 = load i32*, i32** %11, align 8
  %251 = call i64 @PC_CheckTokenString(i32* %250, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %249
  br label %262

254:                                              ; preds = %249
  %255 = load i32*, i32** %11, align 8
  %256 = call i32 @PC_ExpectTokenString(i32* %255, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %261, label %258

258:                                              ; preds = %254
  %259 = load i32*, i32** %11, align 8
  %260 = call i32 @FreeSource(i32* %259)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %300

261:                                              ; preds = %254
  br label %143

262:                                              ; preds = %253
  %263 = load i32, i32* %7, align 4
  %264 = icmp slt i32 %263, 2
  br i1 %264, label %265, label %270

265:                                              ; preds = %262
  %266 = load i32*, i32** %11, align 8
  %267 = call i32 (i32*, i8*, ...) @SourceError(i32* %266, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  %268 = load i32*, i32** %11, align 8
  %269 = call i32 @FreeSource(i32* %268)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %300

270:                                              ; preds = %262
  br label %278

271:                                              ; preds = %108
  %272 = load i32*, i32** %11, align 8
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = call i32 (i32*, i8*, ...) @SourceError(i32* %272, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 %274)
  %276 = load i32*, i32** %11, align 8
  %277 = call i32 @FreeSource(i32* %276)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %300

278:                                              ; preds = %270
  br label %279

279:                                              ; preds = %278, %100
  br label %280

280:                                              ; preds = %279, %80
  br label %281

281:                                              ; preds = %280, %79
  br label %44

282:                                              ; preds = %44
  %283 = load i32*, i32** %11, align 8
  %284 = call i32 @FreeSource(i32* %283)
  %285 = load i32, i32* %6, align 4
  %286 = icmp sgt i32 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %282
  %288 = load i32*, i32** %11, align 8
  %289 = call i32 (i32*, i8*, ...) @SourceError(i32* %288, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %300

290:                                              ; preds = %282
  br label %291

291:                                              ; preds = %290
  %292 = load i32, i32* %4, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %4, align 4
  br label %18

294:                                              ; preds = %18
  %295 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botimport, i32 0, i32 0), align 8
  %296 = load i32, i32* @PRT_MESSAGE, align 4
  %297 = load i8*, i8** %3, align 8
  %298 = call i32 %295(i32 %296, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8* %297)
  %299 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %299, %struct.TYPE_9__** %2, align 8
  br label %300

300:                                              ; preds = %294, %287, %271, %265, %258, %229, %163, %152, %95, %76, %67, %38
  %301 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  ret %struct.TYPE_9__* %301
}

declare dso_local i64 @GetClearedHunkMemory(i32) #1

declare dso_local i32 @PC_SetBaseFolder(i32) #1

declare dso_local i32* @LoadSourceFile(i8*) #1

declare dso_local i64 @PC_ReadToken(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @SourceError(i32*, i8*, ...) #1

declare dso_local i32 @FreeSource(i32*) #1

declare dso_local i32 @PC_ExpectTokenString(i32*, i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @PC_ExpectTokenType(i32*, i64, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @StripDoubleQuotes(i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i64 @PC_CheckTokenString(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
