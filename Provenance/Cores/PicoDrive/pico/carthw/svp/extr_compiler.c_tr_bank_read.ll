; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_bank_read.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_bank_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hostreg_r = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @tr_bank_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tr_bank_read(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 7, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp sgt i32 %4, 127
  br i1 %5, label %6, label %27

6:                                                ; preds = %1
  %7 = load i32*, i32** @hostreg_r, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %2, align 4
  %11 = and i32 %10, 384
  %12 = shl i32 %11, 1
  %13 = or i32 1048576, %12
  %14 = icmp ne i32 %9, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %6
  %16 = load i32, i32* %2, align 4
  %17 = and i32 %16, 384
  %18 = ashr i32 %17, 1
  %19 = call i32 @EOP_ADD_IMM(i32 1, i32 7, i32 15, i32 %18)
  %20 = load i32, i32* %2, align 4
  %21 = and i32 %20, 384
  %22 = shl i32 %21, 1
  %23 = or i32 1048576, %22
  %24 = load i32*, i32** @hostreg_r, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %15, %6
  store i32 1, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %1
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %2, align 4
  %30 = and i32 %29, 127
  %31 = shl i32 %30, 1
  %32 = call i32 @EOP_LDRH_IMM(i32 0, i32 %28, i32 %31)
  %33 = load i32*, i32** @hostreg_r, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 -1, i32* %34, align 4
  ret void
}

declare dso_local i32 @EOP_ADD_IMM(i32, i32, i32, i32) #1

declare dso_local i32 @EOP_LDRH_IMM(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
