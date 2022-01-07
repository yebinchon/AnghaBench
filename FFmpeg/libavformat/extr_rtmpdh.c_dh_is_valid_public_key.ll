; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpdh.c_dh_is_valid_public_key.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpdh.c_dh_is_valid_public_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @dh_is_valid_public_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dh_is_valid_public_key(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %10 = load i32, i32* @EINVAL, align 4
  %11 = call i32 @AVERROR(i32 %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32*, i32** %8, align 8
  %13 = call i32 @bn_new(i32* %12)
  %14 = load i32*, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = call i32 @AVERROR(i32 %17)
  store i32 %18, i32* %4, align 4
  br label %58

19:                                               ; preds = %3
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @bn_set_word(i32* %20, i32 1)
  %22 = load i32*, i32** %5, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @bn_cmp(i32* %22, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %54

27:                                               ; preds = %19
  %28 = load i32*, i32** %8, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @bn_copy(i32* %28, i32* %29)
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @bn_sub_word(i32* %31, i32 1)
  %33 = load i32*, i32** %5, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @bn_cmp(i32* %33, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %27
  br label %54

38:                                               ; preds = %27
  %39 = load i32*, i32** %8, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @bn_modexp(i32* %39, i32* %40, i32* %41, i32* %42)
  store i32 %43, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %54

46:                                               ; preds = %38
  %47 = load i32, i32* @EINVAL, align 4
  %48 = call i32 @AVERROR(i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = call i64 @bn_cmp_1(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %54

53:                                               ; preds = %46
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %53, %52, %45, %37, %26
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @bn_free(i32* %55)
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %54, %16
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @bn_new(i32*) #1

declare dso_local i32 @bn_set_word(i32*, i32) #1

declare dso_local i32 @bn_cmp(i32*, i32*) #1

declare dso_local i32 @bn_copy(i32*, i32*) #1

declare dso_local i32 @bn_sub_word(i32*, i32) #1

declare dso_local i32 @bn_modexp(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @bn_cmp_1(i32*) #1

declare dso_local i32 @bn_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
