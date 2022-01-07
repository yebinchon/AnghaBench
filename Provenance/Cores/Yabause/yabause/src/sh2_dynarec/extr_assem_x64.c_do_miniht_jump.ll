; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_do_miniht_jump.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_do_miniht_jump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slave = common dso_local global i32 0, align 4
@mini_ht_slave = common dso_local global i64 0, align 8
@mini_ht_master = common dso_local global i64 0, align 8
@jump_vaddr_reg = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_miniht_jump(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @slave, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = load i64, i64* @mini_ht_slave, align 8
  br label %13

11:                                               ; preds = %3
  %12 = load i64, i64* @mini_ht_master, align 8
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i64 [ %10, %9 ], [ %12, %11 ]
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @emit_cmpmem_indexed(i64 %14, i32 %15, i32 %16)
  %18 = load i32**, i32*** @jump_vaddr_reg, align 8
  %19 = load i32, i32* @slave, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @emit_jne(i32 %26)
  %28 = load i32, i32* @slave, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %13
  %31 = load i64, i64* @mini_ht_slave, align 8
  %32 = add nsw i64 %31, 4
  br label %36

33:                                               ; preds = %13
  %34 = load i64, i64* @mini_ht_master, align 8
  %35 = add nsw i64 %34, 4
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi i64 [ %32, %30 ], [ %35, %33 ]
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @emit_readword_indexed(i64 %37, i32 %38, i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @emit_jmpreg(i32 %41)
  ret void
}

declare dso_local i32 @emit_cmpmem_indexed(i64, i32, i32) #1

declare dso_local i32 @emit_jne(i32) #1

declare dso_local i32 @emit_readword_indexed(i64, i32, i32) #1

declare dso_local i32 @emit_jmpreg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
