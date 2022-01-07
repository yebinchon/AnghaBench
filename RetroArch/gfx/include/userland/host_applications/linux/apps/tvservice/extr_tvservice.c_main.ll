; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/tvservice/extr_tvservice.c_main.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/tvservice/extr_tvservice.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }

@OPTSTRING_LEN = common dso_local global i32 0, align 4
@HDMI_RES_GROUP_INVALID = common dso_local global i32 0, align 4
@HDMI_MODE_HDMI = common dso_local global i8 0, align 1
@SDTV_MODE_NTSC = common dso_local global i32 0, align 4
@SDTV_ASPECT_UNKNOWN = common dso_local global i32 0, align 4
@long_opts = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"%31s %u %31s\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid arguments '%s'\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"CEA\00", align 1
@HDMI_RES_GROUP_CEA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"DMT\00", align 1
@HDMI_RES_GROUP_DMT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"CEA_3D\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"CEA_3D_SBS\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"CEA_3D_TB\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"CEA_3D_FP\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"CEA_3D_FS\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Invalid group '%s'\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"HDMI\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"DVI\00", align 1
@HDMI_MODE_DVI = common dso_local global i8 0, align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"Invalid drive '%s'\00", align 1
@MAX_MODE_ID = common dso_local global i8 0, align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"Invalid mode '%u'\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"NTSC\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"NTSC_J\00", align 1
@SDTV_MODE_NTSC_J = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [4 x i8] c"PAL\00", align 1
@SDTV_MODE_PAL = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"PAL_M\00", align 1
@SDTV_MODE_PAL_M = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [18 x i8] c"Invalid mode '%s'\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"4:3\00", align 1
@SDTV_ASPECT_4_3 = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [5 x i8] c"14:9\00", align 1
@SDTV_ASPECT_14_9 = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [5 x i8] c"16:9\00", align 1
@SDTV_ASPECT_16_9 = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"Unrecognized option '%d'\0A\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [30 x i8] c"Unrecognized argument -- '%s'\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"Conflicting power on options\00", align 1
@.str.27 = private unnamed_addr constant [45 x i8] c"Cannot power on and power off simultaneously\00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"Failed to initialize VCHI (ret=%d)\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"Failed to create VCHI connection (ret=%d)\00", align 1
@.str.30 = private unnamed_addr constant [36 x i8] c"Starting to monitor for HDMI events\00", align 1
@HDMI_PROPERTY_3D_STRUCTURE = common dso_local global i32 0, align 4
@HDMI_3D_FORMAT_NONE = common dso_local global i32 0, align 4
@HDMI_3D_FORMAT_SBS_HALF = common dso_local global i32 0, align 4
@HDMI_3D_FORMAT_TB_HALF = common dso_local global i32 0, align 4
@HDMI_3D_FORMAT_FRAME_PACKING = common dso_local global i32 0, align 4
@HDMI_3D_FORMAT_FRAME_SEQUENTIAL = common dso_local global i32 0, align 4
@HDMI_PROPERTY_PIXEL_CLOCK_TYPE = common dso_local global i32 0, align 4
@HDMI_PIXEL_CLOCK_TYPE_NTSC = common dso_local global i32 0, align 4
@HDMI_PIXEL_CLOCK_TYPE_PAL = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [18 x i8] c"No device present\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"device_name=%s-%s\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"Failed to obtain device name\00", align 1
@quit_event = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i8, align 1
  %29 = alloca i8, align 1
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca [32 x i8], align 16
  %35 = alloca [32 x i8], align 16
  %36 = alloca i32, align 4
  %37 = alloca [32 x i8], align 16
  %38 = alloca [32 x i8], align 16
  %39 = alloca [32 x i8], align 16
  %40 = alloca i32, align 4
  %41 = alloca %struct.TYPE_4__, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %42 = load i32, i32* @OPTSTRING_LEN, align 4
  %43 = zext i32 %42 to i64
  %44 = call i8* @llvm.stacksave()
  store i8* %44, i8** %7, align 8
  %45 = alloca i8, i64 %43, align 16
  store i64 %43, i64* %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i8* null, i8** %24, align 8
  %46 = load i32, i32* @HDMI_RES_GROUP_INVALID, align 4
  store i32 %46, i32* %27, align 4
  %47 = load i8, i8* @HDMI_MODE_HDMI, align 1
  store i8 %47, i8* %29, align 1
  %48 = load i32, i32* @HDMI_RES_GROUP_INVALID, align 4
  store i32 %48, i32* %30, align 4
  %49 = load i32, i32* @SDTV_MODE_NTSC, align 4
  store i32 %49, i32* %31, align 4
  %50 = load i32, i32* @SDTV_ASPECT_UNKNOWN, align 4
  store i32 %50, i32* %32, align 4
  store i32 0, i32* %33, align 4
  %51 = call i32 (...) @vcos_init()
  %52 = call i32 @create_optstring(i8* %45)
  br label %53

