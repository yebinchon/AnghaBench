; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_opt.c_set_string_binary.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_opt.c_set_string_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i8*, i32**)* @set_string_binary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_string_binary(i8* %0, i32* %1, i8* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32** %3, i32*** %9, align 8
  %16 = load i32**, i32*** %9, align 8
  %17 = getelementptr inbounds i32*, i32** %16, i64 1
  %18 = bitcast i32** %17 to i32*
  store i32* %18, i32** %10, align 8
  %19 = load i32**, i32*** %9, align 8
  %20 = call i32 @av_freep(i32** %19)
  %21 = load i32*, i32** %10, align 8
  store i32 0, i32* %21, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @strlen(i8* %25)
  store i32 %26, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24, %4
  store i32 0, i32* %5, align 4
  br label %84

29:                                               ; preds = %24
  %30 = load i32, i32* %13, align 4
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @EINVAL, align 4
  %35 = call i32 @AVERROR(i32 %34)
  store i32 %35, i32* %5, align 4
  br label %84

36:                                               ; preds = %29
  %37 = load i32, i32* %13, align 4
  %38 = sdiv i32 %37, 2
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = call i32* @av_malloc(i32 %39)
  store i32* %40, i32** %11, align 8
  store i32* %40, i32** %12, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = call i32 @AVERROR(i32 %44)
  store i32 %45, i32* %5, align 4
  br label %84

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %72, %46
  %48 = load i8*, i8** %8, align 8
  %49 = load i8, i8* %48, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %51, label %79

51:                                               ; preds = %47
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %8, align 8
  %54 = load i8, i8* %52, align 1
  %55 = sext i8 %54 to i32
  %56 = call i32 @hexchar2int(i32 %55)
  store i32 %56, i32* %14, align 4
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %8, align 8
  %59 = load i8, i8* %57, align 1
  %60 = sext i8 %59 to i32
  %61 = call i32 @hexchar2int(i32 %60)
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %51
  %65 = load i32, i32* %15, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64, %51
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 @av_free(i32* %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = call i32 @AVERROR(i32 %70)
  store i32 %71, i32* %5, align 4
  br label %84

72:                                               ; preds = %64
  %73 = load i32, i32* %14, align 4
  %74 = shl i32 %73, 4
  %75 = load i32, i32* %15, align 4
  %76 = or i32 %74, %75
  %77 = load i32*, i32** %12, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %12, align 8
  store i32 %76, i32* %77, align 4
  br label %47

79:                                               ; preds = %47
  %80 = load i32*, i32** %11, align 8
  %81 = load i32**, i32*** %9, align 8
  store i32* %80, i32** %81, align 8
  %82 = load i32, i32* %13, align 4
  %83 = load i32*, i32** %10, align 8
  store i32 %82, i32* %83, align 4
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %79, %67, %43, %33, %28
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @av_freep(i32**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32* @av_malloc(i32) #1

declare dso_local i32 @hexchar2int(i32) #1

declare dso_local i32 @av_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
