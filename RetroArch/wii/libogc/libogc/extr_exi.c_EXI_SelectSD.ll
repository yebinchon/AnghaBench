; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_exi.c_EXI_SelectSD.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_exi.c_EXI_SelectSD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32 }

@eximap = common dso_local global %struct.TYPE_3__* null, align 8
@EXI_FLAG_SELECT = common dso_local global i32 0, align 4
@EXI_CHANNEL_2 = common dso_local global i64 0, align 8
@EXI_DEVICE_0 = common dso_local global i64 0, align 8
@EXI_FLAG_ATTACH = common dso_local global i32 0, align 4
@EXI_FLAG_LOCKED = common dso_local global i32 0, align 4
@_exiReg = common dso_local global i32* null, align 8
@EXI_CHANNEL_0 = common dso_local global i64 0, align 8
@IRQ_EXI0_EXT = common dso_local global i32 0, align 4
@EXI_CHANNEL_1 = common dso_local global i64 0, align 8
@IRQ_EXI1_EXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @EXI_SelectSD(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @eximap, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %14
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %12, align 8
  %16 = load i32, i32* %11, align 4
  %17 = call i32 @_CPU_ISR_Disable(i32 %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @EXI_FLAG_SELECT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @_CPU_ISR_Restore(i32 %25)
  store i64 0, i64* %4, align 8
  br label %130

27:                                               ; preds = %3
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @EXI_CHANNEL_2, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %80

31:                                               ; preds = %27
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @EXI_DEVICE_0, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %63

35:                                               ; preds = %31
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @EXI_FLAG_ATTACH, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %63, label %42

42:                                               ; preds = %35
  %43 = load i64, i64* %5, align 8
  %44 = call i64 @__exi_probe(i64 %43)
  store i64 %44, i64* %10, align 8
  %45 = icmp eq i64 %44, 1
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* @EXI_DEVICE_0, align 8
  %54 = call i64 @EXI_GetID(i64 %52, i64 %53, i32* %9)
  store i64 %54, i64* %10, align 8
  br label %55

55:                                               ; preds = %51, %46
  br label %56

56:                                               ; preds = %55, %42
  %57 = load i64, i64* %10, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @_CPU_ISR_Restore(i32 %60)
  store i64 0, i64* %4, align 8
  br label %130

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62, %35, %31
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @EXI_FLAG_LOCKED, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %6, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70, %63
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @_CPU_ISR_Restore(i32 %77)
  store i64 0, i64* %4, align 8
  br label %130

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %79, %27
  %81 = load i32, i32* @EXI_FLAG_SELECT, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load i32*, i32** @_exiReg, align 8
  %87 = load i64, i64* %5, align 8
  %88 = mul i64 %87, 5
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = and i32 %91, 1029
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* %7, align 8
  %95 = shl i64 %94, 4
  %96 = or i64 %93, %95
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load i32*, i32** @_exiReg, align 8
  %100 = load i64, i64* %5, align 8
  %101 = mul i64 %100, 5
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %98, i32* %102, align 4
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @EXI_FLAG_ATTACH, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %127

109:                                              ; preds = %80
  %110 = load i64, i64* %5, align 8
  %111 = load i64, i64* @EXI_CHANNEL_0, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %109
  %114 = load i32, i32* @IRQ_EXI0_EXT, align 4
  %115 = call i32 @IRQMASK(i32 %114)
  %116 = call i32 @__MaskIrq(i32 %115)
  br label %126

117:                                              ; preds = %109
  %118 = load i64, i64* %5, align 8
  %119 = load i64, i64* @EXI_CHANNEL_1, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = load i32, i32* @IRQ_EXI1_EXT, align 4
  %123 = call i32 @IRQMASK(i32 %122)
  %124 = call i32 @__MaskIrq(i32 %123)
  br label %125

125:                                              ; preds = %121, %117
  br label %126

126:                                              ; preds = %125, %113
  br label %127

127:                                              ; preds = %126, %80
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @_CPU_ISR_Restore(i32 %128)
  store i64 1, i64* %4, align 8
  br label %130

130:                                              ; preds = %127, %76, %59, %24
  %131 = load i64, i64* %4, align 8
  ret i64 %131
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

declare dso_local i64 @__exi_probe(i64) #1

declare dso_local i64 @EXI_GetID(i64, i64, i32*) #1

declare dso_local i32 @__MaskIrq(i32) #1

declare dso_local i32 @IRQMASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
