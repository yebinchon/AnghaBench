; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_make_dirty_ST.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_make_dirty_ST.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@dirty_regb = common dso_local global i32 0, align 4
@KRREG_ST = common dso_local global i32 0, align 4
@known_regb = common dso_local global i32 0, align 4
@known_regs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SSP_ST = common dso_local global i64 0, align 8
@SSP_FLAG_N = common dso_local global i32 0, align 4
@SSP_FLAG_Z = common dso_local global i32 0, align 4
@hostreg_r = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tr_make_dirty_ST to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tr_make_dirty_ST() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @dirty_regb, align 4
  %3 = load i32, i32* @KRREG_ST, align 4
  %4 = and i32 %2, %3
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %48

7:                                                ; preds = %0
  %8 = load i32, i32* @known_regb, align 4
  %9 = load i32, i32* @KRREG_ST, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %7
  store i32 0, i32* %1, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 0), align 8
  %14 = load i64, i64* @SSP_ST, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SSP_FLAG_N, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = load i32, i32* %1, align 4
  %23 = or i32 %22, 8
  store i32 %23, i32* %1, align 4
  br label %24

24:                                               ; preds = %21, %12
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 0), align 8
  %26 = load i64, i64* @SSP_ST, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SSP_FLAG_Z, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32, i32* %1, align 4
  %35 = or i32 %34, 4
  store i32 %35, i32* %1, align 4
  br label %36

36:                                               ; preds = %33, %24
  %37 = load i32, i32* %1, align 4
  %38 = call i32 @EOP_MSR_IMM(i32 2, i32 %37)
  br label %44

39:                                               ; preds = %7
  %40 = call i32 @EOP_MOV_REG_LSL(i32 1, i32 6, i32 28)
  %41 = call i32 @EOP_MSR_REG(i32 1)
  %42 = load i32*, i32** @hostreg_r, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 -1, i32* %43, align 4
  br label %44

44:                                               ; preds = %39, %36
  %45 = load i32, i32* @KRREG_ST, align 4
  %46 = load i32, i32* @dirty_regb, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* @dirty_regb, align 4
  br label %48

48:                                               ; preds = %44, %6
  ret void
}

declare dso_local i32 @EOP_MSR_IMM(i32, i32) #1

declare dso_local i32 @EOP_MOV_REG_LSL(i32, i32, i32) #1

declare dso_local i32 @EOP_MSR_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
