; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonencodingsencoding_utf.c_utf16_to_utf8_string_alloc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonencodingsencoding_utf.c_utf16_to_utf8_string_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CP_ACP = common dso_local global i32 0, align 4
@CP_UTF8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @utf16_to_utf8_string_alloc(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i64 0, i64* %4, align 8
  store i8* null, i8** %5, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8, %1
  store i8* null, i8** %2, align 8
  br label %38

13:                                               ; preds = %8
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @wcstombs(i8* null, i32* %14, i64 0)
  %16 = add i64 %15, 1
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %13
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @calloc(i64 %20, i32 1)
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  store i8* null, i8** %2, align 8
  br label %38

26:                                               ; preds = %19
  %27 = load i8*, i8** %5, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = load i64, i64* %4, align 8
  %30 = call i64 @wcstombs(i8* %27, i32* %28, i64 %29)
  %31 = icmp eq i64 %30, -1
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @free(i8* %33)
  store i8* null, i8** %2, align 8
  br label %38

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %13
  %37 = load i8*, i8** %5, align 8
  store i8* %37, i8** %2, align 8
  br label %38

38:                                               ; preds = %36, %32, %25, %12
  %39 = load i8*, i8** %2, align 8
  ret i8* %39
}

declare dso_local i64 @wcstombs(i8*, i32*, i64) #1

declare dso_local i64 @calloc(i64, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