53:                                               ; preds = %262, %2
  %54 = load i32, i32* %4, align 4
  %55 = load i8**, i8*** %5, align 8
  %56 = load i32, i32* @long_opts, align 4
  %57 = call i32 @getopt_long_only(i32 %54, i8** %55, i8* %45, i32 %56, i32* null)
  store i32 %57, i32* %9, align 4
  %58 = icmp ne i32 %57, -1
  br i1 %58, label %59, label %263

59:                                               ; preds = %53
  %60 = load i32, i32* %9, align 4
  switch i32 %60, label %258 [
    i32 0, label %61
    i32 131, label %62
    i32 139, label %63
    i32 133, label %155
    i32 130, label %156
    i32 132, label %229
    i32 136, label %230
    i32 135, label %247
    i32 128, label %248
    i32 141, label %249
    i32 140, label %250
    i32 129, label %252
    i32 137, label %256
    i32 134, label %257
    i32 63, label %261
    i32 138, label %261
  ]

61:                                               ; preds = %59
  br label %262

62:                                               ; preds = %59
  store i32 1, i32* %10, align 4
  br label %262

63:                                               ; preds = %59
  %64 = load i8*, i8** @optarg, align 8
  %65 = getelementptr inbounds [32 x i8], [32 x i8]* %34, i64 0, i64 0
  %66 = getelementptr inbounds [32 x i8], [32 x i8]* %35, i64 0, i64 0
  %67 = call i32 @sscanf(i8* %64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %65, i8* %28, i8* %66)
  store i32 %67, i32* %36, align 4
  %68 = load i32, i32* %36, align 4
  %69 = icmp ne i32 %68, 2
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load i32, i32* %36, align 4
  %72 = icmp ne i32 %71, 3
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i8*, i8** @optarg, align 8
  %75 = call i32 (i8*, ...) @LOG_ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %74)
  br label %534

76:                                               ; preds = %70, %63
  %77 = getelementptr inbounds [32 x i8], [32 x i8]* %34, i64 0, i64 0
  %78 = call i32 @vcos_strcasecmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %77)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @HDMI_RES_GROUP_CEA, align 4
  store i32 %81, i32* %27, align 4
  br label %124

82:                                               ; preds = %76
  %83 = getelementptr inbounds [32 x i8], [32 x i8]* %34, i64 0, i64 0
  %84 = call i32 @vcos_strcasecmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %83)
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* @HDMI_RES_GROUP_DMT, align 4
  store i32 %87, i32* %27, align 4
  br label %123

88:                                               ; preds = %82
  %89 = getelementptr inbounds [32 x i8], [32 x i8]* %34, i64 0, i64 0
  %90 = call i32 @vcos_strcasecmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %89)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds [32 x i8], [32 x i8]* %34, i64 0, i64 0
  %94 = call i32 @vcos_strcasecmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %93)
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92, %88
  %97 = load i32, i32* @HDMI_RES_GROUP_CEA, align 4
  store i32 %97, i32* %27, align 4
  store i32 1, i32* %21, align 4
  br label %122

98:                                               ; preds = %92
  %99 = getelementptr inbounds [32 x i8], [32 x i8]* %34, i64 0, i64 0
  %100 = call i32 @vcos_strcasecmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %99)
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load i32, i32* @HDMI_RES_GROUP_CEA, align 4
  store i32 %103, i32* %27, align 4
  store i32 2, i32* %21, align 4
  br label %121

104:                                              ; preds = %98
  %105 = getelementptr inbounds [32 x i8], [32 x i8]* %34, i64 0, i64 0
  %106 = call i32 @vcos_strcasecmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %105)
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load i32, i32* @HDMI_RES_GROUP_CEA, align 4
  store i32 %109, i32* %27, align 4
  store i32 3, i32* %21, align 4
  br label %120

