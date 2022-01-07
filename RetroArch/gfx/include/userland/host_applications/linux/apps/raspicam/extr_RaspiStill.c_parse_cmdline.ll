; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiStill.c_parse_cmdline.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiStill.c_parse_cmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8*, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_14__, i32, i32, i32, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@cmdline_commands = common dso_local global i32 0, align 4
@cmdline_commands_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Setting max quality = 100\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@FRAME_NEXT_SINGLE = common dso_local global i32 0, align 4
@FRAME_NEXT_FOREVER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%d:%d:%d\00", align 1
@encoding_xref_size = common dso_local global i32 0, align 4
@encoding_xref = common dso_local global %struct.TYPE_16__* null, align 8
@FRAME_NEXT_TIMELAPSE = common dso_local global i32 0, align 4
@FRAME_NEXT_IMMEDIATELY = common dso_local global i32 0, align 4
@FRAME_NEXT_KEYPRESS = common dso_local global i32 0, align 4
@FRAME_NEXT_SIGNAL = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@default_signal_handler = common dso_local global i32 0, align 4
@SIGUSR2 = common dso_local global i32 0, align 4
@application_help_message = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Invalid command line option (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, %struct.TYPE_12__*)* @parse_cmdline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_cmdline(i32 %0, i8** %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %17

17:                                               ; preds = %498, %3
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi i1 [ false, %17 ], [ %23, %21 ]
  br i1 %25, label %26, label %501

26:                                               ; preds = %24
  %27 = load i8**, i8*** %6, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  br label %498

34:                                               ; preds = %26
  %35 = load i8**, i8*** %6, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 45
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  store i32 0, i32* %8, align 4
  br label %498

45:                                               ; preds = %34
  store i32 1, i32* %8, align 4
  %46 = load i32, i32* @cmdline_commands, align 4
  %47 = load i32, i32* @cmdline_commands_size, align 4
  %48 = load i8**, i8*** %6, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = call i32 @raspicli_get_command_id(i32 %46, i32 %47, i8* %53, i32* %11)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, -1
  br i1 %56, label %57, label %66

57:                                               ; preds = %45
  %58 = load i32, i32* %11, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  %63 = load i32, i32* %5, align 4
  %64 = icmp sge i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %498

66:                                               ; preds = %60, %57, %45
  %67 = load i32, i32* %10, align 4
  switch i32 %67, label %421 [
    i32 135, label %68
    i32 134, label %94
    i32 136, label %97
    i32 141, label %139
    i32 145, label %155
    i32 130, label %158
    i32 128, label %161
    i32 131, label %192
    i32 144, label %225
    i32 143, label %263
    i32 142, label %310
    i32 129, label %334
    i32 140, label %363
    i32 137, label %366
    i32 132, label %378
    i32 139, label %396
    i32 138, label %399
    i32 146, label %402
    i32 133, label %405
  ]

68:                                               ; preds = %66
  %69 = load i8**, i8*** %6, align 8
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %69, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %76)
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %92

79:                                               ; preds = %68
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp sgt i32 %82, 100
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load i32, i32* @stderr, align 4
  %86 = call i32 (i32, i8*, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  store i32 100, i32* %88, align 4
  br label %89

89:                                               ; preds = %84, %79
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %93

92:                                               ; preds = %68
  store i32 0, i32* %8, align 4
  br label %93

93:                                               ; preds = %92, %89
  br label %497

94:                                               ; preds = %66
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  store i32 1, i32* %96, align 4
  br label %497

97:                                               ; preds = %66
  %98 = load i8**, i8*** %6, align 8
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %98, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @strlen(i8* %103)
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %137

107:                                              ; preds = %97
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 10
  %110 = call i32 @malloc(i32 %109)
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 22
  store i32 %110, i32* %112, align 4
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 22
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @vcos_assert(i32 %115)
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 22
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %107
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 22
  %124 = load i32, i32* %123, align 4
  %125 = load i8**, i8*** %6, align 8
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %125, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = load i32, i32* %12, align 4
  %132 = add nsw i32 %131, 1
  %133 = call i32 @strncpy(i32 %124, i8* %130, i32 %132)
  br label %134

134:                                              ; preds = %121, %107
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %9, align 4
  br label %138

137:                                              ; preds = %97
  store i32 0, i32* %8, align 4
  br label %138

138:                                              ; preds = %137, %134
  br label %497

139:                                              ; preds = %66
  %140 = load i8**, i8*** %6, align 8
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %140, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 2
  %148 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %145, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %147)
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %150, label %153

