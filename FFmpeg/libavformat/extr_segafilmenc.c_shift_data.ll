; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_segafilmenc.c_shift_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_segafilmenc.c_shift_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i32**, i32, i32, i32*)*, i32*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AVIO_FLAG_READ = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Unable to re-open %s output file to write the header\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@READ_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @shift_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shift_data(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca [2 x i32*], align 16
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @avio_tell(i32* %17)
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* %5, align 4
  %20 = mul nsw i32 %19, 2
  %21 = call i32* @av_malloc(i32 %20)
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = call i32 @AVERROR(i32 %25)
  store i32 %26, i32* %3, align 4
  br label %134

27:                                               ; preds = %2
  %28 = load i32*, i32** %9, align 8
  %29 = getelementptr inbounds [2 x i32*], [2 x i32*]* %10, i64 0, i64 0
  store i32* %28, i32** %29, align 16
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = getelementptr inbounds [2 x i32*], [2 x i32*]* %10, i64 0, i64 1
  store i32* %33, i32** %34, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @avio_flush(i32* %37)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32 (%struct.TYPE_6__*, i32**, i32, i32, i32*)*, i32 (%struct.TYPE_6__*, i32**, i32, i32, i32*)** %40, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @AVIO_FLAG_READ, align 4
  %47 = call i32 %41(%struct.TYPE_6__* %42, i32** %13, i32 %45, i32 %46, i32* null)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %27
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = load i32, i32* @AV_LOG_ERROR, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @av_log(%struct.TYPE_6__* %51, i32 %52, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @av_free(i32* %57)
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %134

60:                                               ; preds = %27
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @avio_tell(i32* %63)
  store i32 %64, i32* %8, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @SEEK_SET, align 4
  %70 = call i32 @avio_seek(i32* %67, i32 %68, i32 %69)
  %71 = load i32*, i32** %13, align 8
  %72 = load i32, i32* @SEEK_SET, align 4
  %73 = call i32 @avio_seek(i32* %71, i32 0, i32 %72)
  %74 = load i32*, i32** %13, align 8
  %75 = call i32 @avio_tell(i32* %74)
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %60
  %77 = load i32*, i32** %13, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [2 x i32*], [2 x i32*]* %10, i64 0, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = call i32 (i32*, i32*, i32, ...) bitcast (i32 (...)* @avio_read to i32 (i32*, i32*, i32, ...)*)(i32* %77, i32* %81, i32 %82)
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %85
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* %11, align 4
  %88 = xor i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %76
  br label %90

90:                                               ; preds = %125, %89
  br label %91

91:                                               ; preds = %90
  %92 = load i32*, i32** %13, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [2 x i32*], [2 x i32*]* %10, i64 0, i64 %94
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = call i32 (i32*, i32*, i32, ...) bitcast (i32 (...)* @avio_read to i32 (i32*, i32*, i32, ...)*)(i32* %92, i32* %96, i32 %97)
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %100
  store i32 %98, i32* %101, align 4
  %102 = load i32, i32* %11, align 4
  %103 = xor i32 %102, 1
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %91
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  %110 = icmp sle i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %129

112:                                              ; preds = %104
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [2 x i32*], [2 x i32*]* %10, i64 0, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @avio_write(i32* %115, i32* %119, i32 %120)
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %112
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %90, label %129

129:                                              ; preds = %125, %111
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %131 = call i32 @ff_format_io_close(%struct.TYPE_6__* %130, i32** %13)
  %132 = load i32*, i32** %9, align 8
  %133 = call i32 @av_free(i32* %132)
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %129, %50, %24
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32* @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_flush(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*, i32) #1

declare dso_local i32 @av_free(i32*) #1

declare dso_local i32 @avio_seek(i32*, i32, i32) #1

declare dso_local i32 @avio_read(...) #1

declare dso_local i32 @avio_write(i32*, i32*, i32) #1

declare dso_local i32 @ff_format_io_close(%struct.TYPE_6__*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
