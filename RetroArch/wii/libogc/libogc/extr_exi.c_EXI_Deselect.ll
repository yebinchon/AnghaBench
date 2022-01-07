; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_exi.c_EXI_Deselect.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_exi.c_EXI_Deselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@eximap = common dso_local global %struct.TYPE_3__* null, align 8
@EXI_FLAG_SELECT = common dso_local global i32 0, align 4
@_exiReg = common dso_local global i32* null, align 8
@EXI_FLAG_ATTACH = common dso_local global i32 0, align 4
@EXI_CHANNEL_0 = common dso_local global i64 0, align 8
@IRQ_EXI0_EXT = common dso_local global i32 0, align 4
@EXI_CHANNEL_1 = common dso_local global i64 0, align 8
@IRQ_EXI1_EXT = common dso_local global i32 0, align 4
@EXI_CHANNEL_2 = common dso_local global i64 0, align 8
@EXI_DEVICE0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @EXI_Deselect(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @eximap, align 8
  %8 = load i64, i64* %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i64 %8
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @_CPU_ISR_Disable(i32 %10)
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @EXI_FLAG_SELECT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @_CPU_ISR_Restore(i32 %19)
  store i64 0, i64* %2, align 8
  br label %83

21:                                               ; preds = %1
  %22 = load i32, i32* @EXI_FLAG_SELECT, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load i32*, i32** @_exiReg, align 8
  %29 = load i64, i64* %3, align 8
  %30 = mul i64 %29, 5
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, 1029
  %35 = load i32*, i32** @_exiReg, align 8
  %36 = load i64, i64* %3, align 8
  %37 = mul i64 %36, 5
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %34, i32* %38, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @EXI_FLAG_ATTACH, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %21
  %46 = load i64, i64* %3, align 8
  %47 = load i64, i64* @EXI_CHANNEL_0, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* @IRQ_EXI0_EXT, align 4
  %51 = call i32 @IRQMASK(i32 %50)
  %52 = call i32 @__UnmaskIrq(i32 %51)
  br label %62

53:                                               ; preds = %45
  %54 = load i64, i64* %3, align 8
  %55 = load i64, i64* @EXI_CHANNEL_1, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* @IRQ_EXI1_EXT, align 4
  %59 = call i32 @IRQMASK(i32 %58)
  %60 = call i32 @__UnmaskIrq(i32 %59)
  br label %61

61:                                               ; preds = %57, %53
  br label %62

62:                                               ; preds = %61, %49
  br label %63

63:                                               ; preds = %62, %21
  %64 = load i64, i64* %3, align 8
  %65 = load i64, i64* @EXI_CHANNEL_2, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @EXI_DEVICE0, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load i64, i64* %3, align 8
  %74 = call i64 @__exi_probe(i64 %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @_CPU_ISR_Restore(i32 %77)
  store i64 0, i64* %2, align 8
  br label %83

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %79, %67, %63
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @_CPU_ISR_Restore(i32 %81)
  store i64 1, i64* %2, align 8
  br label %83

83:                                               ; preds = %80, %76, %18
  %84 = load i64, i64* %2, align 8
  ret i64 %84
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

declare dso_local i32 @__UnmaskIrq(i32) #1

declare dso_local i32 @IRQMASK(i32) #1

declare dso_local i64 @__exi_probe(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
