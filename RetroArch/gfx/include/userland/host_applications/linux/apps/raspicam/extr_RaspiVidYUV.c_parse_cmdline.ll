; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiVidYUV.c_parse_cmdline.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiVidYUV.c_parse_cmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@cmdline_commands = common dso_local global i32 0, align 4
@cmdline_commands_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@WAIT_METHOD_NONE = common dso_local global i32 0, align 4
@WAIT_METHOD_FOREVER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%u,%u\00", align 1
@WAIT_METHOD_TIMED = common dso_local global i32 0, align 4
@WAIT_METHOD_KEYPRESS = common dso_local global i32 0, align 4
@WAIT_METHOD_SIGNAL = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@default_signal_handler = common dso_local global i32 0, align 4
@initial_map = common dso_local global i32 0, align 4
@initial_map_size = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"--luma and --rgb are mutually exclusive\0A\00", align 1
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

15:                                               ; preds = %385, %3
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
  br i1 %23, label %24, label %388

24:                                               ; preds = %22
  %25 = load i8**, i8*** %6, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %385

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
  br label %385

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
  br label %385

64:                                               ; preds = %58, %55, %43
  %65 = load i32, i32* %10, align 4
  switch i32 %65, label %322 [
    i32 129, label %66
    i32 138, label %97
    i32 137, label %143
    i32 130, label %159
    i32 135, label %204
    i32 131, label %216
    i32 136, label %231
    i32 133, label %253
    i32 128, label %264
    i32 132, label %275
    i32 134, label %319
  ]

66:                                               ; preds = %64
  %67 = load i8**, i8*** %6, align 8
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %67, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %74)
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %95

77:                                               ; preds = %66
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %77
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 14
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @WAIT_METHOD_NONE, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load i32, i32* @WAIT_METHOD_FOREVER, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 14
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %88, %82, %77
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %96

95:                                               ; preds = %66
  store i32 0, i32* %8, align 4
  br label %96

96:                                               ; preds = %95, %92
  br label %384

97:                                               ; preds = %64
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  %100 = load i32, i32* %5, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %139

102:                                              ; preds = %97
  %103 = load i8**, i8*** %6, align 8
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %103, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp ne i32 %111, 45
  br i1 %112, label %113, label %139

113:                                              ; preds = %102
  %114 = load i8**, i8*** %6, align 8
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %114, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  %122 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %121)
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %124, label %137

124:                                              ; preds = %113
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  store i32 250, i32* %131, align 4
  br label %132

132:                                              ; preds = %129, %124
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 2
  store i32 1, i32* %134, align 4
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %9, align 4
  br label %138

137:                                              ; preds = %113
  store i32 0, i32* %8, align 4
  br label %138

138:                                              ; preds = %137, %132
  br label %142

139:                                              ; preds = %102, %97
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 2
  store i32 1, i32* %141, align 4
  br label %142

142:                                              ; preds = %139, %138
  br label %384

143:                                              ; preds = %64
  %144 = load i8**, i8*** %6, align 8
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %144, i64 %147
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 15
  %152 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %149, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %151)
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %157

154:                                              ; preds = %143
  %155 = load i32, i32* %9, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %9, align 4
  br label %158

157:                                              ; preds = %143
  store i32 0, i32* %8, align 4
  br label %158

158:                                              ; preds = %157, %154
  br label %384

159:                                              ; preds = %64
  %160 = load i8**, i8*** %6, align 8
  %161 = load i32, i32* %9, align 4
  %162 = add nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8*, i8** %160, i64 %163
  %165 = load i8*, i8** %164, align 8
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 3
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 4
  %170 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %165, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %167, i32* %169)
  %171 = icmp eq i32 %170, 2
  br i1 %171, label %172, label %202

172:                                              ; preds = %159
  %173 = load i32, i32* %9, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %9, align 4
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = icmp slt i32 %177, 1000
  br i1 %178, label %179, label %182

179:                                              ; preds = %172
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 3
  store i32 1000, i32* %181, align 4
  br label %182

182:                                              ; preds = %179, %172
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 4
  %186 = icmp slt i32 %185, 1000
  br i1 %186, label %187, label %190

187:                                              ; preds = %182
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 4
  store i32 1000, i32* %189, align 4
  br label %190

190:                                              ; preds = %187, %182
  %191 = load i32, i32* @WAIT_METHOD_TIMED, align 4
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 14
  store i32 %191, i32* %193, align 4
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = icmp eq i32 %196, -1
  br i1 %197, label %198, label %201

198:                                              ; preds = %190
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 0
  store i32 0, i32* %200, align 4
  br label %201

201:                                              ; preds = %198, %190
  br label %203

