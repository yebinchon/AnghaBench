; ModuleID = '/home/carl/AnghaBench/HandBrake/test/extr_test.c_main.c'
source_filename = "/home/carl/AnghaBench/HandBrake/test/extr_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@debug = common dso_local global i32 0, align 4
@hb_cli_error_handler = common dso_local global i32 0, align 4
@dvdnav = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s - %s - %s\0A\00", align 1
@HB_PROJECT_TITLE = common dso_local global i8* null, align 8
@HB_PROJECT_HOST_TITLE = common dso_local global i8* null, align 8
@HB_PROJECT_URL_WEBSITE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"%d CPU%s detected\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SIGINT = common dso_local global i32 0, align 4
@SigHandler = common dso_local global i32 0, align 4
@queue_import_name = common dso_local global i32* null, align 8
@preset_name = common dso_local global i8* null, align 8
@HB_ERROR_WRONG_INPUT = common dso_local global i32 0, align 4
@done_error = common dso_local global i32 0, align 4
@preset_export_name = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"PresetName\00", align 1
@preset_export_desc = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"PresetDescription\00", align 1
@preset_export_file = common dso_local global i8* null, align 8
@stdout = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@input = common dso_local global i8* null, align 8
@titlescan = common dso_local global i32 0, align 4
@titleindex = common dso_local global i64 0, align 8
@output = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"Opening %s...\0A\00", align 1
@main_feature = common dso_local global i64 0, align 8
@preview_count = common dso_local global i32 0, align 4
@store_previews = common dso_local global i32 0, align 4
@min_title_duration = common dso_local global i64 0, align 8
@audio_copy_list = common dso_local global i32 0, align 4
@abitrates = common dso_local global i32 0, align 4
@acompressions = common dso_local global i32 0, align 4
@aqualities = common dso_local global i32 0, align 4
@audio_dither = common dso_local global i32 0, align 4
@acodecs = common dso_local global i32 0, align 4
@arates = common dso_local global i32 0, align 4
@atracks = common dso_local global i32 0, align 4
@audio_lang_list = common dso_local global i32 0, align 4
@audio_gain = common dso_local global i32 0, align 4
@dynamic_range_compression = common dso_local global i32 0, align 4
@mixdowns = common dso_local global i32 0, align 4
@subtitle_lang_list = common dso_local global i32 0, align 4
@subtracks = common dso_local global i32 0, align 4
@acodec_fallback = common dso_local global i8* null, align 8
@native_language = common dso_local global i8* null, align 8
@format = common dso_local global i8* null, align 8
@encoder_preset = common dso_local global i8* null, align 8
@encoder_tune = common dso_local global i8* null, align 8
@advanced_opts = common dso_local global i8* null, align 8
@encoder_profile = common dso_local global i8* null, align 8
@encoder_level = common dso_local global i8* null, align 8
@rotate = common dso_local global i8* null, align 8
@deblock = common dso_local global i8* null, align 8
@deblock_tune = common dso_local global i8* null, align 8
@detelecine = common dso_local global i8* null, align 8
@deinterlace = common dso_local global i8* null, align 8
@decomb = common dso_local global i8* null, align 8
@hqdn3d = common dso_local global i8* null, align 8
@nlmeans = common dso_local global i8* null, align 8
@nlmeans_tune = common dso_local global i8* null, align 8
@chroma_smooth = common dso_local global i8* null, align 8
@chroma_smooth_tune = common dso_local global i8* null, align 8
@unsharp = common dso_local global i8* null, align 8
@unsharp_tune = common dso_local global i8* null, align 8
@lapsharp = common dso_local global i8* null, align 8
@lapsharp_tune = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"HandBrake has exited.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call i32 (...) @hb_global_init()
  %10 = call i32 (...) @hb_presets_builtin_update()
  %11 = call i32 (...) @hb_presets_cli_default_init()
  %12 = call i32* @hb_init(i32 4)
  store i32* %12, i32** %6, align 8
  %13 = call i32 (...) @test_tty()
  %14 = call i32 @get_argv_utf8(i32* %4, i8*** %5)
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = call i64 @ParseOptions(i32 %15, i8** %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call i64 @CheckOptions(i32 %20, i8** %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19, %2
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* @debug, align 4
  %27 = call i32 @hb_log_level_set(i32* %25, i32 %26)
  br label %131

28:                                               ; preds = %19
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* @debug, align 4
  %31 = call i32 @hb_log_level_set(i32* %29, i32 %30)
  %32 = call i32 @hb_register_error_handler(i32* @hb_cli_error_handler)
  %33 = load i32, i32* @dvdnav, align 4
  %34 = call i32 @hb_dvd_set_dvdnav(i32 %33)
  %35 = load i32, i32* @stderr, align 4
  %36 = load i8*, i8** @HB_PROJECT_TITLE, align 8
  %37 = load i8*, i8** @HB_PROJECT_HOST_TITLE, align 8
  %38 = load i8*, i8** @HB_PROJECT_URL_WEBSITE, align 8
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %36, i8* %37, i8* %38)
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 (...) @hb_get_cpu_count()
  %42 = call i32 (...) @hb_get_cpu_count()
  %43 = icmp sgt i32 %42, 1
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %41, i8* %45)
  %47 = load i32, i32* @SIGINT, align 4
  %48 = load i32, i32* @SigHandler, align 4
  %49 = call i32 @signal(i32 %47, i32 %48)
  %50 = load i32*, i32** @queue_import_name, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %28
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @hb_system_sleep_prevent(i32* %53)
  %55 = load i32*, i32** %6, align 8
  %56 = load i32*, i32** @queue_import_name, align 8
  %57 = call i32 @RunQueue(i32* %55, i32* %56)
  br label %130

