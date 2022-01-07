; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_flush_dirty_pmcrs.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_flush_dirty_pmcrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@dirty_regb = common dso_local global i32 0, align 4
@KRREG_PMC = common dso_local global i32 0, align 4
@known_regs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SSP_PMC = common dso_local global i32 0, align 4
@SSP_PMC_SET = common dso_local global i32 0, align 4
@SSP_PMC_HAVE_ADDR = common dso_local global i32 0, align 4
@EL_ANOMALY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"!! SSP_PMC_SET|SSP_PMC_HAVE_ADDR set on flush\0A\00", align 1
@hostreg_r = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tr_flush_dirty_pmcrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tr_flush_dirty_pmcrs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 -1, i32* %2, align 4
  %3 = load i32, i32* @dirty_regb, align 4
  %4 = and i32 %3, 1073217536
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %100

7:                                                ; preds = %0
  %8 = load i32, i32* @dirty_regb, align 4
  %9 = load i32, i32* @KRREG_PMC, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %7
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 3, i32 0), align 8
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @emith_move_r_imm(i32 1, i32 %14)
  %16 = load i32, i32* @SSP_PMC, align 4
  %17 = mul nsw i32 %16, 4
  %18 = add nsw i32 1024, %17
  %19 = call i32 @EOP_STR_IMM(i32 1, i32 7, i32 %18)
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 0), align 8
  %21 = load i32, i32* @SSP_PMC_SET, align 4
  %22 = load i32, i32* @SSP_PMC_HAVE_ADDR, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %12
  %27 = load i32, i32* @EL_ANOMALY, align 4
  %28 = call i32 @elprintf(i32 %27, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 (...) @tr_unhandled()
  br label %30

30:                                               ; preds = %26, %12
  br label %31

31:                                               ; preds = %30, %7
  store i32 0, i32* %1, align 4
  br label %32

32:                                               ; preds = %92, %31
  %33 = load i32, i32* %1, align 4
  %34 = icmp slt i32 %33, 5
  br i1 %34, label %35, label %95

35:                                               ; preds = %32
  %36 = load i32, i32* @dirty_regb, align 4
  %37 = load i32, i32* %1, align 4
  %38 = add nsw i32 20, %37
  %39 = shl i32 1, %38
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %35
  %43 = load i32, i32* %2, align 4
  %44 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 1), align 8
  %45 = load i32, i32* %1, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %43, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %42
  %51 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 1), align 8
  %52 = load i32, i32* %1, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %2, align 4
  %56 = load i32, i32* %2, align 4
  %57 = call i32 @emith_move_r_imm(i32 1, i32 %56)
  br label %58

58:                                               ; preds = %50, %42
  %59 = load i32, i32* %1, align 4
  %60 = mul nsw i32 %59, 4
  %61 = add nsw i32 1108, %60
  %62 = call i32 @EOP_STR_IMM(i32 1, i32 7, i32 %61)
  br label %63

63:                                               ; preds = %58, %35
  %64 = load i32, i32* @dirty_regb, align 4
  %65 = load i32, i32* %1, align 4
  %66 = add nsw i32 25, %65
  %67 = shl i32 1, %66
  %68 = and i32 %64, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %91

70:                                               ; preds = %63
  %71 = load i32, i32* %2, align 4
  %72 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 2), align 8
  %73 = load i32, i32* %1, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %71, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %70
  %79 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 2), align 8
  %80 = load i32, i32* %1, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %2, align 4
  %84 = load i32, i32* %2, align 4
  %85 = call i32 @emith_move_r_imm(i32 1, i32 %84)
  br label %86

86:                                               ; preds = %78, %70
  %87 = load i32, i32* %1, align 4
  %88 = mul nsw i32 %87, 4
  %89 = add nsw i32 1132, %88
  %90 = call i32 @EOP_STR_IMM(i32 1, i32 7, i32 %89)
  br label %91

91:                                               ; preds = %86, %63
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %1, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %1, align 4
  br label %32

95:                                               ; preds = %32
  %96 = load i32, i32* @dirty_regb, align 4
  %97 = and i32 %96, -1073217537
  store i32 %97, i32* @dirty_regb, align 4
  %98 = load i32*, i32** @hostreg_r, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  store i32 -1, i32* %99, align 4
  br label %100

100:                                              ; preds = %95, %6
  ret void
}

declare dso_local i32 @emith_move_r_imm(i32, i32) #1

declare dso_local i32 @EOP_STR_IMM(i32, i32, i32) #1

declare dso_local i32 @elprintf(i32, i8*) #1

declare dso_local i32 @tr_unhandled(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