202:                                              ; preds = %159
  store i32 0, i32* %8, align 4
  br label %203

203:                                              ; preds = %202, %201
  br label %384

204:                                              ; preds = %64
  %205 = load i32, i32* @WAIT_METHOD_KEYPRESS, align 4
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 14
  store i32 %205, i32* %207, align 4
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = icmp eq i32 %210, -1
  br i1 %211, label %212, label %215

212:                                              ; preds = %204
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 0
  store i32 0, i32* %214, align 4
  br label %215

215:                                              ; preds = %212, %204
  br label %384

216:                                              ; preds = %64
  %217 = load i32, i32* @WAIT_METHOD_SIGNAL, align 4
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 14
  store i32 %217, i32* %219, align 4
  %220 = load i32, i32* @SIGUSR1, align 4
  %221 = load i32, i32* @default_signal_handler, align 4
  %222 = call i32 @signal(i32 %220, i32 %221)
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = icmp eq i32 %225, -1
  br i1 %226, label %227, label %230

227:                                              ; preds = %216
  %228 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 0
  store i32 0, i32* %229, align 4
  br label %230

230:                                              ; preds = %227, %216
  br label %384

231:                                              ; preds = %64
  %232 = load i8**, i8*** %6, align 8
  %233 = load i32, i32* %9, align 4
  %234 = add nsw i32 %233, 1
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8*, i8** %232, i64 %235
  %237 = load i8*, i8** %236, align 8
  %238 = load i32, i32* @initial_map, align 4
  %239 = load i32, i32* @initial_map_size, align 4
  %240 = call i32 @raspicli_map_xref(i8* %237, i32 %238, i32 %239)
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 5
  store i32 %240, i32* %242, align 4
  %243 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 5
  %245 = load i32, i32* %244, align 4
  %246 = icmp eq i32 %245, -1
  br i1 %246, label %247, label %250

247:                                              ; preds = %231
  %248 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 5
  store i32 0, i32* %249, align 4
  br label %250

250:                                              ; preds = %247, %231
  %251 = load i32, i32* %9, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %9, align 4
  br label %384

