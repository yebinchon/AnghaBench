; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_exi.c_EXI_Imm.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_exi.c_EXI_Imm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i8*, i64 }

@eximap = common dso_local global %struct.TYPE_3__* null, align 8
@EXI_FLAG_DMA = common dso_local global i32 0, align 4
@EXI_FLAG_IMM = common dso_local global i32 0, align 4
@EXI_FLAG_SELECT = common dso_local global i32 0, align 4
@IRQ_EXI0_TC = common dso_local global i64 0, align 8
@EXI_READ = common dso_local global i64 0, align 8
@_exiReg = common dso_local global i64* null, align 8
@EXI_WRITE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @EXI_Imm(i64 %0, i8* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @eximap, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %17
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %15, align 8
  %19 = load i64, i64* %12, align 8
  %20 = call i32 @_CPU_ISR_Disable(i64 %19)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @EXI_FLAG_DMA, align 4
  %25 = load i32, i32* @EXI_FLAG_IMM, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %5
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @EXI_FLAG_SELECT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %29, %5
  %37 = load i64, i64* %12, align 8
  %38 = call i32 @_CPU_ISR_Restore(i64 %37)
  store i64 0, i64* %6, align 8
  br label %122

39:                                               ; preds = %29
  %40 = load i64, i64* %11, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %11, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @__exi_clearirqs(i64 %46, i32 0, i32 1, i32 0)
  %48 = load i64, i64* @IRQ_EXI0_TC, align 8
  %49 = load i64, i64* %7, align 8
  %50 = mul i64 %49, 3
  %51 = add i64 %48, %50
  %52 = call i32 @IRQMASK(i64 %51)
  %53 = call i32 @__UnmaskIrq(i32 %52)
  br label %54

54:                                               ; preds = %45, %39
  %55 = load i32, i32* @EXI_FLAG_IMM, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* @EXI_READ, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %98

69:                                               ; preds = %54
  store i64 0, i64* %14, align 8
  store i64 0, i64* %13, align 8
  br label %70

70:                                               ; preds = %88, %69
  %71 = load i64, i64* %14, align 8
  %72 = load i64, i64* %9, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %91

74:                                               ; preds = %70
  %75 = load i8*, i8** %8, align 8
  %76 = bitcast i8* %75 to i32*
  %77 = load i64, i64* %14, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* %14, align 8
  %81 = sub i64 3, %80
  %82 = mul i64 %81, 8
  %83 = trunc i64 %82 to i32
  %84 = shl i32 %79, %83
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %13, align 8
  %87 = or i64 %86, %85
  store i64 %87, i64* %13, align 8
  br label %88

88:                                               ; preds = %74
  %89 = load i64, i64* %14, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %14, align 8
  br label %70

91:                                               ; preds = %70
  %92 = load i64, i64* %13, align 8
  %93 = load i64*, i64** @_exiReg, align 8
  %94 = load i64, i64* %7, align 8
  %95 = mul i64 %94, 5
  %96 = add i64 %95, 4
  %97 = getelementptr inbounds i64, i64* %93, i64 %96
  store i64 %92, i64* %97, align 8
  br label %98

98:                                               ; preds = %91, %54
  %99 = load i64, i64* %10, align 8
  %100 = load i64, i64* @EXI_WRITE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  store i64 0, i64* %104, align 8
  br label %105

105:                                              ; preds = %102, %98
  %106 = load i64, i64* %9, align 8
  %107 = sub i64 %106, 1
  %108 = and i64 %107, 3
  %109 = shl i64 %108, 4
  %110 = load i64, i64* %10, align 8
  %111 = and i64 %110, 3
  %112 = shl i64 %111, 2
  %113 = or i64 %109, %112
  %114 = or i64 %113, 1
  %115 = load i64*, i64** @_exiReg, align 8
  %116 = load i64, i64* %7, align 8
  %117 = mul i64 %116, 5
  %118 = add i64 %117, 3
  %119 = getelementptr inbounds i64, i64* %115, i64 %118
  store i64 %114, i64* %119, align 8
  %120 = load i64, i64* %12, align 8
  %121 = call i32 @_CPU_ISR_Restore(i64 %120)
  store i64 1, i64* %6, align 8
  br label %122

122:                                              ; preds = %105, %36
  %123 = load i64, i64* %6, align 8
  ret i64 %123
}

declare dso_local i32 @_CPU_ISR_Disable(i64) #1

declare dso_local i32 @_CPU_ISR_Restore(i64) #1

declare dso_local i32 @__exi_clearirqs(i64, i32, i32, i32) #1

declare dso_local i32 @__UnmaskIrq(i32) #1

declare dso_local i32 @IRQMASK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
