; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_r0_to_AL.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_r0_to_AL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SSP_AL = common dso_local global i32 0, align 4
@known_regs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SSP_A = common dso_local global i64 0, align 8
@known_regb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @tr_r0_to_AL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tr_r0_to_AL(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 @EOP_MOV_REG_LSR(i32 5, i32 5, i32 16)
  %4 = call i32 @EOP_ORR_REG_LSL(i32 5, i32 5, i32 0, i32 16)
  %5 = call i32 @EOP_MOV_REG_ROR(i32 5, i32 5, i32 16)
  %6 = load i32, i32* @SSP_AL, align 4
  %7 = call i32 @hostreg_sspreg_changed(i32 %6)
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 0), align 8
  %13 = load i64, i64* @SSP_A, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 %11, i32* %15, align 4
  %16 = load i32, i32* @SSP_AL, align 4
  %17 = shl i32 1, %16
  %18 = load i32, i32* @known_regb, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* @known_regb, align 4
  br label %26

20:                                               ; preds = %1
  %21 = load i32, i32* @SSP_AL, align 4
  %22 = shl i32 1, %21
  %23 = xor i32 %22, -1
  %24 = load i32, i32* @known_regb, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* @known_regb, align 4
  br label %26

26:                                               ; preds = %20, %10
  ret void
}

declare dso_local i32 @EOP_MOV_REG_LSR(i32, i32, i32) #1

declare dso_local i32 @EOP_ORR_REG_LSL(i32, i32, i32, i32) #1

declare dso_local i32 @EOP_MOV_REG_ROR(i32, i32, i32) #1

declare dso_local i32 @hostreg_sspreg_changed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
