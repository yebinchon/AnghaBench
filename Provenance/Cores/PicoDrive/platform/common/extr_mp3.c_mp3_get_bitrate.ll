; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_mp3.c_mp3_get_bitrate.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_mp3.c_mp3_get_bitrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp3_get_bitrate(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2048 x i8], align 16
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %6, align 8
  store i32 -1, i32* %7, align 4
  %11 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  %12 = call i32 @memset(i8* %11, i32 0, i32 2048)
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* @SEEK_SET, align 4
  %15 = call i32 @fseek(i32* %13, i32 0, i32 %14)
  %16 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @fread(i8* %16, i32 1, i32 2048, i32* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ne i64 %20, 2048
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %50

23:                                               ; preds = %2
  %24 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  %25 = call i32 @try_get_bitrate(i8* %24, i32 2048)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sdiv i32 %30, 2
  %32 = load i32, i32* @SEEK_SET, align 4
  %33 = call i32 @fseek(i32* %29, i32 %31, i32 %32)
  %34 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @fread(i8* %34, i32 1, i32 2048, i32* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp eq i64 %38, 2048
  br i1 %39, label %40, label %43

40:                                               ; preds = %28
  %41 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  %42 = call i32 @try_get_bitrate(i8* %41, i32 2048)
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %40, %28
  br label %44

44:                                               ; preds = %43, %23
  %45 = load i32, i32* %8, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %47, %44
  br label %50

50:                                               ; preds = %49, %22
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* @SEEK_SET, align 4
  %53 = call i32 @fseek(i32* %51, i32 0, i32 %52)
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @try_get_bitrate(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
