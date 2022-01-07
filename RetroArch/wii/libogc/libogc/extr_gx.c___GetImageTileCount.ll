; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c___GetImageTileCount.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c___GetImageTileCount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32*, i32*, i32*)* @__GetImageTileCount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__GetImageTileCount(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %20 [
    i32 137, label %17
    i32 135, label %17
    i32 146, label %17
    i32 144, label %17
    i32 140, label %17
    i32 128, label %18
    i32 136, label %18
    i32 150, label %18
    i32 145, label %18
    i32 148, label %18
    i32 149, label %18
    i32 138, label %18
    i32 139, label %18
    i32 134, label %19
    i32 143, label %19
    i32 142, label %19
    i32 147, label %19
    i32 130, label %19
    i32 129, label %19
    i32 141, label %19
    i32 133, label %19
    i32 132, label %19
    i32 131, label %19
  ]

17:                                               ; preds = %6, %6, %6, %6, %6
  store i32 3, i32* %13, align 4
  store i32 3, i32* %14, align 4
  br label %21

18:                                               ; preds = %6, %6, %6, %6, %6, %6, %6, %6
  store i32 3, i32* %13, align 4
  store i32 2, i32* %14, align 4
  br label %21

19:                                               ; preds = %6, %6, %6, %6, %6, %6, %6, %6, %6, %6
  store i32 2, i32* %13, align 4
  store i32 2, i32* %14, align 4
  br label %21

20:                                               ; preds = %6
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %21

21:                                               ; preds = %20, %19, %18, %17
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, 65535
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i32 1, i32* %8, align 4
  br label %26

26:                                               ; preds = %25, %21
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, 65535
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i32 1, i32* %9, align 4
  br label %31

31:                                               ; preds = %30, %26
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, 65535
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %13, align 4
  %36 = shl i32 1, %35
  %37 = sub nsw i32 %36, 1
  %38 = add nsw i32 %34, %37
  %39 = load i32, i32* %13, align 4
  %40 = ashr i32 %38, %39
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i32*, i32** %10, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, 65535
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %14, align 4
  %47 = shl i32 1, %46
  %48 = sub nsw i32 %47, 1
  %49 = add nsw i32 %45, %48
  %50 = load i32, i32* %14, align 4
  %51 = ashr i32 %49, %50
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = load i32*, i32** %11, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32*, i32** %12, align 8
  store i32 1, i32* %54, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %55, 131
  br i1 %56, label %60, label %57

57:                                               ; preds = %31
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %58, 129
  br i1 %59, label %60, label %62

60:                                               ; preds = %57, %31
  %61 = load i32*, i32** %12, align 8
  store i32 2, i32* %61, align 4
  br label %62

62:                                               ; preds = %60, %57
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