253:                                              ; preds = %64
  %254 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 6
  %256 = load i32, i32* %255, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %253
  %259 = load i32, i32* @stderr, align 4
  %260 = call i32 (i32, i8*, ...) @fprintf(i32 %259, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %261

261:                                              ; preds = %258, %253
  %262 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 7
  store i32 1, i32* %263, align 4
  br label %384

264:                                              ; preds = %64
  %265 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i32 0, i32 7
  %267 = load i32, i32* %266, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %264
  %270 = load i32, i32* @stderr, align 4
  %271 = call i32 (i32, i8*, ...) @fprintf(i32 %270, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %272

272:                                              ; preds = %269, %264
  %273 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 6
  store i32 1, i32* %274, align 4
  br label %384

275:                                              ; preds = %64
  %276 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %277 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %276, i32 0, i32 8
  store i32 1, i32* %277, align 4
  %278 = load i8**, i8*** %6, align 8
  %279 = load i32, i32* %9, align 4
  %280 = add nsw i32 %279, 1
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i8*, i8** %278, i64 %281
  %283 = load i8*, i8** %282, align 8
  %284 = call i32 @strlen(i8* %283)
  store i32 %284, i32* %12, align 4
  %285 = load i32, i32* %12, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %317

287:                                              ; preds = %275
  %288 = load i32, i32* %12, align 4
  %289 = add nsw i32 %288, 1
  %290 = call i32 @malloc(i32 %289)
  %291 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %291, i32 0, i32 13
  store i32 %290, i32* %292, align 4
  %293 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %294 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %293, i32 0, i32 13
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @vcos_assert(i32 %295)
  %297 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %298 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %297, i32 0, i32 13
  %299 = load i32, i32* %298, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %314

301:                                              ; preds = %287
  %302 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %302, i32 0, i32 13
  %304 = load i32, i32* %303, align 4
  %305 = load i8**, i8*** %6, align 8
  %306 = load i32, i32* %9, align 4
  %307 = add nsw i32 %306, 1
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i8*, i8** %305, i64 %308
  %310 = load i8*, i8** %309, align 8
  %311 = load i32, i32* %12, align 4
  %312 = add nsw i32 %311, 1
  %313 = call i32 @strncpy(i32 %304, i8* %310, i32 %312)
  br label %314

314:                                              ; preds = %301, %287
  %315 = load i32, i32* %9, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %9, align 4
  br label %318

317:                                              ; preds = %275
  store i32 0, i32* %8, align 4
  br label %318

318:                                              ; preds = %317, %314
  br label %384

319:                                              ; preds = %64
  %320 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %321 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %320, i32 0, i32 9
  store i32 1, i32* %321, align 4
  br label %384

322:                                              ; preds = %64
  %323 = load i32, i32* %9, align 4
  %324 = add nsw i32 %323, 1
  %325 = load i32, i32* %5, align 4
  %326 = icmp slt i32 %324, %325
  br i1 %326, label %327, label %334

327:                                              ; preds = %322
  %328 = load i8**, i8*** %6, align 8
  %329 = load i32, i32* %9, align 4
  %330 = add nsw i32 %329, 1
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i8*, i8** %328, i64 %331
  %333 = load i8*, i8** %332, align 8
  br label %335

334:                                              ; preds = %322
  br label %335

335:                                              ; preds = %334, %327
  %336 = phi i8* [ %333, %327 ], [ null, %334 ]
  store i8* %336, i8** %13, align 8
  %337 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %338 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %337, i32 0, i32 12
  %339 = load i8**, i8*** %6, align 8
  %340 = load i32, i32* %9, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i8*, i8** %339, i64 %341
  %343 = load i8*, i8** %342, align 8
  %344 = getelementptr inbounds i8, i8* %343, i64 1
  %345 = load i8*, i8** %13, align 8
  %346 = call i32 @raspicamcontrol_parse_cmdline(i32* %338, i8* %344, i8* %345)
  store i32 %346, i32* %14, align 4
  %347 = load i32, i32* %14, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %360, label %349

349:                                              ; preds = %335
  %350 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %351 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %350, i32 0, i32 11
  %352 = load i8**, i8*** %6, align 8
  %353 = load i32, i32* %9, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i8*, i8** %352, i64 %354
  %356 = load i8*, i8** %355, align 8
  %357 = getelementptr inbounds i8, i8* %356, i64 1
  %358 = load i8*, i8** %13, align 8
  %359 = call i32 @raspicommonsettings_parse_cmdline(i32* %351, i8* %357, i8* %358, i32* @application_help_message)
  store i32 %359, i32* %14, align 4
  br label %360

360:                                              ; preds = %349, %335
  %361 = load i32, i32* %14, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %374, label %363

363:                                              ; preds = %360
  %364 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %365 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %364, i32 0, i32 10
  %366 = load i8**, i8*** %6, align 8
  %367 = load i32, i32* %9, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i8*, i8** %366, i64 %368
  %370 = load i8*, i8** %369, align 8
  %371 = getelementptr inbounds i8, i8* %370, i64 1
  %372 = load i8*, i8** %13, align 8
  %373 = call i32 @raspipreview_parse_cmdline(i32* %365, i8* %371, i8* %372)
  store i32 %373, i32* %14, align 4
  br label %374

374:                                              ; preds = %363, %360
  %375 = load i32, i32* %14, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %378, label %377

377:                                              ; preds = %374
  store i32 0, i32* %8, align 4
  br label %383

378:                                              ; preds = %374
  %379 = load i32, i32* %14, align 4
  %380 = sub nsw i32 %379, 1
  %381 = load i32, i32* %9, align 4
  %382 = add nsw i32 %381, %380
  store i32 %382, i32* %9, align 4
  br label %383

383:                                              ; preds = %378, %377
  br label %384

384:                                              ; preds = %383, %319, %318, %272, %261, %250, %230, %215, %203, %158, %142, %96
  br label %385

385:                                              ; preds = %384, %63, %42, %31
  %386 = load i32, i32* %9, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* %9, align 4
  br label %15

388:                                              ; preds = %22
  %389 = load i32, i32* %8, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %400, label %391

391:                                              ; preds = %388
  %392 = load i32, i32* @stderr, align 4
  %393 = load i8**, i8*** %6, align 8
  %394 = load i32, i32* %9, align 4
  %395 = sub nsw i32 %394, 1
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i8*, i8** %393, i64 %396
  %398 = load i8*, i8** %397, align 8
  %399 = call i32 (i32, i8*, ...) @fprintf(i32 %392, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %398)
  store i32 1, i32* %4, align 4
  br label %401

400:                                              ; preds = %388
  store i32 0, i32* %4, align 4
  br label %401

401:                                              ; preds = %400, %391
  %402 = load i32, i32* %4, align 4
  ret i32 %402
}

declare dso_local i32 @raspicli_get_command_id(i32, i32, i8*, i32*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, ...) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @raspicli_map_xref(i8*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @raspicamcontrol_parse_cmdline(i32*, i8*, i8*) #1

declare dso_local i32 @raspicommonsettings_parse_cmdline(i32*, i8*, i8*, i32*) #1

declare dso_local i32 @raspipreview_parse_cmdline(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
