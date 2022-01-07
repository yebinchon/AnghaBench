; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_validate_video.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_validate_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"FileFormat\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"VideoEncoder\00", align 1
@HB_MUX_MASK_MP4 = common dso_local global i32 0, align 4
@HB_VCODEC_THEORA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [151 x i8] c"Theora is not supported in the MP4 container.\0A\0AYou should choose a different video codec or container.\0AIf you continue, FFMPEG will be chosen for you.\00", align 1
@TRUE = common dso_local global i64 0, align 8
@HB_MUX_MASK_WEBM = common dso_local global i32 0, align 4
@HB_VCODEC_FFMPEG_VP8 = common dso_local global i64 0, align 8
@HB_VCODEC_FFMPEG_VP9 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [154 x i8] c"Only VP8 or VP9 is supported in the WebM container.\0A\0AYou should choose a different video codec or container.\0AIf you continue, one will be chosen for you.\00", align 1
@GTK_MESSAGE_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"Cancel\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Continue\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ghb_validate_video(i32* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i8* @ghb_dict_get_string(i32* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call %struct.TYPE_3__* @ghb_lookup_container_by_name(i8* %13)
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %9, align 8
  %15 = load i64, i64* @FALSE, align 8
  store i64 %15, i64* %10, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @ghb_settings_video_encoder_codec(i32* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i64 %17, i64* %6, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @HB_MUX_MASK_MP4, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @HB_VCODEC_THEORA, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = call i32 @_(i8* getelementptr inbounds ([151 x i8], [151 x i8]* @.str.2, i64 0, i64 0))
  %30 = call i32* @g_strdup_printf(i32 %29)
  store i32* %30, i32** %7, align 8
  %31 = load i64, i64* @TRUE, align 8
  store i64 %31, i64* %10, align 8
  br label %52

32:                                               ; preds = %24, %2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @HB_MUX_MASK_WEBM, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %32
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @HB_VCODEC_FFMPEG_VP8, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @HB_VCODEC_FFMPEG_VP9, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = call i32 @_(i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str.3, i64 0, i64 0))
  %49 = call i32* @g_strdup_printf(i32 %48)
  store i32* %49, i32** %7, align 8
  %50 = load i64, i64* @TRUE, align 8
  store i64 %50, i64* %10, align 8
  br label %51

51:                                               ; preds = %47, %43, %39, %32
  br label %52

52:                                               ; preds = %51, %28
  %53 = load i64, i64* %10, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %78

55:                                               ; preds = %52
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* @GTK_MESSAGE_WARNING, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %60 = call i32 @_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %61 = call i32 @ghb_message_dialog(i32* %56, i32 %57, i32* %58, i32 %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %55
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @g_free(i32* %64)
  %66 = load i64, i64* @FALSE, align 8
  store i64 %66, i64* %3, align 8
  br label %80

67:                                               ; preds = %55
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @g_free(i32* %68)
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @hb_video_encoder_get_default(i32 %72)
  store i64 %73, i64* %6, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @hb_video_encoder_get_short_name(i64 %75)
  %77 = call i32 @ghb_dict_set_string(i32* %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %67, %52
  %79 = load i64, i64* @TRUE, align 8
  store i64 %79, i64* %3, align 8
  br label %80

80:                                               ; preds = %78, %63
  %81 = load i64, i64* %3, align 8
  ret i64 %81
}

declare dso_local i8* @ghb_dict_get_string(i32*, i8*) #1

declare dso_local %struct.TYPE_3__* @ghb_lookup_container_by_name(i8*) #1

declare dso_local i64 @ghb_settings_video_encoder_codec(i32*, i8*) #1

declare dso_local i32* @g_strdup_printf(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @ghb_message_dialog(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i64 @hb_video_encoder_get_default(i32) #1

declare dso_local i32 @ghb_dict_set_string(i32*, i8*, i32) #1

declare dso_local i32 @hb_video_encoder_get_short_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
