; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x86.c_emit_slti32.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x86.c_emit_slti32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@const_one = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_slti32(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @emit_zeroreg(i32 %11)
  br label %13

13:                                               ; preds = %10, %3
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @emit_cmpimm(i32 %14, i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %30

19:                                               ; preds = %13
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @emit_setl(i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @emit_movzbl_reg(i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %19
  br label %40

30:                                               ; preds = %13
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @emit_movimm(i32 0, i32 %35)
  br label %37

37:                                               ; preds = %34, %30
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @emit_cmovl(i32* @const_one, i32 %38)
  br label %40

40:                                               ; preds = %37, %29
  ret void
}

declare dso_local i32 @emit_zeroreg(i32) #1

declare dso_local i32 @emit_cmpimm(i32, i32) #1

declare dso_local i32 @emit_setl(i32) #1

declare dso_local i32 @emit_movzbl_reg(i32, i32) #1

declare dso_local i32 @emit_movimm(i32, i32) #1

declare dso_local i32 @emit_cmovl(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
