; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_qfiles.c_FindQuakeFilesInPak.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_qfiles.c_FindQuakeFilesInPak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i8*, i8*, i32, i32, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_11__ = type { i64, i32, i32, i8*, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"can't open pak file %s\00", align 1
@IDPAKHEADER = common dso_local global i64 0, align 8
@SINPAKHEADER = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"invalid pak file %s\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"can't read the Quake pak file dir entries from %s\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"can't read the Sin pak file dir entries from %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @FindQuakeFilesInPak(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %11, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32* @fopen(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @Warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %313

22:                                               ; preds = %2
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @fread(%struct.TYPE_11__* %7, i32 1, i32 32, i32* %23)
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %25, 32
  br i1 %26, label %45, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @IDPAKHEADER, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SINPAKHEADER, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %32, %27
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @LittleLong(i32 %40)
  %42 = load i32, i32* @SEEK_SET, align 4
  %43 = call i64 @fseek(i32* %38, i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %37, %32, %22
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @fclose(i32* %46)
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @Warning(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %313

50:                                               ; preds = %37
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @IDPAKHEADER, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %148

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @LittleLong(i32 %57)
  %59 = sext i32 %58 to i64
  %60 = udiv i64 %59, 32
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 32
  %65 = trunc i64 %64 to i32
  %66 = call %struct.TYPE_10__* @malloc(i32 %65)
  %67 = bitcast %struct.TYPE_10__* %66 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %67, %struct.TYPE_11__** %9, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %69 = icmp ne %struct.TYPE_11__* %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %55
  %71 = call i32 @Error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %55
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %74 = load i32, i32* %13, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @fread(%struct.TYPE_11__* %73, i32 32, i32 %74, i32* %75)
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %72
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @fclose(i32* %80)
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %83 = call i32 @free(%struct.TYPE_11__* %82)
  %84 = load i8*, i8** %4, align 8
  %85 = call i32 @Warning(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i8* %84)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %313

86:                                               ; preds = %72
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 @fclose(i32* %87)
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = mul i64 %90, 32
  %92 = trunc i64 %91 to i32
  %93 = call %struct.TYPE_10__* @malloc(i32 %92)
  %94 = bitcast %struct.TYPE_10__* %93 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %94, %struct.TYPE_11__** %8, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %96 = icmp ne %struct.TYPE_11__* %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %86
  %98 = call i32 @Error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %86
  store i32 0, i32* %14, align 4
  br label %100

100:                                              ; preds = %142, %99
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %145

104:                                              ; preds = %100
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 3
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 3
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @strcpy(i8* %110, i8* %116)
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %119 = load i32, i32* %14, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @LittleLong(i32 %123)
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 4
  store i32 %124, i32* %129, align 8
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %131 = load i32, i32* %14, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @LittleLong(i32 %135)
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 5
  store i32 %136, i32* %141, align 4
  br label %142

142:                                              ; preds = %104
  %143 = load i32, i32* %14, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %14, align 4
  br label %100

145:                                              ; preds = %100
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %147 = call i32 @free(%struct.TYPE_11__* %146)
  br label %215

148:                                              ; preds = %50
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @LittleLong(i32 %150)
  %152 = sext i32 %151 to i64
  %153 = udiv i64 %152, 32
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %13, align 4
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  %157 = mul i64 %156, 32
  %158 = trunc i64 %157 to i32
  %159 = call %struct.TYPE_10__* @malloc(i32 %158)
  %160 = bitcast %struct.TYPE_10__* %159 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %160, %struct.TYPE_11__** %8, align 8
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %162 = icmp ne %struct.TYPE_11__* %161, null
  br i1 %162, label %165, label %163

163:                                              ; preds = %148
  %164 = call i32 @Error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %165

165:                                              ; preds = %163, %148
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %167 = load i32, i32* %13, align 4
  %168 = load i32*, i32** %6, align 8
  %169 = call i32 @fread(%struct.TYPE_11__* %166, i32 32, i32 %167, i32* %168)
  %170 = load i32, i32* %13, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %179

172:                                              ; preds = %165
  %173 = load i32*, i32** %6, align 8
  %174 = call i32 @fclose(i32* %173)
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %176 = call i32 @free(%struct.TYPE_11__* %175)
  %177 = load i8*, i8** %4, align 8
  %178 = call i32 @Warning(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i8* %177)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %313

179:                                              ; preds = %165
  %180 = load i32*, i32** %6, align 8
  %181 = call i32 @fclose(i32* %180)
  store i32 0, i32* %14, align 4
  br label %182

182:                                              ; preds = %211, %179
  %183 = load i32, i32* %14, align 4
  %184 = load i32, i32* %13, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %214

186:                                              ; preds = %182
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %188 = load i32, i32* %14, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @LittleLong(i32 %192)
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %195 = load i32, i32* %14, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 4
  store i32 %193, i32* %198, align 8
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %200 = load i32, i32* %14, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @LittleLong(i32 %204)
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %207 = load i32, i32* %14, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 5
  store i32 %205, i32* %210, align 4
  br label %211

211:                                              ; preds = %186
  %212 = load i32, i32* %14, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %14, align 4
  br label %182

214:                                              ; preds = %182
  br label %215

215:                                              ; preds = %214, %145
  store i32 0, i32* %14, align 4
  br label %216

216:                                              ; preds = %306, %215
  %217 = load i32, i32* %14, align 4
  %218 = load i32, i32* %13, align 4
  %219 = icmp slt i32 %217, %218
  br i1 %219, label %220, label %309

220:                                              ; preds = %216
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %222 = load i32, i32* %14, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 3
  %226 = load i8*, i8** %225, align 8
  %227 = call i32 @ConvertPath(i8* %226)
  %228 = load i8*, i8** %5, align 8
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %230 = load i32, i32* %14, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 3
  %234 = load i8*, i8** %233, align 8
  %235 = call i64 @FileFilter(i8* %228, i8* %234, i32 0)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %305

237:                                              ; preds = %220
  %238 = call %struct.TYPE_10__* @malloc(i32 56)
  store %struct.TYPE_10__* %238, %struct.TYPE_10__** %12, align 8
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %240 = icmp ne %struct.TYPE_10__* %239, null
  br i1 %240, label %243, label %241

241:                                              ; preds = %237
  %242 = call i32 @Error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %243

243:                                              ; preds = %241, %237
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %245 = call i32 @memset(%struct.TYPE_10__* %244, i32 0, i32 56)
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 0
  %248 = load i8*, i8** %247, align 8
  %249 = load i8*, i8** %4, align 8
  %250 = call i32 @strcpy(i8* %248, i8* %249)
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 1
  %253 = load i8*, i8** %252, align 8
  %254 = load i8*, i8** %4, align 8
  %255 = call i32 @strcpy(i8* %253, i8* %254)
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 2
  %258 = load i8*, i8** %257, align 8
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %260 = load i32, i32* %14, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 3
  %264 = load i8*, i8** %263, align 8
  %265 = call i32 @strcpy(i8* %258, i8* %264)
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 3
  store i32 0, i32* %267, align 8
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %269 = load i32, i32* %14, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %271, i32 0, i32 4
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 4
  store i32 %273, i32* %275, align 4
  %276 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %277 = load i32, i32* %14, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %276, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 5
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 5
  store i32 %281, i32* %283, align 8
  %284 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %285 = load i32, i32* %14, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %287, i32 0, i32 3
  %289 = load i8*, i8** %288, align 8
  %290 = call i32 @QuakeFileType(i8* %289)
  %291 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 7
  store i32 %290, i32* %292, align 8
  %293 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %293, i32 0, i32 6
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %294, align 8
  %295 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %296 = icmp ne %struct.TYPE_10__* %295, null
  br i1 %296, label %297, label %301

297:                                              ; preds = %243
  %298 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %299 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %300 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %299, i32 0, i32 6
  store %struct.TYPE_10__* %298, %struct.TYPE_10__** %300, align 8
  br label %303

301:                                              ; preds = %243
  %302 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %302, %struct.TYPE_10__** %10, align 8
  br label %303

303:                                              ; preds = %301, %297
  %304 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %304, %struct.TYPE_10__** %11, align 8
  br label %305

305:                                              ; preds = %303, %220
  br label %306

306:                                              ; preds = %305
  %307 = load i32, i32* %14, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %14, align 4
  br label %216

309:                                              ; preds = %216
  %310 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %311 = call i32 @free(%struct.TYPE_11__* %310)
  %312 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %312, %struct.TYPE_10__** %3, align 8
  br label %313

313:                                              ; preds = %309, %172, %79, %45, %19
  %314 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  ret %struct.TYPE_10__* %314
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @Warning(i8*, i8*) #1

declare dso_local i32 @fread(%struct.TYPE_11__*, i32, i32, i32*) #1

declare dso_local i64 @fseek(i32*, i32, i32) #1

declare dso_local i32 @LittleLong(i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local %struct.TYPE_10__* @malloc(i32) #1

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @ConvertPath(i8*) #1

declare dso_local i64 @FileFilter(i8*, i8*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @QuakeFileType(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
