; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_PokeBlendMode.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_PokeBlendMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_peReg = common dso_local global i32* null, align 8
@GX_BM_BLEND = common dso_local global i64 0, align 8
@GX_BM_SUBTRACT = common dso_local global i64 0, align 8
@GX_BM_LOGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_PokeBlendMode(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i32*, i32** @_peReg, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = and i32 %13, -2
  store i32 %14, i32* %9, align 4
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @GX_BM_BLEND, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @GX_BM_SUBTRACT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18, %4
  %23 = load i32, i32* %9, align 4
  %24 = or i32 %23, 1
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %22, %18
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %26, -2049
  store i32 %27, i32* %9, align 4
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @GX_BM_SUBTRACT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* %9, align 4
  %33 = or i32 %32, 2048
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %31, %25
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %35, -3
  store i32 %36, i32* %9, align 4
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @GX_BM_LOGIC, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, 2
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %40, %34
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %44, -61441
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @_SHIFTL(i64 %46, i32 12, i32 4)
  %48 = or i32 %45, %47
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, -225
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @_SHIFTL(i64 %51, i32 5, i32 3)
  %53 = or i32 %50, %52
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = and i32 %54, -1793
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @_SHIFTL(i64 %56, i32 8, i32 3)
  %58 = or i32 %55, %57
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %59, 1090519040
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32*, i32** @_peReg, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  store i32 %61, i32* %63, align 4
  ret void
}

declare dso_local i32 @_SHIFTL(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
