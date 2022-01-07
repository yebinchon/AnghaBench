; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@osd_version = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s (GCN)\00", align 1
@VERSION = common dso_local global i8* null, align 8
@MAXPATHLEN = common dso_local global i32 0, align 4
@DEFAULT_PATH = common dso_local global i8* null, align 8
@S_IRWXU = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%s/saves\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%s/saves/md\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%s/saves/ms\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"%s/saves/gg\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"%s/saves/sg\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"%s/saves/cd\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"%s/snaps\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"%s/snaps/md\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"%s/snaps/ms\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"%s/snaps/gg\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"%s/snaps/sg\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"%s/snaps/cd\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%s/cheats\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"%s/cheats/md\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"%s/cheats/ms\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"%s/cheats/gg\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"%s/cheats/sg\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"%s/cheats/cd\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"%s/bios\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"%s/lock-on\00", align 1
@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SILENT = common dso_local global i32 0, align 4
@TYPE_RECENT = common dso_local global i32 0, align 4
@ConfigRequested = common dso_local global i64 0, align 8
@Reset_cb = common dso_local global i32 0, align 4
@PowerOff_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i8*, i8** @osd_version, align 8
  %12 = load i8*, i8** @VERSION, align 8
  %13 = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = call i32 (...) @gx_video_Init()
  %15 = call i32 (...) @DVD_Init()
  %16 = call i32 (...) @gx_input_Init()
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %25, %2
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 12
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i1 [ false, %17 ], [ %22, %20 ]
  br i1 %24, label %25, label %30

25:                                               ; preds = %23
  %26 = call i32 (...) @fatInitDefault()
  store i32 %26, i32* %7, align 4
  %27 = call i32 @usleep(i32 250000)
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %17

30:                                               ; preds = %23
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %291

33:                                               ; preds = %30
  %34 = load i32, i32* @MAXPATHLEN, align 4
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %8, align 8
  %37 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %9, align 8
  %38 = load i8*, i8** @DEFAULT_PATH, align 8
  %39 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* %38)
  %40 = call i32* @opendir(i8* %37)
  store i32* %40, i32** %10, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @closedir(i32* %44)
  br label %49

46:                                               ; preds = %33
  %47 = load i32, i32* @S_IRWXU, align 4
  %48 = call i32 @mkdir(i8* %37, i32 %47)
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i8*, i8** @DEFAULT_PATH, align 8
  %51 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  %52 = call i32* @opendir(i8* %37)
  store i32* %52, i32** %10, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @closedir(i32* %56)
  br label %61

58:                                               ; preds = %49
  %59 = load i32, i32* @S_IRWXU, align 4
  %60 = call i32 @mkdir(i8* %37, i32 %59)
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i8*, i8** @DEFAULT_PATH, align 8
  %63 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %62)
  %64 = call i32* @opendir(i8* %37)
  store i32* %64, i32** %10, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @closedir(i32* %68)
  br label %73

70:                                               ; preds = %61
  %71 = load i32, i32* @S_IRWXU, align 4
  %72 = call i32 @mkdir(i8* %37, i32 %71)
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i8*, i8** @DEFAULT_PATH, align 8
  %75 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %74)
  %76 = call i32* @opendir(i8* %37)
  store i32* %76, i32** %10, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i32*, i32** %10, align 8
  %81 = call i32 @closedir(i32* %80)
  br label %85

82:                                               ; preds = %73
  %83 = load i32, i32* @S_IRWXU, align 4
  %84 = call i32 @mkdir(i8* %37, i32 %83)
  br label %85

85:                                               ; preds = %82, %79
  %86 = load i8*, i8** @DEFAULT_PATH, align 8
  %87 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %86)
  %88 = call i32* @opendir(i8* %37)
  store i32* %88, i32** %10, align 8
  %89 = load i32*, i32** %10, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @closedir(i32* %92)
  br label %97

94:                                               ; preds = %85
  %95 = load i32, i32* @S_IRWXU, align 4
  %96 = call i32 @mkdir(i8* %37, i32 %95)
  br label %97