110:                                              ; preds = %104
  %111 = getelementptr inbounds [32 x i8], [32 x i8]* %34, i64 0, i64 0
  %112 = call i32 @vcos_strcasecmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %111)
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = load i32, i32* @HDMI_RES_GROUP_CEA, align 4
  store i32 %115, i32* %27, align 4
  store i32 4, i32* %21, align 4
  br label %119

116:                                              ; preds = %110
  %117 = getelementptr inbounds [32 x i8], [32 x i8]* %34, i64 0, i64 0
  %118 = call i32 (i8*, ...) @LOG_ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* %117)
  br label %534

119:                                              ; preds = %114
  br label %120

120:                                              ; preds = %119, %108
  br label %121

121:                                              ; preds = %120, %102
  br label %122

122:                                              ; preds = %121, %96
  br label %123

123:                                              ; preds = %122, %86
  br label %124

124:                                              ; preds = %123, %80
  %125 = load i32, i32* %36, align 4
  %126 = icmp eq i32 %125, 3
  br i1 %126, label %127, label %144

127:                                              ; preds = %124
  %128 = getelementptr inbounds [32 x i8], [32 x i8]* %35, i64 0, i64 0
  %129 = call i32 @vcos_strcasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* %128)
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = load i8, i8* @HDMI_MODE_HDMI, align 1
  store i8 %132, i8* %29, align 1
  br label %143

133:                                              ; preds = %127
  %134 = getelementptr inbounds [32 x i8], [32 x i8]* %35, i64 0, i64 0
  %135 = call i32 @vcos_strcasecmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* %134)
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = load i8, i8* @HDMI_MODE_DVI, align 1
  store i8 %138, i8* %29, align 1
  br label %142

139:                                              ; preds = %133
  %140 = getelementptr inbounds [32 x i8], [32 x i8]* %35, i64 0, i64 0
  %141 = call i32 (i8*, ...) @LOG_ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i8* %140)
  br label %534

142:                                              ; preds = %137
  br label %143

143:                                              ; preds = %142, %131
  br label %144

144:                                              ; preds = %143, %124
  %145 = load i8, i8* %28, align 1
  %146 = sext i8 %145 to i32
  %147 = load i8, i8* @MAX_MODE_ID, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp sgt i32 %146, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %144
  %151 = load i8, i8* %28, align 1
  %152 = sext i8 %151 to i32
  %153 = call i32 (i8*, ...) @LOG_ERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32 %152)
  br label %534

154:                                              ; preds = %144
  store i32 1, i32* %11, align 4
  br label %262

155:                                              ; preds = %59
  store i32 1, i32* %12, align 4
  br label %262

156:                                              ; preds = %59
  %157 = load i8*, i8** @optarg, align 8
  %158 = getelementptr inbounds [32 x i8], [32 x i8]* %37, i64 0, i64 0
  %159 = getelementptr inbounds [32 x i8], [32 x i8]* %38, i64 0, i64 0
  %160 = getelementptr inbounds [32 x i8], [32 x i8]* %39, i64 0, i64 0
  %161 = call i32 @sscanf(i8* %157, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* %158, i8* %159, i8* %160)
  store i32 %161, i32* %40, align 4
  %162 = load i32, i32* %40, align 4
  %163 = icmp ne i32 %162, 2
  br i1 %163, label %164, label %170

164:                                              ; preds = %156
  %165 = load i32, i32* %40, align 4
  %166 = icmp ne i32 %165, 3
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load i8*, i8** @optarg, align 8
  %169 = call i32 (i8*, ...) @LOG_ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %168)
  br label %534

170:                                              ; preds = %164, %156
  %171 = getelementptr inbounds [32 x i8], [32 x i8]* %37, i64 0, i64 0
  %172 = call i32 @vcos_strcasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* %171)
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %170
  %175 = load i32, i32* @SDTV_MODE_NTSC, align 4
  store i32 %175, i32* %31, align 4
  br label %200

176:                                              ; preds = %170
  %177 = getelementptr inbounds [32 x i8], [32 x i8]* %37, i64 0, i64 0
  %178 = call i32 @vcos_strcasecmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8* %177)
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %176
  %181 = load i32, i32* @SDTV_MODE_NTSC_J, align 4
  store i32 %181, i32* %31, align 4
  br label %199