150:                                              ; preds = %139
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %9, align 4
  br label %154

153:                                              ; preds = %139
  store i32 0, i32* %8, align 4
  br label %154

154:                                              ; preds = %153, %150
  br label %497

155:                                              ; preds = %66
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 3
  store i32 1, i32* %157, align 4
  br label %497

158:                                              ; preds = %66
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 4
  store i32 1, i32* %160, align 4
  br label %497

161:                                              ; preds = %66
  %162 = load i8**, i8*** %6, align 8
  %163 = load i32, i32* %9, align 4
  %164 = add nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8*, i8** %162, i64 %165
  %167 = load i8*, i8** %166, align 8
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 5
  %170 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %167, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %169)
  %171 = icmp eq i32 %170, 1
  br i1 %171, label %172, label %190

172:                                              ; preds = %161
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %187

177:                                              ; preds = %172
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 18
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @FRAME_NEXT_SINGLE, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %187

183:                                              ; preds = %177
  %184 = load i32, i32* @FRAME_NEXT_FOREVER, align 4
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 18
  store i32 %184, i32* %186, align 4
  br label %187

187:                                              ; preds = %183, %177, %172
  %188 = load i32, i32* %9, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %9, align 4
  br label %191

190:                                              ; preds = %161
  store i32 0, i32* %8, align 4
  br label %191

191:                                              ; preds = %190, %187
  br label %497

192:                                              ; preds = %66
  %193 = load i8**, i8*** %6, align 8
  %194 = load i32, i32* %9, align 4
  %195 = add nsw i32 %194, 1
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8*, i8** %193, i64 %196
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @strcmp(i8* %198, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %192
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 21
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 3
  store i32 0, i32* %204, align 4
  br label %222

205:                                              ; preds = %192
  %206 = load i8**, i8*** %6, align 8
  %207 = load i32, i32* %9, align 4
  %208 = add nsw i32 %207, 1
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8*, i8** %206, i64 %209
  %211 = load i8*, i8** %210, align 8
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 21
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 2
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 21
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 1
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 21
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 0
  %221 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %211, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* %214, i32* %217, i32* %220)
  br label %222

222:                                              ; preds = %205, %201
  %223 = load i32, i32* %9, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %9, align 4
  br label %497

225:                                              ; preds = %66
  %226 = load i32, i32* %9, align 4
  %227 = add nsw i32 %226, 1
  %228 = load i32, i32* %5, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %230, label %259

230:                                              ; preds = %225
  %231 = load i8**, i8*** %6, align 8
  %232 = load i32, i32* %9, align 4
  %233 = add nsw i32 %232, 1
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8*, i8** %231, i64 %234
  %236 = load i8*, i8** %235, align 8
  %237 = getelementptr inbounds i8, i8* %236, i64 0
  %238 = load i8, i8* %237, align 1
  %239 = sext i8 %238 to i32
  %240 = icmp ne i32 %239, 45
  br i1 %240, label %241, label %259

241:                                              ; preds = %230
  %242 = load i8**, i8*** %6, align 8
  %243 = load i32, i32* %9, align 4
  %244 = add nsw i32 %243, 1
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i8*, i8** %242, i64 %245
  %247 = load i8*, i8** %246, align 8
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 6
  %250 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %247, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %249)
  %251 = icmp eq i32 %250, 1
  br i1 %251, label %252, label %257

252:                                              ; preds = %241
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 7
  store i32 1, i32* %254, align 4
  %255 = load i32, i32* %9, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %9, align 4
  br label %258

257:                                              ; preds = %241
  store i32 0, i32* %8, align 4
  br label %258

258:                                              ; preds = %257, %252
  br label %262

259:                                              ; preds = %230, %225
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 7
  store i32 1, i32* %261, align 4
  br label %262

