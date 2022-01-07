; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_stldec.c_stl_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_stldec.c_stl_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_15__ = type { i64, i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_SUBTITLE = common dso_local global i32 0, align 4
@AV_CODEC_ID_STL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @stl_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stl_read_header(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca [4096 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %4, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %17 = call %struct.TYPE_14__* @avformat_new_stream(%struct.TYPE_16__* %16, i32* null)
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %5, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %19 = icmp ne %struct.TYPE_14__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = call i32 @AVERROR(i32 %21)
  store i32 %22, i32* %2, align 4
  br label %93

23:                                               ; preds = %1
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %25 = call i32 @avpriv_set_pts_info(%struct.TYPE_14__* %24, i32 64, i32 1, i32 100)
  %26 = load i32, i32* @AVMEDIA_TYPE_SUBTITLE, align 4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  store i32 %26, i32* %30, align 4
  %31 = load i32, i32* @AV_CODEC_ID_STL, align 4
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 4
  br label %36

36:                                               ; preds = %87, %23
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @avio_feof(i32 %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br i1 %42, label %43, label %88

43:                                               ; preds = %36
  %44 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  store i8* %44, i8** %7, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @avio_tell(i32 %47)
  store i64 %48, i64* %8, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %53 = call i32 @ff_get_line(i32 %51, i8* %52, i32 4096)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %43
  br label %88

57:                                               ; preds = %43
  %58 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %59 = call i64 @strcspn(i8* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %60 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 %59
  store i8 0, i8* %60, align 1
  %61 = call i64 @get_pts(i8** %7, i32* %11)
  store i64 %61, i64* %10, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %87

65:                                               ; preds = %57
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i8*, i8** %7, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @strlen(i8* %69)
  %71 = call %struct.TYPE_15__* @ff_subtitles_queue_insert(i32* %67, i8* %68, i32 %70, i32 0)
  store %struct.TYPE_15__* %71, %struct.TYPE_15__** %12, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %73 = icmp ne %struct.TYPE_15__* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %65
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = call i32 @AVERROR(i32 %75)
  store i32 %76, i32* %2, align 4
  br label %93

77:                                               ; preds = %65
  %78 = load i64, i64* %8, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load i64, i64* %10, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 2
  store i64 %81, i64* %83, align 8
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %77, %57
  br label %36

88:                                               ; preds = %56, %36
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = call i32 @ff_subtitles_queue_finalize(%struct.TYPE_16__* %89, i32* %91)
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %88, %74, %20
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.TYPE_14__* @avformat_new_stream(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @avio_feof(i32) #1

declare dso_local i64 @avio_tell(i32) #1

declare dso_local i32 @ff_get_line(i32, i8*, i32) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i64 @get_pts(i8**, i32*) #1

declare dso_local %struct.TYPE_15__* @ff_subtitles_queue_insert(i32*, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ff_subtitles_queue_finalize(%struct.TYPE_16__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
