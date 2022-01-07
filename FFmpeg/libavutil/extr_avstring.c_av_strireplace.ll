; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_avstring.c_av_strireplace.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_avstring.c_av_strireplace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_BPRINT_SIZE_UNLIMITED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @av_strireplace(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %10, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @strlen(i8* %16)
  store i64 %17, i64* %11, align 8
  %18 = load i32, i32* @AV_BPRINT_SIZE_UNLIMITED, align 4
  %19 = call i32 @av_bprint_init(i32* %12, i32 1, i32 %18)
  br label %20

20:                                               ; preds = %25, %3
  %21 = load i8*, i8** %9, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i8* @av_stristr(i8* %21, i8* %22)
  store i8* %23, i8** %8, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = load i8*, i8** %9, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = call i32 @av_bprint_append_data(i32* %12, i8* %26, i64 %31)
  %33 = load i8*, i8** %8, align 8
  %34 = load i64, i64* %11, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8* %35, i8** %9, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @av_bprint_append_data(i32* %12, i8* %36, i64 %37)
  br label %20

39:                                               ; preds = %20
  %40 = load i8*, i8** %9, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = call i64 @strlen(i8* %41)
  %43 = call i32 @av_bprint_append_data(i32* %12, i8* %40, i64 %42)
  %44 = call i32 @av_bprint_is_complete(i32* %12)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  %47 = call i32 @av_bprint_finalize(i32* %12, i8** null)
  br label %50

48:                                               ; preds = %39
  %49 = call i32 @av_bprint_finalize(i32* %12, i8** %7)
  br label %50

50:                                               ; preds = %48, %46
  %51 = load i8*, i8** %7, align 8
  ret i8* %51
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @av_bprint_init(i32*, i32, i32) #1

declare dso_local i8* @av_stristr(i8*, i8*) #1

declare dso_local i32 @av_bprint_append_data(i32*, i8*, i64) #1

declare dso_local i32 @av_bprint_is_complete(i32*) #1

declare dso_local i32 @av_bprint_finalize(i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
