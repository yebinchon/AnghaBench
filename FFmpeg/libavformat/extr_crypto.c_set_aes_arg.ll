; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_crypto.c_set_aes_arg.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_crypto.c_set_aes_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s not set\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BLOCKSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"invalid %s size (%d bytes, block size is %d)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**, i32*, i32*, i32, i8*)* @set_aes_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_aes_arg(i32* %0, i32** %1, i32* %2, i32* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %55, label %17

17:                                               ; preds = %6
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %17
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* @AV_LOG_ERROR, align 4
  %23 = load i8*, i8** %13, align 8
  %24 = call i32 (i32*, i32, i8*, i8*, ...) @av_log(i32* %21, i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = call i32 @AVERROR(i32 %25)
  store i32 %26, i32* %7, align 4
  br label %72

27:                                               ; preds = %17
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @BLOCKSIZE, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* @AV_LOG_ERROR, align 4
  %34 = load i8*, i8** %13, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @BLOCKSIZE, align 4
  %37 = call i32 (i32*, i32, i8*, i8*, ...) @av_log(i32* %32, i32 %33, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %34, i32 %35, i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = call i32 @AVERROR(i32 %38)
  store i32 %39, i32* %7, align 4
  br label %72

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i32* @av_memdup(i32* %42, i32 %43)
  %45 = load i32**, i32*** %9, align 8
  store i32* %44, i32** %45, align 8
  %46 = load i32**, i32*** %9, align 8
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %41
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = call i32 @AVERROR(i32 %50)
  store i32 %51, i32* %7, align 4
  br label %72

52:                                               ; preds = %41
  %53 = load i32, i32* %12, align 4
  %54 = load i32*, i32** %10, align 8
  store i32 %53, i32* %54, align 4
  br label %71

55:                                               ; preds = %6
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @BLOCKSIZE, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* @AV_LOG_ERROR, align 4
  %63 = load i8*, i8** %13, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @BLOCKSIZE, align 4
  %67 = call i32 (i32*, i32, i8*, i8*, ...) @av_log(i32* %61, i32 %62, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %63, i32 %65, i32 %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = call i32 @AVERROR(i32 %68)
  store i32 %69, i32* %7, align 4
  br label %72

70:                                               ; preds = %55
  br label %71

71:                                               ; preds = %70, %52
  store i32 0, i32* %7, align 4
  br label %72

72:                                               ; preds = %71, %60, %49, %31, %20
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local i32 @av_log(i32*, i32, i8*, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32* @av_memdup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
