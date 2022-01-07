; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_smdm.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_smdm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i8*, i8*, i8**, i8*** }
%struct.TYPE_12__ = type { i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Empty Mastering Display Metadata box\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Unsupported Mastering Display Metadata box version %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*, i32)* @mov_read_smdm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_read_smdm(%struct.TYPE_11__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  store i32 %2, i32* %11, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32* %1, i32** %7, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %19, i32* %4, align 4
  br label %147

20:                                               ; preds = %3
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %24, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %25, i64 %32
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %38, 5
  br i1 %39, label %40, label %47

40:                                               ; preds = %20
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %44 = load i32, i32* @AV_LOG_ERROR, align 4
  %45 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %43, i32 %44, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %46, i32* %4, align 4
  br label %147

47:                                               ; preds = %20
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @avio_r8(i32* %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = load i32, i32* @AV_LOG_WARNING, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %55, i32 %56, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  store i32 0, i32* %4, align 4
  br label %147

59:                                               ; preds = %47
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @avio_skip(i32* %60, i32 3)
  %62 = call %struct.TYPE_13__* (...) @av_mastering_display_metadata_alloc()
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  store %struct.TYPE_13__* %62, %struct.TYPE_13__** %64, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = icmp ne %struct.TYPE_13__* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %59
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = call i32 @AVERROR(i32 %70)
  store i32 %71, i32* %4, align 4
  br label %147

72:                                               ; preds = %59
  store i32 0, i32* %9, align 4
  br label %73

73:                                               ; preds = %103, %72
  %74 = load i32, i32* %9, align 4
  %75 = icmp slt i32 %74, 3
  br i1 %75, label %76, label %106

76:                                               ; preds = %73
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @avio_rb16(i32* %77)
  %79 = call i8* @av_make_q(i32 %78, i32 65536)
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 5
  %84 = load i8***, i8**** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8**, i8*** %84, i64 %86
  %88 = load i8**, i8*** %87, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 0
  store i8* %79, i8** %89, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @avio_rb16(i32* %90)
  %92 = call i8* @av_make_q(i32 %91, i32 65536)
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 5
  %97 = load i8***, i8**** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8**, i8*** %97, i64 %99
  %101 = load i8**, i8*** %100, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 1
  store i8* %92, i8** %102, align 8
  br label %103

103:                                              ; preds = %76
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %73

106:                                              ; preds = %73
  %107 = load i32*, i32** %7, align 8
  %108 = call i32 @avio_rb16(i32* %107)
  %109 = call i8* @av_make_q(i32 %108, i32 65536)
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 4
  %114 = load i8**, i8*** %113, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 0
  store i8* %109, i8** %115, align 8
  %116 = load i32*, i32** %7, align 8
  %117 = call i32 @avio_rb16(i32* %116)
  %118 = call i8* @av_make_q(i32 %117, i32 65536)
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 4
  %123 = load i8**, i8*** %122, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 1
  store i8* %118, i8** %124, align 8
  %125 = load i32*, i32** %7, align 8
  %126 = call i32 @avio_rb32(i32* %125)
  %127 = call i8* @av_make_q(i32 %126, i32 256)
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 3
  store i8* %127, i8** %131, align 8
  %132 = load i32*, i32** %7, align 8
  %133 = call i32 @avio_rb32(i32* %132)
  %134 = call i8* @av_make_q(i32 %133, i32 16384)
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 2
  store i8* %134, i8** %138, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  store i32 1, i32* %142, align 8
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  store i32 1, i32* %146, align 4
  store i32 0, i32* %4, align 4
  br label %147

147:                                              ; preds = %106, %69, %52, %40, %18
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*, ...) #1

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local %struct.TYPE_13__* @av_mastering_display_metadata_alloc(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @av_make_q(i32, i32) #1

declare dso_local i32 @avio_rb16(i32*) #1

declare dso_local i32 @avio_rb32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