182:                                              ; preds = %176
  %183 = getelementptr inbounds [32 x i8], [32 x i8]* %37, i64 0, i64 0
  %184 = call i32 @vcos_strcasecmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* %183)
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %182
  %187 = load i32, i32* @SDTV_MODE_PAL, align 4
  store i32 %187, i32* %31, align 4
  br label %198

188:                                              ; preds = %182
  %189 = getelementptr inbounds [32 x i8], [32 x i8]* %37, i64 0, i64 0
  %190 = call i32 @vcos_strcasecmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8* %189)
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %188
  %193 = load i32, i32* @SDTV_MODE_PAL_M, align 4
  store i32 %193, i32* %31, align 4
  br label %197

194:                                              ; preds = %188
  %195 = getelementptr inbounds [32 x i8], [32 x i8]* %37, i64 0, i64 0
  %196 = call i32 (i8*, ...) @LOG_ERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i8* %195)
  br label %534

197:                                              ; preds = %192
  br label %198

198:                                              ; preds = %197, %186
  br label %199

199:                                              ; preds = %198, %180
  br label %200

200:                                              ; preds = %199, %174
  %201 = getelementptr inbounds [32 x i8], [32 x i8]* %38, i64 0, i64 0
  %202 = call i32 @vcos_strcasecmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i8* %201)
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %200
  %205 = load i32, i32* @SDTV_ASPECT_4_3, align 4
  store i32 %205, i32* %32, align 4
  br label %220

206:                                              ; preds = %200
  %207 = getelementptr inbounds [32 x i8], [32 x i8]* %38, i64 0, i64 0
  %208 = call i32 @vcos_strcasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8* %207)
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %206
  %211 = load i32, i32* @SDTV_ASPECT_14_9, align 4
  store i32 %211, i32* %32, align 4
  br label %219

212:                                              ; preds = %206
  %213 = getelementptr inbounds [32 x i8], [32 x i8]* %38, i64 0, i64 0
  %214 = call i32 @vcos_strcasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* %213)
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %212
  %217 = load i32, i32* @SDTV_ASPECT_16_9, align 4
  store i32 %217, i32* %32, align 4
  br label %218

218:                                              ; preds = %216, %212
  br label %219

219:                                              ; preds = %218, %210
  br label %220

220:                                              ; preds = %219, %204
  %221 = load i32, i32* %40, align 4
  %222 = icmp eq i32 %221, 3
  br i1 %222, label %223, label %228

223:                                              ; preds = %220
  %224 = getelementptr inbounds [32 x i8], [32 x i8]* %39, i64 0, i64 0
  %225 = call i32 @vcos_strcasecmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i8* %224)
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %223
  store i32 1, i32* %33, align 4
  br label %228

228:                                              ; preds = %227, %223, %220
  store i32 1, i32* %13, align 4
  br label %262

229:                                              ; preds = %59
  store i32 1, i32* %14, align 4
  br label %262

230:                                              ; preds = %59
  %231 = load i8*, i8** @optarg, align 8
  %232 = call i32 @vcos_strcasecmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %231)
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %230
  %235 = load i32, i32* @HDMI_RES_GROUP_CEA, align 4
  store i32 %235, i32* %30, align 4
  br label %246

236:                                              ; preds = %230
  %237 = load i8*, i8** @optarg, align 8
  %238 = call i32 @vcos_strcasecmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %237)
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %236
  %241 = load i32, i32* @HDMI_RES_GROUP_DMT, align 4
  store i32 %241, i32* %30, align 4
  br label %245

242:                                              ; preds = %236
  %243 = load i8*, i8** @optarg, align 8
  %244 = call i32 (i8*, ...) @LOG_ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* %243)
  br label %534

245:                                              ; preds = %240
  br label %246

246:                                              ; preds = %245, %234
  store i32 1, i32* %15, align 4
  br label %262

247:                                              ; preds = %59
  store i32 1, i32* %16, align 4
  br label %262

248:                                              ; preds = %59
  store i32 1, i32* %17, align 4
  br label %262

249:                                              ; preds = %59
  store i32 1, i32* %18, align 4
  br label %262

250:                                              ; preds = %59
  store i32 1, i32* %19, align 4
  %251 = load i8*, i8** @optarg, align 8
  store i8* %251, i8** %24, align 8
  br label %262

252:                                              ; preds = %59
  %253 = load i8*, i8** @optarg, align 8
  %254 = call i32 @atoi(i8* %253)
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %20, align 4
  br label %262

