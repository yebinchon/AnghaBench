; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_flush_dirty_prs.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_flush_dirty_prs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@dirty_regb = common dso_local global i32 0, align 4
@known_regs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tr_flush_dirty_prs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tr_flush_dirty_prs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %5 = load i32, i32* @dirty_regb, align 4
  %6 = ashr i32 %5, 8
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %7, 7
  %9 = icmp eq i32 %8, 7
  br i1 %9, label %10, label %27

10:                                               ; preds = %0
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @known_regs, i32 0, i32 0), align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @known_regs, i32 0, i32 0), align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %16, 8
  %18 = or i32 %13, %17
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @known_regs, i32 0, i32 0), align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 16
  %23 = or i32 %18, %22
  %24 = call i32 @emith_move_r_imm(i32 8, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, -8
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %10, %0
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, 112
  %30 = icmp eq i32 %29, 112
  br i1 %30, label %31, label %48

31:                                               ; preds = %27
  %32 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @known_regs, i32 0, i32 0), align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 4
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @known_regs, i32 0, i32 0), align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 5
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 8
  %39 = or i32 %34, %38
  %40 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @known_regs, i32 0, i32 0), align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 6
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 16
  %44 = or i32 %39, %43
  %45 = call i32 @emith_move_r_imm(i32 9, i32 %44)
  %46 = load i32, i32* %4, align 4
  %47 = and i32 %46, -113
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %31, %27
  store i32 0, i32* %1, align 4
  br label %49

49:                                               ; preds = %95, %48
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* %1, align 4
  %54 = icmp slt i32 %53, 8
  br label %55

55:                                               ; preds = %52, %49
  %56 = phi i1 [ false, %49 ], [ %54, %52 ]
  br i1 %56, label %57, label %100

57:                                               ; preds = %55
  %58 = load i32, i32* %4, align 4
  %59 = and i32 %58, 1
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  br label %95

62:                                               ; preds = %57
  %63 = load i32, i32* %1, align 4
  %64 = and i32 %63, 3
  switch i32 %64, label %68 [
    i32 0, label %65
    i32 1, label %66
    i32 2, label %67
  ]

65:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %68

66:                                               ; preds = %62
  store i32 12, i32* %2, align 4
  br label %68

67:                                               ; preds = %62
  store i32 8, i32* %2, align 4
  br label %68

68:                                               ; preds = %62, %67, %66, %65
  %69 = load i32, i32* %1, align 4
  %70 = icmp slt i32 %69, 4
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 8, i32 9
  store i32 %72, i32* %3, align 4
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* %2, align 4
  %76 = call i32 @EOP_BIC_IMM(i32 %73, i32 %74, i32 %75, i32 255)
  %77 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @known_regs, i32 0, i32 0), align 8
  %78 = load i32, i32* %1, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %68
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* %2, align 4
  %87 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @known_regs, i32 0, i32 0), align 8
  %88 = load i32, i32* %1, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = call i32 @EOP_ORR_IMM(i32 %84, i32 %85, i32 %86, i64 %92)
  br label %94

94:                                               ; preds = %83, %68
  br label %95

95:                                               ; preds = %94, %61
  %96 = load i32, i32* %1, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %1, align 4
  %98 = load i32, i32* %4, align 4
  %99 = ashr i32 %98, 1
  store i32 %99, i32* %4, align 4
  br label %49

100:                                              ; preds = %55
  %101 = load i32, i32* @dirty_regb, align 4
  %102 = and i32 %101, -65281
  store i32 %102, i32* @dirty_regb, align 4
  ret void
}

declare dso_local i32 @emith_move_r_imm(i32, i32) #1

declare dso_local i32 @EOP_BIC_IMM(i32, i32, i32, i32) #1

declare dso_local i32 @EOP_ORR_IMM(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
