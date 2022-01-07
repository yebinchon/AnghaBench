; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qsvdec.c_qsv_decode_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qsvdec.c_qsv_decode_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i32, i64, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i64, i64, i32, i32 }

@AV_FIELD_PROGRESSIVE = common dso_local global i64 0, align 8
@MFX_BITSTREAM_COMPLETE_FRAME = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@MFX_ERR_MORE_DATA = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Error decoding stream header\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_20__*, %struct.TYPE_21__*, i32, %struct.TYPE_18__*)* @qsv_decode_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qsv_decode_header(%struct.TYPE_22__* %0, %struct.TYPE_20__* %1, %struct.TYPE_21__* %2, i32 %3, %struct.TYPE_18__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_19__, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %7, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %8, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_18__* %4, %struct.TYPE_18__** %11, align 8
  %14 = bitcast %struct.TYPE_19__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 32, i1 false)
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %5
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 4
  store i32 %22, i32* %23, align 8
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 2
  store i64 %26, i64* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 3
  store i64 %29, i64* %30, align 8
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @AV_FIELD_PROGRESSIVE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %19
  %41 = load i32, i32* @MFX_BITSTREAM_COMPLETE_FRAME, align 4
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %41
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %40, %19
  br label %48

46:                                               ; preds = %5
  %47 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %47, i32* %6, align 4
  br label %97

48:                                               ; preds = %45
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %48
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %58 = call i32 @qsv_decode_preinit(%struct.TYPE_22__* %54, %struct.TYPE_20__* %55, i32 %56, %struct.TYPE_18__* %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %6, align 4
  br label %97

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %48
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @ff_qsv_codec_id_to_mfx(i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %6, align 4
  br label %97

73:                                               ; preds = %64
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 4
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %82 = call i32 @MFXVideoDECODE_DecodeHeader(i32 %80, %struct.TYPE_19__* %13, %struct.TYPE_18__* %81)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* @MFX_ERR_MORE_DATA, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %73
  %87 = load i32, i32* @EAGAIN, align 4
  %88 = call i32 @AVERROR(i32 %87)
  store i32 %88, i32* %6, align 4
  br label %97

89:                                               ; preds = %73
  %90 = load i32, i32* %12, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @ff_qsv_print_error(%struct.TYPE_22__* %93, i32 %94, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 %95, i32* %6, align 4
  br label %97

96:                                               ; preds = %89
  store i32 0, i32* %6, align 4
  br label %97

97:                                               ; preds = %96, %92, %86, %71, %61, %46
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @qsv_decode_preinit(%struct.TYPE_22__*, %struct.TYPE_20__*, i32, %struct.TYPE_18__*) #2

declare dso_local i32 @ff_qsv_codec_id_to_mfx(i32) #2

declare dso_local i32 @MFXVideoDECODE_DecodeHeader(i32, %struct.TYPE_19__*, %struct.TYPE_18__*) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @ff_qsv_print_error(%struct.TYPE_22__*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