58:                                               ; preds = %28
  %59 = load i8*, i8** @preset_name, align 8
  %60 = call i32* @PreparePreset(i8* %59)
  store i32* %60, i32** %7, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* @HB_ERROR_WRONG_INPUT, align 4
  store i32 %64, i32* @done_error, align 4
  br label %131

65:                                               ; preds = %58
  %66 = load i8*, i8** @preset_export_name, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %108

68:                                               ; preds = %65
  %69 = load i32*, i32** %7, align 8
  %70 = load i8*, i8** @preset_export_name, align 8
  %71 = call i32 @hb_value_string(i8* %70)
  %72 = call i32 @hb_dict_set(i32* %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  %73 = load i8*, i8** @preset_export_desc, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = load i32*, i32** %7, align 8
  %77 = load i8*, i8** @preset_export_desc, align 8
  %78 = call i32 @hb_value_string(i8* %77)
  %79 = call i32 @hb_dict_set(i32* %76, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %75, %68
  %81 = load i8*, i8** @preset_export_file, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i32*, i32** %7, align 8
  %85 = load i8*, i8** @preset_export_file, align 8
  %86 = call i32 @hb_presets_write_json(i32* %84, i8* %85)
  br label %93

87:                                               ; preds = %80
  %88 = load i32*, i32** %7, align 8
  %89 = call i8* @hb_presets_package_json(i32* %88)
  store i8* %89, i8** %8, align 8
  %90 = load i32, i32* @stdout, align 4
  %91 = load i8*, i8** %8, align 8
  %92 = call i32 (i32, i8*, ...) @fprintf(i32 %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %91)
  br label %93

93:                                               ; preds = %87, %83
  %94 = load i8*, i8** @input, align 8
  %95 = icmp eq i8* %94, null
  br i1 %95, label %105, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* @titlescan, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %107, label %99

99:                                               ; preds = %96
  %100 = load i64, i64* @titleindex, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load i8*, i8** @output, align 8
  %104 = icmp eq i8* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %102, %93
  %106 = call i32 @hb_value_free(i32** %7)
  br label %131

107:                                              ; preds = %102, %99, %96
  br label %108

108:                                              ; preds = %107, %65
  %109 = load i32, i32* @stderr, align 4
  %110 = load i8*, i8** @input, align 8
  %111 = call i32 (i32, i8*, ...) @fprintf(i32 %109, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %110)
  %112 = load i64, i64* @main_feature, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  store i64 0, i64* @titleindex, align 8
  br label %115

115:                                              ; preds = %114, %108
  %116 = load i32*, i32** %6, align 8
  %117 = call i32 @hb_system_sleep_prevent(i32* %116)
  %118 = load i32*, i32** %6, align 8
  %119 = load i8*, i8** @input, align 8
  %120 = load i64, i64* @titleindex, align 8
  %121 = load i32, i32* @preview_count, align 4
  %122 = load i32, i32* @store_previews, align 4
  %123 = load i64, i64* @min_title_duration, align 8
  %124 = mul nsw i64 %123, 90000
  %125 = call i32 @hb_scan(i32* %118, i8* %119, i64 %120, i32 %121, i32 %122, i64 %124)
  %126 = load i32*, i32** %6, align 8
  %127 = load i32*, i32** %7, align 8
  %128 = call i32 @EventLoop(i32* %126, i32* %127)
  %129 = call i32 @hb_value_free(i32** %7)
  br label %130

130:                                              ; preds = %115, %52
  br label %131

131:                                              ; preds = %130, %105, %63, %24
  %132 = call i32 @hb_close(i32** %6)
  %133 = call i32 (...) @hb_global_close()
  %134 = load i32, i32* @audio_copy_list, align 4
  %135 = call i32 @hb_str_vfree(i32 %134)
  %136 = load i32, i32* @abitrates, align 4
  %137 = call i32 @hb_str_vfree(i32 %136)
  %138 = load i32, i32* @acompressions, align 4
  %139 = call i32 @hb_str_vfree(i32 %138)
  %140 = load i32, i32* @aqualities, align 4
  %141 = call i32 @hb_str_vfree(i32 %140)
  %142 = load i32, i32* @audio_dither, align 4
  %143 = call i32 @hb_str_vfree(i32 %142)
  %144 = load i32, i32* @acodecs, align 4
  %145 = call i32 @hb_str_vfree(i32 %144)
  %146 = load i32, i32* @arates, align 4
  %147 = call i32 @hb_str_vfree(i32 %146)
  %148 = load i32, i32* @atracks, align 4
  %149 = call i32 @hb_str_vfree(i32 %148)
  %150 = load i32, i32* @audio_lang_list, align 4
  %151 = call i32 @hb_str_vfree(i32 %150)
  %152 = load i32, i32* @audio_gain, align 4
  %153 = call i32 @hb_str_vfree(i32 %152)
  %154 = load i32, i32* @dynamic_range_compression, align 4
  %155 = call i32 @hb_str_vfree(i32 %154)
  %156 = load i32, i32* @mixdowns, align 4
  %157 = call i32 @hb_str_vfree(i32 %156)
  %158 = load i32, i32* @subtitle_lang_list, align 4
  %159 = call i32 @hb_str_vfree(i32 %158)
  %160 = load i32, i32* @subtracks, align 4
  %161 = call i32 @hb_str_vfree(i32 %160)
  %162 = load i8*, i8** @acodec_fallback, align 8
  %163 = call i32 @free(i8* %162)
  %164 = load i8*, i8** @native_language, align 8
  %165 = call i32 @free(i8* %164)
  %166 = load i8*, i8** @format, align 8
  %167 = call i32 @free(i8* %166)
  %168 = load i8*, i8** @input, align 8
  %169 = call i32 @free(i8* %168)
  %170 = load i8*, i8** @output, align 8
  %171 = call i32 @free(i8* %170)
  %172 = load i8*, i8** @preset_name, align 8
  %173 = call i32 @free(i8* %172)
  %174 = load i8*, i8** @encoder_preset, align 8
  %175 = call i32 @free(i8* %174)
  %176 = load i8*, i8** @encoder_tune, align 8
  %177 = call i32 @free(i8* %176)
  %178 = load i8*, i8** @advanced_opts, align 8
  %179 = call i32 @free(i8* %178)
  %180 = load i8*, i8** @encoder_profile, align 8
  %181 = call i32 @free(i8* %180)
  %182 = load i8*, i8** @encoder_level, align 8
  %183 = call i32 @free(i8* %182)
  %184 = load i8*, i8** @rotate, align 8
  %185 = call i32 @free(i8* %184)
  %186 = load i8*, i8** @deblock, align 8
  %187 = call i32 @free(i8* %186)
  %188 = load i8*, i8** @deblock_tune, align 8
  %189 = call i32 @free(i8* %188)
  %190 = load i8*, i8** @detelecine, align 8
  %191 = call i32 @free(i8* %190)
  %192 = load i8*, i8** @deinterlace, align 8
  %193 = call i32 @free(i8* %192)
  %194 = load i8*, i8** @decomb, align 8
  %195 = call i32 @free(i8* %194)
  %196 = load i8*, i8** @hqdn3d, align 8
  %197 = call i32 @free(i8* %196)
  %198 = load i8*, i8** @nlmeans, align 8
  %199 = call i32 @free(i8* %198)
  %200 = load i8*, i8** @nlmeans_tune, align 8
  %201 = call i32 @free(i8* %200)
  %202 = load i8*, i8** @chroma_smooth, align 8
  %203 = call i32 @free(i8* %202)
  %204 = load i8*, i8** @chroma_smooth_tune, align 8
  %205 = call i32 @free(i8* %204)
  %206 = load i8*, i8** @unsharp, align 8
  %207 = call i32 @free(i8* %206)
  %208 = load i8*, i8** @unsharp_tune, align 8
  %209 = call i32 @free(i8* %208)
  %210 = load i8*, i8** @lapsharp, align 8
  %211 = call i32 @free(i8* %210)
  %212 = load i8*, i8** @lapsharp_tune, align 8
  %213 = call i32 @free(i8* %212)
  %214 = load i8*, i8** @preset_export_name, align 8
  %215 = call i32 @free(i8* %214)
  %216 = load i8*, i8** @preset_export_desc, align 8
  %217 = call i32 @free(i8* %216)
  %218 = load i8*, i8** @preset_export_file, align 8
  %219 = call i32 @free(i8* %218)
  %220 = load i32, i32* @stdout, align 4
  %221 = call i32 (i32, i8*, ...) @fprintf(i32 %220, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %222 = load i32, i32* @stderr, align 4
  %223 = call i32 (i32, i8*, ...) @fprintf(i32 %222, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %224 = load i32, i32* @done_error, align 4
  ret i32 %224
}

declare dso_local i32 @hb_global_init(...) #1

declare dso_local i32 @hb_presets_builtin_update(...) #1

declare dso_local i32 @hb_presets_cli_default_init(...) #1

declare dso_local i32* @hb_init(i32) #1

declare dso_local i32 @test_tty(...) #1

declare dso_local i32 @get_argv_utf8(i32*, i8***) #1

declare dso_local i64 @ParseOptions(i32, i8**) #1

declare dso_local i64 @CheckOptions(i32, i8**) #1

declare dso_local i32 @hb_log_level_set(i32*, i32) #1

declare dso_local i32 @hb_register_error_handler(i32*) #1

declare dso_local i32 @hb_dvd_set_dvdnav(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @hb_get_cpu_count(...) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @hb_system_sleep_prevent(i32*) #1

declare dso_local i32 @RunQueue(i32*, i32*) #1

declare dso_local i32* @PreparePreset(i8*) #1

declare dso_local i32 @hb_dict_set(i32*, i8*, i32) #1

declare dso_local i32 @hb_value_string(i8*) #1

declare dso_local i32 @hb_presets_write_json(i32*, i8*) #1

declare dso_local i8* @hb_presets_package_json(i32*) #1

declare dso_local i32 @hb_value_free(i32**) #1

declare dso_local i32 @hb_scan(i32*, i8*, i64, i32, i32, i64) #1

declare dso_local i32 @EventLoop(i32*, i32*) #1

declare dso_local i32 @hb_close(i32**) #1

declare dso_local i32 @hb_global_close(...) #1

declare dso_local i32 @hb_str_vfree(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
