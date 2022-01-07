; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_exi.c___exi_attach.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_exi.c___exi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@eximap = common dso_local global %struct.TYPE_3__* null, align 8
@EXI_FLAG_ATTACH = common dso_local global i32 0, align 4
@IRQ_EXI0_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32)* @__exi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__exi_attach(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @eximap, align 8
  %9 = load i64, i64* %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i64 %9
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @_CPU_ISR_Disable(i32 %11)
  store i64 0, i64* %5, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @EXI_FLAG_ATTACH, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %41, label %19

19:                                               ; preds = %2
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @__exi_probe(i64 %20)
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @__exi_clearirqs(i64 %24, i32 1, i32 0, i32 0)
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @IRQ_EXI0_EXT, align 4
  %30 = call i64 @IRQMASK(i32 %29)
  %31 = load i64, i64* %3, align 8
  %32 = mul i64 %31, 3
  %33 = lshr i64 %30, %32
  %34 = call i32 @__UnmaskIrq(i64 %33)
  %35 = load i32, i32* @EXI_FLAG_ATTACH, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  store i64 1, i64* %5, align 8
  br label %40

40:                                               ; preds = %23, %19
  br label %41

41:                                               ; preds = %40, %2
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @_CPU_ISR_Restore(i32 %42)
  %44 = load i64, i64* %5, align 8
  ret i64 %44
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @__exi_probe(i64) #1

declare dso_local i32 @__exi_clearirqs(i64, i32, i32, i32) #1

declare dso_local i32 @__UnmaskIrq(i64) #1

declare dso_local i64 @IRQMASK(i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
