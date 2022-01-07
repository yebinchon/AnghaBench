; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c_convert.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = sub nsw i32 %6, 19070976
  %8 = icmp eq i32 %7, 17767
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 255, i32* %2, align 4
  br label %30

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = sub nsw i32 %11, 19070976
  %13 = icmp eq i32 %12, 17768
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 254, i32* %2, align 4
  br label %30

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %15
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @_SHIFTR(i32 %17, i32 24, i32 8)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, 16777215
  %21 = call i32 @err2num(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp sgt i32 %22, 6
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 6, i32* %4, align 4
  br label %25

25:                                               ; preds = %24, %16
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = mul nsw i32 %27, 30
  %29 = add nsw i32 %26, %28
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %25, %14, %9
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @_SHIFTR(i32, i32, i32) #1

declare dso_local i32 @err2num(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
