; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_exi.c_EXI_Dma.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_exi.c_EXI_Dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32*, i64 }

@eximap = common dso_local global %struct.TYPE_3__* null, align 8
@EXI_FLAG_DMA = common dso_local global i32 0, align 4
@EXI_FLAG_IMM = common dso_local global i32 0, align 4
@EXI_FLAG_SELECT = common dso_local global i32 0, align 4
@IRQ_EXI0_TC = common dso_local global i64 0, align 8
@_exiReg = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @EXI_Dma(i64 %0, i8* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @eximap, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %15
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %13, align 8
  %17 = load i32, i32* %12, align 4
  %18 = call i32 @_CPU_ISR_Disable(i32 %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @EXI_FLAG_DMA, align 4
  %23 = load i32, i32* @EXI_FLAG_IMM, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %5
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @EXI_FLAG_SELECT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %27, %5
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @_CPU_ISR_Restore(i32 %35)
  store i64 0, i64* %6, align 8
  br label %87

37:                                               ; preds = %27
  %38 = load i64, i64* %11, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  store i64 %38, i64* %40, align 8
  %41 = load i64, i64* %11, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @__exi_clearirqs(i64 %44, i32 0, i32 1, i32 0)
  %46 = load i64, i64* @IRQ_EXI0_TC, align 8
  %47 = load i64, i64* %7, align 8
  %48 = mul i64 %47, 3
  %49 = add i64 %46, %48
  %50 = call i32 @IRQMASK(i64 %49)
  %51 = call i32 @__UnmaskIrq(i32 %50)
  br label %52

52:                                               ; preds = %43, %37
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  store i32* null, i32** %54, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* @EXI_FLAG_DMA, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = ptrtoint i8* %62 to i32
  %64 = and i32 %63, 67108832
  %65 = load i32*, i32** @_exiReg, align 8
  %66 = load i64, i64* %7, align 8
  %67 = mul i64 %66, 5
  %68 = add i64 %67, 1
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  store i32 %64, i32* %69, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32*, i32** @_exiReg, align 8
  %72 = load i64, i64* %7, align 8
  %73 = mul i64 %72, 5
  %74 = add i64 %73, 2
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  store i32 %70, i32* %75, align 4
  %76 = load i32, i32* %10, align 4
  %77 = and i32 %76, 3
  %78 = shl i32 %77, 2
  %79 = or i32 %78, 3
  %80 = load i32*, i32** @_exiReg, align 8
  %81 = load i64, i64* %7, align 8
  %82 = mul i64 %81, 5
  %83 = add i64 %82, 3
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  store i32 %79, i32* %84, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @_CPU_ISR_Restore(i32 %85)
  store i64 1, i64* %6, align 8
  br label %87

87:                                               ; preds = %52, %34
  %88 = load i64, i64* %6, align 8
  ret i64 %88
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

declare dso_local i32 @__exi_clearirqs(i64, i32, i32, i32) #1

declare dso_local i32 @__UnmaskIrq(i32) #1

declare dso_local i32 @IRQMASK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
