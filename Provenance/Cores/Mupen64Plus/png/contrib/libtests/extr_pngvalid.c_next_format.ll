; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_next_format.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_next_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32, i32)* @next_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_format(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %5
  %18 = load i32*, i32** %7, align 8
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32*, i32** %8, align 8
  store i32 1, i32* %22, align 4
  br label %25

23:                                               ; preds = %17
  %24 = load i32*, i32** %8, align 8
  store i32 8, i32* %24, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = load i32*, i32** %9, align 8
  store i32 0, i32* %26, align 4
  store i32 1, i32* %6, align 4
  br label %85

27:                                               ; preds = %5
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %60

31:                                               ; preds = %27
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %32, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %32, align 4
  store i32 %34, i32* %12, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %13, align 4
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %48

42:                                               ; preds = %39, %31
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* %12, align 4
  %47 = icmp ult i32 %46, 2
  br i1 %47, label %57, label %48

48:                                               ; preds = %45, %42, %39
  %49 = load i32, i32* %13, align 4
  %50 = icmp eq i32 %49, 3
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i32, i32* %12, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @PALETTE_COUNT(i32 %54)
  %56 = icmp ult i32 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51, %45
  store i32 1, i32* %6, align 4
  br label %85

58:                                               ; preds = %51, %48
  %59 = load i32*, i32** %9, align 8
  store i32 0, i32* %59, align 4
  br label %60

60:                                               ; preds = %58, %27
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 1
  %64 = load i32*, i32** %8, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %65, align 4
  %67 = icmp sle i32 %66, 8
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  store i32 1, i32* %6, align 4
  br label %85

69:                                               ; preds = %60
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %70, align 4
  switch i32 %71, label %84 [
    i32 0, label %72
    i32 2, label %75
    i32 3, label %78
    i32 4, label %81
  ]

72:                                               ; preds = %69
  %73 = load i32*, i32** %7, align 8
  store i32 2, i32* %73, align 4
  %74 = load i32*, i32** %8, align 8
  store i32 8, i32* %74, align 4
  store i32 1, i32* %6, align 4
  br label %85

75:                                               ; preds = %69
  %76 = load i32*, i32** %7, align 8
  store i32 3, i32* %76, align 4
  %77 = load i32*, i32** %8, align 8
  store i32 1, i32* %77, align 4
  store i32 1, i32* %6, align 4
  br label %85

78:                                               ; preds = %69
  %79 = load i32*, i32** %7, align 8
  store i32 4, i32* %79, align 4
  %80 = load i32*, i32** %8, align 8
  store i32 8, i32* %80, align 4
  store i32 1, i32* %6, align 4
  br label %85

81:                                               ; preds = %69
  %82 = load i32*, i32** %7, align 8
  store i32 6, i32* %82, align 4
  %83 = load i32*, i32** %8, align 8
  store i32 8, i32* %83, align 4
  store i32 1, i32* %6, align 4
  br label %85

84:                                               ; preds = %69
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %84, %81, %78, %75, %72, %68, %57, %25
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i32 @PALETTE_COUNT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
