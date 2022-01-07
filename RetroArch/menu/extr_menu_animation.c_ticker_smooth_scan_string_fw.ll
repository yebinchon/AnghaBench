; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_ticker_smooth_scan_string_fw.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_ticker_smooth_scan_string_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32, i32, i32*, i32*, i32*)* @ticker_smooth_scan_string_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ticker_smooth_scan_string_fw(i64 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i64 %0, i64* %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  store i32 0, i32* %15, align 4
  %16 = load i32*, i32** %12, align 8
  store i32 0, i32* %16, align 4
  %17 = load i32*, i32** %13, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32*, i32** %14, align 8
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ugt i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %7
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %9, align 4
  %24 = udiv i32 %22, %23
  %25 = add i32 %24, 1
  %26 = load i32*, i32** %12, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %9, align 4
  %30 = urem i32 %28, %29
  %31 = sub i32 %27, %30
  %32 = load i32*, i32** %14, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %21, %7
  %34 = load i32*, i32** %12, align 8
  %35 = load i32, i32* %34, align 4
  %36 = zext i32 %35 to i64
  %37 = load i64, i64* %8, align 8
  %38 = icmp uge i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %46

40:                                               ; preds = %33
  %41 = load i64, i64* %8, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = load i32, i32* %42, align 4
  %44 = zext i32 %43 to i64
  %45 = sub i64 %41, %44
  br label %46

46:                                               ; preds = %40, %39
  %47 = phi i64 [ 0, %39 ], [ %45, %40 ]
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp ugt i32 %49, 0
  br i1 %50, label %51, label %76

51:                                               ; preds = %46
  %52 = load i32, i32* %10, align 4
  %53 = load i32*, i32** %14, align 8
  %54 = load i32, i32* %53, align 4
  %55 = icmp ugt i32 %52, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %51
  %57 = load i32, i32* %10, align 4
  %58 = load i32*, i32** %14, align 8
  %59 = load i32, i32* %58, align 4
  %60 = sub i32 %57, %59
  %61 = load i32, i32* %9, align 4
  %62 = udiv i32 %60, %61
  %63 = load i32*, i32** %13, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32*, i32** %13, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp ugt i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %56
  %69 = load i32, i32* %15, align 4
  br label %73

70:                                               ; preds = %56
  %71 = load i32*, i32** %13, align 8
  %72 = load i32, i32* %71, align 4
  br label %73

73:                                               ; preds = %70, %68
  %74 = phi i32 [ %69, %68 ], [ %72, %70 ]
  %75 = load i32*, i32** %13, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %51, %46
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
