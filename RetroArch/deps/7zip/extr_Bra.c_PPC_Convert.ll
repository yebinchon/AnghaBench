; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/7zip/extr_Bra.c_PPC_Convert.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/7zip/extr_Bra.c_PPC_Convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PPC_Convert(i32* %0, i64 %1, i32 %2, i32 %3) #0 {
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
  br label %123

16:                                               ; preds = %4
  %17 = load i64, i64* %7, align 8
  %18 = sub i64 %17, 4
  store i64 %18, i64* %7, align 8
  store i64 0, i64* %10, align 8
  br label %19

19:                                               ; preds = %118, %16
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp ule i64 %20, %21
  br i1 %22, label %23, label %121

23:                                               ; preds = %19
  %24 = load i32*, i32** %6, align 8
  %25 = load i64, i64* %10, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 2
  %29 = icmp eq i32 %28, 18
  br i1 %29, label %30, label %117

30:                                               ; preds = %23
  %31 = load i32*, i32** %6, align 8
  %32 = load i64, i64* %10, align 8
  %33 = add i64 %32, 3
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 3
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %117

38:                                               ; preds = %30
  %39 = load i32*, i32** %6, align 8
  %40 = load i64, i64* %10, align 8
  %41 = add i64 %40, 0
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 3
  %45 = shl i32 %44, 24
  %46 = load i32*, i32** %6, align 8
  %47 = load i64, i64* %10, align 8
  %48 = add i64 %47, 1
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 16
  %52 = or i32 %45, %51
  %53 = load i32*, i32** %6, align 8
  %54 = load i64, i64* %10, align 8
  %55 = add i64 %54, 2
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 8
  %59 = or i32 %52, %58
  %60 = load i32*, i32** %6, align 8
  %61 = load i64, i64* %10, align 8
  %62 = add i64 %61, 3
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, -4
  %66 = or i32 %59, %65
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %38
  %70 = load i32, i32* %8, align 4
  %71 = load i64, i64* %10, align 8
  %72 = trunc i64 %71 to i32
  %73 = add nsw i32 %70, %72
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %73, %74
  store i32 %75, i32* %12, align 4
  br label %83

76:                                               ; preds = %38
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i64, i64* %10, align 8
  %80 = trunc i64 %79 to i32
  %81 = add nsw i32 %78, %80
  %82 = sub nsw i32 %77, %81
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %76, %69
  %84 = load i32, i32* %12, align 4
  %85 = ashr i32 %84, 24
  %86 = and i32 %85, 3
  %87 = or i32 72, %86
  %88 = load i32*, i32** %6, align 8
  %89 = load i64, i64* %10, align 8
  %90 = add i64 %89, 0
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %87, i32* %91, align 4
  %92 = load i32, i32* %12, align 4
  %93 = ashr i32 %92, 16
  %94 = load i32*, i32** %6, align 8
  %95 = load i64, i64* %10, align 8
  %96 = add i64 %95, 1
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %93, i32* %97, align 4
  %98 = load i32, i32* %12, align 4
  %99 = ashr i32 %98, 8
  %100 = load i32*, i32** %6, align 8
  %101 = load i64, i64* %10, align 8
  %102 = add i64 %101, 2
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %99, i32* %103, align 4
  %104 = load i32*, i32** %6, align 8
  %105 = load i64, i64* %10, align 8
  %106 = add i64 %105, 3
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 3
  store i32 %109, i32* %107, align 4
  %110 = load i32, i32* %12, align 4
  %111 = load i32*, i32** %6, align 8
  %112 = load i64, i64* %10, align 8
  %113 = add i64 %112, 3
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %110
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %83, %30, %23
  br label %118

118:                                              ; preds = %117
  %119 = load i64, i64* %10, align 8
  %120 = add i64 %119, 4
  store i64 %120, i64* %10, align 8
  br label %19

121:                                              ; preds = %19
  %122 = load i64, i64* %10, align 8
  store i64 %122, i64* %5, align 8
  br label %123

123:                                              ; preds = %121, %15
  %124 = load i64, i64* %5, align 8
  ret i64 %124
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
