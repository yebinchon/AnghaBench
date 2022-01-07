; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sanm.c_codec37_mv.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sanm.c_codec37_mv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*, i32, i32, i32, i32)* @codec37_mv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codec37_mv(i64* %0, i64* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64* %0, i64** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* %10, align 4
  %19 = mul nsw i32 %17, %18
  %20 = add nsw i32 %16, %19
  store i32 %20, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %21

21:                                               ; preds = %72, %6
  %22 = load i32, i32* %15, align 4
  %23 = icmp slt i32 %22, 4
  br i1 %23, label %24, label %75

24:                                               ; preds = %21
  store i32 0, i32* %14, align 4
  br label %25

25:                                               ; preds = %57, %24
  %26 = load i32, i32* %14, align 4
  %27 = icmp slt i32 %26, 4
  br i1 %27, label %28, label %60

28:                                               ; preds = %25
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %14, align 4
  %31 = add nsw i32 %29, %30
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %14, align 4
  %36 = add nsw i32 %34, %35
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = mul nsw i32 %37, %38
  %40 = icmp sge i32 %36, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %33, %28
  %42 = load i64*, i64** %7, align 8
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  store i64 0, i64* %45, align 8
  br label %56

46:                                               ; preds = %33
  %47 = load i64*, i64** %8, align 8
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** %7, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  store i64 %51, i64* %55, align 8
  br label %56

56:                                               ; preds = %46, %41
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %14, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %14, align 4
  br label %25

60:                                               ; preds = %25
  %61 = load i32, i32* %10, align 4
  %62 = load i64*, i64** %7, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  store i64* %64, i64** %7, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i64*, i64** %8, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  store i64* %68, i64** %8, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %13, align 4
  br label %72

72:                                               ; preds = %60
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %15, align 4
  br label %21

75:                                               ; preds = %21
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