262:                                              ; preds = %259, %258
  br label %497

263:                                              ; preds = %66
  %264 = load i8**, i8*** %6, align 8
  %265 = load i32, i32* %9, align 4
  %266 = add nsw i32 %265, 1
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i8*, i8** %264, i64 %267
  %269 = load i8*, i8** %268, align 8
  %270 = call i32 @strlen(i8* %269)
  store i32 %270, i32* %13, align 4
  store i32 0, i32* %8, align 4
  %271 = load i32, i32* %13, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %309

273:                                              ; preds = %263
  store i32 0, i32* %14, align 4
  br label %274

274:                                              ; preds = %305, %273
  %275 = load i32, i32* %14, align 4
  %276 = load i32, i32* @encoding_xref_size, align 4
  %277 = icmp slt i32 %275, %276
  br i1 %277, label %278, label %308

278:                                              ; preds = %274
  %279 = load %struct.TYPE_16__*, %struct.TYPE_16__** @encoding_xref, align 8
  %280 = load i32, i32* %14, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %282, i32 0, i32 0
  %284 = load i8*, i8** %283, align 8
  %285 = load i8**, i8*** %6, align 8
  %286 = load i32, i32* %9, align 4
  %287 = add nsw i32 %286, 1
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i8*, i8** %285, i64 %288
  %290 = load i8*, i8** %289, align 8
  %291 = call i32 @strcmp(i8* %284, i8* %290)
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %304

293:                                              ; preds = %278
  %294 = load %struct.TYPE_16__*, %struct.TYPE_16__** @encoding_xref, align 8
  %295 = load i32, i32* %14, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 8
  %300 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i32 0, i32 20
  store i32 %299, i32* %301, align 4
  store i32 1, i32* %8, align 4
  %302 = load i32, i32* %9, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %9, align 4
  br label %308

304:                                              ; preds = %278
  br label %305

305:                                              ; preds = %304
  %306 = load i32, i32* %14, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %14, align 4
  br label %274

308:                                              ; preds = %293, %274
  br label %309

309:                                              ; preds = %308, %263
  br label %497

310:                                              ; preds = %66
  %311 = load i8**, i8*** %6, align 8
  %312 = load i32, i32* %9, align 4
  %313 = add nsw i32 %312, 1
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i8*, i8** %311, i64 %314
  %316 = load i8*, i8** %315, align 8
  %317 = call i32 @strcmp(i8* %316, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %322

319:                                              ; preds = %310
  %320 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %321 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %320, i32 0, i32 19
  store i32 0, i32* %321, align 4
  br label %331

322:                                              ; preds = %310
  %323 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %324 = load i8**, i8*** %6, align 8
  %325 = load i32, i32* %9, align 4
  %326 = add nsw i32 %325, 1
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i8*, i8** %324, i64 %327
  %329 = load i8*, i8** %328, align 8
  %330 = call i32 @store_exif_tag(%struct.TYPE_12__* %323, i8* %329)
  br label %331

331:                                              ; preds = %322, %319
  %332 = load i32, i32* %9, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %9, align 4
  br label %497

334:                                              ; preds = %66
  %335 = load i8**, i8*** %6, align 8
  %336 = load i32, i32* %9, align 4
  %337 = add nsw i32 %336, 1
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i8*, i8** %335, i64 %338
  %340 = load i8*, i8** %339, align 8
  %341 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %342 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %341, i32 0, i32 8
  %343 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %340, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %342)
  %344 = icmp ne i32 %343, 1
  br i1 %344, label %345, label %346

345:                                              ; preds = %334
  store i32 0, i32* %8, align 4
  br label %362

346:                                              ; preds = %334
  %347 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %348 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %347, i32 0, i32 8
  %349 = load i32, i32* %348, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %355

351:                                              ; preds = %346
  %352 = load i32, i32* @FRAME_NEXT_TIMELAPSE, align 4
  %353 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %354 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %353, i32 0, i32 18
  store i32 %352, i32* %354, align 4
  br label %359

355:                                              ; preds = %346
  %356 = load i32, i32* @FRAME_NEXT_IMMEDIATELY, align 4
  %357 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %358 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %357, i32 0, i32 18
  store i32 %356, i32* %358, align 4
  br label %359

