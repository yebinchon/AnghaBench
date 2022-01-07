; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_gdbstub/esp32/extr_gdbstub_esp32.c_esp_gdbstub_readmem.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_gdbstub/esp32/extr_gdbstub_esp32.c_esp_gdbstub_readmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_gdbstub_readmem(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = icmp slt i64 %6, 536870912
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = icmp sge i64 %9, 2147483648
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %1
  store i32 -1, i32* %2, align 4
  br label %25

12:                                               ; preds = %8
  %13 = load i64, i64* %3, align 8
  %14 = and i64 %13, -4
  %15 = inttoptr i64 %14 to i32*
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  %17 = load i64, i64* %3, align 8
  %18 = and i64 %17, 3
  %19 = mul nsw i64 %18, 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = ashr i32 %21, %22
  %24 = and i32 %23, 255
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %12, %11
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
