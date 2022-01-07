; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_signature_lookup.c_fill_l1distlut.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_signature_lookup.c_fill_l1distlut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*)* @fill_l1distlut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_l1distlut(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %54, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 242
  br i1 %11, label %12, label %57

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %48, %12
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 243
  br i1 %17, label %18, label %53

18:                                               ; preds = %15
  store i64 0, i64* %8, align 8
  %19 = load i32, i32* %3, align 4
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %40, %18
  %22 = load i32, i32* %6, align 4
  %23 = srem i32 %22, 3
  %24 = load i32, i32* %5, align 4
  %25 = srem i32 %24, 3
  %26 = sub nsw i32 %23, %25
  %27 = call i64 @FFABS(i32 %26)
  %28 = load i64, i64* %8, align 8
  %29 = add nsw i64 %28, %27
  store i64 %29, i64* %8, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sdiv i32 %30, 3
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = sdiv i32 %32, 3
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %21
  %35 = load i32, i32* %5, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  %39 = icmp sgt i32 %38, 0
  br label %40

40:                                               ; preds = %37, %34
  %41 = phi i1 [ true, %34 ], [ %39, %37 ]
  br i1 %41, label %21, label %42

42:                                               ; preds = %40
  %43 = load i64, i64* %8, align 8
  %44 = load i64*, i64** %2, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  store i64 %43, i64* %47, align 8
  br label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %15

53:                                               ; preds = %15
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %9

57:                                               ; preds = %9
  ret void
}

declare dso_local i64 @FFABS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
