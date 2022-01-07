; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__psd_info.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__psd_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*)* @stbi__psd_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi__psd_info(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store i32* %11, i32** %7, align 8
  br label %16

16:                                               ; preds = %15, %4
  %17 = load i32*, i32** %8, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  store i32* %11, i32** %8, align 8
  br label %20

20:                                               ; preds = %19, %16
  %21 = load i32*, i32** %9, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  store i32* %11, i32** %9, align 8
  br label %24

24:                                               ; preds = %23, %20
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @stbi__get32be(i32* %25)
  %27 = icmp ne i32 %26, 943870035
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @stbi__rewind(i32* %29)
  store i32 0, i32* %5, align 4
  br label %77

31:                                               ; preds = %24
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @stbi__get16be(i32* %32)
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @stbi__rewind(i32* %36)
  store i32 0, i32* %5, align 4
  br label %77

38:                                               ; preds = %31
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @stbi__skip(i32* %39, i32 6)
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @stbi__get16be(i32* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %10, align 4
  %47 = icmp sgt i32 %46, 16
  br i1 %47, label %48, label %51

48:                                               ; preds = %45, %38
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @stbi__rewind(i32* %49)
  store i32 0, i32* %5, align 4
  br label %77

51:                                               ; preds = %45
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @stbi__get32be(i32* %52)
  %54 = load i32*, i32** %8, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @stbi__get32be(i32* %55)
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @stbi__get16be(i32* %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 8
  br i1 %61, label %62, label %68

62:                                               ; preds = %51
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 16
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @stbi__rewind(i32* %66)
  store i32 0, i32* %5, align 4
  br label %77

68:                                               ; preds = %62, %51
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @stbi__get16be(i32* %69)
  %71 = icmp ne i32 %70, 3
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @stbi__rewind(i32* %73)
  store i32 0, i32* %5, align 4
  br label %77

75:                                               ; preds = %68
  %76 = load i32*, i32** %9, align 8
  store i32 4, i32* %76, align 4
  store i32 1, i32* %5, align 4
  br label %77

77:                                               ; preds = %75, %72, %65, %48, %35, %28
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @stbi__get32be(i32*) #1

declare dso_local i32 @stbi__rewind(i32*) #1

declare dso_local i32 @stbi__get16be(i32*) #1

declare dso_local i32 @stbi__skip(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
