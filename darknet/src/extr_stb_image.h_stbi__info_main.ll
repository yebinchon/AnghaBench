; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__info_main.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__info_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"unknown image type\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Image not of any known type, or corrupt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*)* @stbi__info_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi__info_main(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = call i64 @stbi__jpeg_info(i32* %10, i32* %11, i32* %12, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %83

17:                                               ; preds = %4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = call i64 @stbi__png_info(i32* %18, i32* %19, i32* %20, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 1, i32* %5, align 4
  br label %83

25:                                               ; preds = %17
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = call i64 @stbi__gif_info(i32* %26, i32* %27, i32* %28, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 1, i32* %5, align 4
  br label %83

33:                                               ; preds = %25
  %34 = load i32*, i32** %6, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i64 @stbi__bmp_info(i32* %34, i32* %35, i32* %36, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 1, i32* %5, align 4
  br label %83

41:                                               ; preds = %33
  %42 = load i32*, i32** %6, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = call i64 @stbi__psd_info(i32* %42, i32* %43, i32* %44, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 1, i32* %5, align 4
  br label %83

49:                                               ; preds = %41
  %50 = load i32*, i32** %6, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = call i64 @stbi__pic_info(i32* %50, i32* %51, i32* %52, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i32 1, i32* %5, align 4
  br label %83

57:                                               ; preds = %49
  %58 = load i32*, i32** %6, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = call i64 @stbi__pnm_info(i32* %58, i32* %59, i32* %60, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 1, i32* %5, align 4
  br label %83

65:                                               ; preds = %57
  %66 = load i32*, i32** %6, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = call i64 @stbi__hdr_info(i32* %66, i32* %67, i32* %68, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  store i32 1, i32* %5, align 4
  br label %83

73:                                               ; preds = %65
  %74 = load i32*, i32** %6, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = call i64 @stbi__tga_info(i32* %74, i32* %75, i32* %76, i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  store i32 1, i32* %5, align 4
  br label %83

81:                                               ; preds = %73
  %82 = call i32 @stbi__err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %81, %80, %72, %64, %56, %48, %40, %32, %24, %16
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i64 @stbi__jpeg_info(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @stbi__png_info(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @stbi__gif_info(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @stbi__bmp_info(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @stbi__psd_info(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @stbi__pic_info(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @stbi__pnm_info(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @stbi__hdr_info(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @stbi__tga_info(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @stbi__err(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
