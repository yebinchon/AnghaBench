; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_si.c___si_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_si.c___si_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@sipacket = common dso_local global %struct.TYPE_3__* null, align 8
@si_alarm = common dso_local global i32* null, align 8
@sicntrl = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@_siReg = common dso_local global i32* null, align 8
@IRQ_PI_SI = common dso_local global i32 0, align 4
@__si_interrupthandler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__si_init() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %16, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 4
  br i1 %4, label %5, label %19

5:                                                ; preds = %2
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sipacket, align 8
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32 -1, i32* %10, align 4
  %11 = load i32*, i32** @si_alarm, align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = call i32 @SYS_CreateAlarm(i32* %14)
  br label %16

16:                                               ; preds = %5
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %1, align 4
  br label %2

19:                                               ; preds = %2
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sicntrl, i32 0, i32 0), align 8
  %20 = call i32 @SI_SetSamplingRate(i32 0)
  br label %21

21:                                               ; preds = %27, %19
  %22 = load i32*, i32** @_siReg, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 13
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 1
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %21

28:                                               ; preds = %21
  %29 = load i32*, i32** @_siReg, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 13
  store i32 -2147483648, i32* %30, align 4
  %31 = load i32*, i32** @_siReg, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 15
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 2147483647
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* @IRQ_PI_SI, align 4
  %36 = load i32, i32* @__si_interrupthandler, align 4
  %37 = call i32 @IRQ_Request(i32 %35, i32 %36, i32* null)
  %38 = load i32, i32* @IRQ_PI_SI, align 4
  %39 = call i32 @IRQMASK(i32 %38)
  %40 = call i32 @__UnmaskIrq(i32 %39)
  %41 = call i32 @SI_GetType(i32 0)
  %42 = call i32 @SI_GetType(i32 1)
  %43 = call i32 @SI_GetType(i32 2)
  %44 = call i32 @SI_GetType(i32 3)
  ret void
}

declare dso_local i32 @SYS_CreateAlarm(i32*) #1

declare dso_local i32 @SI_SetSamplingRate(i32) #1

declare dso_local i32 @IRQ_Request(i32, i32, i32*) #1

declare dso_local i32 @__UnmaskIrq(i32) #1

declare dso_local i32 @IRQMASK(i32) #1

declare dso_local i32 @SI_GetType(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
