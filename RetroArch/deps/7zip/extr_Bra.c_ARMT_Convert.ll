; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/7zip/extr_Bra.c_ARMT_Convert.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/7zip/extr_Bra.c_ARMT_Convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ARMT_Convert(i32* %0, i64 %1, i32 %2, i32 %3) #0 {
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
  br label %126

16:                                               ; preds = %4
  %17 = load i64, i64* %7, align 8
  %18 = sub i64 %17, 4
  store i64 %18, i64* %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %19, 4
  store i32 %20, i32* %8, align 4
  store i64 0, i64* %10, align 8
  br label %21

21:                                               ; preds = %121, %16
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ule i64 %22, %23
  br i1 %24, label %25, label %124

25:                                               ; preds = %21
  %26 = load i32*, i32** %6, align 8
  %27 = load i64, i64* %10, align 8
  %28 = add i64 %27, 1
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 248
  %32 = icmp eq i32 %31, 240
  br i1 %32, label %33, label %120

33:                                               ; preds = %25
  %34 = load i32*, i32** %6, align 8
  %35 = load i64, i64* %10, align 8
  %36 = add i64 %35, 3
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 248
  %40 = icmp eq i32 %39, 248
  br i1 %40, label %41, label %120

41:                                               ; preds = %33
  %42 = load i32*, i32** %6, align 8
  %43 = load i64, i64* %10, align 8
  %44 = add i64 %43, 1
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 7
  %48 = shl i32 %47, 19
  %49 = load i32*, i32** %6, align 8
  %50 = load i64, i64* %10, align 8
  %51 = add i64 %50, 0
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 11
  %55 = or i32 %48, %54
  %56 = load i32*, i32** %6, align 8
  %57 = load i64, i64* %10, align 8
  %58 = add i64 %57, 3
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 7
  %62 = shl i32 %61, 8
  %63 = or i32 %55, %62
  %64 = load i32*, i32** %6, align 8
  %65 = load i64, i64* %10, align 8
  %66 = add i64 %65, 2
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %63, %68
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = shl i32 %70, 1
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %41
  %75 = load i32, i32* %8, align 4
  %76 = load i64, i64* %10, align 8
  %77 = trunc i64 %76 to i32
  %78 = add nsw i32 %75, %77
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %78, %79
  store i32 %80, i32* %11, align 4
  br label %88

81:                                               ; preds = %41
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i64, i64* %10, align 8
  %85 = trunc i64 %84 to i32
  %86 = add nsw i32 %83, %85
  %87 = sub nsw i32 %82, %86
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %81, %74
  %89 = load i32, i32* %11, align 4
  %90 = ashr i32 %89, 1
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = ashr i32 %91, 19
  %93 = and i32 %92, 7
  %94 = or i32 240, %93
  %95 = load i32*, i32** %6, align 8
  %96 = load i64, i64* %10, align 8
  %97 = add i64 %96, 1
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %94, i32* %98, align 4
  %99 = load i32, i32* %11, align 4
  %100 = ashr i32 %99, 11
  %101 = load i32*, i32** %6, align 8
  %102 = load i64, i64* %10, align 8
  %103 = add i64 %102, 0
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %100, i32* %104, align 4
  %105 = load i32, i32* %11, align 4
  %106 = ashr i32 %105, 8
  %107 = and i32 %106, 7
  %108 = or i32 248, %107
  %109 = load i32*, i32** %6, align 8
  %110 = load i64, i64* %10, align 8
  %111 = add i64 %110, 3
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %108, i32* %112, align 4
  %113 = load i32, i32* %11, align 4
  %114 = load i32*, i32** %6, align 8
  %115 = load i64, i64* %10, align 8
  %116 = add i64 %115, 2
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %113, i32* %117, align 4
  %118 = load i64, i64* %10, align 8
  %119 = add i64 %118, 2
  store i64 %119, i64* %10, align 8
  br label %120

120:                                              ; preds = %88, %33, %25
  br label %121

121:                                              ; preds = %120
  %122 = load i64, i64* %10, align 8
  %123 = add i64 %122, 2
  store i64 %123, i64* %10, align 8
  br label %21

124:                                              ; preds = %21
  %125 = load i64, i64* %10, align 8
  store i64 %125, i64* %5, align 8
  br label %126

126:                                              ; preds = %124, %15
  %127 = load i64, i64* %5, align 8
  ret i64 %127
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
