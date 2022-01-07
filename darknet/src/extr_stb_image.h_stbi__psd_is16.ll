; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__psd_is16.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__psd_is16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @stbi__psd_is16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi__psd_is16(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @stbi__get32be(i32* %6)
  %8 = icmp ne i32 %7, 943870035
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @stbi__rewind(i32* %10)
  store i32 0, i32* %2, align 4
  br label %45

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @stbi__get16be(i32* %13)
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @stbi__rewind(i32* %17)
  store i32 0, i32* %2, align 4
  br label %45

19:                                               ; preds = %12
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @stbi__skip(i32* %20, i32 6)
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @stbi__get16be(i32* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %4, align 4
  %28 = icmp sgt i32 %27, 16
  br i1 %28, label %29, label %32

29:                                               ; preds = %26, %19
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @stbi__rewind(i32* %30)
  store i32 0, i32* %2, align 4
  br label %45

32:                                               ; preds = %26
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @stbi__get32be(i32* %33)
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @stbi__get32be(i32* %35)
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @stbi__get16be(i32* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 16
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @stbi__rewind(i32* %42)
  store i32 0, i32* %2, align 4
  br label %45

44:                                               ; preds = %32
  store i32 1, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %41, %29, %16, %9
  %46 = load i32, i32* %2, align 4
  ret i32 %46
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
