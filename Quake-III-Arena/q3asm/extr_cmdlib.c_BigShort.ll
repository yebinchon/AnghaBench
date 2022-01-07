; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3asm/extr_cmdlib.c_BigShort.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3asm/extr_cmdlib.c_BigShort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i16 @BigShort(i16 signext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i16 %0, i16* %2, align 2
  %5 = load i16, i16* %2, align 2
  %6 = sext i16 %5 to i32
  %7 = and i32 %6, 255
  store i32 %7, i32* %3, align 4
  %8 = load i16, i16* %2, align 2
  %9 = sext i16 %8 to i32
  %10 = ashr i32 %9, 8
  %11 = and i32 %10, 255
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = shl i32 %12, 8
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %13, %14
  %16 = trunc i32 %15 to i16
  ret i16 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
