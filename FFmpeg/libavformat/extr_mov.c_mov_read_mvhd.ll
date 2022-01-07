; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_mvhd.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_mvhd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8***, i8*, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Invalid mvhd time scale %d, defaulting to 1\0A\00", align 1
@AV_LOG_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"time scale = %i\0A\00", align 1
@AV_TIME_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32)* @mov_read_mvhd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_read_mvhd(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @avio_r8(i32* %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @avio_rb24(i32* %12)
  %14 = load i32, i32* %9, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = call i8* @avio_rb64(i32* %17)
  store i8* %18, i8** %8, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i8* @avio_rb64(i32* %19)
  br label %26

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = call i8* @avio_rb32(i32* %22)
  store i8* %23, i8** %8, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i8* @avio_rb32(i32* %24)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i8*, i8** %8, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = call i32 @mov_metadata_creation_time(i32* %30, i8* %31, %struct.TYPE_6__* %34)
  %36 = load i32*, i32** %5, align 8
  %37 = call i8* @avio_rb32(i32* %36)
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %26
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = load i32, i32* @AV_LOG_ERROR, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @av_log(%struct.TYPE_6__* %48, i32 %49, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  br label %56

56:                                               ; preds = %45, %26
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = load i32, i32* @AV_LOG_TRACE, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @av_log(%struct.TYPE_6__* %59, i32 %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = load i32*, i32** %5, align 8
  %69 = call i8* @avio_rb64(i32* %68)
  br label %73

70:                                               ; preds = %56
  %71 = load i32*, i32** %5, align 8
  %72 = call i8* @avio_rb32(i32* %71)
  br label %73

73:                                               ; preds = %70, %67
  %74 = phi i8* [ %69, %67 ], [ %72, %70 ]
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %99

81:                                               ; preds = %73
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %99, label %86

86:                                               ; preds = %81
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  %90 = load i32, i32* @AV_TIME_BASE, align 4
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @av_rescale(i8* %89, i32 %90, i32 %93)
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 3
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  store i32 %94, i32* %98, align 4
  br label %99

99:                                               ; preds = %86, %81, %73
  %100 = load i32*, i32** %5, align 8
  %101 = call i8* @avio_rb32(i32* %100)
  %102 = load i32*, i32** %5, align 8
  %103 = call i32 @avio_rb16(i32* %102)
  %104 = load i32*, i32** %5, align 8
  %105 = call i32 @avio_skip(i32* %104, i32 10)
  store i32 0, i32* %7, align 4
  br label %106

106:                                              ; preds = %140, %99
  %107 = load i32, i32* %7, align 4
  %108 = icmp slt i32 %107, 3
  br i1 %108, label %109, label %143

109:                                              ; preds = %106
  %110 = load i32*, i32** %5, align 8
  %111 = call i8* @avio_rb32(i32* %110)
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load i8***, i8**** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8**, i8*** %114, i64 %116
  %118 = load i8**, i8*** %117, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i64 0
  store i8* %111, i8** %119, align 8
  %120 = load i32*, i32** %5, align 8
  %121 = call i8* @avio_rb32(i32* %120)
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = load i8***, i8**** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8**, i8*** %124, i64 %126
  %128 = load i8**, i8*** %127, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i64 1
  store i8* %121, i8** %129, align 8
  %130 = load i32*, i32** %5, align 8
  %131 = call i8* @avio_rb32(i32* %130)
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = load i8***, i8**** %133, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8**, i8*** %134, i64 %136
  %138 = load i8**, i8*** %137, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i64 2
  store i8* %131, i8** %139, align 8
  br label %140

140:                                              ; preds = %109
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %7, align 4
  br label %106

143:                                              ; preds = %106
  %144 = load i32*, i32** %5, align 8
  %145 = call i8* @avio_rb32(i32* %144)
  %146 = load i32*, i32** %5, align 8
  %147 = call i8* @avio_rb32(i32* %146)
  %148 = load i32*, i32** %5, align 8
  %149 = call i8* @avio_rb32(i32* %148)
  %150 = load i32*, i32** %5, align 8
  %151 = call i8* @avio_rb32(i32* %150)
  %152 = load i32*, i32** %5, align 8
  %153 = call i8* @avio_rb32(i32* %152)
  %154 = load i32*, i32** %5, align 8
  %155 = call i8* @avio_rb32(i32* %154)
  %156 = load i32*, i32** %5, align 8
  %157 = call i8* @avio_rb32(i32* %156)
  ret i32 0
}

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i32 @avio_rb24(i32*) #1

declare dso_local i8* @avio_rb64(i32*) #1

declare dso_local i8* @avio_rb32(i32*) #1

declare dso_local i32 @mov_metadata_creation_time(i32*, i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*, i32) #1

declare dso_local i32 @av_rescale(i8*, i32, i32) #1

declare dso_local i32 @avio_rb16(i32*) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
