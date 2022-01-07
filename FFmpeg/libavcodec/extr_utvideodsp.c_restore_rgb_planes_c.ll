; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_utvideodsp.c_restore_rgb_planes_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_utvideodsp.c_restore_rgb_planes_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*, i64*, i32, i32, i32, i32, i32)* @restore_rgb_planes_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_rgb_planes_c(i64* %0, i64* %1, i64* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i64* %0, i64** %9, align 8
  store i64* %1, i64** %10, align 8
  store i64* %2, i64** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %79, %8
  %23 = load i32, i32* %21, align 4
  %24 = load i32, i32* %16, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %82

26:                                               ; preds = %22
  store i32 0, i32* %20, align 4
  br label %27

27:                                               ; preds = %63, %26
  %28 = load i32, i32* %20, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %66

31:                                               ; preds = %27
  %32 = load i64*, i64** %9, align 8
  %33 = load i32, i32* %20, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %17, align 8
  %37 = load i64*, i64** %10, align 8
  %38 = load i32, i32* %20, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %18, align 8
  %42 = load i64*, i64** %11, align 8
  %43 = load i32, i32* %20, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %19, align 8
  %47 = load i64, i64* %17, align 8
  %48 = load i64, i64* %18, align 8
  %49 = add nsw i64 %47, %48
  %50 = sub nsw i64 %49, 128
  %51 = load i64*, i64** %9, align 8
  %52 = load i32, i32* %20, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  store i64 %50, i64* %54, align 8
  %55 = load i64, i64* %19, align 8
  %56 = load i64, i64* %18, align 8
  %57 = add nsw i64 %55, %56
  %58 = sub nsw i64 %57, 128
  %59 = load i64*, i64** %11, align 8
  %60 = load i32, i32* %20, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  store i64 %58, i64* %62, align 8
  br label %63

63:                                               ; preds = %31
  %64 = load i32, i32* %20, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %20, align 4
  br label %27

66:                                               ; preds = %27
  %67 = load i32, i32* %12, align 4
  %68 = load i64*, i64** %9, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  store i64* %70, i64** %9, align 8
  %71 = load i32, i32* %13, align 4
  %72 = load i64*, i64** %10, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  store i64* %74, i64** %10, align 8
  %75 = load i32, i32* %14, align 4
  %76 = load i64*, i64** %11, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  store i64* %78, i64** %11, align 8
  br label %79

79:                                               ; preds = %66
  %80 = load i32, i32* %21, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %21, align 4
  br label %22

82:                                               ; preds = %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
