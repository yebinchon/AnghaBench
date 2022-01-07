; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__pnm_info.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__pnm_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"max value > 255\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"PPM image not 8-bit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*)* @stbi__pnm_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi__pnm_info(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32* %11, i32** %7, align 8
  br label %18

18:                                               ; preds = %17, %4
  %19 = load i32*, i32** %8, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store i32* %11, i32** %8, align 8
  br label %22

22:                                               ; preds = %21, %18
  %23 = load i32*, i32** %9, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  store i32* %11, i32** %9, align 8
  br label %26

26:                                               ; preds = %25, %22
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @stbi__rewind(i32* %27)
  %29 = load i32*, i32** %6, align 8
  %30 = call i64 @stbi__get8(i32* %29)
  %31 = trunc i64 %30 to i8
  store i8 %31, i8* %13, align 1
  %32 = load i32*, i32** %6, align 8
  %33 = call i64 @stbi__get8(i32* %32)
  %34 = trunc i64 %33 to i8
  store i8 %34, i8* %14, align 1
  %35 = load i8, i8* %13, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 80
  br i1 %37, label %46, label %38

38:                                               ; preds = %26
  %39 = load i8, i8* %14, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 53
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i8, i8* %14, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 54
  br i1 %45, label %46, label %49

46:                                               ; preds = %42, %26
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @stbi__rewind(i32* %47)
  store i32 0, i32* %5, align 4
  br label %78

49:                                               ; preds = %42, %38
  %50 = load i8, i8* %14, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 54
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 3, i32 1
  %55 = load i32*, i32** %9, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = call i64 @stbi__get8(i32* %56)
  %58 = trunc i64 %57 to i8
  store i8 %58, i8* %12, align 1
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @stbi__pnm_skip_whitespace(i32* %59, i8* %12)
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @stbi__pnm_getinteger(i32* %61, i8* %12)
  %63 = load i32*, i32** %7, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @stbi__pnm_skip_whitespace(i32* %64, i8* %12)
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @stbi__pnm_getinteger(i32* %66, i8* %12)
  %68 = load i32*, i32** %8, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @stbi__pnm_skip_whitespace(i32* %69, i8* %12)
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @stbi__pnm_getinteger(i32* %71, i8* %12)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp sgt i32 %73, 255
  br i1 %74, label %75, label %77

75:                                               ; preds = %49
  %76 = call i32 @stbi__err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 %76, i32* %5, align 4
  br label %78

77:                                               ; preds = %49
  store i32 1, i32* %5, align 4
  br label %78

78:                                               ; preds = %77, %75, %46
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @stbi__rewind(i32*) #1

declare dso_local i64 @stbi__get8(i32*) #1

declare dso_local i32 @stbi__pnm_skip_whitespace(i32*, i8*) #1

declare dso_local i32 @stbi__pnm_getinteger(i32*, i8*) #1

declare dso_local i32 @stbi__err(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
