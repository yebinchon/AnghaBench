; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x86.c_emit_negc.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x86.c_emit_negc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@out = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_negc(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 8
  br label %12

12:                                               ; preds = %9, %3
  %13 = phi i1 [ false, %3 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %12
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @emit_shrimm(i32 %19, i32 1, i32 %20)
  %22 = load i64, i64* @out, align 8
  %23 = add nsw i64 %22, 10
  %24 = call i32 @emit_jc(i64 %23)
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @emit_neg(i32 %25, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @emit_neg(i32 %28, i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @emit_adc(i32 %31, i32 %32)
  br label %58

34:                                               ; preds = %12
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @emit_mov(i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %34
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @emit_shrimm(i32 %43, i32 1, i32 %44)
  %46 = load i64, i64* @out, align 8
  %47 = add nsw i64 %46, 9
  %48 = call i32 @emit_jc(i64 %47)
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @emit_addimm(i32 %49, i32 -1, i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @emit_adc(i32 %52, i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @emit_not(i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %42, %18
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @emit_shrimm(i32, i32, i32) #1

declare dso_local i32 @emit_jc(i64) #1

declare dso_local i32 @emit_neg(i32, i32) #1

declare dso_local i32 @emit_adc(i32, i32) #1

declare dso_local i32 @emit_mov(i32, i32) #1

declare dso_local i32 @emit_addimm(i32, i32, i32) #1

declare dso_local i32 @emit_not(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