256:                                              ; preds = %59
  store i32 1, i32* %22, align 4
  br label %262

257:                                              ; preds = %59
  store i32 1, i32* %23, align 4
  br label %262

258:                                              ; preds = %59
  %259 = load i32, i32* %9, align 4
  %260 = call i32 (i8*, ...) @LOG_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0), i32 %259)
  br label %532

261:                                              ; preds = %59, %59
  br label %532

262:                                              ; preds = %257, %256, %252, %250, %249, %248, %247, %246, %229, %228, %155, %154, %62, %61
  br label %53

263:                                              ; preds = %53
  %264 = load i32, i32* @optind, align 4
  %265 = load i32, i32* %4, align 4
  %266 = sub nsw i32 %265, %264
  store i32 %266, i32* %4, align 4
  %267 = load i32, i32* @optind, align 4
  %268 = load i8**, i8*** %5, align 8
  %269 = sext i32 %267 to i64
  %270 = getelementptr inbounds i8*, i8** %268, i64 %269
  store i8** %270, i8*** %5, align 8
  %271 = load i32, i32* @optind, align 4
  %272 = icmp eq i32 %271, 1
  br i1 %272, label %276, label %273

273:                                              ; preds = %263
  %274 = load i32, i32* %4, align 4
  %275 = icmp sgt i32 %274, 0
  br i1 %275, label %276, label %284

276:                                              ; preds = %273, %263
  %277 = load i32, i32* %4, align 4
  %278 = icmp sgt i32 %277, 0
  br i1 %278, label %279, label %283

279:                                              ; preds = %276
  %280 = load i8**, i8*** %5, align 8
  %281 = load i8*, i8** %280, align 8
  %282 = call i32 (i8*, ...) @LOG_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0), i8* %281)
  br label %283

283:                                              ; preds = %279, %276
  br label %532

284:                                              ; preds = %273
  %285 = load i32, i32* %10, align 4
  %286 = load i32, i32* %11, align 4
  %287 = add nsw i32 %285, %286
  %288 = load i32, i32* %13, align 4
  %289 = add nsw i32 %287, %288
  %290 = icmp sgt i32 %289, 1
  br i1 %290, label %291, label %293

291:                                              ; preds = %284
  %292 = call i32 (i8*, ...) @LOG_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i64 0, i64 0))
  br label %532

293:                                              ; preds = %284
  %294 = load i32, i32* %10, align 4
  %295 = icmp eq i32 %294, 1
  br i1 %295, label %302, label %296

296:                                              ; preds = %293
  %297 = load i32, i32* %11, align 4
  %298 = icmp eq i32 %297, 1
  br i1 %298, label %302, label %299

299:                                              ; preds = %296
  %300 = load i32, i32* %13, align 4
  %301 = icmp eq i32 %300, 1
  br i1 %301, label %302, label %307

302:                                              ; preds = %299, %296, %293
  %303 = load i32, i32* %14, align 4
  %304 = icmp eq i32 %303, 1
  br i1 %304, label %305, label %307

305:                                              ; preds = %302
  %306 = call i32 (i8*, ...) @LOG_ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.27, i64 0, i64 0))
  br label %534

307:                                              ; preds = %302, %299
  %308 = call i32 @vchi_initialise(i32* %25)
  store i32 %308, i32* %6, align 4
  %309 = load i32, i32* %6, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %314

311:                                              ; preds = %307
  %312 = load i32, i32* %6, align 4
  %313 = call i32 (i8*, ...) @LOG_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.28, i64 0, i64 0), i32 %312)
  br label %534

314:                                              ; preds = %307
  %315 = load i32, i32* %25, align 4
  %316 = call i32 @vchi_connect(i32* null, i32 0, i32 %315)
  store i32 %316, i32* %6, align 4
  %317 = load i32, i32* %6, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %322

319:                                              ; preds = %314
  %320 = load i32, i32* %6, align 4
  %321 = call i32 (i8*, ...) @LOG_ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.29, i64 0, i64 0), i32 %320)
  br label %534

322:                                              ; preds = %314
  %323 = load i32, i32* %25, align 4
  %324 = call i32 @vc_vchi_tv_init(i32 %323, i32** %26, i32 1)
  %325 = load i32, i32* %16, align 4
  %326 = icmp eq i32 %325, 1
  br i1 %326, label %327, label %333

