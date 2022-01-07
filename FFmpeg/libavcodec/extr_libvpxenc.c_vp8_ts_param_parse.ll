; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libvpxenc.c_vp8_ts_param_parse.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libvpxenc.c_vp8_ts_param_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpx_codec_enc_cfg = type { i32, i8*, i32, i32, i8* }

@.str = private unnamed_addr constant [17 x i8] c"ts_number_layers\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"ts_target_bitrate\00", align 1
@VPX_TS_MAX_LAYERS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"ts_rate_decimator\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"ts_periodicity\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"ts_layer_id\00", align 1
@VPX_TS_MAX_PERIODICITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpx_codec_enc_cfg*, i8*, i8*)* @vp8_ts_param_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp8_ts_param_parse(%struct.vpx_codec_enc_cfg* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vpx_codec_enc_cfg*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.vpx_codec_enc_cfg* %0, %struct.vpx_codec_enc_cfg** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = call i64 @strlen(i8* %9)
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %73

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load i8*, i8** %7, align 8
  %20 = call i8* @strtoul(i8* %19, i8** %7, i32 10)
  %21 = load %struct.vpx_codec_enc_cfg*, %struct.vpx_codec_enc_cfg** %5, align 8
  %22 = getelementptr inbounds %struct.vpx_codec_enc_cfg, %struct.vpx_codec_enc_cfg* %21, i32 0, i32 4
  store i8* %20, i8** %22, align 8
  br label %72

23:                                               ; preds = %14
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = load %struct.vpx_codec_enc_cfg*, %struct.vpx_codec_enc_cfg** %5, align 8
  %29 = getelementptr inbounds %struct.vpx_codec_enc_cfg, %struct.vpx_codec_enc_cfg* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i32, i32* @VPX_TS_MAX_LAYERS, align 4
  %34 = call i32 @vp8_ts_parse_int_array(i32 %30, i8* %31, i64 %32, i32 %33)
  br label %71

35:                                               ; preds = %23
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %35
  %40 = load %struct.vpx_codec_enc_cfg*, %struct.vpx_codec_enc_cfg** %5, align 8
  %41 = getelementptr inbounds %struct.vpx_codec_enc_cfg, %struct.vpx_codec_enc_cfg* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i32, i32* @VPX_TS_MAX_LAYERS, align 4
  %46 = call i32 @vp8_ts_parse_int_array(i32 %42, i8* %43, i64 %44, i32 %45)
  br label %70

47:                                               ; preds = %35
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = load i8*, i8** %7, align 8
  %53 = call i8* @strtoul(i8* %52, i8** %7, i32 10)
  %54 = load %struct.vpx_codec_enc_cfg*, %struct.vpx_codec_enc_cfg** %5, align 8
  %55 = getelementptr inbounds %struct.vpx_codec_enc_cfg, %struct.vpx_codec_enc_cfg* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  br label %69

56:                                               ; preds = %47
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %56
  %61 = load %struct.vpx_codec_enc_cfg*, %struct.vpx_codec_enc_cfg** %5, align 8
  %62 = getelementptr inbounds %struct.vpx_codec_enc_cfg, %struct.vpx_codec_enc_cfg* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load i32, i32* @VPX_TS_MAX_PERIODICITY, align 4
  %67 = call i32 @vp8_ts_parse_int_array(i32 %63, i8* %64, i64 %65, i32 %66)
  br label %68

68:                                               ; preds = %60, %56
  br label %69

69:                                               ; preds = %68, %51
  br label %70

70:                                               ; preds = %69, %39
  br label %71

71:                                               ; preds = %70, %27
  br label %72

72:                                               ; preds = %71, %18
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %13
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @vp8_ts_parse_int_array(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
