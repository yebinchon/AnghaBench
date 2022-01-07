; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_file_open.c_av_fopen_utf8.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_file_open.c_av_fopen_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @av_fopen_utf8(i8* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** %8, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %11, i8** %8, align 8
  %12 = load i8, i8* %10, align 1
  %13 = sext i8 %12 to i32
  switch i32 %13, label %28 [
    i32 114, label %14
    i32 119, label %16
    i32 97, label %22
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @O_RDONLY, align 4
  store i32 %15, i32* %7, align 4
  br label %30

16:                                               ; preds = %2
  %17 = load i32, i32* @O_CREAT, align 4
  %18 = load i32, i32* @O_WRONLY, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @O_TRUNC, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %7, align 4
  br label %30

22:                                               ; preds = %2
  %23 = load i32, i32* @O_CREAT, align 4
  %24 = load i32, i32* @O_WRONLY, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @O_APPEND, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %7, align 4
  br label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* @errno, align 4
  store i32* null, i32** %3, align 8
  br label %78

30:                                               ; preds = %22, %16, %14
  br label %31

31:                                               ; preds = %64, %30
  %32 = load i8*, i8** %8, align 8
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %35, label %67

35:                                               ; preds = %31
  %36 = load i8*, i8** %8, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 43
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load i32, i32* @O_RDONLY, align 4
  %42 = load i32, i32* @O_WRONLY, align 4
  %43 = or i32 %41, %42
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* @O_RDWR, align 4
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  br label %64

50:                                               ; preds = %35
  %51 = load i8*, i8** %8, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 98
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %63

56:                                               ; preds = %50
  %57 = load i8*, i8** %8, align 8
  %58 = load i8, i8* %57, align 1
  %59 = icmp ne i8 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @EINVAL, align 4
  store i32 %61, i32* @errno, align 4
  store i32* null, i32** %3, align 8
  br label %78

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62, %55
  br label %64

64:                                               ; preds = %63, %40
  %65 = load i8*, i8** %8, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %8, align 8
  br label %31

67:                                               ; preds = %31
  %68 = load i8*, i8** %4, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @avpriv_open(i8* %68, i32 %69, i32 438)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store i32* null, i32** %3, align 8
  br label %78

74:                                               ; preds = %67
  %75 = load i32, i32* %6, align 4
  %76 = load i8*, i8** %5, align 8
  %77 = call i32* @fdopen(i32 %75, i8* %76)
  store i32* %77, i32** %3, align 8
  br label %78

78:                                               ; preds = %74, %73, %60, %28
  %79 = load i32*, i32** %3, align 8
  ret i32* %79
}

declare dso_local i32 @avpriv_open(i8*, i32, i32) #1

declare dso_local i32* @fdopen(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
