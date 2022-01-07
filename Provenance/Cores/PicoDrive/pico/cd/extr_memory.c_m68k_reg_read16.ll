; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_memory.c_m68k_reg_read16.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_memory.c_m68k_reg_read16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@Pico_mcd = common dso_local global %struct.TYPE_4__* null, align 8
@EL_CDREG3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"m68k_regs r3: %02x @%06x\00", align 1
@SekPc = common dso_local global i32 0, align 4
@EL_UIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"m68k FIXME: reserved read\00", align 1
@EL_CDREGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"m68k stopwatch timer read (%04x)\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"m68k_regs FIXME invalid read @ %02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @m68k_reg_read16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m68k_reg_read16(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = and i32 %4, 62
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  switch i32 %6, label %80 [
    i32 0, label %7
    i32 2, label %20
    i32 4, label %45
    i32 6, label %52
    i32 8, label %60
    i32 10, label %62
    i32 12, label %65
  ]

7:                                                ; preds = %1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 51
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 %12, 13
  %14 = and i32 %13, 32768
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %14, %18
  store i32 %19, i32* %3, align 4
  br label %107

20:                                               ; preds = %1
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @m68k_comm_check(i32 %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %2, align 4
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 199
  %40 = or i32 %30, %39
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* @EL_CDREG3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @SekPc, align 4
  %44 = call i32 (i32, i8*, ...) @elprintf(i32 %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  br label %107

45:                                               ; preds = %1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 8
  store i32 %51, i32* %3, align 4
  br label %107

52:                                               ; preds = %1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 114
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i32*
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %3, align 4
  br label %107

60:                                               ; preds = %1
  %61 = call i32 (...) @cdc_host_r()
  store i32 %61, i32* %3, align 4
  br label %107

62:                                               ; preds = %1
  %63 = load i32, i32* @EL_UIO, align 4
  %64 = call i32 (i32, i8*, ...) @elprintf(i32 %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %107

65:                                               ; preds = %1
  %66 = call i32 (...) @SekCyclesDone()
  %67 = call i32 @pcd_cycles_m68k_to_s68k(i32 %66)
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* %3, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %68, %72
  %74 = sdiv i32 %73, 384
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* %3, align 4
  %76 = and i32 %75, 4095
  store i32 %76, i32* %3, align 4
  %77 = load i32, i32* @EL_CDREGS, align 4
  %78 = load i32, i32* %3, align 4
  %79 = call i32 (i32, i8*, ...) @elprintf(i32 %77, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  br label %107

80:                                               ; preds = %1
  %81 = load i32, i32* %2, align 4
  %82 = icmp slt i32 %81, 48
  br i1 %82, label %83, label %103

83:                                               ; preds = %80
  %84 = load i32, i32* %2, align 4
  %85 = call i32 @m68k_comm_check(i32 %84)
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %2, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %92, 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %2, align 4
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %93, %101
  store i32 %102, i32* %3, align 4
  br label %107

103:                                              ; preds = %80
  %104 = load i32, i32* @EL_UIO, align 4
  %105 = load i32, i32* %2, align 4
  %106 = call i32 (i32, i8*, ...) @elprintf(i32 %104, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %103, %83, %65, %62, %60, %52, %45, %20, %7
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @m68k_comm_check(i32) #1

declare dso_local i32 @elprintf(i32, i8*, ...) #1

declare dso_local i32 @cdc_host_r(...) #1

declare dso_local i32 @pcd_cycles_m68k_to_s68k(i32) #1

declare dso_local i32 @SekCyclesDone(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