97:                                               ; preds = %94, %91
  %98 = load i8*, i8** @DEFAULT_PATH, align 8
  %99 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %98)
  %100 = call i32* @opendir(i8* %37)
  store i32* %100, i32** %10, align 8
  %101 = load i32*, i32** %10, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load i32*, i32** %10, align 8
  %105 = call i32 @closedir(i32* %104)
  br label %109

106:                                              ; preds = %97
  %107 = load i32, i32* @S_IRWXU, align 4
  %108 = call i32 @mkdir(i8* %37, i32 %107)
  br label %109

109:                                              ; preds = %106, %103
  %110 = load i8*, i8** @DEFAULT_PATH, align 8
  %111 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %110)
  %112 = call i32* @opendir(i8* %37)
  store i32* %112, i32** %10, align 8
  %113 = load i32*, i32** %10, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load i32*, i32** %10, align 8
  %117 = call i32 @closedir(i32* %116)
  br label %121

118:                                              ; preds = %109
  %119 = load i32, i32* @S_IRWXU, align 4
  %120 = call i32 @mkdir(i8* %37, i32 %119)
  br label %121

121:                                              ; preds = %118, %115
  %122 = load i8*, i8** @DEFAULT_PATH, align 8
  %123 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %122)
  %124 = call i32* @opendir(i8* %37)
  store i32* %124, i32** %10, align 8
  %125 = load i32*, i32** %10, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = load i32*, i32** %10, align 8
  %129 = call i32 @closedir(i32* %128)
  br label %133

130:                                              ; preds = %121
  %131 = load i32, i32* @S_IRWXU, align 4
  %132 = call i32 @mkdir(i8* %37, i32 %131)
  br label %133

133:                                              ; preds = %130, %127
  %134 = load i8*, i8** @DEFAULT_PATH, align 8
  %135 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %134)
  %136 = call i32* @opendir(i8* %37)
  store i32* %136, i32** %10, align 8
  %137 = load i32*, i32** %10, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %133
  %140 = load i32*, i32** %10, align 8
  %141 = call i32 @closedir(i32* %140)
  br label %145

142:                                              ; preds = %133
  %143 = load i32, i32* @S_IRWXU, align 4
  %144 = call i32 @mkdir(i8* %37, i32 %143)
  br label %145

145:                                              ; preds = %142, %139
  %146 = load i8*, i8** @DEFAULT_PATH, align 8
  %147 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* %146)
  %148 = call i32* @opendir(i8* %37)
  store i32* %148, i32** %10, align 8
  %149 = load i32*, i32** %10, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %154

151:                                              ; preds = %145
  %152 = load i32*, i32** %10, align 8
  %153 = call i32 @closedir(i32* %152)
  br label %157

154:                                              ; preds = %145
  %155 = load i32, i32* @S_IRWXU, align 4
  %156 = call i32 @mkdir(i8* %37, i32 %155)
  br label %157

157:                                              ; preds = %154, %151
  %158 = load i8*, i8** @DEFAULT_PATH, align 8
  %159 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* %158)
  %160 = call i32* @opendir(i8* %37)
  store i32* %160, i32** %10, align 8
  %161 = load i32*, i32** %10, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %163, label %166

163:                                              ; preds = %157
  %164 = load i32*, i32** %10, align 8
  %165 = call i32 @closedir(i32* %164)
  br label %169

166:                                              ; preds = %157
  %167 = load i32, i32* @S_IRWXU, align 4
  %168 = call i32 @mkdir(i8* %37, i32 %167)
  br label %169

169:                                              ; preds = %166, %163
  %170 = load i8*, i8** @DEFAULT_PATH, align 8
  %171 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* %170)
  %172 = call i32* @opendir(i8* %37)
  store i32* %172, i32** %10, align 8
  %173 = load i32*, i32** %10, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %175, label %178

175:                                              ; preds = %169
  %176 = load i32*, i32** %10, align 8
  %177 = call i32 @closedir(i32* %176)
  br label %181

178:                                              ; preds = %169
  %179 = load i32, i32* @S_IRWXU, align 4
  %180 = call i32 @mkdir(i8* %37, i32 %179)
  br label %181

181:                                              ; preds = %178, %175
  %182 = load i8*, i8** @DEFAULT_PATH, align 8
  %183 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8* %182)
  %184 = call i32* @opendir(i8* %37)
  store i32* %184, i32** %10, align 8
  %185 = load i32*, i32** %10, align 8
  %186 = icmp ne i32* %185, null
  br i1 %186, label %187, label %190

