; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_do_map_r.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_do_map_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@memory_map = common dso_local global i64 0, align 8
@dynarec_local = common dso_local global i32 0, align 4
@FP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_map_r(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %20 = load i32, i32* %18, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %9
  store i32 -1, i32* %10, align 4
  br label %62

23:                                               ; preds = %9
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32, i32* %14, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @emit_addsr12(i32 %32, i32 %33, i32 %34)
  br label %47

36:                                               ; preds = %23
  %37 = load i64, i64* @memory_map, align 8
  %38 = trunc i64 %37 to i32
  %39 = sub nsw i32 %38, ptrtoint (i32* @dynarec_local to i32)
  %40 = ashr i32 %39, 2
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @emit_movimm(i32 %40, i32 %41)
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @emit_addsr12(i32 %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %36, %31
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @emit_xorimm(i32 %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %47
  %56 = load i32, i32* @FP, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @emit_readword_dualindexedx4(i32 %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %60, %22
  %63 = load i32, i32* %10, align 4
  ret i32 %63
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @emit_addsr12(i32, i32, i32) #1

declare dso_local i32 @emit_movimm(i32, i32) #1

declare dso_local i32 @emit_xorimm(i32, i32, i32) #1

declare dso_local i32 @emit_readword_dualindexedx4(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
