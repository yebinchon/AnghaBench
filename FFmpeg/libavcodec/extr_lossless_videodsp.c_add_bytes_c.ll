; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_lossless_videodsp.c_add_bytes_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_lossless_videodsp.c_add_bytes_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pb_7f = common dso_local global i64 0, align 8
@pb_80 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*, i32)* @add_bytes_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_bytes_c(i64* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  br label %10

10:                                               ; preds = %41, %3
  %11 = load i64, i64* %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sub nsw i32 %12, 8
  %14 = sext i32 %13 to i64
  %15 = icmp sle i64 %11, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %10
  %17 = load i64*, i64** %5, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  %21 = load i64*, i64** %4, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @pb_7f, align 8
  %27 = and i64 %25, %26
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @pb_7f, align 8
  %30 = and i64 %28, %29
  %31 = add nsw i64 %27, %30
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = xor i64 %32, %33
  %35 = load i64, i64* @pb_80, align 8
  %36 = and i64 %34, %35
  %37 = xor i64 %31, %36
  %38 = load i64*, i64** %4, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  store i64 %37, i64* %40, align 8
  br label %41

41:                                               ; preds = %16
  %42 = load i64, i64* %7, align 8
  %43 = add i64 %42, 8
  store i64 %43, i64* %7, align 8
  br label %10

44:                                               ; preds = %10
  br label %45

45:                                               ; preds = %62, %44
  %46 = load i64, i64* %7, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp slt i64 %46, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %45
  %51 = load i64*, i64** %5, align 8
  %52 = load i64, i64* %7, align 8
  %53 = add nsw i64 %52, 0
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load i64*, i64** %4, align 8
  %57 = load i64, i64* %7, align 8
  %58 = add nsw i64 %57, 0
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, %55
  store i64 %61, i64* %59, align 8
  br label %62

62:                                               ; preds = %50
  %63 = load i64, i64* %7, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %7, align 8
  br label %45

65:                                               ; preds = %45
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
