; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_format.c_FLAC__format_cuesheet_is_legal.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_format.c_FLAC__format_cuesheet_is_legal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [65 x i8] c"CD-DA cue sheet must have a lead-in length of at least 2 seconds\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"CD-DA cue sheet lead-in length must be evenly divisible by 588 samples\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"cue sheet must have at least one track (the lead-out)\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"CD-DA cue sheet must have a lead-out track number 170 (0xAA)\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"cue sheet may not have a track number 0\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"CD-DA cue sheet track number must be 1-99 or 170\00", align 1
@.str.6 = private unnamed_addr constant [72 x i8] c"CD-DA cue sheet lead-out offset must be evenly divisible by 588 samples\00", align 1
@.str.7 = private unnamed_addr constant [69 x i8] c"CD-DA cue sheet track offset must be evenly divisible by 588 samples\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"cue sheet track must have at least one index point\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"cue sheet track's first index number must be 0 or 1\00", align 1
@.str.10 = private unnamed_addr constant [75 x i8] c"CD-DA cue sheet track index offset must be evenly divisible by 588 samples\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"cue sheet track index numbers must increase by 1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FLAC__format_cuesheet_is_legal(%struct.TYPE_7__* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %3
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %15, 88200
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load i8**, i8*** %7, align 8
  %19 = icmp ne i8** %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  br label %22

22:                                               ; preds = %20, %17
  store i32 0, i32* %4, align 4
  br label %291

23:                                               ; preds = %12
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = srem i32 %26, 588
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load i8**, i8*** %7, align 8
  %31 = icmp ne i8** %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i8** %33, align 8
  br label %34

34:                                               ; preds = %32, %29
  store i32 0, i32* %4, align 4
  br label %291

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35, %3
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i8**, i8*** %7, align 8
  %43 = icmp ne i8** %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i8** %45, align 8
  br label %46

46:                                               ; preds = %44, %41
  store i32 0, i32* %4, align 4
  br label %291

47:                                               ; preds = %36
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %47
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 170
  br i1 %62, label %63, label %69

63:                                               ; preds = %50
  %64 = load i8**, i8*** %7, align 8
  %65 = icmp ne i8** %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i8** %67, align 8
  br label %68

68:                                               ; preds = %66, %63
  store i32 0, i32* %4, align 4
  br label %291

69:                                               ; preds = %50, %47
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %287, %69
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ult i32 %71, %74
  br i1 %75, label %76, label %290

76:                                               ; preds = %70
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %76
  %87 = load i8**, i8*** %7, align 8
  %88 = icmp ne i8** %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8** %90, align 8
  br label %91

91:                                               ; preds = %89, %86
  store i32 0, i32* %4, align 4
  br label %291

92:                                               ; preds = %76
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %132

95:                                               ; preds = %92
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp sge i32 %103, 1
  br i1 %104, label %105, label %115

105:                                              ; preds = %95
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp sle i32 %113, 99
  br i1 %114, label %131, label %115

115:                                              ; preds = %105, %95
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp eq i32 %123, 170
  br i1 %124, label %131, label %125

125:                                              ; preds = %115
  %126 = load i8**, i8*** %7, align 8
  %127 = icmp ne i8** %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i8** %129, align 8
  br label %130

130:                                              ; preds = %128, %125
  store i32 0, i32* %4, align 4
  br label %291

131:                                              ; preds = %115, %105
  br label %132

132:                                              ; preds = %131, %92
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %162

135:                                              ; preds = %132
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 2
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = srem i32 %143, 588
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %162

146:                                              ; preds = %135
  %147 = load i8**, i8*** %7, align 8
  %148 = icmp ne i8** %147, null
  br i1 %148, label %149, label %161

149:                                              ; preds = %146
  %150 = load i32, i32* %8, align 4
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = sub nsw i32 %153, 1
  %155 = icmp eq i32 %150, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %149
  %157 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.6, i64 0, i64 0), i8** %157, align 8
  br label %160

158:                                              ; preds = %149
  %159 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.7, i64 0, i64 0), i8** %159, align 8
  br label %160

160:                                              ; preds = %158, %156
  br label %161

161:                                              ; preds = %160, %146
  store i32 0, i32* %4, align 4
  br label %291

