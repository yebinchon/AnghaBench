; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_hb_preset_job_add_audio.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_hb_preset_job_add_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Invalid title index (%d)\00", align 1
@HB_MUX_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"Audio\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"CopyMask\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"AudioEncoderFallback\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"FallbackEncoder\00", align 1
@HB_VALUE_TYPE_STRING = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"Invalid fallback audio codec (%s)\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"AudioList\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"AudioTrackSelectionBehavior\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"AudioLanguageList\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"AudioSecondaryEncoderMode\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"any\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hb_preset_job_add_audio(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call %struct.TYPE_4__* @hb_find_title_by_index(i32* %27, i32 %28)
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %10, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %31 = icmp eq %struct.TYPE_4__* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 -1, i32* %5, align 4
  br label %178

35:                                               ; preds = %4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @hb_list_count(i32 %38)
  %40 = icmp sle i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %178

42:                                               ; preds = %35
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @get_job_mux(i32* %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @HB_MUX_INVALID, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 -1, i32* %5, align 4
  br label %178

49:                                               ; preds = %42
  %50 = load i32*, i32** %9, align 8
  %51 = call i32* @hb_dict_get(i32* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32* %51, i32** %12, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = call i32* (...) @hb_dict_init()
  store i32* %55, i32** %12, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = call i32 @hb_dict_set(i32* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %57)
  br label %59

59:                                               ; preds = %54, %49
  %60 = load i32*, i32** %8, align 8
  %61 = call i32* @get_audio_copy_mask(i32* %60, i32* %13)
  store i32* %61, i32** %14, align 8
  %62 = load i32*, i32** %14, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 -1, i32* %5, align 4
  br label %178

65:                                               ; preds = %59
  store i32 0, i32* %15, align 4
  %66 = load i32*, i32** %12, align 8
  %67 = load i32*, i32** %14, align 8
  %68 = call i32 @hb_dict_set(i32* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %67)
  %69 = load i32*, i32** %8, align 8
  %70 = call i32* @hb_dict_get(i32* %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32* %70, i32** %16, align 8
  %71 = load i32*, i32** %16, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %97

73:                                               ; preds = %65
  %74 = load i32*, i32** %12, align 8
  %75 = load i32*, i32** %16, align 8
  %76 = call i32* @hb_value_dup(i32* %75)
  %77 = call i32 @hb_dict_set(i32* %74, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* %76)
  %78 = load i32*, i32** %16, align 8
  %79 = call i64 @hb_value_type(i32* %78)
  %80 = load i64, i64* @HB_VALUE_TYPE_STRING, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %73
  %83 = load i32*, i32** %16, align 8
  %84 = call i8* @hb_value_get_string(i32* %83)
  store i8* %84, i8** %17, align 8
  %85 = load i8*, i8** %17, align 8
  %86 = call i32 @hb_audio_encoder_get_from_name(i8* %85)
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load i8*, i8** %17, align 8
  %91 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %90)
  store i32 -1, i32* %5, align 4
  br label %178

92:                                               ; preds = %82
  br label %96

93:                                               ; preds = %73
  %94 = load i32*, i32** %16, align 8
  %95 = call i32 @hb_value_get_int(i32* %94)
  store i32 %95, i32* %15, align 4
  br label %96

96:                                               ; preds = %93, %92
  br label %97

97:                                               ; preds = %96, %65
  %98 = load i32*, i32** %8, align 8
  %99 = call i64 @validate_audio_encoders(i32* %98)
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  store i32 -1, i32* %5, align 4
  br label %178

102:                                              ; preds = %97
  %103 = load i32*, i32** %12, align 8
  %104 = call i32* @hb_dict_get(i32* %103, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i32* %104, i32** %18, align 8
  %105 = load i32*, i32** %18, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = call i32* (...) @hb_value_array_init()
  store i32* %108, i32** %18, align 8
  %109 = load i32*, i32** %12, align 8
  %110 = load i32*, i32** %18, align 8
  %111 = call i32 @hb_dict_set(i32* %109, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32* %110)
  br label %112

112:                                              ; preds = %107, %102
  store i32 1, i32* %19, align 4
  %113 = load i32*, i32** %8, align 8
  %114 = call i32* @hb_dict_get(i32* %113, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %115 = call i8* @hb_value_get_string(i32* %114)
  store i8* %115, i8** %20, align 8
  %116 = load i8*, i8** %20, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %130

118:                                              ; preds = %112
  %119 = load i8*, i8** %20, align 8
  %120 = call i32 @strcasecmp(i8* %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %118
  store i32 0, i32* %5, align 4
  br label %178

123:                                              ; preds = %118
  %124 = load i8*, i8** %20, align 8
  %125 = call i32 @strcasecmp(i8* %124, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %123
  store i32 2, i32* %19, align 4
  br label %128

128:                                              ; preds = %127, %123
  br label %129

129:                                              ; preds = %128
  br label %130

130:                                              ; preds = %129, %112
  %131 = call i32* (...) @hb_dict_init()
  store i32* %131, i32** %21, align 8
  %132 = load i32*, i32** %8, align 8
  %133 = call i32* @hb_dict_get(i32* %132, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  store i32* %133, i32** %23, align 8
  %134 = load i32*, i32** %8, align 8
  %135 = call i32* @hb_dict_get(i32* %134, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  %136 = call i32 @hb_value_get_bool(i32* %135)
  store i32 %136, i32* %22, align 4
  %137 = load i32*, i32** %23, align 8
  %138 = call i32 @hb_value_array_len(i32* %137)
  store i32 %138, i32* %24, align 4
  store i32 0, i32* %25, align 4
  br label %139

139:                                              ; preds = %159, %130
  %140 = load i32, i32* %25, align 4
  %141 = load i32, i32* %24, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %162

143:                                              ; preds = %139
  %144 = load i32*, i32** %23, align 8
  %145 = load i32, i32* %25, align 4
  %146 = call i32* @hb_value_array_get(i32* %144, i32 %145)
  %147 = call i8* @hb_value_get_string(i32* %146)
  store i8* %147, i8** %26, align 8
  %148 = load i32*, i32** %18, align 8
  %149 = load i32*, i32** %8, align 8
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* %15, align 4
  %154 = load i8*, i8** %26, align 8
  %155 = load i32, i32* %19, align 4
  %156 = load i32, i32* %22, align 4
  %157 = load i32*, i32** %21, align 8
  %158 = call i32 @add_audio_for_lang(i32* %148, i32* %149, %struct.TYPE_4__* %150, i32 %151, i32 %152, i32 %153, i8* %154, i32 %155, i32 %156, i32* %157)
  br label %159

159:                                              ; preds = %143
  %160 = load i32, i32* %25, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %25, align 4
  br label %139

162:                                              ; preds = %139
  %163 = load i32, i32* %24, align 4
  %164 = icmp sle i32 %163, 0
  br i1 %164, label %165, label %176

165:                                              ; preds = %162
  %166 = load i32*, i32** %18, align 8
  %167 = load i32*, i32** %8, align 8
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* %13, align 4
  %171 = load i32, i32* %15, align 4
  %172 = load i32, i32* %19, align 4
  %173 = load i32, i32* %22, align 4
  %174 = load i32*, i32** %21, align 8
  %175 = call i32 @add_audio_for_lang(i32* %166, i32* %167, %struct.TYPE_4__* %168, i32 %169, i32 %170, i32 %171, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 %172, i32 %173, i32* %174)
  br label %176

176:                                              ; preds = %165, %162
  %177 = call i32 @hb_dict_free(i32** %21)
  store i32 0, i32* %5, align 4
  br label %178

178:                                              ; preds = %176, %122, %101, %89, %64, %48, %41, %32
  %179 = load i32, i32* %5, align 4
  ret i32 %179
}

declare dso_local %struct.TYPE_4__* @hb_find_title_by_index(i32*, i32) #1

declare dso_local i32 @hb_error(i8*, ...) #1

declare dso_local i64 @hb_list_count(i32) #1

declare dso_local i32 @get_job_mux(i32*) #1

declare dso_local i32* @hb_dict_get(i32*, i8*) #1

declare dso_local i32* @hb_dict_init(...) #1

declare dso_local i32 @hb_dict_set(i32*, i8*, i32*) #1

declare dso_local i32* @get_audio_copy_mask(i32*, i32*) #1

declare dso_local i32* @hb_value_dup(i32*) #1

declare dso_local i64 @hb_value_type(i32*) #1

declare dso_local i8* @hb_value_get_string(i32*) #1

declare dso_local i32 @hb_audio_encoder_get_from_name(i8*) #1

declare dso_local i32 @hb_value_get_int(i32*) #1

declare dso_local i64 @validate_audio_encoders(i32*) #1

declare dso_local i32* @hb_value_array_init(...) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @hb_value_get_bool(i32*) #1

declare dso_local i32 @hb_value_array_len(i32*) #1

declare dso_local i32* @hb_value_array_get(i32*, i32) #1

declare dso_local i32 @add_audio_for_lang(i32*, i32*, %struct.TYPE_4__*, i32, i32, i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @hb_dict_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
