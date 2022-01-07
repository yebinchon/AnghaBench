; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_hscale_fast_bilinear.c_ff_hcscale_fast_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_hscale_fast_bilinear.c_ff_hcscale_fast_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_hcscale_fast_c(i32* %0, i32* %1, i32* %2, i32 %3, i32* %4, i32* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %21

21:                                               ; preds = %76, %8
  %22 = load i32, i32* %17, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %79

25:                                               ; preds = %21
  %26 = load i32, i32* %18, align 4
  %27 = lshr i32 %26, 16
  store i32 %27, i32* %19, align 4
  %28 = load i32, i32* %18, align 4
  %29 = and i32 %28, 65535
  %30 = lshr i32 %29, 9
  store i32 %30, i32* %20, align 4
  %31 = load i32*, i32** %13, align 8
  %32 = load i32, i32* %19, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %20, align 4
  %37 = xor i32 %36, 127
  %38 = mul i32 %35, %37
  %39 = load i32*, i32** %13, align 8
  %40 = load i32, i32* %19, align 4
  %41 = add i32 %40, 1
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %20, align 4
  %46 = mul i32 %44, %45
  %47 = add i32 %38, %46
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* %17, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %47, i32* %51, align 4
  %52 = load i32*, i32** %14, align 8
  %53 = load i32, i32* %19, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %20, align 4
  %58 = xor i32 %57, 127
  %59 = mul i32 %56, %58
  %60 = load i32*, i32** %14, align 8
  %61 = load i32, i32* %19, align 4
  %62 = add i32 %61, 1
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %20, align 4
  %67 = mul i32 %65, %66
  %68 = add i32 %59, %67
  %69 = load i32*, i32** %11, align 8
  %70 = load i32, i32* %17, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %68, i32* %72, align 4
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %18, align 4
  %75 = add i32 %74, %73
  store i32 %75, i32* %18, align 4
  br label %76

76:                                               ; preds = %25
  %77 = load i32, i32* %17, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %17, align 4
  br label %21

79:                                               ; preds = %21
  %80 = load i32, i32* %12, align 4
  %81 = sub nsw i32 %80, 1
  store i32 %81, i32* %17, align 4
  br label %82

82:                                               ; preds = %113, %79
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* %16, align 4
  %85 = mul nsw i32 %83, %84
  %86 = ashr i32 %85, 16
  %87 = load i32, i32* %15, align 4
  %88 = sub nsw i32 %87, 1
  %89 = icmp sge i32 %86, %88
  br i1 %89, label %90, label %116

90:                                               ; preds = %82
  %91 = load i32*, i32** %13, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = mul i32 %96, 128
  %98 = load i32*, i32** %10, align 8
  %99 = load i32, i32* %17, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %97, i32* %101, align 4
  %102 = load i32*, i32** %14, align 8
  %103 = load i32, i32* %15, align 4
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = mul i32 %107, 128
  %109 = load i32*, i32** %11, align 8
  %110 = load i32, i32* %17, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %108, i32* %112, align 4
  br label %113

113:                                              ; preds = %90
  %114 = load i32, i32* %17, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %17, align 4
  br label %82

116:                                              ; preds = %82
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