162:                                              ; preds = %135, %132
  %163 = load i32, i32* %8, align 4
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = sub nsw i32 %166, 1
  %168 = icmp ult i32 %163, %167
  br i1 %168, label %169, label %205

169:                                              ; preds = %162
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = load i32, i32* %8, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %169
  %180 = load i8**, i8*** %7, align 8
  %181 = icmp ne i8** %180, null
  br i1 %181, label %182, label %184

182:                                              ; preds = %179
  %183 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i8** %183, align 8
  br label %184

184:                                              ; preds = %182, %179
  store i32 0, i32* %4, align 4
  br label %291

185:                                              ; preds = %169
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 2
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %187, align 8
  %189 = load i32, i32* %8, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 3
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i64 0
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = icmp sgt i32 %196, 1
  br i1 %197, label %198, label %204

198:                                              ; preds = %185
  %199 = load i8**, i8*** %7, align 8
  %200 = icmp ne i8** %199, null
  br i1 %200, label %201, label %203

201:                                              ; preds = %198
  %202 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0), i8** %202, align 8
  br label %203

203:                                              ; preds = %201, %198
  store i32 0, i32* %4, align 4
  br label %291

204:                                              ; preds = %185
  br label %205

205:                                              ; preds = %204, %162
  store i32 0, i32* %9, align 4
  br label %206

206:                                              ; preds = %283, %205
  %207 = load i32, i32* %9, align 4
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 2
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %209, align 8
  %211 = load i32, i32* %8, align 4
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = icmp ult i32 %207, %215
  br i1 %216, label %217, label %286

217:                                              ; preds = %206
  %218 = load i32, i32* %6, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %242

220:                                              ; preds = %217
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 2
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %222, align 8
  %224 = load i32, i32* %8, align 4
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 3
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %227, align 8
  %229 = load i32, i32* %9, align 4
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = srem i32 %233, 588
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %242

236:                                              ; preds = %220
  %237 = load i8**, i8*** %7, align 8
  %238 = icmp ne i8** %237, null
  br i1 %238, label %239, label %241

239:                                              ; preds = %236
  %240 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.10, i64 0, i64 0), i8** %240, align 8
  br label %241

241:                                              ; preds = %239, %236
  store i32 0, i32* %4, align 4
  br label %291

242:                                              ; preds = %220, %217
  %243 = load i32, i32* %9, align 4
  %244 = icmp ugt i32 %243, 0
  br i1 %244, label %245, label %282

245:                                              ; preds = %242
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 2
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %247, align 8
  %249 = load i32, i32* %8, align 4
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 3
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %252, align 8
  %254 = load i32, i32* %9, align 4
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 2
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %260, align 8
  %262 = load i32, i32* %8, align 4
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 3
  %266 = load %struct.TYPE_5__*, %struct.TYPE_5__** %265, align 8
  %267 = load i32, i32* %9, align 4
  %268 = sub i32 %267, 1
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = add nsw i32 %272, 1
  %274 = icmp ne i32 %258, %273
  br i1 %274, label %275, label %281

275:                                              ; preds = %245
  %276 = load i8**, i8*** %7, align 8
  %277 = icmp ne i8** %276, null
  br i1 %277, label %278, label %280

278:                                              ; preds = %275
  %279 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i8** %279, align 8
  br label %280

280:                                              ; preds = %278, %275
  store i32 0, i32* %4, align 4
  br label %291

281:                                              ; preds = %245
  br label %282

282:                                              ; preds = %281, %242
  br label %283

283:                                              ; preds = %282
  %284 = load i32, i32* %9, align 4
  %285 = add i32 %284, 1
  store i32 %285, i32* %9, align 4
  br label %206

286:                                              ; preds = %206
  br label %287

287:                                              ; preds = %286
  %288 = load i32, i32* %8, align 4
  %289 = add i32 %288, 1
  store i32 %289, i32* %8, align 4
  br label %70

290:                                              ; preds = %70
  store i32 1, i32* %4, align 4
  br label %291

291:                                              ; preds = %290, %280, %241, %203, %184, %161, %130, %91, %68, %46, %34, %22
  %292 = load i32, i32* %4, align 4
  ret i32 %292
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
