; ModuleID = '/home/carl/AnghaBench/TDengine/src/os/windows/src/extr_twindows.c_interlocked_add_fetch_16.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/os/windows/src/extr_twindows.c_interlocked_add_fetch_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i16 @interlocked_add_fetch_16(i16* %0, i16 signext %1) #0 {
  %3 = alloca i16*, align 8
  %4 = alloca i16, align 2
  store i16* %0, i16** %3, align 8
  store i16 %1, i16* %4, align 2
  %5 = load i16*, i16** %3, align 8
  %6 = load i16, i16* %4, align 2
  %7 = call signext i16 @_InterlockedExchangeAdd16(i16* %5, i16 signext %6)
  %8 = sext i16 %7 to i32
  %9 = load i16, i16* %4, align 2
  %10 = sext i16 %9 to i32
  %11 = add nsw i32 %8, %10
  %12 = trunc i32 %11 to i16
  ret i16 %12
}

declare dso_local signext i16 @_InterlockedExchangeAdd16(i16*, i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
