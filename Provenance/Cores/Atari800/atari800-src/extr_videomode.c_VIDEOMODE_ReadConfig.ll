; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_videomode.c_VIDEOMODE_ReadConfig.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_videomode.c_VIDEOMODE_ReadConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"VIDEOMODE_WINDOW_WIDTH\00", align 1
@window_resolution = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"VIDEOMODE_WINDOW_HEIGHT\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"VIDEOMODE_FULLSCREEN_WIDTH\00", align 1
@init_fs_resolution = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"VIDEOMODE_FULLSCREEN_HEIGHT\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"VIDEOMODE_WINDOWED\00", align 1
@VIDEOMODE_windowed = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"VIDEOMODE_HORIZONTAL_AREA\00", align 1
@horizontal_area_cfg_strings = common dso_local global i32 0, align 4
@VIDEOMODE_HORIZONTAL_SIZE = common dso_local global i32 0, align 4
@VIDEOMODE_HORIZONTAL_CUSTOM = common dso_local global i32 0, align 4
@VIDEOMODE_horizontal_area = common dso_local global i32 0, align 4
@VIDEOMODE_custom_horizontal_area = common dso_local global i32 0, align 4
@VIDEOMODE_MIN_HORIZONTAL_AREA = common dso_local global i32 0, align 4
@VIDEOMODE_MAX_HORIZONTAL_AREA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"VIDEOMODE_VERTICAL_AREA\00", align 1
@vertical_area_cfg_strings = common dso_local global i32 0, align 4
@VIDEOMODE_VERTICAL_SIZE = common dso_local global i32 0, align 4
@VIDEOMODE_VERTICAL_CUSTOM = common dso_local global i32 0, align 4
@VIDEOMODE_vertical_area = common dso_local global i32 0, align 4
@VIDEOMODE_custom_vertical_area = common dso_local global i32 0, align 4
@VIDEOMODE_MIN_VERTICAL_AREA = common dso_local global i32 0, align 4
@VIDEOMODE_MAX_VERTICAL_AREA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"VIDEOMODE_HORIZONTAL_SHIFT\00", align 1
@VIDEOMODE_horizontal_offset = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"VIDEOMODE_VERTICAL_SHIFT\00", align 1
@VIDEOMODE_vertical_offset = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"VIDEOMODE_STRETCH\00", align 1
@stretch_cfg_strings = common dso_local global i32 0, align 4
@VIDEOMODE_STRETCH_SIZE = common dso_local global i32 0, align 4
@VIDEOMODE_STRETCH_CUSTOM = common dso_local global i32 0, align 4
@VIDEOMODE_stretch = common dso_local global i32 0, align 4
@VIDEOMODE_custom_stretch = common dso_local global double 0.000000e+00, align 8
@.str.10 = private unnamed_addr constant [14 x i8] c"VIDEOMODE_FIT\00", align 1
@fit_cfg_strings = common dso_local global i32 0, align 4
@VIDEOMODE_FIT_SIZE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@VIDEOMODE_fit = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"VIDEOMODE_IMAGE_ASPECT\00", align 1
@keep_aspect_cfg_strings = common dso_local global i32 0, align 4
@VIDEOMODE_KEEP_ASPECT_SIZE = common dso_local global i32 0, align 4
@VIDEOMODE_keep_aspect = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [28 x i8] c"VIDEOMODE_HOST_ASPECT_RATIO\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"AUTO\00", align 1
@VIDEOMODE_host_aspect_ratio_h = common dso_local global double 0.000000e+00, align 8
@VIDEOMODE_host_aspect_ratio_w = common dso_local global double 0.000000e+00, align 8
@TRUE = common dso_local global i32 0, align 4
@VIDEOMODE_80_column = common dso_local global i32 0, align 4
@VIDEOMODE_rotate90 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VIDEOMODE_ReadConfig(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @Util_sscandec(i8* %15)
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @window_resolution, i32 0, i32 0), align 4
  %17 = icmp ne i32 %16, -1
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %3, align 4
  br label %210

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @Util_sscandec(i8* %24)
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @window_resolution, i32 0, i32 1), align 4
  %26 = icmp ne i32 %25, -1
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %3, align 4
  br label %210

28:                                               ; preds = %19
  %29 = load i8*, i8** %4, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @Util_sscandec(i8* %33)
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @init_fs_resolution, i32 0, i32 0), align 4
  %35 = icmp ne i32 %34, -1
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %3, align 4
  br label %210

37:                                               ; preds = %28
  %38 = load i8*, i8** %4, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @Util_sscandec(i8* %42)
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @init_fs_resolution, i32 0, i32 1), align 4
  %44 = icmp ne i32 %43, -1
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %3, align 4
  br label %210

