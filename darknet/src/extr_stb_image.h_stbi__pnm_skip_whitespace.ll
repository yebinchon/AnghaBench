; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__pnm_skip_whitespace.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__pnm_skip_whitespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @stbi__pnm_skip_whitespace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stbi__pnm_skip_whitespace(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  br label %5

5:                                                ; preds = %54, %2
  br label %6

6:                                                ; preds = %17, %5
  %7 = load i32*, i32** %3, align 8
  %8 = call i64 @stbi__at_eof(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = load i8*, i8** %4, align 8
  %12 = load i8, i8* %11, align 1
  %13 = call i64 @stbi__pnm_isspace(i8 signext %12)
  %14 = icmp ne i64 %13, 0
  br label %15

15:                                               ; preds = %10, %6
  %16 = phi i1 [ false, %6 ], [ %14, %10 ]
  br i1 %16, label %17, label %22

17:                                               ; preds = %15
  %18 = load i32*, i32** %3, align 8
  %19 = call i64 @stbi__get8(i32* %18)
  %20 = trunc i64 %19 to i8
  %21 = load i8*, i8** %4, align 8
  store i8 %20, i8* %21, align 1
  br label %6

22:                                               ; preds = %15
  %23 = load i32*, i32** %3, align 8
  %24 = call i64 @stbi__at_eof(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 35
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %22
  br label %55

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %49, %32
  %34 = load i32*, i32** %3, align 8
  %35 = call i64 @stbi__at_eof(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %33
  %38 = load i8*, i8** %4, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 10
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i8*, i8** %4, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 13
  br label %47

47:                                               ; preds = %42, %37, %33
  %48 = phi i1 [ false, %37 ], [ false, %33 ], [ %46, %42 ]
  br i1 %48, label %49, label %54

49:                                               ; preds = %47
  %50 = load i32*, i32** %3, align 8
  %51 = call i64 @stbi__get8(i32* %50)
  %52 = trunc i64 %51 to i8
  %53 = load i8*, i8** %4, align 8
  store i8 %52, i8* %53, align 1
  br label %33

54:                                               ; preds = %47
  br label %5

55:                                               ; preds = %31
  ret void
}

declare dso_local i64 @stbi__at_eof(i32*) #1

declare dso_local i64 @stbi__pnm_isspace(i8 signext) #1

declare dso_local i64 @stbi__get8(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
