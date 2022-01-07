; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_import_video_0_0_0.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_import_video_0_0_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"x264Preset\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"VideoPreset\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"x264Tune\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"VideoTune\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"h264Profile\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"VideoProfile\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"h264Level\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"VideoLevel\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"x264OptionExtra\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"VideoOptionExtra\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"VideoQualityType\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"VideoFrameratePFR\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"VideoFramerateMode\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"pfr\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"VideoFramerateCFR\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"cfr\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"VideoFramerateVFR\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"vfr\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"VideoEncoder\00", align 1
@HB_VCODEC_FFMPEG_MASK = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [11 x i8] c"lavcOption\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @import_video_0_0_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @import_video_0_0_0(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32* @hb_dict_get(i32* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** %3, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32*, i32** %2, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @hb_value_dup(i32* %12)
  %14 = call i32 @hb_dict_set(i32* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load i32*, i32** %2, align 8
  %17 = call i32* @hb_dict_get(i32* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32* %17, i32** %3, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i32*, i32** %2, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @hb_value_dup(i32* %21)
  %23 = call i32 @hb_dict_set(i32* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %19, %15
  %25 = load i32*, i32** %2, align 8
  %26 = call i32* @hb_dict_get(i32* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i32* %26, i32** %3, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i32*, i32** %2, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @hb_value_dup(i32* %30)
  %32 = call i32 @hb_dict_set(i32* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %28, %24
  %34 = load i32*, i32** %2, align 8
  %35 = call i32* @hb_dict_get(i32* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i32* %35, i32** %3, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32*, i32** %2, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @hb_value_dup(i32* %39)
  %41 = call i32 @hb_dict_set(i32* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %37, %33
  %43 = load i32*, i32** %2, align 8
  %44 = call i32* @hb_dict_get(i32* %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  store i32* %44, i32** %3, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32*, i32** %2, align 8
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @hb_value_dup(i32* %48)
  %50 = call i32 @hb_dict_set(i32* %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %46, %42
  %52 = load i32*, i32** %2, align 8
  %53 = call i32* @hb_dict_get(i32* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32* %53, i32** %3, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %85

55:                                               ; preds = %51
  %56 = load i32*, i32** %3, align 8
  %57 = call i8* @hb_value_get_string(i32* %56)
  store i8* %57, i8** %4, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %76

60:                                               ; preds = %55
  %61 = load i8*, i8** %4, align 8
  %62 = call i32 @strncasecmp(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 4)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %76, label %64

64:                                               ; preds = %60
  %65 = load i8*, i8** %4, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 4
  store i8* %66, i8** %4, align 8
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 44
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load i8*, i8** %4, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %4, align 8
  br label %75

75:                                               ; preds = %72, %64
  br label %76

76:                                               ; preds = %75, %60, %55
  %77 = load i8*, i8** %4, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i32*, i32** %2, align 8
  %81 = load i8*, i8** %4, align 8
  %82 = call i32 @hb_value_string(i8* %81)
  %83 = call i32 @hb_dict_set(i32* %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %79, %76
  br label %85

85:                                               ; preds = %84, %51
  %86 = load i32*, i32** %2, align 8
  %87 = call i32* @hb_dict_get(i32* %86, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %88 = call i64 @hb_value_get_int(i32* %87)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i32*, i32** %2, align 8
  %92 = call i32 @hb_value_int(i32 1)
  %93 = call i32 @hb_dict_set(i32* %91, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %90, %85
  %95 = load i32*, i32** %2, align 8
  %96 = call i32* @hb_dict_get(i32* %95, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  %97 = call i64 @hb_value_get_bool(i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load i32*, i32** %2, align 8
  %101 = call i32 @hb_value_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %102 = call i32 @hb_dict_set(i32* %100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i32 %101)
  br label %123

103:                                              ; preds = %94
  %104 = load i32*, i32** %2, align 8
  %105 = call i32* @hb_dict_get(i32* %104, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  %106 = call i64 @hb_value_get_bool(i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load i32*, i32** %2, align 8
  %110 = call i32 @hb_value_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  %111 = call i32 @hb_dict_set(i32* %109, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i32 %110)
  br label %122

112:                                              ; preds = %103
  %113 = load i32*, i32** %2, align 8
  %114 = call i32* @hb_dict_get(i32* %113, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0))
  %115 = call i64 @hb_value_get_bool(i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load i32*, i32** %2, align 8
  %119 = call i32 @hb_value_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  %120 = call i32 @hb_dict_set(i32* %118, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %117, %112
  br label %122

122:                                              ; preds = %121, %108
  br label %123

123:                                              ; preds = %122, %99
  %124 = load i32*, i32** %2, align 8
  %125 = call i32* @hb_dict_get(i32* %124, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0))
  %126 = call i8* @hb_value_get_string(i32* %125)
  store i8* %126, i8** %5, align 8
  %127 = load i8*, i8** %5, align 8
  %128 = call i32 @hb_video_encoder_get_from_name(i8* %127)
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @HB_VCODEC_FFMPEG_MASK, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %123
  %134 = load i32*, i32** %2, align 8
  %135 = call i32* @hb_dict_get(i32* %134, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  store i32* %135, i32** %3, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %142

137:                                              ; preds = %133
  %138 = load i32*, i32** %2, align 8
  %139 = load i32*, i32** %3, align 8
  %140 = call i32 @hb_value_dup(i32* %139)
  %141 = call i32 @hb_dict_set(i32* %138, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %137, %133
  br label %143

143:                                              ; preds = %142, %123
  ret void
}

declare dso_local i32* @hb_dict_get(i32*, i8*) #1

declare dso_local i32 @hb_dict_set(i32*, i8*, i32) #1

declare dso_local i32 @hb_value_dup(i32*) #1

declare dso_local i8* @hb_value_get_string(i32*) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @hb_value_string(i8*) #1

declare dso_local i64 @hb_value_get_int(i32*) #1

declare dso_local i32 @hb_value_int(i32) #1

declare dso_local i64 @hb_value_get_bool(i32*) #1

declare dso_local i32 @hb_video_encoder_get_from_name(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
