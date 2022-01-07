; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_rX_read.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_rX_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@known_regb = common dso_local global i32 0, align 4
@known_regs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@hostreg_r = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @tr_rX_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tr_rX_read(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %7, 3
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = shl i32 %11, 6
  %13 = and i32 %12, 256
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %13, %14
  %16 = call i32 @tr_bank_read(i32 %15)
  br label %79

17:                                               ; preds = %2
  %18 = load i32, i32* @known_regb, align 4
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 8
  %21 = shl i32 1, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %17
  %25 = load i32, i32* %3, align 4
  %26 = shl i32 %25, 6
  %27 = and i32 %26, 256
  %28 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @known_regs, i32 0, i32 0), align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %27, %32
  %34 = call i32 @tr_bank_read(i32 %33)
  br label %75

35:                                               ; preds = %17
  %36 = load i32, i32* %3, align 4
  %37 = icmp slt i32 %36, 4
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 8, i32 9
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %3, align 4
  %41 = and i32 %40, 3
  %42 = sub nsw i32 4, %41
  %43 = mul nsw i32 %42, 8
  %44 = and i32 %43, 31
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = sdiv i32 %46, 2
  %48 = call i32 @EOP_AND_IMM(i32 1, i32 %45, i32 %47, i32 255)
  %49 = load i32, i32* %3, align 4
  %50 = icmp sge i32 %49, 4
  br i1 %50, label %51, label %57

51:                                               ; preds = %35
  %52 = load i32, i32* %6, align 4
  %53 = sub nsw i32 %52, 8
  %54 = and i32 %53, 31
  %55 = sdiv i32 %54, 2
  %56 = call i32 @EOP_ORR_IMM(i32 1, i32 1, i32 %55, i32 1)
  br label %57

57:                                               ; preds = %51, %35
  %58 = load i32, i32* %3, align 4
  %59 = and i32 %58, 3
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load i32, i32* %3, align 4
  %63 = and i32 %62, 3
  %64 = mul nsw i32 %63, 8
  %65 = sub nsw i32 %64, 1
  %66 = call i32 @EOP_ADD_REG_LSR(i32 1, i32 7, i32 1, i32 %65)
  br label %69

67:                                               ; preds = %57
  %68 = call i32 @EOP_ADD_REG_LSL(i32 1, i32 7, i32 1, i32 1)
  br label %69

69:                                               ; preds = %67, %61
  %70 = call i32 @EOP_LDRH_SIMPLE(i32 0, i32 1)
  %71 = load i32*, i32** @hostreg_r, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  store i32 -1, i32* %72, align 4
  %73 = load i32*, i32** @hostreg_r, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  store i32 -1, i32* %74, align 4
  br label %75

75:                                               ; preds = %69, %24
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @tr_ptrr_mod(i32 %76, i32 %77, i32 1, i32 1)
  br label %79

79:                                               ; preds = %75, %10
  ret void
}

declare dso_local i32 @tr_bank_read(i32) #1

declare dso_local i32 @EOP_AND_IMM(i32, i32, i32, i32) #1

declare dso_local i32 @EOP_ORR_IMM(i32, i32, i32, i32) #1

declare dso_local i32 @EOP_ADD_REG_LSR(i32, i32, i32, i32) #1

declare dso_local i32 @EOP_ADD_REG_LSL(i32, i32, i32, i32) #1

declare dso_local i32 @EOP_LDRH_SIMPLE(i32, i32) #1

declare dso_local i32 @tr_ptrr_mod(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
