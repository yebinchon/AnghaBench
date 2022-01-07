; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_amerge.c_copy_samples.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_amerge.c_copy_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amerge_input = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.amerge_input*, i32*, i32**, i32**, i32, i32)* @copy_samples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_samples(i32 %0, %struct.amerge_input* %1, i32* %2, i32** %3, i32** %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.amerge_input*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.amerge_input* %1, %struct.amerge_input** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32** %3, i32*** %11, align 8
  store i32** %4, i32*** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %16, align 4
  br label %19

19:                                               ; preds = %32, %7
  %20 = load i32, i32* %16, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load %struct.amerge_input*, %struct.amerge_input** %9, align 8
  %25 = load i32, i32* %16, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.amerge_input, %struct.amerge_input* %24, i64 %26
  %28 = getelementptr inbounds %struct.amerge_input, %struct.amerge_input* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %18, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %18, align 4
  br label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %16, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %16, align 4
  br label %19

35:                                               ; preds = %19
  br label %36

36:                                               ; preds = %88, %35
  %37 = load i32, i32* %13, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %13, align 4
  %39 = icmp ne i32 %37, 0
  br i1 %39, label %40, label %96

40:                                               ; preds = %36
  %41 = load i32*, i32** %10, align 8
  store i32* %41, i32** %15, align 8
  store i32 0, i32* %16, align 4
  br label %42

42:                                               ; preds = %85, %40
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %88

46:                                               ; preds = %42
  store i32 0, i32* %17, align 4
  br label %47

47:                                               ; preds = %81, %46
  %48 = load i32, i32* %17, align 4
  %49 = load %struct.amerge_input*, %struct.amerge_input** %9, align 8
  %50 = load i32, i32* %16, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.amerge_input, %struct.amerge_input* %49, i64 %51
  %53 = getelementptr inbounds %struct.amerge_input, %struct.amerge_input* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %48, %54
  br i1 %55, label %56, label %84

56:                                               ; preds = %47
  %57 = load i32**, i32*** %12, align 8
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %14, align 4
  %60 = load i32*, i32** %15, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %15, align 8
  %62 = load i32, i32* %60, align 4
  %63 = mul nsw i32 %59, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %58, i64 %64
  %66 = load i32**, i32*** %11, align 8
  %67 = load i32, i32* %16, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @memcpy(i32* %65, i32* %70, i32 %71)
  %73 = load i32, i32* %14, align 4
  %74 = load i32**, i32*** %11, align 8
  %75 = load i32, i32* %16, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32*, i32** %74, i64 %76
  %78 = load i32*, i32** %77, align 8
  %79 = sext i32 %73 to i64
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32* %80, i32** %77, align 8
  br label %81

81:                                               ; preds = %56
  %82 = load i32, i32* %17, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %17, align 4
  br label %47

84:                                               ; preds = %47
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %16, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %16, align 4
  br label %42

88:                                               ; preds = %42
  %89 = load i32, i32* %18, align 4
  %90 = load i32, i32* %14, align 4
  %91 = mul nsw i32 %89, %90
  %92 = load i32**, i32*** %12, align 8
  %93 = load i32*, i32** %92, align 8
  %94 = sext i32 %91 to i64
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32* %95, i32** %92, align 8
  br label %36

96:                                               ; preds = %36
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