359:                                              ; preds = %355, %351
  %360 = load i32, i32* %9, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %9, align 4
  br label %362

362:                                              ; preds = %359, %345
  br label %497

363:                                              ; preds = %66
  %364 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %365 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %364, i32 0, i32 9
  store i32 1, i32* %365, align 4
  br label %497

366:                                              ; preds = %66
  %367 = load i32, i32* @FRAME_NEXT_KEYPRESS, align 4
  %368 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %369 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %368, i32 0, i32 18
  store i32 %367, i32* %369, align 4
  %370 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %371 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %370, i32 0, i32 5
  %372 = load i32, i32* %371, align 4
  %373 = icmp eq i32 %372, -1
  br i1 %373, label %374, label %377

374:                                              ; preds = %366
  %375 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %376 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %375, i32 0, i32 5
  store i32 0, i32* %376, align 4
  br label %377

377:                                              ; preds = %374, %366
  br label %497

378:                                              ; preds = %66
  %379 = load i32, i32* @FRAME_NEXT_SIGNAL, align 4
  %380 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %381 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %380, i32 0, i32 18
  store i32 %379, i32* %381, align 4
  %382 = load i32, i32* @SIGUSR1, align 4
  %383 = load i32, i32* @default_signal_handler, align 4
  %384 = call i32 @signal(i32 %382, i32 %383)
  %385 = load i32, i32* @SIGUSR2, align 4
  %386 = load i32, i32* @default_signal_handler, align 4
  %387 = call i32 @signal(i32 %385, i32 %386)
  %388 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %389 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %388, i32 0, i32 5
  %390 = load i32, i32* %389, align 4
  %391 = icmp eq i32 %390, -1
  br i1 %391, label %392, label %395

392:                                              ; preds = %378
  %393 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %394 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %393, i32 0, i32 5
  store i32 0, i32* %394, align 4
  br label %395

395:                                              ; preds = %392, %378
  br label %497

396:                                              ; preds = %66
  %397 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %398 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %397, i32 0, i32 10
  store i32 1, i32* %398, align 4
  br label %497

399:                                              ; preds = %66
  %400 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %401 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %400, i32 0, i32 11
  store i32 1, i32* %401, align 4
  br label %497

402:                                              ; preds = %66
  %403 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %404 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %403, i32 0, i32 12
  store i32 1, i32* %404, align 4
  br label %497

405:                                              ; preds = %66
  %406 = load i8**, i8*** %6, align 8
  %407 = load i32, i32* %9, align 4
  %408 = add nsw i32 %407, 1
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i8*, i8** %406, i64 %409
  %411 = load i8*, i8** %410, align 8
  %412 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %413 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %412, i32 0, i32 13
  %414 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %411, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %413)
  %415 = icmp eq i32 %414, 1
  br i1 %415, label %416, label %419

416:                                              ; preds = %405
  %417 = load i32, i32* %9, align 4
  %418 = add nsw i32 %417, 1
  store i32 %418, i32* %9, align 4
  br label %420

419:                                              ; preds = %405
  store i32 0, i32* %8, align 4
  br label %420

420:                                              ; preds = %419, %416
  br label %497

421:                                              ; preds = %66
  %422 = load i32, i32* %9, align 4
  %423 = add nsw i32 %422, 1
  %424 = load i32, i32* %5, align 4
  %425 = icmp slt i32 %423, %424
  br i1 %425, label %426, label %433

426:                                              ; preds = %421
  %427 = load i8**, i8*** %6, align 8
  %428 = load i32, i32* %9, align 4
  %429 = add nsw i32 %428, 1
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i8*, i8** %427, i64 %430
  %432 = load i8*, i8** %431, align 8
  br label %434

433:                                              ; preds = %421
  br label %434

