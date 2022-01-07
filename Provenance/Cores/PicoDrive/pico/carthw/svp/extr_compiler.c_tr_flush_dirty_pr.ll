; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_flush_dirty_pr.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_flush_dirty_pr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }

@dirty_regb = common dso_local global i32 0, align 4
@known_regs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @tr_flush_dirty_pr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tr_flush_dirty_pr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* @dirty_regb, align 4
  %6 = load i32, i32* %2, align 4
  %7 = add nsw i32 %6, 8
  %8 = shl i32 1, %7
  %9 = and i32 %5, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %50

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = and i32 %13, 3
  switch i32 %14, label %18 [
    i32 0, label %15
    i32 1, label %16
    i32 2, label %17
  ]

15:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %18

16:                                               ; preds = %12
  store i32 12, i32* %3, align 4
  br label %18

17:                                               ; preds = %12
  store i32 8, i32* %3, align 4
  br label %18

18:                                               ; preds = %12, %17, %16, %15
  %19 = load i32, i32* %2, align 4
  %20 = icmp slt i32 %19, 4
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 8, i32 9
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @EOP_BIC_IMM(i32 %23, i32 %24, i32 %25, i32 255)
  %27 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @known_regs, i32 0, i32 0), align 8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %18
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @known_regs, i32 0, i32 0), align 8
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @EOP_ORR_IMM(i32 %34, i32 %35, i32 %36, i64 %41)
  br label %43

43:                                               ; preds = %33, %18
  %44 = load i32, i32* %2, align 4
  %45 = add nsw i32 %44, 8
  %46 = shl i32 1, %45
  %47 = xor i32 %46, -1
  %48 = load i32, i32* @dirty_regb, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* @dirty_regb, align 4
  br label %50

50:                                               ; preds = %43, %11
  ret void
}

declare dso_local i32 @EOP_BIC_IMM(i32, i32, i32, i32) #1

declare dso_local i32 @EOP_ORR_IMM(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
