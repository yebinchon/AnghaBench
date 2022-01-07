; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_ebml_read_ascii.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_ebml_read_ascii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@NEEDS_CHECKING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8**)* @ebml_read_ascii to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebml_read_ascii(i32* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = add nsw i32 %10, 1
  %12 = call i8* @av_malloc(i32 %11)
  store i8* %12, i8** %8, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = call i32 @AVERROR(i32 %15)
  store i32 %16, i32* %4, align 4
  br label %46

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to i32*
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @avio_read(i32* %18, i32* %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %17
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @av_free(i8* %26)
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %9, align 4
  br label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @NEEDS_CHECKING, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  store i32 %35, i32* %4, align 4
  br label %46

36:                                               ; preds = %17
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8 0, i8* %40, align 1
  %41 = load i8**, i8*** %7, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @av_free(i8* %42)
  %44 = load i8*, i8** %8, align 8
  %45 = load i8**, i8*** %7, align 8
  store i8* %44, i8** %45, align 8
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %36, %34, %14
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i8* @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_read(i32*, i32*, i32) #1

declare dso_local i32 @av_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
