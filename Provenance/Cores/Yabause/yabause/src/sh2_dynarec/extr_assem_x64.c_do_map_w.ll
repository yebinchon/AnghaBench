; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_do_map_w.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_do_map_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@memory_map = common dso_local global i64 0, align 8

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
  br i1 %17, label %18, label %33

18:                                               ; preds = %7
  %19 = load i32, i32* %15, align 4
  %20 = call i64 @can_direct_write(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load i64, i64* @memory_map, align 8
  %24 = load i32, i32* %15, align 4
  %25 = ashr i32 %24, 12
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %23, %26
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @emit_movq(i32 %28, i32 %29)
  br label %32

31:                                               ; preds = %18
  store i32 -1, i32* %8, align 4
  br label %63

32:                                               ; preds = %22
  br label %58

33:                                               ; preds = %7
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @emit_mov(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @emit_shrimm(i32 %42, i32 12, i32 %43)
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @emit_xorimm(i32 %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %47, %41
  %53 = load i64, i64* @memory_map, align 8
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @emit_movmem_indexedx8_64(i32 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %52, %32
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @emit_shlimm64(i32 %59, i32 2, i32 %60)
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %58, %31
  %64 = load i32, i32* %8, align 4
  ret i32 %64
}

declare dso_local i64 @can_direct_write(i32) #1

declare dso_local i32 @emit_movq(i32, i32) #1

declare dso_local i32 @emit_mov(i32, i32) #1

declare dso_local i32 @emit_shrimm(i32, i32, i32) #1

declare dso_local i32 @emit_xorimm(i32, i32, i32) #1

declare dso_local i32 @emit_movmem_indexedx8_64(i32, i32, i32) #1

declare dso_local i32 @emit_shlimm64(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
