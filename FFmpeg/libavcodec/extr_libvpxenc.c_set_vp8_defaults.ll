; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libvpxenc.c_set_vp8_defaults.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libvpxenc.c_set_vp8_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.vpx_codec_enc_cfg = type { i32, i64 }

@VPX_CQ = common dso_local global i64 0, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"Bitrate not specified for constrained quality mode, using default of %dkbit/sec\0A\00", align 1
@.str.1 = private unnamed_addr constant [102 x i8] c"Neither bitrate nor constrained quality specified, using default CRF of %d and bitrate of %dkbit/sec\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.vpx_codec_enc_cfg*)* @set_vp8_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_vp8_defaults(%struct.TYPE_6__* %0, %struct.vpx_codec_enc_cfg* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.vpx_codec_enc_cfg*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.vpx_codec_enc_cfg* %1, %struct.vpx_codec_enc_cfg** %4, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %5, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @av_assert0(i32 %14)
  %16 = load %struct.vpx_codec_enc_cfg*, %struct.vpx_codec_enc_cfg** %4, align 8
  %17 = getelementptr inbounds %struct.vpx_codec_enc_cfg, %struct.vpx_codec_enc_cfg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = mul nsw i32 %18, 1000
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.vpx_codec_enc_cfg*, %struct.vpx_codec_enc_cfg** %4, align 8
  %23 = getelementptr inbounds %struct.vpx_codec_enc_cfg, %struct.vpx_codec_enc_cfg* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @VPX_CQ, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = load i32, i32* @AV_LOG_WARNING, align 4
  %30 = load %struct.vpx_codec_enc_cfg*, %struct.vpx_codec_enc_cfg** %4, align 8
  %31 = getelementptr inbounds %struct.vpx_codec_enc_cfg, %struct.vpx_codec_enc_cfg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (%struct.TYPE_6__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_6__* %28, i32 %29, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %49

34:                                               ; preds = %2
  %35 = load i64, i64* @VPX_CQ, align 8
  %36 = load %struct.vpx_codec_enc_cfg*, %struct.vpx_codec_enc_cfg** %4, align 8
  %37 = getelementptr inbounds %struct.vpx_codec_enc_cfg, %struct.vpx_codec_enc_cfg* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i32 32, i32* %39, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = load i32, i32* @AV_LOG_WARNING, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.vpx_codec_enc_cfg*, %struct.vpx_codec_enc_cfg** %4, align 8
  %46 = getelementptr inbounds %struct.vpx_codec_enc_cfg, %struct.vpx_codec_enc_cfg* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (%struct.TYPE_6__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_6__* %40, i32 %41, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %34, %27
  ret void
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
