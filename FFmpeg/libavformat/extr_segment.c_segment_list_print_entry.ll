; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_segment.c_segment_list_print_entry.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_segment.c_segment_list_print_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c",%f,%f\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"#EXTINF:%f,\0A%s\0A\00", align 1
@AV_ESCAPE_MODE_AUTO = common dso_local global i32 0, align 4
@AV_ESCAPE_FLAG_WHITESPACE = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Error writing list entry '%s' in list file\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"file %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Invalid list type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_3__*, i8*)* @segment_list_print_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @segment_list_print_entry(i32* %0, i32 %1, %struct.TYPE_3__* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %67 [
    i32 129, label %11
    i32 132, label %17
    i32 131, label %17
    i32 128, label %32
    i32 130, label %46
  ]

11:                                               ; preds = %4
  %12 = load i32*, i32** %5, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 (i32*, i8*, i8*, ...) @avio_printf(i32* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %15)
  br label %69

17:                                               ; preds = %4, %4
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @print_csv_escaped_str(i32* %18, i8* %21)
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = call i32 (i32*, i8*, i8*, ...) @avio_printf(i32* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %27, i64 %30)
  br label %69

32:                                               ; preds = %4
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %36, %39
  %41 = inttoptr i64 %40 to i8*
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (i32*, i8*, i8*, ...) @avio_printf(i32* %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %41, i8* %44)
  br label %69

46:                                               ; preds = %4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* @AV_ESCAPE_MODE_AUTO, align 4
  %51 = load i32, i32* @AV_ESCAPE_FLAG_WHITESPACE, align 4
  %52 = call i32 @av_escape(i8** %9, i8* %49, i32* null, i32 %50, i32 %51)
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %46
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* @AV_LOG_WARNING, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @av_log(i8* %55, i32 %56, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i8* %59)
  br label %69

61:                                               ; preds = %46
  %62 = load i32*, i32** %5, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 (i32*, i8*, i8*, ...) @avio_printf(i32* %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %63)
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 @av_free(i8* %65)
  br label %69

67:                                               ; preds = %4
  %68 = call i32 @av_assert0(i32 0)
  br label %69

69:                                               ; preds = %54, %67, %61, %32, %17, %11
  ret void
}

declare dso_local i32 @avio_printf(i32*, i8*, i8*, ...) #1

declare dso_local i32 @print_csv_escaped_str(i32*, i8*) #1

declare dso_local i32 @av_escape(i8**, i8*, i32*, i32, i32) #1

declare dso_local i32 @av_log(i8*, i32, i8*, i8*) #1

declare dso_local i32 @av_free(i8*) #1

declare dso_local i32 @av_assert0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
