; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_read_whole_file.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_read_whole_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EFBIG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8**)* @read_whole_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_whole_file(i32* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %3, %56
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* %9, align 4
  %15 = sub nsw i32 %13, %14
  %16 = icmp slt i32 %15, 1024
  br i1 %16, label %17, label %40

17:                                               ; preds = %12
  %18 = load i32, i32* %10, align 4
  %19 = mul nsw i32 2, %18
  %20 = call i32 @FFMAX(i32 %19, i32 8192)
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @FFMIN(i32 %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %9, align 4
  %25 = sub nsw i32 %23, %24
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load i32, i32* @EFBIG, align 4
  %29 = call i32 @AVERROR(i32 %28)
  store i32 %29, i32* %9, align 4
  br label %68

30:                                               ; preds = %17
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i8* @av_realloc_f(i8* %31, i32 %32, i32 1)
  store i8* %33, i8** %8, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = call i32 @AVERROR(i32 %37)
  store i32 %38, i32* %9, align 4
  br label %68

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %12
  %41 = load i32*, i32** %5, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %9, align 4
  %45 = sub nsw i32 %43, %44
  %46 = sub nsw i32 %45, 1
  %47 = call i32 @avio_read(i32* %41, i8* %42, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @AVERROR_EOF, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %60

52:                                               ; preds = %40
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %68

56:                                               ; preds = %52
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %9, align 4
  br label %12

60:                                               ; preds = %51
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  store i8 0, i8* %64, align 1
  %65 = load i8*, i8** %8, align 8
  %66 = load i8**, i8*** %7, align 8
  store i8* %65, i8** %66, align 8
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %4, align 4
  br label %72

68:                                               ; preds = %55, %36, %27
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 @av_free(i8* %69)
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %68, %60
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @av_realloc_f(i8*, i32, i32) #1

declare dso_local i32 @avio_read(i32*, i8*, i32) #1

declare dso_local i32 @av_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
