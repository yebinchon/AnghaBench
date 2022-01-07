; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_rX_write.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_rX_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@known_regb = common dso_local global i32 0, align 4
@known_regs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@hostreg_r = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @tr_rX_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tr_rX_write(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = and i32 %7, 3
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = ashr i32 %11, 2
  %13 = and i32 %12, 3
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %2, align 4
  %15 = and i32 %14, 256
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %15, %16
  %18 = call i32 @tr_bank_write(i32 %17)
  br label %86

19:                                               ; preds = %1
  %20 = load i32, i32* %2, align 4
  %21 = and i32 %20, 3
  %22 = load i32, i32* %2, align 4
  %23 = ashr i32 %22, 6
  %24 = and i32 %23, 4
  %25 = or i32 %21, %24
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @known_regb, align 4
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 8
  %29 = shl i32 1, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %19
  %33 = load i32, i32* %2, align 4
  %34 = and i32 %33, 256
  %35 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @known_regs, i32 0, i32 0), align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %34, %39
  %41 = call i32 @tr_bank_write(i32 %40)
  br label %80

42:                                               ; preds = %19
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 4
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 8, i32 9
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %4, align 4
  %48 = and i32 %47, 3
  %49 = sub nsw i32 4, %48
  %50 = mul nsw i32 %49, 8
  %51 = and i32 %50, 31
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = sdiv i32 %53, 2
  %55 = call i32 @EOP_AND_IMM(i32 1, i32 %52, i32 %54, i32 255)
  %56 = load i32, i32* %4, align 4
  %57 = icmp sge i32 %56, 4
  br i1 %57, label %58, label %64

58:                                               ; preds = %42
  %59 = load i32, i32* %6, align 4
  %60 = sub nsw i32 %59, 8
  %61 = and i32 %60, 31
  %62 = sdiv i32 %61, 2
  %63 = call i32 @EOP_ORR_IMM(i32 1, i32 1, i32 %62, i32 1)
  br label %64

64:                                               ; preds = %58, %42
  %65 = load i32, i32* %4, align 4
  %66 = and i32 %65, 3
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i32, i32* %4, align 4
  %70 = and i32 %69, 3
  %71 = mul nsw i32 %70, 8
  %72 = sub nsw i32 %71, 1
  %73 = call i32 @EOP_ADD_REG_LSR(i32 1, i32 7, i32 1, i32 %72)
  br label %76

74:                                               ; preds = %64
  %75 = call i32 @EOP_ADD_REG_LSL(i32 1, i32 7, i32 1, i32 1)
  br label %76

76:                                               ; preds = %74, %68
  %77 = call i32 @EOP_STRH_SIMPLE(i32 0, i32 1)
  %78 = load i32*, i32** @hostreg_r, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  store i32 -1, i32* %79, align 4
  br label %80

80:                                               ; preds = %76, %32
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %2, align 4
  %83 = ashr i32 %82, 2
  %84 = and i32 %83, 3
  %85 = call i32 @tr_ptrr_mod(i32 %81, i32 %84, i32 0, i32 1)
  br label %86

86:                                               ; preds = %80, %10
  ret void
}

declare dso_local i32 @tr_bank_write(i32) #1

declare dso_local i32 @EOP_AND_IMM(i32, i32, i32, i32) #1

declare dso_local i32 @EOP_ORR_IMM(i32, i32, i32, i32) #1

declare dso_local i32 @EOP_ADD_REG_LSR(i32, i32, i32, i32) #1

declare dso_local i32 @EOP_ADD_REG_LSL(i32, i32, i32, i32) #1

declare dso_local i32 @EOP_STRH_SIMPLE(i32, i32) #1

declare dso_local i32 @tr_ptrr_mod(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
