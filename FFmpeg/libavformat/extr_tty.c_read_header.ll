; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_tty.c_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_tty.c_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_14__*, %struct.TYPE_17__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_16__, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_16__, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AV_CODEC_ID_ANSI = common dso_local global i32 0, align 4
@AVIO_SEEKABLE_NORMAL = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*)* @read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_header(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %6 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_17__* %8, %struct.TYPE_17__** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %10 = call %struct.TYPE_18__* @avformat_new_stream(%struct.TYPE_19__* %9, i32* null)
  store %struct.TYPE_18__* %10, %struct.TYPE_18__** %5, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %12 = icmp ne %struct.TYPE_18__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = call i32 @AVERROR(i32 %14)
  store i32 %15, i32* %4, align 4
  br label %120

16:                                               ; preds = %1
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 4
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 3
  store i32 %21, i32* %25, align 4
  %26 = load i32, i32* @AV_CODEC_ID_ANSI, align 4
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 2
  store i32 %26, i32* %30, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 1
  store i32 %33, i32* %37, align 4
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 8
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @avpriv_set_pts_info(%struct.TYPE_18__* %45, i32 60, i32 %49, i32 %53)
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 2
  %59 = bitcast %struct.TYPE_16__* %56 to i8*
  %60 = bitcast %struct.TYPE_16__* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 4 %60, i64 8, i1 false)
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @av_q2d(i32 %63)
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %64, %67
  %69 = call i32 @FFMAX(i32 %68, i32 1)
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %119

80:                                               ; preds = %16
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = call i32 @avio_size(%struct.TYPE_14__* %83)
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %89, %92
  %94 = sub nsw i32 %93, 1
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = sdiv i32 %94, %97
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 1
  %104 = call i64 @ff_sauce_read(%struct.TYPE_19__* %101, i32* %103, i32 0, i32 0)
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %80
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %110, 51
  %112 = call i32 @efi_read(%struct.TYPE_19__* %107, i32 %111)
  br label %113

113:                                              ; preds = %106, %80
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %115, align 8
  %117 = load i32, i32* @SEEK_SET, align 4
  %118 = call i32 @avio_seek(%struct.TYPE_14__* %116, i32 0, i32 %117)
  br label %119

119:                                              ; preds = %113, %16
  br label %120

120:                                              ; preds = %119, %13
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local %struct.TYPE_18__* @avformat_new_stream(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_18__*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @av_q2d(i32) #1

declare dso_local i32 @avio_size(%struct.TYPE_14__*) #1

declare dso_local i64 @ff_sauce_read(%struct.TYPE_19__*, i32*, i32, i32) #1

declare dso_local i32 @efi_read(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @avio_seek(%struct.TYPE_14__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