327:                                              ; preds = %322
  %328 = call i32 (i8*, ...) @LOG_STD(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.30, i64 0, i64 0))
  %329 = call i64 (...) @start_monitor()
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %327
  br label %527

332:                                              ; preds = %327
  br label %333

333:                                              ; preds = %332, %322
  %334 = load i32, i32* %15, align 4
  %335 = icmp eq i32 %334, 1
  br i1 %335, label %336, label %343

336:                                              ; preds = %333
  %337 = load i32, i32* %30, align 4
  %338 = load i32, i32* %22, align 4
  %339 = call i64 @get_modes(i32 %337, i32 %338)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %342

341:                                              ; preds = %336
  br label %527

342:                                              ; preds = %336
  br label %343

343:                                              ; preds = %342, %333
  %344 = load i32, i32* %10, align 4
  %345 = icmp eq i32 %344, 1
  br i1 %345, label %346, label %357

346:                                              ; preds = %343
  %347 = load i32, i32* @HDMI_PROPERTY_3D_STRUCTURE, align 4
  %348 = load i32, i32* @HDMI_3D_FORMAT_NONE, align 4
  %349 = call i64 @set_property(i32 %347, i32 %348, i32 0)
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %352

351:                                              ; preds = %346
  br label %527

352:                                              ; preds = %346
  %353 = call i64 (...) @power_on_preferred()
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %356

355:                                              ; preds = %352
  br label %527

356:                                              ; preds = %352
  br label %452

357:                                              ; preds = %343
  %358 = load i32, i32* %11, align 4
  %359 = icmp eq i32 %358, 1
  br i1 %359, label %360, label %430

360:                                              ; preds = %357
  %361 = load i32, i32* %21, align 4
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %369

363:                                              ; preds = %360
  %364 = load i32, i32* @HDMI_PROPERTY_3D_STRUCTURE, align 4
  %365 = load i32, i32* @HDMI_3D_FORMAT_NONE, align 4
  %366 = call i64 @set_property(i32 %364, i32 %365, i32 0)
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %369

368:                                              ; preds = %363
  br label %527

369:                                              ; preds = %363, %360
  %370 = load i32, i32* %21, align 4
  %371 = icmp eq i32 %370, 1
  br i1 %371, label %372, label %378

372:                                              ; preds = %369
  %373 = load i32, i32* @HDMI_PROPERTY_3D_STRUCTURE, align 4
  %374 = load i32, i32* @HDMI_3D_FORMAT_SBS_HALF, align 4
  %375 = call i64 @set_property(i32 %373, i32 %374, i32 0)
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %378

377:                                              ; preds = %372
  br label %527

378:                                              ; preds = %372, %369
  %379 = load i32, i32* %21, align 4
  %380 = icmp eq i32 %379, 2
  br i1 %380, label %381, label %387

381:                                              ; preds = %378
  %382 = load i32, i32* @HDMI_PROPERTY_3D_STRUCTURE, align 4
  %383 = load i32, i32* @HDMI_3D_FORMAT_TB_HALF, align 4
  %384 = call i64 @set_property(i32 %382, i32 %383, i32 0)
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %387

386:                                              ; preds = %381
  br label %527

387:                                              ; preds = %381, %378
  %388 = load i32, i32* %21, align 4
  %389 = icmp eq i32 %388, 3
  br i1 %389, label %390, label %396

390:                                              ; preds = %387
  %391 = load i32, i32* @HDMI_PROPERTY_3D_STRUCTURE, align 4
  %392 = load i32, i32* @HDMI_3D_FORMAT_FRAME_PACKING, align 4
  %393 = call i64 @set_property(i32 %391, i32 %392, i32 0)
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %396

395:                                              ; preds = %390
  br label %527

396:                                              ; preds = %390, %387
  %397 = load i32, i32* %21, align 4
  %398 = icmp eq i32 %397, 4
  br i1 %398, label %399, label %405

399:                                              ; preds = %396
  %400 = load i32, i32* @HDMI_PROPERTY_3D_STRUCTURE, align 4
  %401 = load i32, i32* @HDMI_3D_FORMAT_FRAME_SEQUENTIAL, align 4
  %402 = call i64 @set_property(i32 %400, i32 %401, i32 0)
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %405

404:                                              ; preds = %399
  br label %527

405:                                              ; preds = %399, %396
  br label %406

406:                                              ; preds = %405
  br label %407

407:                                              ; preds = %406
  br label %408

