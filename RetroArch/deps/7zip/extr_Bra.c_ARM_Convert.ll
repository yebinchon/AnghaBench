; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/7zip/extr_Bra.c_ARM_Convert.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/7zip/extr_Bra.c_ARM_Convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ARM_Convert(i32* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i64, i64* %7, align 8
  %14 = icmp ult i64 %13, 4
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %96

16:                                               ; preds = %4
  %17 = load i64, i64* %7, align 8
  %18 = sub i64 %17, 4
  store i64 %18, i64* %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %19, 8
  store i32 %20, i32* %8, align 4
  store i64 0, i64* %10, align 8
  br label %21

21:                                               ; preds = %91, %16
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ule i64 %22, %23
  br i1 %24, label %25, label %94

25:                                               ; preds = %21
  %26 = load i32*, i32** %6, align 8
  %27 = load i64, i64* %10, align 8
  %28 = add i64 %27, 3
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 235
  br i1 %31, label %32, label %90

32:                                               ; preds = %25
  %33 = load i32*, i32** %6, align 8
  %34 = load i64, i64* %10, align 8
  %35 = add i64 %34, 2
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 16
  %39 = load i32*, i32** %6, align 8
  %40 = load i64, i64* %10, align 8
  %41 = add i64 %40, 1
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 8
  %45 = or i32 %38, %44
  %46 = load i32*, i32** %6, align 8
  %47 = load i64, i64* %10, align 8
  %48 = add i64 %47, 0
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %45, %50
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = shl i32 %52, 2
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %32
  %57 = load i32, i32* %8, align 4
  %58 = load i64, i64* %10, align 8
  %59 = trunc i64 %58 to i32
  %60 = add nsw i32 %57, %59
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %60, %61
  store i32 %62, i32* %11, align 4
  br label %70

63:                                               ; preds = %32
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i64, i64* %10, align 8
  %67 = trunc i64 %66 to i32
  %68 = add nsw i32 %65, %67
  %69 = sub nsw i32 %64, %68
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %63, %56
  %71 = load i32, i32* %11, align 4
  %72 = ashr i32 %71, 2
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = ashr i32 %73, 16
  %75 = load i32*, i32** %6, align 8
  %76 = load i64, i64* %10, align 8
  %77 = add i64 %76, 2
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %74, i32* %78, align 4
  %79 = load i32, i32* %11, align 4
  %80 = ashr i32 %79, 8
  %81 = load i32*, i32** %6, align 8
  %82 = load i64, i64* %10, align 8
  %83 = add i64 %82, 1
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %80, i32* %84, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32*, i32** %6, align 8
  %87 = load i64, i64* %10, align 8
  %88 = add i64 %87, 0
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %85, i32* %89, align 4
  br label %90

90:                                               ; preds = %70, %25
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %10, align 8
  %93 = add i64 %92, 4
  store i64 %93, i64* %10, align 8
  br label %21

94:                                               ; preds = %21
  %95 = load i64, i64* %10, align 8
  store i64 %95, i64* %5, align 8
  br label %96

96:                                               ; preds = %94, %15
  %97 = load i64, i64* %5, align 8
  ret i64 %97
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
