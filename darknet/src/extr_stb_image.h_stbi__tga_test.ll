; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__tga_test.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__tga_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @stbi__tga_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi__tga_test(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @stbi__get8(i32* %6)
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @stbi__get8(i32* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %103

13:                                               ; preds = %1
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @stbi__get8(i32* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %48

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 9
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %103

25:                                               ; preds = %21, %18
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @stbi__skip(i32* %26, i32 4)
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @stbi__get8(i32* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 8
  br i1 %31, label %32, label %45

32:                                               ; preds = %25
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 15
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 16
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 24
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 32
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %103

45:                                               ; preds = %41, %38, %35, %32, %25
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 @stbi__skip(i32* %46, i32 4)
  br label %64

48:                                               ; preds = %13
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 2
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 3
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 10
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 11
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %103

61:                                               ; preds = %57, %54, %51, %48
  %62 = load i32*, i32** %2, align 8
  %63 = call i32 @stbi__skip(i32* %62, i32 9)
  br label %64

64:                                               ; preds = %61, %45
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 @stbi__get16le(i32* %65)
  %67 = icmp slt i32 %66, 1
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %103

69:                                               ; preds = %64
  %70 = load i32*, i32** %2, align 8
  %71 = call i32 @stbi__get16le(i32* %70)
  %72 = icmp slt i32 %71, 1
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %103

74:                                               ; preds = %69
  %75 = load i32*, i32** %2, align 8
  %76 = call i32 @stbi__get8(i32* %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 8
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 16
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  br label %103

86:                                               ; preds = %82, %79, %74
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 8
  br i1 %88, label %89, label %102

89:                                               ; preds = %86
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 15
  br i1 %91, label %92, label %102

92:                                               ; preds = %89
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 16
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = load i32, i32* %4, align 4
  %97 = icmp ne i32 %96, 24
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i32, i32* %4, align 4
  %100 = icmp ne i32 %99, 32
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  br label %103

102:                                              ; preds = %98, %95, %92, %89, %86
  store i32 1, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %101, %85, %73, %68, %60, %44, %24, %12
  %104 = load i32*, i32** %2, align 8
  %105 = call i32 @stbi__rewind(i32* %104)
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @stbi__get8(i32*) #1

declare dso_local i32 @stbi__skip(i32*, i32) #1

declare dso_local i32 @stbi__get16le(i32*) #1

declare dso_local i32 @stbi__rewind(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
