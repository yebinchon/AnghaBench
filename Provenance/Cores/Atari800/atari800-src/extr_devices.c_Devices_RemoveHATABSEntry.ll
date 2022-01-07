; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_RemoveHATABSEntry.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_RemoveHATABSEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Devices_RemoveHATABSEntry(i8 signext %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8 %0, i8* %4, align 1
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %3
  %10 = load i64, i64* %5, align 8
  %11 = call signext i8 @MEMORY_dGetByte(i64 %10)
  %12 = sext i8 %11 to i32
  %13 = load i8, i8* %4, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %9
  %17 = load i64, i64* %5, align 8
  %18 = add nsw i64 %17, 1
  %19 = call i64 @MEMORY_dGetWord(i64 %18)
  %20 = load i64, i64* %6, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @MEMORY_dPutByte(i64 %23, i32 0)
  %25 = load i64, i64* %5, align 8
  %26 = add nsw i64 %25, 1
  %27 = call i32 @MEMORY_dPutWord(i64 %26, i32 0)
  br label %28

28:                                               ; preds = %22, %16, %9, %3
  ret void
}

declare dso_local signext i8 @MEMORY_dGetByte(i64) #1

declare dso_local i64 @MEMORY_dGetWord(i64) #1

declare dso_local i32 @MEMORY_dPutByte(i64, i32) #1

declare dso_local i32 @MEMORY_dPutWord(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
