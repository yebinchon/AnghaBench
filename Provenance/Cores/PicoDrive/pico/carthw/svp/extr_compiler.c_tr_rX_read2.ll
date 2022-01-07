; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_rX_read2.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_rX_read2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@known_regb = common dso_local global i32 0, align 4
@known_regs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@hostreg_r = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @tr_rX_read2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tr_rX_read2(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = and i32 %6, 3
  %8 = load i32, i32* %2, align 4
  %9 = ashr i32 %8, 6
  %10 = and i32 %9, 4
  %11 = or i32 %7, %10
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, 3
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load i32, i32* %2, align 4
  %17 = and i32 %16, 256
  %18 = load i32, i32* %2, align 4
  %19 = ashr i32 %18, 2
  %20 = and i32 %19, 3
  %21 = or i32 %17, %20
  %22 = call i32 @tr_bank_read(i32 %21)
  br label %77

23:                                               ; preds = %1
  %24 = load i32, i32* @known_regb, align 4
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 8
  %27 = shl i32 1, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %23
  %31 = load i32, i32* %2, align 4
  %32 = and i32 %31, 256
  %33 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @known_regs, i32 0, i32 0), align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %32, %37
  %39 = call i32 @tr_bank_read(i32 %38)
  br label %76

40:                                               ; preds = %23
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %41, 4
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 8, i32 9
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %3, align 4
  %46 = and i32 %45, 3
  %47 = sub nsw i32 4, %46
  %48 = mul nsw i32 %47, 8
  %49 = and i32 %48, 31
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %5, align 4
  %52 = sdiv i32 %51, 2
  %53 = call i32 @EOP_AND_IMM(i32 1, i32 %50, i32 %52, i32 255)
  %54 = load i32, i32* %3, align 4
  %55 = icmp sge i32 %54, 4
  br i1 %55, label %56, label %62

56:                                               ; preds = %40
  %57 = load i32, i32* %5, align 4
  %58 = sub nsw i32 %57, 8
  %59 = and i32 %58, 31
  %60 = sdiv i32 %59, 2
  %61 = call i32 @EOP_ORR_IMM(i32 1, i32 1, i32 %60, i32 1)
  br label %62

62:                                               ; preds = %56, %40
  %63 = load i32, i32* %3, align 4
  %64 = and i32 %63, 3
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load i32, i32* %3, align 4
  %68 = and i32 %67, 3
  %69 = mul nsw i32 %68, 8
  %70 = sub nsw i32 %69, 1
  %71 = call i32 @EOP_ADD_REG_LSR(i32 1, i32 7, i32 1, i32 %70)
  br label %74

72:                                               ; preds = %62
  %73 = call i32 @EOP_ADD_REG_LSL(i32 1, i32 7, i32 1, i32 1)
  br label %74

74:                                               ; preds = %72, %66
  %75 = call i32 @EOP_LDRH_SIMPLE(i32 0, i32 1)
  br label %76

76:                                               ; preds = %74, %30
  br label %77

77:                                               ; preds = %76, %15
  %78 = call i32 @EOP_LDR_IMM(i32 2, i32 7, i32 1164)
  %79 = call i32 @EOP_ADD_REG_LSL(i32 2, i32 2, i32 0, i32 1)
  %80 = call i32 @EOP_ADD_IMM(i32 0, i32 0, i32 0, i32 1)
  %81 = load i32, i32* %3, align 4
  %82 = and i32 %81, 3
  %83 = icmp eq i32 %82, 3
  br i1 %83, label %84, label %92

84:                                               ; preds = %77
  %85 = load i32, i32* %2, align 4
  %86 = and i32 %85, 256
  %87 = load i32, i32* %2, align 4
  %88 = ashr i32 %87, 2
  %89 = and i32 %88, 3
  %90 = or i32 %86, %89
  %91 = call i32 @tr_bank_write(i32 %90)
  br label %114

92:                                               ; preds = %77
  %93 = load i32, i32* @known_regb, align 4
  %94 = load i32, i32* %3, align 4
  %95 = add nsw i32 %94, 8
  %96 = shl i32 1, %95
  %97 = and i32 %93, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %92
  %100 = load i32, i32* %2, align 4
  %101 = and i32 %100, 256
  %102 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @known_regs, i32 0, i32 0), align 8
  %103 = load i32, i32* %3, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %101, %106
  %108 = call i32 @tr_bank_write(i32 %107)
  br label %113

109:                                              ; preds = %92
  %110 = call i32 @EOP_STRH_SIMPLE(i32 0, i32 1)
  %111 = load i32*, i32** @hostreg_r, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  store i32 -1, i32* %112, align 4
  br label %113

113:                                              ; preds = %109, %99
  br label %114

114:                                              ; preds = %113, %84
  %115 = call i32 @EOP_LDRH_SIMPLE(i32 0, i32 2)
  %116 = load i32*, i32** @hostreg_r, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  store i32 -1, i32* %117, align 4
  %118 = load i32*, i32** @hostreg_r, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  store i32 -1, i32* %119, align 4
  ret void
}

declare dso_local i32 @tr_bank_read(i32) #1

declare dso_local i32 @EOP_AND_IMM(i32, i32, i32, i32) #1

declare dso_local i32 @EOP_ORR_IMM(i32, i32, i32, i32) #1

declare dso_local i32 @EOP_ADD_REG_LSR(i32, i32, i32, i32) #1

declare dso_local i32 @EOP_ADD_REG_LSL(i32, i32, i32, i32) #1

declare dso_local i32 @EOP_LDRH_SIMPLE(i32, i32) #1

declare dso_local i32 @EOP_LDR_IMM(i32, i32, i32) #1

declare dso_local i32 @EOP_ADD_IMM(i32, i32, i32, i32) #1

declare dso_local i32 @tr_bank_write(i32) #1

declare dso_local i32 @EOP_STRH_SIMPLE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