434:                                              ; preds = %433, %426
  %435 = phi i8* [ %432, %426 ], [ null, %433 ]
  store i8* %435, i8** %15, align 8
  %436 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %437 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %436, i32 0, i32 17
  %438 = load i8**, i8*** %6, align 8
  %439 = load i32, i32* %9, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i8*, i8** %438, i64 %440
  %442 = load i8*, i8** %441, align 8
  %443 = getelementptr inbounds i8, i8* %442, i64 1
  %444 = load i8*, i8** %15, align 8
  %445 = call i32 @raspicamcontrol_parse_cmdline(i32* %437, i8* %443, i8* %444)
  store i32 %445, i32* %16, align 4
  %446 = load i32, i32* %16, align 4
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %459, label %448

448:                                              ; preds = %434
  %449 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %450 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %449, i32 0, i32 14
  %451 = load i8**, i8*** %6, align 8
  %452 = load i32, i32* %9, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i8*, i8** %451, i64 %453
  %455 = load i8*, i8** %454, align 8
  %456 = getelementptr inbounds i8, i8* %455, i64 1
  %457 = load i8*, i8** %15, align 8
  %458 = call i32 @raspicommonsettings_parse_cmdline(%struct.TYPE_15__* %450, i8* %456, i8* %457, i32* @application_help_message)
  store i32 %458, i32* %16, align 4
  br label %459

459:                                              ; preds = %448, %434
  %460 = load i32, i32* %16, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %473, label %462

462:                                              ; preds = %459
  %463 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %464 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %463, i32 0, i32 16
  %465 = load i8**, i8*** %6, align 8
  %466 = load i32, i32* %9, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i8*, i8** %465, i64 %467
  %469 = load i8*, i8** %468, align 8
  %470 = getelementptr inbounds i8, i8* %469, i64 1
  %471 = load i8*, i8** %15, align 8
  %472 = call i32 @raspipreview_parse_cmdline(%struct.TYPE_14__* %464, i8* %470, i8* %471)
  store i32 %472, i32* %16, align 4
  br label %473

473:                                              ; preds = %462, %459
  %474 = load i32, i32* %16, align 4
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %487, label %476

476:                                              ; preds = %473
  %477 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %478 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %477, i32 0, i32 15
  %479 = load i8**, i8*** %6, align 8
  %480 = load i32, i32* %9, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i8*, i8** %479, i64 %481
  %483 = load i8*, i8** %482, align 8
  %484 = getelementptr inbounds i8, i8* %483, i64 1
  %485 = load i8*, i8** %15, align 8
  %486 = call i32 @raspitex_parse_cmdline(%struct.TYPE_13__* %478, i8* %484, i8* %485)
  store i32 %486, i32* %16, align 4
  br label %487

487:                                              ; preds = %476, %473
  %488 = load i32, i32* %16, align 4
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %491, label %490

490:                                              ; preds = %487
  store i32 0, i32* %8, align 4
  br label %496

491:                                              ; preds = %487
  %492 = load i32, i32* %16, align 4
  %493 = sub nsw i32 %492, 1
  %494 = load i32, i32* %9, align 4
  %495 = add nsw i32 %494, %493
  store i32 %495, i32* %9, align 4
  br label %496

496:                                              ; preds = %491, %490
  br label %497

497:                                              ; preds = %496, %420, %402, %399, %396, %395, %377, %363, %362, %331, %309, %262, %222, %191, %158, %155, %154, %138, %94, %93
  br label %498

498:                                              ; preds = %497, %65, %44, %33
  %499 = load i32, i32* %9, align 4
  %500 = add nsw i32 %499, 1
  store i32 %500, i32* %9, align 4
  br label %17

501:                                              ; preds = %24
  %502 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %503 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %502, i32 0, i32 15
  %504 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %503, i32 0, i32 10
  %505 = load i32, i32* %504, align 4
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %540, label %507

