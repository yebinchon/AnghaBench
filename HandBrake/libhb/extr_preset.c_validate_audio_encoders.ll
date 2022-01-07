; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_validate_audio_encoders.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_validate_audio_encoders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"AudioList\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"AudioEncoder\00", align 1
@HB_VALUE_TYPE_STRING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"Invalid audio encoder (%s)\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"AudioMixdown\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Invalid audio mixdown (%s)\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"AudioSamplerate\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"same as source\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Invalid audio samplerate (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @validate_audio_encoders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_audio_encoders(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i8* @hb_dict_get(i32* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %4, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @hb_value_array_len(i32* %19)
  store i32 %20, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %125, %1
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %128

25:                                               ; preds = %21
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32* @hb_value_array_get(i32* %26, i32 %27)
  store i32* %28, i32** %7, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i8* @hb_dict_get(i32* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %31 = bitcast i8* %30 to i32*
  store i32* %31, i32** %8, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i64 @hb_value_type(i32* %32)
  %34 = load i64, i64* @HB_VALUE_TYPE_STRING, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %25
  %37 = load i32*, i32** %8, align 8
  %38 = call i8* @hb_value_get_string(i32* %37)
  %39 = call i32 @hb_audio_encoder_get_from_name(i8* %38)
  store i32 %39, i32* %9, align 4
  br label %43

40:                                               ; preds = %25
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @hb_value_get_int(i32* %41)
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %40, %36
  %44 = load i32, i32* %9, align 4
  %45 = call i32* @hb_audio_encoder_get_from_codec(i32 %44)
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i32*, i32** %8, align 8
  %49 = call i8* @hb_value_get_string_xform(i32* %48)
  store i8* %49, i8** %12, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = call i32 @hb_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %50)
  %52 = load i8*, i8** %12, align 8
  %53 = call i32 @free(i8* %52)
  store i32 -1, i32* %2, align 4
  br label %129

54:                                               ; preds = %43
  %55 = load i32*, i32** %7, align 8
  %56 = call i8* @hb_dict_get(i32* %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %57 = bitcast i8* %56 to i32*
  store i32* %57, i32** %8, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = call i64 @hb_value_type(i32* %58)
  %60 = load i64, i64* @HB_VALUE_TYPE_STRING, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %54
  %63 = load i32*, i32** %8, align 8
  %64 = call i8* @hb_value_get_string(i32* %63)
  %65 = call i32 @hb_audio_encoder_get_from_name(i8* %64)
  store i32 %65, i32* %10, align 4
  br label %69

66:                                               ; preds = %54
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @hb_value_get_int(i32* %67)
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %66, %62
  %70 = load i32, i32* %10, align 4
  %71 = call i32* @hb_mixdown_get_from_mixdown(i32 %70)
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load i32*, i32** %8, align 8
  %75 = call i8* @hb_value_get_string_xform(i32* %74)
  store i8* %75, i8** %13, align 8
  %76 = load i8*, i8** %13, align 8
  %77 = call i32 @hb_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %76)
  %78 = load i8*, i8** %13, align 8
  %79 = call i32 @free(i8* %78)
  store i32 -1, i32* %2, align 4
  br label %129

80:                                               ; preds = %69
  %81 = load i32*, i32** %7, align 8
  %82 = call i8* @hb_dict_get(i32* %81, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %83 = bitcast i8* %82 to i32*
  store i32* %83, i32** %8, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = call i64 @hb_value_type(i32* %84)
  %86 = load i64, i64* @HB_VALUE_TYPE_STRING, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %107

88:                                               ; preds = %80
  %89 = load i32*, i32** %8, align 8
  %90 = call i8* @hb_value_get_string(i32* %89)
  store i8* %90, i8** %14, align 8
  %91 = load i8*, i8** %14, align 8
  %92 = call i32 @strcasecmp(i8* %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %88
  %95 = load i8*, i8** %14, align 8
  %96 = call i32 @strcasecmp(i8* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load i8*, i8** %14, align 8
  %100 = call i32 @strcasecmp(i8* %99, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %98, %94, %88
  store i32 0, i32* %11, align 4
  br label %106

103:                                              ; preds = %98
  %104 = load i8*, i8** %14, align 8
  %105 = call i32 @hb_audio_samplerate_get_from_name(i8* %104)
  store i32 %105, i32* %11, align 4
  br label %106

106:                                              ; preds = %103, %102
  br label %110

107:                                              ; preds = %80
  %108 = load i32*, i32** %8, align 8
  %109 = call i32 @hb_value_get_int(i32* %108)
  store i32 %109, i32* %11, align 4
  br label %110

110:                                              ; preds = %107, %106
  %111 = load i32, i32* %11, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %110
  %114 = load i32, i32* %11, align 4
  %115 = call i32* @hb_audio_samplerate_get_name(i32 %114)
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %124

117:                                              ; preds = %113
  %118 = load i32*, i32** %8, align 8
  %119 = call i8* @hb_value_get_string_xform(i32* %118)
  store i8* %119, i8** %15, align 8
  %120 = load i8*, i8** %15, align 8
  %121 = call i32 @hb_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i8* %120)
  %122 = load i8*, i8** %15, align 8
  %123 = call i32 @free(i8* %122)
  store i32 -1, i32* %2, align 4
  br label %129

124:                                              ; preds = %113, %110
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %6, align 4
  br label %21

128:                                              ; preds = %21
  store i32 0, i32* %2, align 4
  br label %129

129:                                              ; preds = %128, %117, %73, %47
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i8* @hb_dict_get(i32*, i8*) #1

declare dso_local i32 @hb_value_array_len(i32*) #1

declare dso_local i32* @hb_value_array_get(i32*, i32) #1

declare dso_local i64 @hb_value_type(i32*) #1

declare dso_local i32 @hb_audio_encoder_get_from_name(i8*) #1

declare dso_local i8* @hb_value_get_string(i32*) #1

declare dso_local i32 @hb_value_get_int(i32*) #1

declare dso_local i32* @hb_audio_encoder_get_from_codec(i32) #1

declare dso_local i8* @hb_value_get_string_xform(i32*) #1

declare dso_local i32 @hb_error(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @hb_mixdown_get_from_mixdown(i32) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @hb_audio_samplerate_get_from_name(i8*) #1

declare dso_local i32* @hb_audio_samplerate_get_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
