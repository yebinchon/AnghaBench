; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/encodings/extr_encoding_utf.c_utf8_to_utf16_string_alloc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/encodings/extr_encoding_utf.c_utf8_to_utf16_string_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CP_ACP = common dso_local global i32 0, align 4
@CP_UTF8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @utf8_to_utf16_string_alloc(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i32* null, i32** %6, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9, %1
  store i32* null, i32** %2, align 8
  br label %42

14:                                               ; preds = %9
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @mbstowcs(i32* null, i8* %15, i64 0)
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %14
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @calloc(i64 %22, i32 4)
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %6, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i32* null, i32** %2, align 8
  br label %42

28:                                               ; preds = %21
  %29 = load i32*, i32** %6, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @mbstowcs(i32* %29, i8* %30, i64 %31)
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %5, align 8
  br label %34

34:                                               ; preds = %28, %14
  %35 = load i64, i64* %5, align 8
  %36 = icmp eq i64 %35, -1
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @free(i32* %38)
  store i32* null, i32** %2, align 8
  br label %42

40:                                               ; preds = %34
  %41 = load i32*, i32** %6, align 8
  store i32* %41, i32** %2, align 8
  br label %42

42:                                               ; preds = %40, %37, %27, %13
  %43 = load i32*, i32** %2, align 8
  ret i32* %43
}

declare dso_local i32 @mbstowcs(i32*, i8*, i64) #1

declare dso_local i64 @calloc(i64, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
