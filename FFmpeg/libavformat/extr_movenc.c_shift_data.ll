; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_shift_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_shift_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (%struct.TYPE_10__*, i32**, i32, i32, i32*)*, i32*, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64 }

@FF_MOV_FLAG_FRAGMENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVIO_FLAG_READ = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Unable to re-open %s output file for the second pass (faststart)\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@READ_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @shift_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shift_data(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [2 x i32*], align 16
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 0, i32* %4, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %6, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = call i64 @avio_tell(i32* %20)
  store i64 %21, i64* %8, align 8
  store i32 0, i32* %11, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @FF_MOV_FLAG_FRAGMENT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = call i32 @compute_sidx_size(%struct.TYPE_10__* %29)
  store i32 %30, i32* %5, align 4
  br label %34

31:                                               ; preds = %1
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = call i32 @compute_moov_size(%struct.TYPE_10__* %32)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %163

39:                                               ; preds = %34
  %40 = load i32, i32* %5, align 4
  %41 = mul nsw i32 %40, 2
  %42 = call i32* @av_malloc(i32 %41)
  store i32* %42, i32** %9, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = call i32 @AVERROR(i32 %46)
  store i32 %47, i32* %2, align 4
  br label %163

48:                                               ; preds = %39
  %49 = load i32*, i32** %9, align 8
  %50 = getelementptr inbounds [2 x i32*], [2 x i32*]* %10, i64 0, i64 0
  store i32* %49, i32** %50, align 16
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = getelementptr inbounds [2 x i32*], [2 x i32*]* %10, i64 0, i64 1
  store i32* %54, i32** %55, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @avio_flush(i32* %58)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32 (%struct.TYPE_10__*, i32**, i32, i32, i32*)*, i32 (%struct.TYPE_10__*, i32**, i32, i32, i32*)** %61, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @AVIO_FLAG_READ, align 4
  %68 = call i32 %62(%struct.TYPE_10__* %63, i32** %13, i32 %66, i32 %67, i32* null)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %48
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %73 = load i32, i32* @AV_LOG_ERROR, align 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @av_log(%struct.TYPE_10__* %72, i32 %73, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %76)
  br label %159

78:                                               ; preds = %48
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = call i64 @avio_tell(i32* %81)
  store i64 %82, i64* %8, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %88, %90
  %92 = load i32, i32* @SEEK_SET, align 4
  %93 = call i32 @avio_seek(i32* %85, i64 %91, i32 %92)
  %94 = load i32*, i32** %13, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* @SEEK_SET, align 4
  %99 = call i32 @avio_seek(i32* %94, i64 %97, i32 %98)
  %100 = load i32*, i32** %13, align 8
  %101 = call i64 @avio_tell(i32* %100)
  store i64 %101, i64* %7, align 8
  br label %102

102:                                              ; preds = %78
  %103 = load i32*, i32** %13, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [2 x i32*], [2 x i32*]* %10, i64 0, i64 %105
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = call i32 (i32*, i32*, i32, ...) bitcast (i32 (...)* @avio_read to i32 (i32*, i32*, i32, ...)*)(i32* %103, i32* %107, i32 %108)
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %111
  store i32 %109, i32* %112, align 4
  %113 = load i32, i32* %11, align 4
  %114 = xor i32 %113, 1
  store i32 %114, i32* %11, align 4
  br label %115

115:                                              ; preds = %102
  br label %116

116:                                              ; preds = %152, %115
  br label %117

117:                                              ; preds = %116
  %118 = load i32*, i32** %13, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [2 x i32*], [2 x i32*]* %10, i64 0, i64 %120
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %5, align 4
  %124 = call i32 (i32*, i32*, i32, ...) bitcast (i32 (...)* @avio_read to i32 (i32*, i32*, i32, ...)*)(i32* %118, i32* %122, i32 %123)
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %126
  store i32 %124, i32* %127, align 4
  %128 = load i32, i32* %11, align 4
  %129 = xor i32 %128, 1
  store i32 %129, i32* %11, align 4
  br label %130

130:                                              ; preds = %117
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %132
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %14, align 4
  %135 = load i32, i32* %14, align 4
  %136 = icmp sle i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  br label %156

138:                                              ; preds = %130
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [2 x i32*], [2 x i32*]* %10, i64 0, i64 %143
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %14, align 4
  %147 = call i32 @avio_write(i32* %141, i32* %145, i32 %146)
  %148 = load i32, i32* %14, align 4
  %149 = sext i32 %148 to i64
  %150 = load i64, i64* %7, align 8
  %151 = add nsw i64 %150, %149
  store i64 %151, i64* %7, align 8
  br label %152

152:                                              ; preds = %138
  %153 = load i64, i64* %7, align 8
  %154 = load i64, i64* %8, align 8
  %155 = icmp slt i64 %153, %154
  br i1 %155, label %116, label %156

156:                                              ; preds = %152, %137
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %158 = call i32 @ff_format_io_close(%struct.TYPE_10__* %157, i32** %13)
  br label %159

159:                                              ; preds = %156, %71
  %160 = load i32*, i32** %9, align 8
  %161 = call i32 @av_free(i32* %160)
  %162 = load i32, i32* %4, align 4
  store i32 %162, i32* %2, align 4
  br label %163

163:                                              ; preds = %159, %45, %37
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local i64 @avio_tell(i32*) #1

declare dso_local i32 @compute_sidx_size(%struct.TYPE_10__*) #1

declare dso_local i32 @compute_moov_size(%struct.TYPE_10__*) #1

declare dso_local i32* @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_flush(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*, i32) #1

declare dso_local i32 @avio_seek(i32*, i64, i32) #1

declare dso_local i32 @avio_read(...) #1

declare dso_local i32 @avio_write(i32*, i32*, i32) #1

declare dso_local i32 @ff_format_io_close(%struct.TYPE_10__*, i32**) #1

declare dso_local i32 @av_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
