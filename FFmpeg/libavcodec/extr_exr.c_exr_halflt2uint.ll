; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_exr.c_exr_halflt2uint.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_exr.c_exr_halflt2uint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @exr_halflt2uint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exr_halflt2uint(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = ashr i32 %5, 10
  %7 = sub nsw i32 14, %6
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp uge i32 %8, 14
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 14
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = ashr i32 %14, 9
  %16 = and i32 %15, 1
  store i32 %16, i32* %2, align 4
  br label %31

17:                                               ; preds = %10
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, 32768
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 0, i32 65535
  store i32 %22, i32* %2, align 4
  br label %31

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = shl i32 %24, 6
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 65536
  %28 = load i32, i32* %4, align 4
  %29 = add i32 %28, 1
  %30 = ashr i32 %27, %29
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %23, %17, %13
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
