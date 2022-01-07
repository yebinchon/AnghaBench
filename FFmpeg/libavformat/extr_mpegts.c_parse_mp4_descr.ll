; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegts.c_parse_mp4_descr.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegts.c_parse_mp4_descr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Tag %x length violation new length %d bytes remaining %d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@MAX_LEVEL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Maximum MP4 descriptor level exceeded\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Found tag %x expected %x\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i64, i32, i32)* @parse_mp4_descr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_mp4_descr(%struct.TYPE_8__* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = call i32 @ff_mp4_read_descr(i32 %15, i32* %17, i32* %10)
  store i32 %18, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = call i32 @update_offsets(i32* %20, i64* %7, i32* %8)
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %11, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %28, %24, %4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @AV_LOG_ERROR, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 (i32, i32, i8*, ...) @av_log(i32 %34, i32 %35, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %40, i32* %5, align 4
  br label %114

41:                                               ; preds = %28
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = sext i32 %44 to i64
  %47 = load i64, i64* @MAX_LEVEL, align 8
  %48 = icmp sge i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %41
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @AV_LOG_ERROR, align 4
  %54 = call i32 (i32, i32, i8*, ...) @av_log(i32 %52, i32 %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %55, i32* %12, align 4
  br label %100

56:                                               ; preds = %41
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @AV_LOG_ERROR, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 (i32, i32, i8*, ...) @av_log(i32 %66, i32 %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 %69)
  %71 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %71, i32* %12, align 4
  br label %100

72:                                               ; preds = %59, %56
  %73 = load i32, i32* %10, align 4
  switch i32 %73, label %99 [
    i32 130, label %74
    i32 129, label %79
    i32 131, label %84
    i32 132, label %89
    i32 128, label %94
  ]

74:                                               ; preds = %72
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %76 = load i64, i64* %7, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @parse_MP4IODescrTag(%struct.TYPE_8__* %75, i64 %76, i32 %77)
  store i32 %78, i32* %12, align 4
  br label %99

79:                                               ; preds = %72
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %81 = load i64, i64* %7, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @parse_MP4ODescrTag(%struct.TYPE_8__* %80, i64 %81, i32 %82)
  store i32 %83, i32* %12, align 4
  br label %99

84:                                               ; preds = %72
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %86 = load i64, i64* %7, align 8
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @parse_MP4ESDescrTag(%struct.TYPE_8__* %85, i64 %86, i32 %87)
  store i32 %88, i32* %12, align 4
  br label %99

89:                                               ; preds = %72
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %91 = load i64, i64* %7, align 8
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @parse_MP4DecConfigDescrTag(%struct.TYPE_8__* %90, i64 %91, i32 %92)
  store i32 %93, i32* %12, align 4
  br label %99

94:                                               ; preds = %72
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %96 = load i64, i64* %7, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @parse_MP4SLDescrTag(%struct.TYPE_8__* %95, i64 %96, i32 %97)
  store i32 %98, i32* %12, align 4
  br label %99

99:                                               ; preds = %72, %94, %89, %84, %79, %74
  br label %100

100:                                              ; preds = %99, %63, %49
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %102, align 4
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i64, i64* %7, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %107, %109
  %111 = load i32, i32* @SEEK_SET, align 4
  %112 = call i32 @avio_seek(i32* %106, i64 %110, i32 %111)
  %113 = load i32, i32* %12, align 4
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %100, %31
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @ff_mp4_read_descr(i32, i32*, i32*) #1

declare dso_local i32 @update_offsets(i32*, i64*, i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i32 @parse_MP4IODescrTag(%struct.TYPE_8__*, i64, i32) #1

declare dso_local i32 @parse_MP4ODescrTag(%struct.TYPE_8__*, i64, i32) #1

declare dso_local i32 @parse_MP4ESDescrTag(%struct.TYPE_8__*, i64, i32) #1

declare dso_local i32 @parse_MP4DecConfigDescrTag(%struct.TYPE_8__*, i64, i32) #1

declare dso_local i32 @parse_MP4SLDescrTag(%struct.TYPE_8__*, i64, i32) #1

declare dso_local i32 @avio_seek(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