507:                                              ; preds = %501
  %508 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %509 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %508, i32 0, i32 16
  %510 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %509, i32 0, i32 1
  %511 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %510, i32 0, i32 3
  %512 = load i32, i32* %511, align 4
  %513 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %514 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %513, i32 0, i32 15
  %515 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %514, i32 0, i32 9
  store i32 %512, i32* %515, align 4
  %516 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %517 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %516, i32 0, i32 16
  %518 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %517, i32 0, i32 1
  %519 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %518, i32 0, i32 2
  %520 = load i32, i32* %519, align 4
  %521 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %522 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %521, i32 0, i32 15
  %523 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %522, i32 0, i32 8
  store i32 %520, i32* %523, align 4
  %524 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %525 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %524, i32 0, i32 16
  %526 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %525, i32 0, i32 1
  %527 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %526, i32 0, i32 1
  %528 = load i32, i32* %527, align 4
  %529 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %530 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %529, i32 0, i32 15
  %531 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %530, i32 0, i32 7
  store i32 %528, i32* %531, align 4
  %532 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %533 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %532, i32 0, i32 16
  %534 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %533, i32 0, i32 1
  %535 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %534, i32 0, i32 0
  %536 = load i32, i32* %535, align 4
  %537 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %538 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %537, i32 0, i32 15
  %539 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %538, i32 0, i32 6
  store i32 %536, i32* %539, align 4
  br label %540

540:                                              ; preds = %507, %501
  %541 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %542 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %541, i32 0, i32 16
  %543 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %542, i32 0, i32 1
  %544 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %543, i32 0, i32 3
  %545 = load i32, i32* %544, align 4
  %546 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %547 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %546, i32 0, i32 15
  %548 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %547, i32 0, i32 5
  store i32 %545, i32* %548, align 4
  %549 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %550 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %549, i32 0, i32 16
  %551 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %550, i32 0, i32 1
  %552 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %551, i32 0, i32 2
  %553 = load i32, i32* %552, align 4
  %554 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %555 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %554, i32 0, i32 15
  %556 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %555, i32 0, i32 4
  store i32 %553, i32* %556, align 4
  %557 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %558 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %557, i32 0, i32 16
  %559 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %558, i32 0, i32 1
  %560 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %559, i32 0, i32 1
  %561 = load i32, i32* %560, align 4
  %562 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %563 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %562, i32 0, i32 15
  %564 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %563, i32 0, i32 3
  store i32 %561, i32* %564, align 4
  %565 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %566 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %565, i32 0, i32 16
  %567 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %566, i32 0, i32 1
  %568 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %567, i32 0, i32 0
  %569 = load i32, i32* %568, align 4
  %570 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %571 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %570, i32 0, i32 15
  %572 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %571, i32 0, i32 2
  store i32 %569, i32* %572, align 4
  %573 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %574 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %573, i32 0, i32 16
  %575 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %574, i32 0, i32 0
  %576 = load i32, i32* %575, align 4
  %577 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %578 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %577, i32 0, i32 15
  %579 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %578, i32 0, i32 1
  store i32 %576, i32* %579, align 4
  %580 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %581 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %580, i32 0, i32 14
  %582 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %581, i32 0, i32 0
  %583 = load i32, i32* %582, align 4
  %584 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %585 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %584, i32 0, i32 15
  %586 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %585, i32 0, i32 0
  store i32 %583, i32* %586, align 4
  %587 = load i32, i32* %8, align 4
  %588 = icmp ne i32 %587, 0
  br i1 %588, label %598, label %589

589:                                              ; preds = %540
  %590 = load i32, i32* @stderr, align 4
  %591 = load i8**, i8*** %6, align 8
  %592 = load i32, i32* %9, align 4
  %593 = sub nsw i32 %592, 1
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds i8*, i8** %591, i64 %594
  %596 = load i8*, i8** %595, align 8
  %597 = call i32 (i32, i8*, ...) @fprintf(i32 %590, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %596)
  store i32 1, i32* %4, align 4
  br label %599

598:                                              ; preds = %540
  store i32 0, i32* %4, align 4
  br label %599

599:                                              ; preds = %598, %589
  %600 = load i32, i32* %4, align 4
  ret i32 %600
}

declare dso_local i32 @raspicli_get_command_id(i32, i32, i8*, i32*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, ...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @store_exif_tag(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @raspicamcontrol_parse_cmdline(i32*, i8*, i8*) #1

declare dso_local i32 @raspicommonsettings_parse_cmdline(%struct.TYPE_15__*, i8*, i8*, i32*) #1

declare dso_local i32 @raspipreview_parse_cmdline(%struct.TYPE_14__*, i8*, i8*) #1

declare dso_local i32 @raspitex_parse_cmdline(%struct.TYPE_13__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