408:                                              ; preds = %407
  br label %409

409:                                              ; preds = %408
  %410 = load i32, i32* @HDMI_PROPERTY_PIXEL_CLOCK_TYPE, align 4
  %411 = load i32, i32* %12, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %415

413:                                              ; preds = %409
  %414 = load i32, i32* @HDMI_PIXEL_CLOCK_TYPE_NTSC, align 4
  br label %417

415:                                              ; preds = %409
  %416 = load i32, i32* @HDMI_PIXEL_CLOCK_TYPE_PAL, align 4
  br label %417

417:                                              ; preds = %415, %413
  %418 = phi i32 [ %414, %413 ], [ %416, %415 ]
  %419 = call i64 @set_property(i32 %410, i32 %418, i32 0)
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %421, label %422

421:                                              ; preds = %417
  br label %527

422:                                              ; preds = %417
  %423 = load i32, i32* %27, align 4
  %424 = load i8, i8* %28, align 1
  %425 = load i8, i8* %29, align 1
  %426 = call i64 @power_on_explicit(i32 %423, i8 signext %424, i8 signext %425)
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %428, label %429

428:                                              ; preds = %422
  br label %527

429:                                              ; preds = %422
  br label %451

430:                                              ; preds = %357
  %431 = load i32, i32* %13, align 4
  %432 = icmp eq i32 %431, 1
  br i1 %432, label %433, label %441

433:                                              ; preds = %430
  %434 = load i32, i32* %31, align 4
  %435 = load i32, i32* %32, align 4
  %436 = load i32, i32* %33, align 4
  %437 = call i64 @power_on_sdtv(i32 %434, i32 %435, i32 %436)
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %439, label %440

439:                                              ; preds = %433
  br label %527

440:                                              ; preds = %433
  br label %450

441:                                              ; preds = %430
  %442 = load i32, i32* %14, align 4
  %443 = icmp eq i32 %442, 1
  br i1 %443, label %444, label %449

444:                                              ; preds = %441
  %445 = call i64 (...) @power_off()
  %446 = icmp ne i64 %445, 0
  br i1 %446, label %447, label %448

447:                                              ; preds = %444
  br label %527

448:                                              ; preds = %444
  br label %449

449:                                              ; preds = %448, %441
  br label %450

450:                                              ; preds = %449, %440
  br label %451

451:                                              ; preds = %450, %429
  br label %452

452:                                              ; preds = %451, %356
  %453 = load i32, i32* %17, align 4
  %454 = icmp eq i32 %453, 1
  br i1 %454, label %455, label %460

455:                                              ; preds = %452
  %456 = call i64 (...) @get_status()
  %457 = icmp ne i64 %456, 0
  br i1 %457, label %458, label %459

458:                                              ; preds = %455
  br label %527

459:                                              ; preds = %455
  br label %460

460:                                              ; preds = %459, %452
  %461 = load i32, i32* %18, align 4
  %462 = icmp eq i32 %461, 1
  br i1 %462, label %463, label %468

463:                                              ; preds = %460
  %464 = call i64 (...) @get_audiosup()
  %465 = icmp ne i64 %464, 0
  br i1 %465, label %466, label %467

466:                                              ; preds = %463
  br label %527

467:                                              ; preds = %463
  br label %468

468:                                              ; preds = %467, %460
  %469 = load i32, i32* %19, align 4
  %470 = icmp eq i32 %469, 1
  br i1 %470, label %471, label %477

471:                                              ; preds = %468
  %472 = load i8*, i8** %24, align 8
  %473 = call i64 @dump_edid(i8* %472)
  %474 = icmp ne i64 %473, 0
  br i1 %474, label %475, label %476

475:                                              ; preds = %471
  br label %527

476:                                              ; preds = %471
  br label %477

477:                                              ; preds = %476, %468
  %478 = load i32, i32* %20, align 4
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %487

480:                                              ; preds = %477
  %481 = load i32, i32* %20, align 4
  %482 = sub nsw i32 %481, 1
  %483 = call i64 @show_info(i32 %482)
  %484 = icmp ne i64 %483, 0
  br i1 %484, label %485, label %486

485:                                              ; preds = %480
  br label %527

486:                                              ; preds = %480
  br label %487

487:                                              ; preds = %486, %477
  %488 = load i32, i32* %23, align 4
  %489 = icmp eq i32 %488, 1
  br i1 %489, label %490, label %520