187:                                              ; preds = %181
  %188 = load i32*, i32** %10, align 8
  %189 = call i32 @closedir(i32* %188)
  br label %193

190:                                              ; preds = %181
  %191 = load i32, i32* @S_IRWXU, align 4
  %192 = call i32 @mkdir(i8* %37, i32 %191)
  br label %193

193:                                              ; preds = %190, %187
  %194 = load i8*, i8** @DEFAULT_PATH, align 8
  %195 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* %194)
  %196 = call i32* @opendir(i8* %37)
  store i32* %196, i32** %10, align 8
  %197 = load i32*, i32** %10, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %199, label %202

199:                                              ; preds = %193
  %200 = load i32*, i32** %10, align 8
  %201 = call i32 @closedir(i32* %200)
  br label %205

202:                                              ; preds = %193
  %203 = load i32, i32* @S_IRWXU, align 4
  %204 = call i32 @mkdir(i8* %37, i32 %203)
  br label %205

205:                                              ; preds = %202, %199
  %206 = load i8*, i8** @DEFAULT_PATH, align 8
  %207 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* %206)
  %208 = call i32* @opendir(i8* %37)
  store i32* %208, i32** %10, align 8
  %209 = load i32*, i32** %10, align 8
  %210 = icmp ne i32* %209, null
  br i1 %210, label %211, label %214

211:                                              ; preds = %205
  %212 = load i32*, i32** %10, align 8
  %213 = call i32 @closedir(i32* %212)
  br label %217

214:                                              ; preds = %205
  %215 = load i32, i32* @S_IRWXU, align 4
  %216 = call i32 @mkdir(i8* %37, i32 %215)
  br label %217

217:                                              ; preds = %214, %211
  %218 = load i8*, i8** @DEFAULT_PATH, align 8
  %219 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8* %218)
  %220 = call i32* @opendir(i8* %37)
  store i32* %220, i32** %10, align 8
  %221 = load i32*, i32** %10, align 8
  %222 = icmp ne i32* %221, null
  br i1 %222, label %223, label %226

223:                                              ; preds = %217
  %224 = load i32*, i32** %10, align 8
  %225 = call i32 @closedir(i32* %224)
  br label %229

226:                                              ; preds = %217
  %227 = load i32, i32* @S_IRWXU, align 4
  %228 = call i32 @mkdir(i8* %37, i32 %227)
  br label %229

229:                                              ; preds = %226, %223
  %230 = load i8*, i8** @DEFAULT_PATH, align 8
  %231 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8* %230)
  %232 = call i32* @opendir(i8* %37)
  store i32* %232, i32** %10, align 8
  %233 = load i32*, i32** %10, align 8
  %234 = icmp ne i32* %233, null
  br i1 %234, label %235, label %238

235:                                              ; preds = %229
  %236 = load i32*, i32** %10, align 8
  %237 = call i32 @closedir(i32* %236)
  br label %241

238:                                              ; preds = %229
  %239 = load i32, i32* @S_IRWXU, align 4
  %240 = call i32 @mkdir(i8* %37, i32 %239)
  br label %241

241:                                              ; preds = %238, %235
  %242 = load i8*, i8** @DEFAULT_PATH, align 8
  %243 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8* %242)
  %244 = call i32* @opendir(i8* %37)
  store i32* %244, i32** %10, align 8
  %245 = load i32*, i32** %10, align 8
  %246 = icmp ne i32* %245, null
  br i1 %246, label %247, label %250

247:                                              ; preds = %241
  %248 = load i32*, i32** %10, align 8
  %249 = call i32 @closedir(i32* %248)
  br label %253

250:                                              ; preds = %241
  %251 = load i32, i32* @S_IRWXU, align 4
  %252 = call i32 @mkdir(i8* %37, i32 %251)
  br label %253

253:                                              ; preds = %250, %247
  %254 = load i8*, i8** @DEFAULT_PATH, align 8
  %255 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i8* %254)
  %256 = call i32* @opendir(i8* %37)
  store i32* %256, i32** %10, align 8
  %257 = load i32*, i32** %10, align 8
  %258 = icmp ne i32* %257, null
  br i1 %258, label %259, label %262

