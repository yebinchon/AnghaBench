; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_dict.c_parse_key_value_pair.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_dict.c_parse_key_value_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i8**, i8*, i8*, i32)* @parse_key_value_pair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_key_value_pair(i32** %0, i8** %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i8**, i8*** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i8* @av_get_token(i8** %14, i8* %15)
  store i8* %16, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %37

19:                                               ; preds = %5
  %20 = load i8*, i8** %11, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load i8**, i8*** %7, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i64 @strspn(i8* %26, i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load i8**, i8*** %7, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %31, align 8
  %34 = load i8**, i8*** %7, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = call i8* @av_get_token(i8** %34, i8* %35)
  store i8* %36, i8** %12, align 8
  br label %37

37:                                               ; preds = %30, %24, %19, %5
  %38 = load i8*, i8** %11, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %59

40:                                               ; preds = %37
  %41 = load i8*, i8** %11, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %40
  %46 = load i8*, i8** %12, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load i8*, i8** %12, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load i32**, i32*** %6, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @av_dict_set(i32** %54, i8* %55, i8* %56, i32 %57)
  store i32 %58, i32* %13, align 4
  br label %62

59:                                               ; preds = %48, %45, %40, %37
  %60 = load i32, i32* @EINVAL, align 4
  %61 = call i32 @AVERROR(i32 %60)
  store i32 %61, i32* %13, align 4
  br label %62

62:                                               ; preds = %59, %53
  %63 = call i32 @av_freep(i8** %11)
  %64 = call i32 @av_freep(i8** %12)
  %65 = load i32, i32* %13, align 4
  ret i32 %65
}

declare dso_local i8* @av_get_token(i8**, i8*) #1

declare dso_local i64 @strspn(i8*, i8*) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_freep(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
