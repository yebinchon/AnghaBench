; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_emu.c_emu_msg_cb.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_emu.c_emu_msg_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@giz_screen = common dso_local global i32* null, align 8
@noticeMsgTime = common dso_local global i64 0, align 8
@reset_timing = common dso_local global i32 0, align 4
@currentConfig = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @emu_msg_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emu_msg_cb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32*, i32** @giz_screen, align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 (...) @fb_unlock()
  br label %7

7:                                                ; preds = %5, %1
  %8 = call i32* @fb_lock(i32 1)
  store i32* %8, i32** @giz_screen, align 8
  %9 = load i32*, i32** @giz_screen, align 8
  %10 = bitcast i32* %9 to i8*
  %11 = getelementptr inbounds i8, i8* %10, i64 148944
  %12 = bitcast i8* %11 to i32*
  %13 = call i32 @memset32(i32* %12, i32 0, i32 1284)
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @emu_text_out16(i32 4, i32 232, i8* %14)
  %16 = call i64 (...) @GetTickCount()
  %17 = sub nsw i64 %16, 2000
  store i64 %17, i64* @noticeMsgTime, align 8
  store i32 1, i32* @reset_timing, align 4
  %18 = call i32 (...) @fb_unlock()
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %20 = and i32 %19, 32768
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 0, i32 1
  %24 = call i32* @fb_lock(i32 %23)
  store i32* %24, i32** @giz_screen, align 8
  ret void
}

declare dso_local i32 @fb_unlock(...) #1

declare dso_local i32* @fb_lock(i32) #1

declare dso_local i32 @memset32(i32*, i32, i32) #1

declare dso_local i32 @emu_text_out16(i32, i32, i8*) #1

declare dso_local i64 @GetTickCount(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
