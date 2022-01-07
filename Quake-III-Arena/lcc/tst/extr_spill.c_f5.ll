; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/tst/extr_spill.c_f5.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/tst/extr_spill.c_f5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A = common dso_local global i32* null, align 8
@k = common dso_local global i64 0, align 8
@m = common dso_local global i64 0, align 8
@j = common dso_local global i64 0, align 8
@B = common dso_local global i32* null, align 8
@n = common dso_local global i64 0, align 8
@x = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f5() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @A, align 8
  %3 = load i64, i64* @k, align 8
  %4 = load i64, i64* @m, align 8
  %5 = mul i64 %3, %4
  %6 = getelementptr inbounds i32, i32* %2, i64 %5
  %7 = load i32, i32* %6, align 4
  %8 = load i32*, i32** @A, align 8
  %9 = load i64, i64* @j, align 8
  %10 = load i64, i64* @m, align 8
  %11 = mul i64 %9, %10
  %12 = getelementptr inbounds i32, i32* %8, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %7, %13
  %15 = load i32*, i32** @B, align 8
  %16 = load i64, i64* @k, align 8
  %17 = load i64, i64* @n, align 8
  %18 = mul i64 %16, %17
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** @B, align 8
  %22 = load i64, i64* @j, align 8
  %23 = load i64, i64* @n, align 8
  %24 = mul i64 %22, %23
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %20, %26
  %28 = add nsw i32 %14, %27
  store i32 %28, i32* @x, align 4
  %29 = load i32*, i32** @A, align 8
  %30 = load i64, i64* @k, align 8
  %31 = load i64, i64* @m, align 8
  %32 = mul i64 %30, %31
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** @B, align 8
  %36 = load i64, i64* @j, align 8
  %37 = load i64, i64* @n, align 8
  %38 = mul i64 %36, %37
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %34, %40
  %42 = load i32*, i32** @B, align 8
  %43 = load i64, i64* @k, align 8
  %44 = load i64, i64* @n, align 8
  %45 = mul i64 %43, %44
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** @A, align 8
  %49 = load i64, i64* @j, align 8
  %50 = load i64, i64* @m, align 8
  %51 = mul i64 %49, %50
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %47, %53
  %55 = sub nsw i32 %41, %54
  store i32 %55, i32* @x, align 4
  %56 = load i32, i32* %1, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