259:                                              ; preds = %253
  %260 = load i32*, i32** %10, align 8
  %261 = call i32 @closedir(i32* %260)
  br label %265

262:                                              ; preds = %253
  %263 = load i32, i32* @S_IRWXU, align 4
  %264 = call i32 @mkdir(i8* %37, i32 %263)
  br label %265

265:                                              ; preds = %262, %259
  %266 = load i8*, i8** @DEFAULT_PATH, align 8
  %267 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8* %266)
  %268 = call i32* @opendir(i8* %37)
  store i32* %268, i32** %10, align 8
  %269 = load i32*, i32** %10, align 8
  %270 = icmp ne i32* %269, null
  br i1 %270, label %271, label %274

271:                                              ; preds = %265
  %272 = load i32*, i32** %10, align 8
  %273 = call i32 @closedir(i32* %272)
  br label %277

274:                                              ; preds = %265
  %275 = load i32, i32* @S_IRWXU, align 4
  %276 = call i32 @mkdir(i8* %37, i32 %275)
  br label %277

277:                                              ; preds = %274, %271
  %278 = load i8*, i8** @DEFAULT_PATH, align 8
  %279 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i8* %278)
  %280 = call i32* @opendir(i8* %37)
  store i32* %280, i32** %10, align 8
  %281 = load i32*, i32** %10, align 8
  %282 = icmp ne i32* %281, null
  br i1 %282, label %283, label %286

283:                                              ; preds = %277
  %284 = load i32*, i32** %10, align 8
  %285 = call i32 @closedir(i32* %284)
  br label %289

286:                                              ; preds = %277
  %287 = load i32, i32* @S_IRWXU, align 4
  %288 = call i32 @mkdir(i8* %37, i32 %287)
  br label %289

289:                                              ; preds = %286, %283
  %290 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %290)
  br label %291

291:                                              ; preds = %289, %30
  %292 = call i32 (...) @gx_audio_Init()
  %293 = call i32 (...) @history_default()
  %294 = call i32 (...) @config_default()
  %295 = call i32 (...) @init_machine()
  %296 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %311

298:                                              ; preds = %291
  store i32 1, i32* @SILENT, align 4
  %299 = load i32, i32* @TYPE_RECENT, align 4
  %300 = call i64 @OpenDirectory(i32 %299, i32 -1)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %310

302:                                              ; preds = %298
  %303 = call i64 @LoadFile(i32 0)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %309

305:                                              ; preds = %302
  %306 = call i32 (...) @reloadrom()
  %307 = call i32 (...) @gx_video_Start()
  %308 = call i32 (...) @gx_audio_Start()
  store i64 0, i64* @ConfigRequested, align 8
  br label %309

309:                                              ; preds = %305, %302
  br label %310

310:                                              ; preds = %309, %298
  store i32 0, i32* @SILENT, align 4
  br label %311

311:                                              ; preds = %310, %291
  %312 = load i64, i64* @ConfigRequested, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %316

314:                                              ; preds = %311
  %315 = call i32 (...) @legal()
  br label %316

316:                                              ; preds = %314, %311
  %317 = load i32, i32* @Reset_cb, align 4
  %318 = call i32 @SYS_SetResetCallback(i32 %317)
  %319 = call i32 (...) @run_emulation()
  ret i32 0
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @gx_video_Init(...) #1

declare dso_local i32 @DVD_Init(...) #1

declare dso_local i32 @gx_input_Init(...) #1

declare dso_local i32 @fatInitDefault(...) #1

declare dso_local i32 @usleep(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32 @mkdir(i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @gx_audio_Init(...) #1

declare dso_local i32 @history_default(...) #1

declare dso_local i32 @config_default(...) #1

declare dso_local i32 @init_machine(...) #1

declare dso_local i64 @OpenDirectory(i32, i32) #1

declare dso_local i64 @LoadFile(i32) #1

declare dso_local i32 @reloadrom(...) #1

declare dso_local i32 @gx_video_Start(...) #1

declare dso_local i32 @gx_audio_Start(...) #1

declare dso_local i32 @legal(...) #1

declare dso_local i32 @SYS_SetResetCallback(i32) #1

declare dso_local i32 @run_emulation(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
