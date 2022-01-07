; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_mmal_encode/extr_mmal_encode.c_create_rgba_test_image.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_mmal_encode/extr_mmal_encode.c_create_rgba_test_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BYTESPP = common dso_local global i32 0, align 4
@WIDTH = common dso_local global i32 0, align 4
@RED = common dso_local global i32 0, align 4
@GREEN = common dso_local global i32 0, align 4
@BLUE = common dso_local global i32 0, align 4
@ALPHA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @create_rgba_test_image(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %64, %3
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @BYTESPP, align 4
  %15 = udiv i32 %13, %14
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %67

17:                                               ; preds = %11
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = urem i32 %18, %19
  %21 = load i32, i32* @WIDTH, align 4
  %22 = sdiv i32 %21, 8
  %23 = udiv i32 %20, %22
  switch i32 %23, label %57 [
    i32 0, label %24
    i32 1, label %31
    i32 2, label %33
    i32 3, label %36
    i32 4, label %39
    i32 5, label %42
    i32 6, label %47
    i32 7, label %52
  ]

24:                                               ; preds = %17
  %25 = load i32, i32* @RED, align 4
  %26 = load i32, i32* @GREEN, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @BLUE, align 4
  %29 = or i32 %27, %28
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  br label %57

31:                                               ; preds = %17
  %32 = load i32*, i32** %7, align 8
  store i32 0, i32* %32, align 4
  br label %57

33:                                               ; preds = %17
  %34 = load i32, i32* @RED, align 4
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  br label %57

36:                                               ; preds = %17
  %37 = load i32, i32* @GREEN, align 4
  %38 = load i32*, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  br label %57

39:                                               ; preds = %17
  %40 = load i32, i32* @BLUE, align 4
  %41 = load i32*, i32** %7, align 8
  store i32 %40, i32* %41, align 4
  br label %57

42:                                               ; preds = %17
  %43 = load i32, i32* @GREEN, align 4
  %44 = load i32, i32* @BLUE, align 4
  %45 = or i32 %43, %44
  %46 = load i32*, i32** %7, align 8
  store i32 %45, i32* %46, align 4
  br label %57

47:                                               ; preds = %17
  %48 = load i32, i32* @RED, align 4
  %49 = load i32, i32* @BLUE, align 4
  %50 = or i32 %48, %49
  %51 = load i32*, i32** %7, align 8
  store i32 %50, i32* %51, align 4
  br label %57

52:                                               ; preds = %17
  %53 = load i32, i32* @RED, align 4
  %54 = load i32, i32* @GREEN, align 4
  %55 = or i32 %53, %54
  %56 = load i32*, i32** %7, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %17, %52, %47, %42, %39, %36, %33, %31, %24
  %58 = load i32, i32* @ALPHA, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %58
  store i32 %61, i32* %59, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %7, align 8
  br label %64

64:                                               ; preds = %57
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %11

67:                                               ; preds = %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
