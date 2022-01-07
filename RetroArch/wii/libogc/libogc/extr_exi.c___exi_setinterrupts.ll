; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_exi.c___exi_setinterrupts.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_exi.c___exi_setinterrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@eximap = common dso_local global %struct.TYPE_4__* null, align 8
@EXI_CHANNEL_2 = common dso_local global i64 0, align 8
@EXI_CHANNEL_0 = common dso_local global i64 0, align 8
@IRQ_EXI0_EXI = common dso_local global i32 0, align 4
@IRQ_EXI2_EXI = common dso_local global i32 0, align 4
@EXI_FLAG_LOCKED = common dso_local global i32 0, align 4
@EXI_CHANNEL_1 = common dso_local global i64 0, align 8
@IRQ_EXI1_EXI = common dso_local global i32 0, align 4
@IRQ_PI_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.TYPE_4__*)* @__exi_setinterrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__exi_setinterrupts(i64 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @eximap, align 8
  %7 = load i64, i64* @EXI_CHANNEL_2, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i64 %7
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %5, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @EXI_CHANNEL_0, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %43

12:                                               ; preds = %2
  %13 = load i32, i32* @IRQ_EXI0_EXI, align 4
  %14 = call i32 @IRQMASK(i32 %13)
  %15 = load i32, i32* @IRQ_EXI2_EXI, align 4
  %16 = call i32 @IRQMASK(i32 %15)
  %17 = or i32 %14, %16
  %18 = call i32 @__MaskIrq(i32 %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @EXI_FLAG_LOCKED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %12
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30, %25
  %36 = load i32, i32* @IRQ_EXI0_EXI, align 4
  %37 = call i32 @IRQMASK(i32 %36)
  %38 = load i32, i32* @IRQ_EXI2_EXI, align 4
  %39 = call i32 @IRQMASK(i32 %38)
  %40 = or i32 %37, %39
  %41 = call i32 @__UnmaskIrq(i32 %40)
  br label %42

42:                                               ; preds = %35, %30, %12
  br label %92

43:                                               ; preds = %2
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* @EXI_CHANNEL_1, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %43
  %48 = load i32, i32* @IRQ_EXI1_EXI, align 4
  %49 = call i32 @IRQMASK(i32 %48)
  %50 = call i32 @__MaskIrq(i32 %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @EXI_FLAG_LOCKED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %47
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* @IRQ_EXI1_EXI, align 4
  %64 = call i32 @IRQMASK(i32 %63)
  %65 = call i32 @__UnmaskIrq(i32 %64)
  br label %66

66:                                               ; preds = %62, %57, %47
  br label %91

67:                                               ; preds = %43
  %68 = load i64, i64* %3, align 8
  %69 = load i64, i64* @EXI_CHANNEL_2, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %90

71:                                               ; preds = %67
  %72 = load i32, i32* @IRQ_EXI0_EXI, align 4
  %73 = call i32 @IRQMASK(i32 %72)
  %74 = call i32 @__MaskIrq(i32 %73)
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @EXI_FLAG_LOCKED, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %71
  %82 = load i32, i32* @IRQ_PI_DEBUG, align 4
  %83 = call i64 @IRQ_GetHandler(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i32, i32* @IRQ_EXI2_EXI, align 4
  %87 = call i32 @IRQMASK(i32 %86)
  %88 = call i32 @__UnmaskIrq(i32 %87)
  br label %89

89:                                               ; preds = %85, %81, %71
  br label %90

90:                                               ; preds = %89, %67
  br label %91

91:                                               ; preds = %90, %66
  br label %92

92:                                               ; preds = %91, %42
  ret void
}

declare dso_local i32 @__MaskIrq(i32) #1

declare dso_local i32 @IRQMASK(i32) #1

declare dso_local i32 @__UnmaskIrq(i32) #1

declare dso_local i64 @IRQ_GetHandler(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
