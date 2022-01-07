; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/linux/extr_emu.c_plat_status_msg_clear.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/linux/extr_emu.c_plat_status_msg_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_screen_ptr = common dso_local global i64 0, align 8
@g_screen_width = common dso_local global i32 0, align 4
@g_screen_height = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @plat_status_msg_clear() #0 {
  %1 = alloca i16*, align 8
  %2 = alloca i32, align 4
  %3 = load i64, i64* @g_screen_ptr, align 8
  %4 = inttoptr i64 %3 to i16*
  %5 = load i32, i32* @g_screen_width, align 4
  %6 = load i32, i32* @g_screen_height, align 4
  %7 = mul nsw i32 %5, %6
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i16, i16* %4, i64 %8
  store i16* %9, i16** %1, align 8
  %10 = load i32, i32* @g_screen_width, align 4
  %11 = mul nsw i32 %10, 8
  store i32 %11, i32* %2, align 4
  %12 = load i16*, i16** %1, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = sub i64 0, %14
  %16 = getelementptr inbounds i16, i16* %12, i64 %15
  %17 = bitcast i16* %16 to i32*
  %18 = load i32, i32* %2, align 4
  %19 = mul nsw i32 %18, 2
  %20 = sdiv i32 %19, 4
  %21 = call i32 @memset32(i32* %17, i32 0, i32 %20)
  ret void
}

declare dso_local i32 @memset32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
