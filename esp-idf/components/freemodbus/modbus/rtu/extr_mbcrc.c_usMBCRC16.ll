; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/modbus/rtu/extr_mbcrc.c_usMBCRC16.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/modbus/rtu/extr_mbcrc.c_usMBCRC16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aucCRCHi = common dso_local global i32* null, align 8
@aucCRCLo = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usMBCRC16(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 255, i32* %5, align 4
  store i32 255, i32* %6, align 4
  br label %8

8:                                                ; preds = %12, %2
  %9 = load i32, i32* %4, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %4, align 4
  %11 = icmp ne i32 %9, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %8
  %13 = load i32, i32* %6, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %15, i32** %3, align 8
  %16 = load i32, i32* %14, align 4
  %17 = xor i32 %13, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32*, i32** @aucCRCHi, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = xor i32 %18, %23
  store i32 %24, i32* %6, align 4
  %25 = load i32*, i32** @aucCRCLo, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %5, align 4
  br label %8

30:                                               ; preds = %8
  %31 = load i32, i32* %5, align 4
  %32 = shl i32 %31, 8
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %32, %33
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
