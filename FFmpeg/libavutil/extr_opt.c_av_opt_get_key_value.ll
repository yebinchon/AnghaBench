; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_opt.c_av_opt_get_key_value.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_opt.c_av_opt_get_key_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_OPT_FLAG_IMPLICIT_KEY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_opt_get_key_value(i8** %0, i8* %1, i8* %2, i32 %3, i8** %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i8** %0, i8*** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store i8** %5, i8*** %13, align 8
  store i8* null, i8** %15, align 8
  %18 = load i8**, i8*** %8, align 8
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %17, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = call i32 @get_key(i8** %17, i8* %20, i8** %15)
  store i32 %21, i32* %14, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %6
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @AV_OPT_FLAG_IMPLICIT_KEY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @EINVAL, align 4
  %30 = call i32 @AVERROR(i32 %29)
  store i32 %30, i32* %7, align 4
  br label %47

31:                                               ; preds = %23, %6
  %32 = load i8*, i8** %10, align 8
  %33 = call i8* @av_get_token(i8** %17, i8* %32)
  store i8* %33, i8** %16, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load i8*, i8** %15, align 8
  %37 = call i32 @av_free(i8* %36)
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = call i32 @AVERROR(i32 %38)
  store i32 %39, i32* %7, align 4
  br label %47

40:                                               ; preds = %31
  %41 = load i8*, i8** %17, align 8
  %42 = load i8**, i8*** %8, align 8
  store i8* %41, i8** %42, align 8
  %43 = load i8*, i8** %15, align 8
  %44 = load i8**, i8*** %12, align 8
  store i8* %43, i8** %44, align 8
  %45 = load i8*, i8** %16, align 8
  %46 = load i8**, i8*** %13, align 8
  store i8* %45, i8** %46, align 8
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %40, %35, %28
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local i32 @get_key(i8**, i8*, i8**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @av_get_token(i8**, i8*) #1

declare dso_local i32 @av_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
