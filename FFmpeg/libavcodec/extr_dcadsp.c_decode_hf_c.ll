; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcadsp.c_decode_hf_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcadsp.c_decode_hf_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64**, i64*, [32 x i64]*, [2 x i64]*, i32, i32, i32, i32)* @decode_hf_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_hf_c(i64** %0, i64* %1, [32 x i64]* %2, [2 x i64]* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i64**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca [32 x i64]*, align 8
  %12 = alloca [2 x i64]*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64*, align 8
  %20 = alloca i64, align 8
  store i64** %0, i64*** %9, align 8
  store i64* %1, i64** %10, align 8
  store [32 x i64]* %2, [32 x i64]** %11, align 8
  store [2 x i64]* %3, [2 x i64]** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %21 = load i32, i32* %13, align 4
  store i32 %21, i32* %17, align 4
  br label %22

22:                                               ; preds = %70, %8
  %23 = load i32, i32* %17, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %73

26:                                               ; preds = %22
  %27 = load [32 x i64]*, [32 x i64]** %11, align 8
  %28 = load i64*, i64** %10, align 8
  %29 = load i32, i32* %17, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds [32 x i64], [32 x i64]* %27, i64 %32
  %34 = getelementptr inbounds [32 x i64], [32 x i64]* %33, i64 0, i64 0
  store i64* %34, i64** %19, align 8
  %35 = load [2 x i64]*, [2 x i64]** %12, align 8
  %36 = load i32, i32* %17, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [2 x i64], [2 x i64]* %35, i64 %37
  %39 = getelementptr inbounds [2 x i64], [2 x i64]* %38, i64 0, i64 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %20, align 8
  store i32 0, i32* %18, align 4
  br label %41

41:                                               ; preds = %66, %26
  %42 = load i32, i32* %18, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %69

45:                                               ; preds = %41
  %46 = load i64*, i64** %19, align 8
  %47 = load i32, i32* %18, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %20, align 8
  %52 = mul i64 %50, %51
  %53 = add i64 %52, 8
  %54 = lshr i64 %53, 4
  %55 = call i64 @clip23(i64 %54)
  %56 = load i64**, i64*** %9, align 8
  %57 = load i32, i32* %17, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64*, i64** %56, i64 %58
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %18, align 4
  %62 = load i32, i32* %15, align 4
  %63 = add nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %60, i64 %64
  store i64 %55, i64* %65, align 8
  br label %66

66:                                               ; preds = %45
  %67 = load i32, i32* %18, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %18, align 4
  br label %41

69:                                               ; preds = %41
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %17, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %17, align 4
  br label %22

73:                                               ; preds = %22
  ret void
}

declare dso_local i64 @clip23(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
