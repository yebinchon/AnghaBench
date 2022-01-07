; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_r0_to_A.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_r0_to_A.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSP_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @tr_r0_to_A to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tr_r0_to_A(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i64 (...) @tr_predict_al_need()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = call i32 @EOP_MOV_REG_LSL(i32 5, i32 5, i32 16)
  %7 = call i32 @EOP_MOV_REG_LSR(i32 5, i32 5, i32 16)
  %8 = call i32 @EOP_ORR_REG_LSL(i32 5, i32 5, i32 0, i32 16)
  br label %11

9:                                                ; preds = %1
  %10 = call i32 @EOP_MOV_REG_LSL(i32 5, i32 0, i32 16)
  br label %11

11:                                               ; preds = %9, %5
  %12 = load i32, i32* @SSP_A, align 4
  %13 = call i32 @TR_WRITE_R0_TO_REG(i32 %12)
  ret void
}

declare dso_local i64 @tr_predict_al_need(...) #1

declare dso_local i32 @EOP_MOV_REG_LSL(i32, i32, i32) #1

declare dso_local i32 @EOP_MOV_REG_LSR(i32, i32, i32) #1

declare dso_local i32 @EOP_ORR_REG_LSL(i32, i32, i32, i32) #1

declare dso_local i32 @TR_WRITE_R0_TO_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
