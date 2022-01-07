; ModuleID = '/home/carl/AnghaBench/esp-idf/components/fatfs/src/extr_diskio.c_ff_disk_status.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/fatfs/src/extr_diskio.c_ff_disk_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STA_NOINIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @disk_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %16 [
    i32 129, label %7
    i32 130, label %10
    i32 128, label %13
  ]

7:                                                ; preds = %1
  %8 = call i32 (...) @RAM_disk_status()
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %2, align 4
  br label %18

10:                                               ; preds = %1
  %11 = call i32 (...) @MMC_disk_status()
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %18

13:                                               ; preds = %1
  %14 = call i32 (...) @USB_disk_status()
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @STA_NOINIT, align 4
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %16, %13, %10, %7
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @RAM_disk_status(...) #1

declare dso_local i32 @MMC_disk_status(...) #1

declare dso_local i32 @USB_disk_status(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