46:                                               ; preds = %37
  %47 = load i8*, i8** %4, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @Util_sscanbool(i8* %51)
  store i32 %52, i32* @VIDEOMODE_windowed, align 4
  %53 = icmp ne i32 %52, -1
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %3, align 4
  br label %210

55:                                               ; preds = %46
  %56 = load i8*, i8** %4, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %84

59:                                               ; preds = %55
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* @horizontal_area_cfg_strings, align 4
  %62 = load i32, i32* @VIDEOMODE_HORIZONTAL_SIZE, align 4
  %63 = call i32 @CFG_MatchTextParameter(i8* %60, i32 %61, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %59
  %67 = load i32, i32* @VIDEOMODE_HORIZONTAL_CUSTOM, align 4
  store i32 %67, i32* @VIDEOMODE_horizontal_area, align 4
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @Util_sscandec(i8* %68)
  store i32 %69, i32* @VIDEOMODE_custom_horizontal_area, align 4
  %70 = icmp ne i32 %69, -1
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = load i32, i32* @VIDEOMODE_custom_horizontal_area, align 4
  %73 = load i32, i32* @VIDEOMODE_MIN_HORIZONTAL_AREA, align 4
  %74 = icmp sge i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32, i32* @VIDEOMODE_custom_horizontal_area, align 4
  %77 = load i32, i32* @VIDEOMODE_MAX_HORIZONTAL_AREA, align 4
  %78 = icmp sle i32 %76, %77
  br label %79

79:                                               ; preds = %75, %71, %66
  %80 = phi i1 [ false, %71 ], [ false, %66 ], [ %78, %75 ]
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %3, align 4
  br label %210

82:                                               ; preds = %59
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* @VIDEOMODE_horizontal_area, align 4
  br label %203

84:                                               ; preds = %55
  %85 = load i8*, i8** %4, align 8
  %86 = call i64 @strcmp(i8* %85, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %113

88:                                               ; preds = %84
  %89 = load i8*, i8** %5, align 8
  %90 = load i32, i32* @vertical_area_cfg_strings, align 4
  %91 = load i32, i32* @VIDEOMODE_VERTICAL_SIZE, align 4
  %92 = call i32 @CFG_MatchTextParameter(i8* %89, i32 %90, i32 %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %88
  %96 = load i32, i32* @VIDEOMODE_VERTICAL_CUSTOM, align 4
  store i32 %96, i32* @VIDEOMODE_vertical_area, align 4
  %97 = load i8*, i8** %5, align 8
  %98 = call i32 @Util_sscandec(i8* %97)
  store i32 %98, i32* @VIDEOMODE_custom_vertical_area, align 4
  %99 = icmp ne i32 %98, -1
  br i1 %99, label %100, label %108

100:                                              ; preds = %95
  %101 = load i32, i32* @VIDEOMODE_custom_vertical_area, align 4
  %102 = load i32, i32* @VIDEOMODE_MIN_VERTICAL_AREA, align 4
  %103 = icmp sge i32 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load i32, i32* @VIDEOMODE_custom_vertical_area, align 4
  %106 = load i32, i32* @VIDEOMODE_MAX_VERTICAL_AREA, align 4
  %107 = icmp sle i32 %105, %106
  br label %108

108:                                              ; preds = %104, %100, %95
  %109 = phi i1 [ false, %100 ], [ false, %95 ], [ %107, %104 ]
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %3, align 4
  br label %210

111:                                              ; preds = %88
  %112 = load i32, i32* %7, align 4
  store i32 %112, i32* @VIDEOMODE_vertical_area, align 4
  br label %202

113:                                              ; preds = %84
  %114 = load i8*, i8** %4, align 8
  %115 = call i64 @strcmp(i8* %114, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = load i8*, i8** %5, align 8
  %119 = call i32 @Util_sscansdec(i8* %118, i32* @VIDEOMODE_horizontal_offset)
  store i32 %119, i32* %3, align 4
  br label %210

120:                                              ; preds = %113
  %121 = load i8*, i8** %4, align 8
  %122 = call i64 @strcmp(i8* %121, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = load i8*, i8** %5, align 8
  %126 = call i32 @Util_sscansdec(i8* %125, i32* @VIDEOMODE_vertical_offset)
  store i32 %126, i32* %3, align 4
  br label %210

127:                                              ; preds = %120
  %128 = load i8*, i8** %4, align 8
  %129 = call i64 @strcmp(i8* %128, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %151

131:                                              ; preds = %127
  %132 = load i8*, i8** %5, align 8
  %133 = load i32, i32* @stretch_cfg_strings, align 4
  %134 = load i32, i32* @VIDEOMODE_STRETCH_SIZE, align 4
  %135 = call i32 @CFG_MatchTextParameter(i8* %132, i32 %133, i32 %134)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %131
  %139 = load i32, i32* @VIDEOMODE_STRETCH_CUSTOM, align 4
  store i32 %139, i32* @VIDEOMODE_stretch, align 4
  %140 = load i8*, i8** %5, align 8
  %141 = call i64 @Util_sscandouble(i8* %140, double* @VIDEOMODE_custom_stretch)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load double, double* @VIDEOMODE_custom_stretch, align 8
  %145 = fcmp oge double %144, 1.000000e+00
  br label %146

146:                                              ; preds = %143, %138
  %147 = phi i1 [ false, %138 ], [ %145, %143 ]
  %148 = zext i1 %147 to i32
  store i32 %148, i32* %3, align 4
  br label %210

149:                                              ; preds = %131
  %150 = load i32, i32* %8, align 4
  store i32 %150, i32* @VIDEOMODE_stretch, align 4
  br label %199

151:                                              ; preds = %127
  %152 = load i8*, i8** %4, align 8
  %153 = call i64 @strcmp(i8* %152, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %166

155:                                              ; preds = %151
  %156 = load i8*, i8** %5, align 8
  %157 = load i32, i32* @fit_cfg_strings, align 4
  %158 = load i32, i32* @VIDEOMODE_FIT_SIZE, align 4
  %159 = call i32 @CFG_MatchTextParameter(i8* %156, i32 %157, i32 %158)
  store i32 %159, i32* %9, align 4
  %160 = load i32, i32* %9, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %155
  %163 = load i32, i32* @FALSE, align 4
  store i32 %163, i32* %3, align 4
  br label %210

164:                                              ; preds = %155
  %165 = load i32, i32* %9, align 4
  store i32 %165, i32* @VIDEOMODE_fit, align 4
  br label %198

166:                                              ; preds = %151
  %167 = load i8*, i8** %4, align 8
  %168 = call i64 @strcmp(i8* %167, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %181

170:                                              ; preds = %166
  %171 = load i8*, i8** %5, align 8
  %172 = load i32, i32* @keep_aspect_cfg_strings, align 4
  %173 = load i32, i32* @VIDEOMODE_KEEP_ASPECT_SIZE, align 4
  %174 = call i32 @CFG_MatchTextParameter(i8* %171, i32 %172, i32 %173)
  store i32 %174, i32* %10, align 4
  %175 = load i32, i32* %10, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %170
  %178 = load i32, i32* @FALSE, align 4
  store i32 %178, i32* %3, align 4
  br label %210

179:                                              ; preds = %170
  %180 = load i32, i32* %10, align 4
  store i32 %180, i32* @VIDEOMODE_keep_aspect, align 4
  br label %197

181:                                              ; preds = %166
  %182 = load i8*, i8** %4, align 8
  %183 = call i64 @strcmp(i8* %182, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %194

185:                                              ; preds = %181
  %186 = load i8*, i8** %5, align 8
  %187 = call i64 @strcmp(i8* %186, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %185
  store double 0.000000e+00, double* @VIDEOMODE_host_aspect_ratio_h, align 8
  store double 0.000000e+00, double* @VIDEOMODE_host_aspect_ratio_w, align 8
  br label %193

190:                                              ; preds = %185
  %191 = load i8*, i8** %5, align 8
  %192 = call i32 @ParseAspectRatio(i8* %191, double* @VIDEOMODE_host_aspect_ratio_w, double* @VIDEOMODE_host_aspect_ratio_h)
  store i32 %192, i32* %3, align 4
  br label %210

193:                                              ; preds = %189
  br label %196

194:                                              ; preds = %181
  %195 = load i32, i32* @FALSE, align 4
  store i32 %195, i32* %3, align 4
  br label %210

196:                                              ; preds = %193
  br label %197

197:                                              ; preds = %196, %179
  br label %198

198:                                              ; preds = %197, %164
  br label %199

199:                                              ; preds = %198, %149
  br label %200

200:                                              ; preds = %199
  br label %201

201:                                              ; preds = %200
  br label %202

202:                                              ; preds = %201, %111
  br label %203

203:                                              ; preds = %202, %82
  br label %204

204:                                              ; preds = %203
  br label %205

205:                                              ; preds = %204
  br label %206

206:                                              ; preds = %205
  br label %207

207:                                              ; preds = %206
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* @TRUE, align 4
  store i32 %209, i32* %3, align 4
  br label %210

210:                                              ; preds = %208, %194, %190, %177, %162, %146, %124, %117, %108, %79, %50, %41, %32, %23, %14
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @Util_sscandec(i8*) #1

declare dso_local i32 @Util_sscanbool(i8*) #1

declare dso_local i32 @CFG_MatchTextParameter(i8*, i32, i32) #1

declare dso_local i32 @Util_sscansdec(i8*, i32*) #1

declare dso_local i64 @Util_sscandouble(i8*, double*) #1

declare dso_local i32 @ParseAspectRatio(i8*, double*, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