490:                                              ; preds = %487
  %491 = call i32 @memset(%struct.TYPE_4__* %41, i32 0, i32 16)
  %492 = call i64 @vc_tv_get_device_id(%struct.TYPE_4__* %41)
  %493 = icmp eq i64 %492, 0
  br i1 %493, label %494, label %517

494:                                              ; preds = %490
  %495 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %496 = load i8*, i8** %495, align 8
  %497 = getelementptr inbounds i8, i8* %496, i64 0
  %498 = load i8, i8* %497, align 1
  %499 = sext i8 %498 to i32
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %508, label %501

501:                                              ; preds = %494
  %502 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %503 = load i8*, i8** %502, align 8
  %504 = getelementptr inbounds i8, i8* %503, i64 0
  %505 = load i8, i8* %504, align 1
  %506 = sext i8 %505 to i32
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %508, label %510

508:                                              ; preds = %501, %494
  %509 = call i32 (i8*, ...) @LOG_ERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i64 0, i64 0))
  br label %516

510:                                              ; preds = %501
  %511 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %512 = load i8*, i8** %511, align 8
  %513 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %514 = load i8*, i8** %513, align 8
  %515 = call i32 (i8*, ...) @LOG_STD(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0), i8* %512, i8* %514)
  br label %516

516:                                              ; preds = %510, %508
  br label %519

517:                                              ; preds = %490
  %518 = call i32 (i8*, ...) @LOG_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i64 0, i64 0))
  br label %519

519:                                              ; preds = %517, %516
  br label %520

520:                                              ; preds = %519, %487
  %521 = load i32, i32* %16, align 4
  %522 = icmp eq i32 %521, 1
  br i1 %522, label %523, label %526

523:                                              ; preds = %520
  %524 = call i32 @vcos_event_wait(i32* @quit_event)
  %525 = call i32 @vcos_event_delete(i32* @quit_event)
  br label %526

526:                                              ; preds = %523, %520
  br label %527

527:                                              ; preds = %526, %485, %475, %466, %458, %447, %439, %428, %421, %404, %395, %386, %377, %368, %355, %351, %341, %331
  %528 = call i32 (...) @vc_vchi_tv_stop()
  %529 = load i32, i32* %25, align 4
  %530 = call i32 @vchi_disconnect(i32 %529)
  %531 = call i32 @exit(i32 0) #4
  unreachable

532:                                              ; preds = %291, %283, %261, %258
  %533 = call i32 (...) @show_usage()
  br label %534

534:                                              ; preds = %532, %319, %311, %305, %242, %194, %167, %150, %139, %116, %73
  %535 = call i32 @exit(i32 1) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @vcos_init(...) #2

declare dso_local i32 @create_optstring(i8*) #2

declare dso_local i32 @getopt_long_only(i32, i8**, i8*, i32, i32*) #2

declare dso_local i32 @sscanf(i8*, i8*, i8*, i8*, i8*) #2

declare dso_local i32 @LOG_ERR(i8*, ...) #2

declare dso_local i32 @vcos_strcasecmp(i8*, i8*) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @vchi_initialise(i32*) #2

declare dso_local i32 @vchi_connect(i32*, i32, i32) #2

declare dso_local i32 @vc_vchi_tv_init(i32, i32**, i32) #2

declare dso_local i32 @LOG_STD(i8*, ...) #2

declare dso_local i64 @start_monitor(...) #2

declare dso_local i64 @get_modes(i32, i32) #2

declare dso_local i64 @set_property(i32, i32, i32) #2

declare dso_local i64 @power_on_preferred(...) #2

declare dso_local i64 @power_on_explicit(i32, i8 signext, i8 signext) #2

declare dso_local i64 @power_on_sdtv(i32, i32, i32) #2

declare dso_local i64 @power_off(...) #2

declare dso_local i64 @get_status(...) #2

declare dso_local i64 @get_audiosup(...) #2

declare dso_local i64 @dump_edid(i8*) #2

declare dso_local i64 @show_info(i32) #2

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #2

declare dso_local i64 @vc_tv_get_device_id(%struct.TYPE_4__*) #2

declare dso_local i32 @vcos_event_wait(i32*) #2

declare dso_local i32 @vcos_event_delete(i32*) #2

declare dso_local i32 @vc_vchi_tv_stop(...) #2

declare dso_local i32 @vchi_disconnect(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @show_usage(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
