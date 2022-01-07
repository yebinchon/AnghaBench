; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiStillYUV.c_parse_cmdline.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiStillYUV.c_parse_cmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@cmdline_commands = common dso_local global i32 0, align 4
@cmdline_commands_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@FRAME_NEXT_SINGLE = common dso_local global i32 0, align 4
@FRAME_NEXT_FOREVER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@FRAME_NEXT_TIMELAPSE = common dso_local global i32 0, align 4
@FRAME_NEXT_IMMEDIATELY = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"--luma and --rgb/--bgr are mutually exclusive\0A\00", align 1
@MMAL_ENCODING_RGB24 = common dso_local global i32 0, align 4
@FRAME_NEXT_KEYPRESS = common dso_local global i32 0, align 4
@FRAME_NEXT_SIGNAL = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@default_signal_handler = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"--luma and --rgb are mutually exclusive\0A\00", align 1
@MMAL_ENCODING_BGR24 = common dso_local global i32 0, align 4
@application_help_message = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Invalid command line option (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, %struct.TYPE_3__*)* @parse_cmdline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_cmdline(i32 %0, i8** %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %15

15:                                               ; preds = %299, %3
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %19, %15
  %23 = phi i1 [ false, %15 ], [ %21, %19 ]
  br i1 %23, label %24, label %302

24:                                               ; preds = %22
  %25 = load i8**, i8*** %6, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %299

32:                                               ; preds = %24
  %33 = load i8**, i8*** %6, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 45
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  store i32 0, i32* %8, align 4
  br label %299

43:                                               ; preds = %32
  store i32 1, i32* %8, align 4
  %44 = load i32, i32* @cmdline_commands, align 4
  %45 = load i32, i32* @cmdline_commands_size, align 4
  %46 = load i8**, i8*** %6, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = call i32 @raspicli_get_command_id(i32 %44, i32 %45, i8* %51, i32* %11)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, -1
  br i1 %54, label %55, label %64

55:                                               ; preds = %43
  %56 = load i32, i32* %11, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  %61 = load i32, i32* %5, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %299

64:                                               ; preds = %58, %55, %43
  %65 = load i32, i32* %10, align 4
  switch i32 %65, label %236 [
    i32 134, label %66
    i32 130, label %108
    i32 131, label %139
    i32 128, label %168
    i32 136, label %180
    i32 135, label %183
    i32 132, label %195
    i32 137, label %210
    i32 133, label %213
    i32 129, label %224
  ]

66:                                               ; preds = %64
  %67 = load i8**, i8*** %6, align 8
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %67, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @strlen(i8* %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %106

76:                                               ; preds = %66
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 10
  %79 = call i32 @malloc(i32 %78)
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 10
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 10
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @vcos_assert(i32 %84)
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 10
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %76
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 10
  %93 = load i32, i32* %92, align 4
  %94 = load i8**, i8*** %6, align 8
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %94, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 1
  %102 = call i32 @strncpy(i32 %93, i8* %99, i32 %101)
  br label %103

103:                                              ; preds = %90, %76
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %107

106:                                              ; preds = %66
  store i32 0, i32* %8, align 4
  br label %107

107:                                              ; preds = %106, %103
  br label %298

108:                                              ; preds = %64
  %109 = load i8**, i8*** %6, align 8
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %109, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = call i32 @sscanf(i8* %114, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %116)
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %137

119:                                              ; preds = %108
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %119
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 9
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @FRAME_NEXT_SINGLE, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = load i32, i32* @FRAME_NEXT_FOREVER, align 4
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 9
  store i32 %131, i32* %133, align 4
  br label %134

134:                                              ; preds = %130, %124, %119
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %9, align 4
  br label %138

137:                                              ; preds = %108
  store i32 0, i32* %8, align 4
  br label %138

138:                                              ; preds = %137, %134
  br label %298

139:                                              ; preds = %64
  %140 = load i8**, i8*** %6, align 8
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %140, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  %148 = call i32 @sscanf(i8* %145, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %147)
  %149 = icmp ne i32 %148, 1
  br i1 %149, label %150, label %151

150:                                              ; preds = %139
  store i32 0, i32* %8, align 4
  br label %167

151:                                              ; preds = %139
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %151
  %157 = load i32, i32* @FRAME_NEXT_TIMELAPSE, align 4
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 9
  store i32 %157, i32* %159, align 4
  br label %164

160:                                              ; preds = %151
  %161 = load i32, i32* @FRAME_NEXT_IMMEDIATELY, align 4
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 9
  store i32 %161, i32* %163, align 4
  br label %164

164:                                              ; preds = %160, %156
  %165 = load i32, i32* %9, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %9, align 4
  br label %167

167:                                              ; preds = %164, %150
  br label %298

168:                                              ; preds = %64
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = load i32, i32* @stderr, align 4
  %175 = call i32 (i32, i8*, ...) @fprintf(i32 %174, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %176

176:                                              ; preds = %173, %168
  %177 = load i32, i32* @MMAL_ENCODING_RGB24, align 4
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 8
  store i32 %177, i32* %179, align 4
  br label %298

180:                                              ; preds = %64
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 3
  store i32 1, i32* %182, align 4
  br label %298

183:                                              ; preds = %64
  %184 = load i32, i32* @FRAME_NEXT_KEYPRESS, align 4
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 9
  store i32 %184, i32* %186, align 4
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %189, -1
  br i1 %190, label %191, label %194

191:                                              ; preds = %183
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 0
  store i32 0, i32* %193, align 4
  br label %194

194:                                              ; preds = %191, %183
  br label %298

195:                                              ; preds = %64
  %196 = load i32, i32* @FRAME_NEXT_SIGNAL, align 4
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 9
  store i32 %196, i32* %198, align 4
  %199 = load i32, i32* @SIGUSR1, align 4
  %200 = load i32, i32* @default_signal_handler, align 4
  %201 = call i32 @signal(i32 %199, i32 %200)
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = icmp eq i32 %204, -1
  br i1 %205, label %206, label %209

206:                                              ; preds = %195
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 0
  store i32 0, i32* %208, align 4
  br label %209

209:                                              ; preds = %206, %195
  br label %298

210:                                              ; preds = %64
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 4
  store i32 1, i32* %212, align 4
  br label %298

213:                                              ; preds = %64
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 8
  %216 = load i32, i32* %215, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %213
  %219 = load i32, i32* @stderr, align 4
  %220 = call i32 (i32, i8*, ...) @fprintf(i32 %219, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %221

221:                                              ; preds = %218, %213
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 2
  store i32 1, i32* %223, align 4
  br label %298

224:                                              ; preds = %64
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %224
  %230 = load i32, i32* @stderr, align 4
  %231 = call i32 (i32, i8*, ...) @fprintf(i32 %230, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %232

232:                                              ; preds = %229, %224
  %233 = load i32, i32* @MMAL_ENCODING_BGR24, align 4
  %234 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 8
  store i32 %233, i32* %235, align 4
  br label %298

236:                                              ; preds = %64
  %237 = load i32, i32* %9, align 4
  %238 = add nsw i32 %237, 1
  %239 = load i32, i32* %5, align 4
  %240 = icmp slt i32 %238, %239
  br i1 %240, label %241, label %248

241:                                              ; preds = %236
  %242 = load i8**, i8*** %6, align 8
  %243 = load i32, i32* %9, align 4
  %244 = add nsw i32 %243, 1
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i8*, i8** %242, i64 %245
  %247 = load i8*, i8** %246, align 8
  br label %249

248:                                              ; preds = %236
  br label %249

249:                                              ; preds = %248, %241
  %250 = phi i8* [ %247, %241 ], [ null, %248 ]
  store i8* %250, i8** %13, align 8
  %251 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 7
  %253 = load i8**, i8*** %6, align 8
  %254 = load i32, i32* %9, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8*, i8** %253, i64 %255
  %257 = load i8*, i8** %256, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 1
  %259 = load i8*, i8** %13, align 8
  %260 = call i32 @raspicamcontrol_parse_cmdline(i32* %252, i8* %258, i8* %259)
  store i32 %260, i32* %14, align 4
  %261 = load i32, i32* %14, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %274, label %263

263:                                              ; preds = %249
  %264 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 6
  %266 = load i8**, i8*** %6, align 8
  %267 = load i32, i32* %9, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i8*, i8** %266, i64 %268
  %270 = load i8*, i8** %269, align 8
  %271 = getelementptr inbounds i8, i8* %270, i64 1
  %272 = load i8*, i8** %13, align 8
  %273 = call i32 @raspicommonsettings_parse_cmdline(i32* %265, i8* %271, i8* %272, i32* @application_help_message)
  store i32 %273, i32* %14, align 4
  br label %274

274:                                              ; preds = %263, %249
  %275 = load i32, i32* %14, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %288, label %277

277:                                              ; preds = %274
  %278 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %278, i32 0, i32 5
  %280 = load i8**, i8*** %6, align 8
  %281 = load i32, i32* %9, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i8*, i8** %280, i64 %282
  %284 = load i8*, i8** %283, align 8
  %285 = getelementptr inbounds i8, i8* %284, i64 1
  %286 = load i8*, i8** %13, align 8
  %287 = call i32 @raspipreview_parse_cmdline(i32* %279, i8* %285, i8* %286)
  store i32 %287, i32* %14, align 4
  br label %288

288:                                              ; preds = %277, %274
  %289 = load i32, i32* %14, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %292, label %291

291:                                              ; preds = %288
  store i32 0, i32* %8, align 4
  br label %297

292:                                              ; preds = %288
  %293 = load i32, i32* %14, align 4
  %294 = sub nsw i32 %293, 1
  %295 = load i32, i32* %9, align 4
  %296 = add nsw i32 %295, %294
  store i32 %296, i32* %9, align 4
  br label %297

297:                                              ; preds = %292, %291
  br label %298

298:                                              ; preds = %297, %232, %221, %210, %209, %194, %180, %176, %167, %138, %107
  br label %299

299:                                              ; preds = %298, %63, %42, %31
  %300 = load i32, i32* %9, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %9, align 4
  br label %15

302:                                              ; preds = %22
  %303 = load i32, i32* %8, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %314, label %305

305:                                              ; preds = %302
  %306 = load i32, i32* @stderr, align 4
  %307 = load i8**, i8*** %6, align 8
  %308 = load i32, i32* %9, align 4
  %309 = sub nsw i32 %308, 1
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i8*, i8** %307, i64 %310
  %312 = load i8*, i8** %311, align 8
  %313 = call i32 (i32, i8*, ...) @fprintf(i32 %306, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %312)
  store i32 1, i32* %4, align 4
  br label %315

314:                                              ; preds = %302
  store i32 0, i32* %4, align 4
  br label %315

315:                                              ; preds = %314, %305
  %316 = load i32, i32* %4, align 4
  ret i32 %316
}

declare dso_local i32 @raspicli_get_command_id(i32, i32, i8*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @raspicamcontrol_parse_cmdline(i32*, i8*, i8*) #1

declare dso_local i32 @raspicommonsettings_parse_cmdline(i32*, i8*, i8*, i32*) #1

declare dso_local i32 @raspipreview_parse_cmdline(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
