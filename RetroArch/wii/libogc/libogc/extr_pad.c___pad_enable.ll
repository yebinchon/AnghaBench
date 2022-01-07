; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_pad.c___pad_enable.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_pad.c___pad_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__pad_enabledbits = common dso_local global i32 0, align 4
@__pad_analogmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @__pad_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__pad_enable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [2 x i32], align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @PAD_ENABLEDMASK(i32 %4)
  %6 = load i32, i32* @__pad_enabledbits, align 4
  %7 = or i32 %6, %5
  store i32 %7, i32* @__pad_enabledbits, align 4
  %8 = load i32, i32* %2, align 4
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %10 = bitcast i32* %9 to i8*
  %11 = call i32 @SI_GetResponse(i32 %8, i8* %10)
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @__pad_analogmode, align 4
  %14 = or i32 %13, 4194304
  %15 = call i32 @SI_SetCommand(i32 %12, i32 %14)
  %16 = load i32, i32* @__pad_enabledbits, align 4
  %17 = call i32 @SI_EnablePolling(i32 %16)
  ret void
}

declare dso_local i32 @PAD_ENABLEDMASK(i32) #1

declare dso_local i32 @SI_GetResponse(i32, i8*) #1

declare dso_local i32 @SI_SetCommand(i32, i32) #1

declare dso_local i32 @SI_EnablePolling(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
