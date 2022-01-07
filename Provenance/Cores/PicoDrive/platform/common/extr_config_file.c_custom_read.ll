; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_config_file.c_custom_read.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_config_file.c_custom_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"Frameskip\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Auto\00", align 1
@currentConfig = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"Sound Quality\00", align 1
@PsndRate = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"stereo\00", align 1
@POPT_EN_STEREO = common dso_local global i32 0, align 4
@PicoOpt = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"mono\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Region\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Auto: \00", align 1
@PicoAutoRgnOrder = common dso_local global i32 0, align 4
@PicoRegionOverride = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"Japan NTSC\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Japan PAL\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"USA\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Europe\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"Scale factor\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"Hor. scale (for low res. games)\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"Hor. scale (for hi res. games)\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"Wait for vsync\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"never\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"sometimes\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"always\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"unhandled custom_read %i: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i8*)* @custom_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @custom_read(%struct.TYPE_4__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %322 [
    i32 130, label %15
    i32 128, label %30
    i32 129, label %99
    i32 137, label %249
    i32 136, label %256
    i32 135, label %263
    i32 132, label %266
    i32 134, label %274
    i32 133, label %282
    i32 131, label %290
  ]

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @strcasecmp(i8* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %328

20:                                               ; preds = %15
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @strcasecmp(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 0), align 8
  br label %29

25:                                               ; preds = %20
  %26 = load i8*, i8** %7, align 8
  %27 = call i8* @atoi(i8* %26)
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 0), align 8
  br label %29

29:                                               ; preds = %25, %24
  store i32 1, i32* %4, align 4
  br label %328

30:                                               ; preds = %3
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @strcasecmp(i8* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %328

35:                                               ; preds = %30
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @strtoul(i8* %36, i8** %8, i32 10)
  store i32 %37, i32* @PsndRate, align 4
  %38 = load i32, i32* @PsndRate, align 4
  %39 = icmp slt i32 %38, 8000
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @PsndRate, align 4
  %42 = icmp sgt i32 %41, 44100
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %35
  store i32 22050, i32* @PsndRate, align 4
  br label %44

44:                                               ; preds = %43, %40
  %45 = load i8*, i8** %8, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 72
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load i8*, i8** %8, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 104
  br i1 %53, label %54, label %57

54:                                               ; preds = %49, %44
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %8, align 8
  br label %57

57:                                               ; preds = %54, %49
  %58 = load i8*, i8** %8, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 90
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load i8*, i8** %8, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 122
  br i1 %66, label %67, label %70

67:                                               ; preds = %62, %57
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %8, align 8
  br label %70

70:                                               ; preds = %67, %62
  br label %71

71:                                               ; preds = %76, %70
  %72 = load i8*, i8** %8, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 32
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i8*, i8** %8, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %8, align 8
  br label %71

79:                                               ; preds = %71
  %80 = load i8*, i8** %8, align 8
  %81 = call i32 @strcasecmp(i8* %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32, i32* @POPT_EN_STEREO, align 4
  %85 = load i32, i32* @PicoOpt, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* @PicoOpt, align 4
  br label %98

87:                                               ; preds = %79
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 @strcasecmp(i8* %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load i32, i32* @POPT_EN_STEREO, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* @PicoOpt, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* @PicoOpt, align 4
  br label %97

96:                                               ; preds = %87
  store i32 0, i32* %4, align 4
  br label %328

97:                                               ; preds = %91
  br label %98

98:                                               ; preds = %97, %83
  store i32 1, i32* %4, align 4
  br label %328

99:                                               ; preds = %3
  %100 = load i8*, i8** %6, align 8
  %101 = call i32 @strcasecmp(i8* %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  store i32 0, i32* %4, align 4
  br label %328

104:                                              ; preds = %99
  %105 = load i8*, i8** %7, align 8
  %106 = call i32 @strncasecmp(i8* %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 6)
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %217

108:                                              ; preds = %104
  %109 = load i8*, i8** %7, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 5
  store i8* %110, i8** %9, align 8
  %111 = load i8*, i8** %7, align 8
  %112 = load i8*, i8** %7, align 8
  %113 = call i32 @strlen(i8* %112)
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %111, i64 %114
  store i8* %115, i8** %10, align 8
  store i32 0, i32* @PicoAutoRgnOrder, align 4
  store i32 0, i32* @PicoRegionOverride, align 4
  store i32 0, i32* %11, align 4
  br label %116

116:                                              ; preds = %213, %108
  %117 = load i8*, i8** %9, align 8
  %118 = load i8*, i8** %10, align 8
  %119 = icmp ult i8* %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load i32, i32* %11, align 4
  %122 = icmp slt i32 %121, 3
  br label %123

123:                                              ; preds = %120, %116
  %124 = phi i1 [ false, %116 ], [ %122, %120 ]
  br i1 %124, label %125, label %216

125:                                              ; preds = %123
  br label %126

126:                                              ; preds = %131, %125
  %127 = load i8*, i8** %9, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 32
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load i8*, i8** %9, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %9, align 8
  br label %126

134:                                              ; preds = %126
  %135 = load i8*, i8** %9, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 0
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 74
  br i1 %139, label %140, label %152

140:                                              ; preds = %134
  %141 = load i8*, i8** %9, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 1
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 80
  br i1 %145, label %146, label %152

146:                                              ; preds = %140
  %147 = load i32, i32* %11, align 4
  %148 = mul nsw i32 %147, 4
  %149 = shl i32 1, %148
  %150 = load i32, i32* @PicoAutoRgnOrder, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* @PicoAutoRgnOrder, align 4
  br label %190

152:                                              ; preds = %140, %134
  %153 = load i8*, i8** %9, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 0
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 85
  br i1 %157, label %158, label %170

158:                                              ; preds = %152
  %159 = load i8*, i8** %9, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 1
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %162, 83
  br i1 %163, label %164, label %170

164:                                              ; preds = %158
  %165 = load i32, i32* %11, align 4
  %166 = mul nsw i32 %165, 4
  %167 = shl i32 4, %166
  %168 = load i32, i32* @PicoAutoRgnOrder, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* @PicoAutoRgnOrder, align 4
  br label %189

170:                                              ; preds = %158, %152
  %171 = load i8*, i8** %9, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 0
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp eq i32 %174, 69
  br i1 %175, label %176, label %188

176:                                              ; preds = %170
  %177 = load i8*, i8** %9, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 1
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 %180, 85
  br i1 %181, label %182, label %188

182:                                              ; preds = %176
  %183 = load i32, i32* %11, align 4
  %184 = mul nsw i32 %183, 4
  %185 = shl i32 8, %184
  %186 = load i32, i32* @PicoAutoRgnOrder, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* @PicoAutoRgnOrder, align 4
  br label %188

188:                                              ; preds = %182, %176, %170
  br label %189

189:                                              ; preds = %188, %164
  br label %190

190:                                              ; preds = %189, %146
  br label %191

191:                                              ; preds = %203, %190
  %192 = load i8*, i8** %9, align 8
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp ne i32 %194, 32
  br i1 %195, label %196, label %201

196:                                              ; preds = %191
  %197 = load i8*, i8** %9, align 8
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp ne i32 %199, 0
  br label %201

201:                                              ; preds = %196, %191
  %202 = phi i1 [ false, %191 ], [ %200, %196 ]
  br i1 %202, label %203, label %206

203:                                              ; preds = %201
  %204 = load i8*, i8** %9, align 8
  %205 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %205, i8** %9, align 8
  br label %191

206:                                              ; preds = %201
  %207 = load i8*, i8** %9, align 8
  %208 = load i8, i8* %207, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %206
  br label %216

212:                                              ; preds = %206
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %11, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %11, align 4
  br label %116

216:                                              ; preds = %211, %123
  br label %248

217:                                              ; preds = %104
  %218 = load i8*, i8** %7, align 8
  %219 = call i32 @strcasecmp(i8* %218, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %217
  store i32 0, i32* @PicoRegionOverride, align 4
  br label %247

222:                                              ; preds = %217
  %223 = load i8*, i8** %7, align 8
  %224 = call i32 @strcasecmp(i8* %223, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %222
  store i32 1, i32* @PicoRegionOverride, align 4
  br label %246

227:                                              ; preds = %222
  %228 = load i8*, i8** %7, align 8
  %229 = call i32 @strcasecmp(i8* %228, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %227
  store i32 2, i32* @PicoRegionOverride, align 4
  br label %245

232:                                              ; preds = %227
  %233 = load i8*, i8** %7, align 8
  %234 = call i32 @strcasecmp(i8* %233, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %232
  store i32 4, i32* @PicoRegionOverride, align 4
  br label %244

237:                                              ; preds = %232
  %238 = load i8*, i8** %7, align 8
  %239 = call i32 @strcasecmp(i8* %238, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %237
  store i32 8, i32* @PicoRegionOverride, align 4
  br label %243

242:                                              ; preds = %237
  store i32 0, i32* %4, align 4
  br label %328

243:                                              ; preds = %241
  br label %244

244:                                              ; preds = %243, %236
  br label %245

245:                                              ; preds = %244, %231
  br label %246

246:                                              ; preds = %245, %226
  br label %247

247:                                              ; preds = %246, %221
  br label %248

248:                                              ; preds = %247, %216
  store i32 1, i32* %4, align 4
  br label %328

249:                                              ; preds = %3
  %250 = load i8*, i8** %7, align 8
  %251 = call i8* @atoi(i8* %250)
  %252 = ptrtoint i8* %251 to i32
  store i32 %252, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 1), align 4
  %253 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 1), align 4
  %254 = mul nsw i32 %253, 1000
  %255 = call i32 @Pico32xSetClocks(i32 %254, i32 0)
  store i32 1, i32* %4, align 4
  br label %328

256:                                              ; preds = %3
  %257 = load i8*, i8** %7, align 8
  %258 = call i8* @atoi(i8* %257)
  %259 = ptrtoint i8* %258 to i32
  store i32 %259, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 2), align 8
  %260 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 2), align 8
  %261 = mul nsw i32 %260, 1000
  %262 = call i32 @Pico32xSetClocks(i32 0, i32 %261)
  store i32 1, i32* %4, align 4
  br label %328

263:                                              ; preds = %3
  %264 = load i8*, i8** %7, align 8
  %265 = call i8* @atoi(i8* %264)
  store i8* %265, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 7), align 8
  store i32 1, i32* %4, align 4
  br label %328

266:                                              ; preds = %3
  %267 = load i8*, i8** %6, align 8
  %268 = call i32 @strcasecmp(i8* %267, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %266
  store i32 0, i32* %4, align 4
  br label %328

271:                                              ; preds = %266
  %272 = load i8*, i8** %7, align 8
  %273 = call i8* @atof(i8* %272)
  store i8* %273, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 6), align 8
  store i32 1, i32* %4, align 4
  br label %328

274:                                              ; preds = %3
  %275 = load i8*, i8** %6, align 8
  %276 = call i32 @strcasecmp(i8* %275, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0))
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %274
  store i32 0, i32* %4, align 4
  br label %328

279:                                              ; preds = %274
  %280 = load i8*, i8** %7, align 8
  %281 = call i8* @atof(i8* %280)
  store i8* %281, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 5), align 8
  store i32 1, i32* %4, align 4
  br label %328

282:                                              ; preds = %3
  %283 = load i8*, i8** %6, align 8
  %284 = call i32 @strcasecmp(i8* %283, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %282
  store i32 0, i32* %4, align 4
  br label %328

287:                                              ; preds = %282
  %288 = load i8*, i8** %7, align 8
  %289 = call i8* @atof(i8* %288)
  store i8* %289, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 4), align 8
  store i32 1, i32* %4, align 4
  br label %328

290:                                              ; preds = %3
  %291 = load i8*, i8** %6, align 8
  %292 = call i32 @strcasecmp(i8* %291, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %290
  store i32 0, i32* %4, align 4
  br label %328

295:                                              ; preds = %290
  %296 = load i8*, i8** %7, align 8
  %297 = call i32 @strcasecmp(i8* %296, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %302

299:                                              ; preds = %295
  %300 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 3), align 4
  %301 = and i32 %300, -73729
  store i32 %301, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 3), align 4
  br label %321

302:                                              ; preds = %295
  %303 = load i8*, i8** %7, align 8
  %304 = call i32 @strcasecmp(i8* %303, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %309

306:                                              ; preds = %302
  %307 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 3), align 4
  %308 = or i32 %307, 73728
  store i32 %308, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 3), align 4
  br label %320

309:                                              ; preds = %302
  %310 = load i8*, i8** %7, align 8
  %311 = call i32 @strcasecmp(i8* %310, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %318

313:                                              ; preds = %309
  %314 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 3), align 4
  %315 = and i32 %314, -73729
  store i32 %315, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 3), align 4
  %316 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 3), align 4
  %317 = or i32 %316, 8192
  store i32 %317, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 3), align 4
  br label %319

318:                                              ; preds = %309
  store i32 0, i32* %4, align 4
  br label %328

319:                                              ; preds = %313
  br label %320

320:                                              ; preds = %319, %306
  br label %321

321:                                              ; preds = %320, %299
  store i32 1, i32* %4, align 4
  br label %328

322:                                              ; preds = %3
  %323 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 4
  %326 = load i8*, i8** %6, align 8
  %327 = call i32 @lprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0), i32 %325, i8* %326)
  store i32 0, i32* %4, align 4
  br label %328

328:                                              ; preds = %322, %321, %318, %294, %287, %286, %279, %278, %271, %270, %263, %256, %249, %248, %242, %103, %98, %96, %34, %29, %19
  %329 = load i32, i32* %4, align 4
  ret i32 %329
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @Pico32xSetClocks(i32, i32) #1

declare dso_local i8* @atof(i8*) #1

declare dso_local i32 @lprintf(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
