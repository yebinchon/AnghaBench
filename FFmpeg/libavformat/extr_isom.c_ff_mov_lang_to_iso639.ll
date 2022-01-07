; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_isom.c_ff_mov_lang_to_iso639.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_isom.c_ff_mov_lang_to_iso639.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mov_mdhd_language_map = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_mov_lang_to_iso639(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i32 @memset(i8* %7, i32 0, i32 4)
  %9 = load i32, i32* %4, align 4
  %10 = icmp uge i32 %9, 1024
  br i1 %10, label %11, label %33

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 32767
  br i1 %13, label %14, label %33

14:                                               ; preds = %11
  store i32 2, i32* %6, align 4
  br label %15

15:                                               ; preds = %29, %14
  %16 = load i32, i32* %6, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, 31
  %21 = add i32 96, %20
  %22 = trunc i32 %21 to i8
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  store i8 %22, i8* %26, align 1
  %27 = load i32, i32* %4, align 4
  %28 = lshr i32 %27, 5
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %18
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %6, align 4
  br label %15

32:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %57

33:                                               ; preds = %11, %2
  %34 = load i32, i32* %4, align 4
  %35 = load i32**, i32*** @mov_mdhd_language_map, align 8
  %36 = call i32 @FF_ARRAY_ELEMS(i32** %35)
  %37 = icmp uge i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %57

39:                                               ; preds = %33
  %40 = load i32**, i32*** @mov_mdhd_language_map, align 8
  %41 = load i32, i32* %4, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %57

49:                                               ; preds = %39
  %50 = load i8*, i8** %5, align 8
  %51 = load i32**, i32*** @mov_mdhd_language_map, align 8
  %52 = load i32, i32* %4, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @memcpy(i8* %50, i32* %55, i32 4)
  store i32 1, i32* %3, align 4
  br label %57

57:                                               ; preds = %49, %48, %38, %32
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(i32**) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
