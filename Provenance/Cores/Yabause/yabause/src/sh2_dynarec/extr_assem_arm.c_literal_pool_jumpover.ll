; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_literal_pool_jumpover.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_literal_pool_jumpover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@literalcount = common dso_local global i32 0, align 4
@out = common dso_local global i64 0, align 8
@literals = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @literal_pool_jumpover(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @literalcount, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %33

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %7
  %11 = load i64, i64* @out, align 8
  %12 = trunc i64 %11 to i32
  %13 = load i32**, i32*** @literals, align 8
  %14 = getelementptr inbounds i32*, i32** %13, i64 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %12, %17
  %19 = load i32, i32* %2, align 4
  %20 = sub nsw i32 4096, %19
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %10
  br label %33

23:                                               ; preds = %10
  br label %24

24:                                               ; preds = %23, %7
  %25 = load i64, i64* @out, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %3, align 4
  %27 = call i32 @emit_jmp(i32 0)
  %28 = call i32 @literal_pool(i32 0)
  %29 = load i32, i32* %3, align 4
  %30 = load i64, i64* @out, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @set_jump_target(i32 %29, i32 %31)
  br label %33

33:                                               ; preds = %24, %22, %6
  ret void
}

declare dso_local i32 @emit_jmp(i32) #1

declare dso_local i32 @literal_pool(i32) #1

declare dso_local i32 @set_jump_target(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
