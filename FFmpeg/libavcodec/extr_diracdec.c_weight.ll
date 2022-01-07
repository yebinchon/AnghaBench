; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_diracdec.c_weight.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_diracdec.c_weight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @weight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @weight(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %7, align 4
  %10 = mul nsw i32 2, %9
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %33

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 5, i32 3
  br label %31

20:                                               ; preds = %12
  %21 = load i32, i32* %5, align 4
  %22 = mul nsw i32 6, %21
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %22, %23
  %25 = sub nsw i32 %24, 1
  %26 = load i32, i32* %7, align 4
  %27 = mul nsw i32 2, %26
  %28 = sub nsw i32 %27, 1
  %29 = sdiv i32 %25, %28
  %30 = add nsw i32 1, %29
  br label %31

31:                                               ; preds = %20, %15
  %32 = phi i32 [ %19, %15 ], [ %30, %20 ]
  store i32 %32, i32* %4, align 4
  br label %70

33:                                               ; preds = %3
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = sub nsw i32 %35, 1
  %37 = load i32, i32* %7, align 4
  %38 = mul nsw i32 2, %37
  %39 = sub nsw i32 %36, %38
  %40 = icmp sgt i32 %34, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %33
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i32, i32* %6, align 4
  %46 = sub nsw i32 %45, 1
  %47 = load i32, i32* %5, align 4
  %48 = sub nsw i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 5, i32 3
  br label %66

52:                                               ; preds = %41
  %53 = load i32, i32* %6, align 4
  %54 = sub nsw i32 %53, 1
  %55 = load i32, i32* %5, align 4
  %56 = sub nsw i32 %54, %55
  %57 = mul nsw i32 6, %56
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %57, %58
  %60 = sub nsw i32 %59, 1
  %61 = load i32, i32* %7, align 4
  %62 = mul nsw i32 2, %61
  %63 = sub nsw i32 %62, 1
  %64 = sdiv i32 %60, %63
  %65 = add nsw i32 1, %64
  br label %66

66:                                               ; preds = %52, %44
  %67 = phi i32 [ %51, %44 ], [ %65, %52 ]
  store i32 %67, i32* %4, align 4
  br label %70

68:                                               ; preds = %33
  br label %69

69:                                               ; preds = %68
  store i32 8, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %66, %31
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
