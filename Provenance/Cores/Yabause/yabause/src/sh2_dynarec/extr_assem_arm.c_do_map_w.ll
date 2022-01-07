; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_do_map_w.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_do_map_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FP = common dso_local global i32 0, align 4
@memory_map = common dso_local global i64 0, align 8
@dynarec_local = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_map_w(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %16 = load i32, i32* %14, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %7
  %19 = load i32, i32* %15, align 4
  %20 = call i64 @can_direct_write(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32, i32* @FP, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @emit_readword_dualindexedx4(i32 %23, i32 %24, i32 %25)
  br label %28

27:                                               ; preds = %18
  store i32 -1, i32* %8, align 4
  br label %68

28:                                               ; preds = %22
  br label %66

29:                                               ; preds = %7
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32, i32* %12, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @emit_addsr12(i32 %38, i32 %39, i32 %40)
  br label %53

42:                                               ; preds = %29
  %43 = load i64, i64* @memory_map, align 8
  %44 = trunc i64 %43 to i32
  %45 = sub nsw i32 %44, ptrtoint (i32* @dynarec_local to i32)
  %46 = ashr i32 %45, 2
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @emit_movimm(i32 %46, i32 %47)
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @emit_addsr12(i32 %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %42, %37
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @emit_xorimm(i32 %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %56, %53
  %62 = load i32, i32* @FP, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @emit_readword_dualindexedx4(i32 %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %61, %28
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %66, %27
  %69 = load i32, i32* %8, align 4
  ret i32 %69
}

declare dso_local i64 @can_direct_write(i32) #1

declare dso_local i32 @emit_readword_dualindexedx4(i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @emit_addsr12(i32, i32, i32) #1

declare dso_local i32 @emit_movimm(i32, i32) #1

declare dso_local i32 @emit_xorimm(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
