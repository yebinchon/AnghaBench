; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_dict.c_av_dict_parse_string.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_dict.c_av_dict_parse_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_DICT_DONT_STRDUP_KEY = common dso_local global i32 0, align 4
@AV_DICT_DONT_STRDUP_VAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_dict_parse_string(i32** %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32** %0, i32*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %45

16:                                               ; preds = %5
  %17 = load i32, i32* @AV_DICT_DONT_STRDUP_KEY, align 4
  %18 = load i32, i32* @AV_DICT_DONT_STRDUP_VAL, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %11, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %11, align 4
  br label %23

23:                                               ; preds = %43, %16
  %24 = load i8*, i8** %8, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = load i32**, i32*** %7, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @parse_key_value_pair(i32** %28, i8** %8, i8* %29, i8* %30, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %6, align 4
  br label %45

36:                                               ; preds = %27
  %37 = load i8*, i8** %8, align 8
  %38 = load i8, i8* %37, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %8, align 8
  br label %43

43:                                               ; preds = %40, %36
  br label %23

44:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %44, %34, %15
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @parse_key_value_pair(i32**, i8**, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
