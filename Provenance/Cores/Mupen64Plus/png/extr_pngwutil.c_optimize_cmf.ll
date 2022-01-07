; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngwutil.c_optimize_cmf.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngwutil.c_optimize_cmf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @optimize_cmf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @optimize_cmf(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp sle i32 %9, 16384
  br i1 %10, label %11, label %72

11:                                               ; preds = %2
  %12 = load i32*, i32** %3, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 15
  %17 = icmp eq i32 %16, 8
  br i1 %17, label %18, label %71

18:                                               ; preds = %11
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 240
  %21 = icmp ule i32 %20, 112
  br i1 %21, label %22, label %71

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = lshr i32 %23, 4
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add i32 %25, 7
  %27 = shl i32 1, %26
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ule i32 %28, %29
  br i1 %30, label %31, label %70

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %44, %31
  %33 = load i32, i32* %7, align 4
  %34 = lshr i32 %33, 1
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %35, -1
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  %39 = icmp ugt i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ule i32 %41, %42
  br label %44

44:                                               ; preds = %40, %37
  %45 = phi i1 [ false, %37 ], [ %43, %40 ]
  br i1 %45, label %32, label %46

46:                                               ; preds = %44
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, 15
  %49 = load i32, i32* %6, align 4
  %50 = shl i32 %49, 4
  %51 = or i32 %48, %50
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32*, i32** %3, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 %52, i32* %54, align 4
  %55 = load i32*, i32** %3, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 224
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %5, align 4
  %60 = shl i32 %59, 8
  %61 = load i32, i32* %8, align 4
  %62 = add i32 %60, %61
  %63 = urem i32 %62, 31
  %64 = sub i32 31, %63
  %65 = load i32, i32* %8, align 4
  %66 = add i32 %65, %64
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32*, i32** %3, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %46, %22
  br label %71

71:                                               ; preds = %70, %18, %11
  br label %72

72:                                               ; preds = %71, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
