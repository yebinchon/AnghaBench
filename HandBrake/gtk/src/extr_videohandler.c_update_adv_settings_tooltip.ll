; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_videohandler.c_update_adv_settings_tooltip.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_videohandler.c_update_adv_settings_tooltip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64* }

@video_option_tooltip = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"VideoOptionExtra\00", align 1
@HB_VCODEC_X264_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"VideoPreset\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"VideoTune\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"VideoProfile\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"VideoLevel\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"x264FastDecode\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"fastdecode\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"x264ZeroLatency\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"zerolatency\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [12 x i8] c"scale_width\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"scale_height\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"autoscale\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"PictureWidth\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"PictureHeight\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"%s\0A\0AExpanded Options:\0A\22%s\22\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"%s\0A\0AExpanded Options:\0A\22\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @update_adv_settings_tooltip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_adv_settings_tooltip(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %17 = load i32*, i32** @video_option_tooltip, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @GHB_WIDGET(i32 %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %24 = call i32* @GTK_WIDGET(i32 %23)
  store i32* %24, i32** %3, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = call i32* @gtk_widget_get_tooltip_text(i32* %25)
  store i32* %26, i32** @video_option_tooltip, align 8
  br label %27

27:                                               ; preds = %19, %1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ghb_get_video_encoder(i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @HB_VCODEC_X264_MASK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %212

36:                                               ; preds = %27
  %37 = call %struct.TYPE_8__* @g_string_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %5, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @ghb_dict_get_string(i32 %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i8* %41, i8** %6, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @ghb_dict_get_string(i32 %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i8* %45, i8** %7, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @ghb_dict_get_string(i32 %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store i8* %49, i8** %8, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @ghb_dict_get_string(i32 %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  store i8* %53, i8** %9, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @ghb_dict_get_string(i32 %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i8* %57, i8** %10, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %36
  %64 = load i8*, i8** %7, align 8
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @g_string_append_printf(%struct.TYPE_8__* %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %69)
  br label %71

71:                                               ; preds = %67, %63, %36
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @ghb_dict_get_bool(i32 %74, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %71
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %87 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @g_string_append_printf(%struct.TYPE_8__* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %86, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  br label %88

88:                                               ; preds = %77, %71
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @ghb_dict_get_bool(i32 %91, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %88
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %104 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @g_string_append_printf(%struct.TYPE_8__* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  br label %105

105:                                              ; preds = %94, %88
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %107 = load i32, i32* @FALSE, align 4
  %108 = call i8* @g_string_free(%struct.TYPE_8__* %106, i32 %107)
  store i8* %108, i8** %11, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @ghb_dict_get_int(i32 %111, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  store i32 %112, i32* %13, align 4
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ghb_dict_get_int(i32 %115, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %13, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %105
  %120 = load i32, i32* %14, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %165

122:                                              ; preds = %119, %105
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @ghb_dict_get_bool(i32 %125, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %157, label %128

128:                                              ; preds = %122
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @ghb_dict_get_int(i32 %131, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  store i32 %132, i32* %13, align 4
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @ghb_dict_get_int(i32 %135, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %14, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %128
  %140 = load i32, i32* %13, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %139
  %143 = load i32, i32* %13, align 4
  %144 = mul nsw i32 %143, 9
  %145 = sdiv i32 %144, 16
  store i32 %145, i32* %14, align 4
  br label %146

146:                                              ; preds = %142, %139, %128
  %147 = load i32, i32* %13, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %146
  %150 = load i32, i32* %14, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %149
  %153 = load i32, i32* %14, align 4
  %154 = mul nsw i32 %153, 16
  %155 = sdiv i32 %154, 9
  store i32 %155, i32* %13, align 4
  br label %156

156:                                              ; preds = %152, %149, %146
  br label %157

157:                                              ; preds = %156, %122
  %158 = load i32, i32* %13, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %157
  %161 = load i32, i32* %14, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %160, %157
  store i32 1280, i32* %13, align 4
  store i32 720, i32* %14, align 4
  br label %164

164:                                              ; preds = %163, %160
  br label %165

165:                                              ; preds = %164, %119
  %166 = load i8*, i8** %8, align 8
  %167 = call i32 @strcasecmp(i8* %166, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %165
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %170

170:                                              ; preds = %169, %165
  %171 = load i8*, i8** %9, align 8
  %172 = call i32 @strcasecmp(i8* %171, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %170
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %175

175:                                              ; preds = %174, %170
  %176 = load i32, i32* %4, align 4
  %177 = call i32 @hb_video_encoder_get_depth(i32 %176)
  %178 = load i8*, i8** %6, align 8
  %179 = load i8*, i8** %11, align 8
  %180 = load i8*, i8** %10, align 8
  %181 = load i8*, i8** %8, align 8
  %182 = load i8*, i8** %9, align 8
  %183 = load i32, i32* %13, align 4
  %184 = load i32, i32* %14, align 4
  %185 = call i8* @hb_x264_param_unparse(i32 %177, i8* %178, i8* %179, i8* %180, i8* %181, i8* %182, i32 %183, i32 %184)
  store i8* %185, i8** %12, align 8
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @GHB_WIDGET(i32 %188, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %190 = call i32* @GTK_WIDGET(i32 %189)
  store i32* %190, i32** %15, align 8
  %191 = load i8*, i8** %12, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %193, label %198

193:                                              ; preds = %175
  %194 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0))
  %195 = load i32*, i32** @video_option_tooltip, align 8
  %196 = load i8*, i8** %12, align 8
  %197 = call i8* (i32, i32*, ...) @g_strdup_printf(i32 %194, i32* %195, i8* %196)
  store i8* %197, i8** %16, align 8
  br label %202

198:                                              ; preds = %175
  %199 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0))
  %200 = load i32*, i32** @video_option_tooltip, align 8
  %201 = call i8* (i32, i32*, ...) @g_strdup_printf(i32 %199, i32* %200)
  store i8* %201, i8** %16, align 8
  br label %202

202:                                              ; preds = %198, %193
  %203 = load i32*, i32** %15, align 8
  %204 = load i8*, i8** %16, align 8
  %205 = call i32 @gtk_widget_set_tooltip_text(i32* %203, i8* %204)
  %206 = load i8*, i8** %16, align 8
  %207 = call i32 @g_free(i8* %206)
  %208 = load i8*, i8** %12, align 8
  %209 = call i32 @g_free(i8* %208)
  %210 = load i8*, i8** %11, align 8
  %211 = call i32 @g_free(i8* %210)
  br label %212

212:                                              ; preds = %202, %27
  ret void
}

declare dso_local i32* @GTK_WIDGET(i32) #1

declare dso_local i32 @GHB_WIDGET(i32, i8*) #1

declare dso_local i32* @gtk_widget_get_tooltip_text(i32*) #1

declare dso_local i32 @ghb_get_video_encoder(i32) #1

declare dso_local %struct.TYPE_8__* @g_string_new(i8*) #1

declare dso_local i8* @ghb_dict_get_string(i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @g_string_append_printf(%struct.TYPE_8__*, i8*, i8*, ...) #1

declare dso_local i64 @ghb_dict_get_bool(i32, i8*) #1

declare dso_local i8* @g_string_free(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ghb_dict_get_int(i32, i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i8* @hb_x264_param_unparse(i32, i8*, i8*, i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @hb_video_encoder_get_depth(i32) #1

declare dso_local i8* @g_strdup_printf(i32, i32*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @gtk_widget_set_tooltip_text(i32*, i8*) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
