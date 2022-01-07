; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pngdsp.c_add_bytes_l2_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pngdsp.c_add_bytes_l2_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pb_7f = common dso_local global i64 0, align 8
@pb_80 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*, i64*, i32)* @add_bytes_l2_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_bytes_l2_c(i64* %0, i64* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %9, align 8
  br label %12

12:                                               ; preds = %43, %4
  %13 = load i64, i64* %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = sub nsw i32 %14, 8
  %16 = sext i32 %15 to i64
  %17 = icmp sle i64 %13, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %12
  %19 = load i64*, i64** %6, align 8
  %20 = load i64, i64* %9, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = load i64*, i64** %7, align 8
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* @pb_7f, align 8
  %29 = and i64 %27, %28
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* @pb_7f, align 8
  %32 = and i64 %30, %31
  %33 = add nsw i64 %29, %32
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %11, align 8
  %36 = xor i64 %34, %35
  %37 = load i64, i64* @pb_80, align 8
  %38 = and i64 %36, %37
  %39 = xor i64 %33, %38
  %40 = load i64*, i64** %5, align 8
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  store i64 %39, i64* %42, align 8
  br label %43

43:                                               ; preds = %18
  %44 = load i64, i64* %9, align 8
  %45 = add i64 %44, 8
  store i64 %45, i64* %9, align 8
  br label %12

46:                                               ; preds = %12
  br label %47

47:                                               ; preds = %65, %46
  %48 = load i64, i64* %9, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp slt i64 %48, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %47
  %53 = load i64*, i64** %6, align 8
  %54 = load i64, i64* %9, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i64*, i64** %7, align 8
  %58 = load i64, i64* %9, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %56, %60
  %62 = load i64*, i64** %5, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  store i64 %61, i64* %64, align 8
  br label %65

65:                                               ; preds = %52
  %66 = load i64, i64* %9, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %9, align 8
  br label %47

68:                                               ; preds = %47
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
