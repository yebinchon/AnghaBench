; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_smoothstreamingenc.c_copy_moof.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_smoothstreamingenc.c_copy_moof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i32**, i8*, i32, i32*)* }

@AVIO_FLAG_READ = common dso_local global i32 0, align 4
@AVIO_FLAG_WRITE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i8*, i64)* @copy_moof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_moof(%struct.TYPE_6__* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [8192 x i32], align 16
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32 (%struct.TYPE_6__*, i32**, i8*, i32, i32*)*, i32 (%struct.TYPE_6__*, i32**, i8*, i32, i32*)** %16, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* @AVIO_FLAG_READ, align 4
  %21 = call i32 %17(%struct.TYPE_6__* %18, i32** %10, i8* %19, i32 %20, i32* null)
  store i32 %21, i32* %12, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %5, align 4
  br label %71

25:                                               ; preds = %4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32 (%struct.TYPE_6__*, i32**, i8*, i32, i32*)*, i32 (%struct.TYPE_6__*, i32**, i8*, i32, i32*)** %27, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %32 = call i32 %28(%struct.TYPE_6__* %29, i32** %11, i8* %30, i32 %31, i32* null)
  store i32 %32, i32* %12, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = call i32 @ff_format_io_close(%struct.TYPE_6__* %35, i32** %10)
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %5, align 4
  br label %71

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %54, %38
  %40 = load i64, i64* %9, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %39
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @FFMIN(i64 %43, i32 32768)
  store i32 %44, i32* %14, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = getelementptr inbounds [8192 x i32], [8192 x i32]* %13, i64 0, i64 0
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @avio_read(i32* %45, i32* %46, i32 %47)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp sle i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i32, i32* @EIO, align 4
  %53 = call i32 @AVERROR(i32 %52)
  store i32 %53, i32* %12, align 4
  br label %63

54:                                               ; preds = %42
  %55 = load i32*, i32** %11, align 8
  %56 = getelementptr inbounds [8192 x i32], [8192 x i32]* %13, i64 0, i64 0
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @avio_write(i32* %55, i32* %56, i32 %57)
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %9, align 8
  %62 = sub nsw i64 %61, %60
  store i64 %62, i64* %9, align 8
  br label %39

63:                                               ; preds = %51, %39
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @avio_flush(i32* %64)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %67 = call i32 @ff_format_io_close(%struct.TYPE_6__* %66, i32** %11)
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %69 = call i32 @ff_format_io_close(%struct.TYPE_6__* %68, i32** %10)
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %63, %34, %23
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @ff_format_io_close(%struct.TYPE_6__*, i32**) #1

declare dso_local i32 @FFMIN(i64, i32) #1

declare dso_local i32 @avio_read(i32*, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_write(i32*, i32*, i32) #1

declare dso_local i32 @avio_flush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
