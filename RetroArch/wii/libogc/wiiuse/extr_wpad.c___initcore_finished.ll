; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wpad.c___initcore_finished.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wpad.c___initcore_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERR_OK = common dso_local global i64 0, align 8
@__wpad_keys = common dso_local global i32 0, align 4
@WPAD_MAX_WIIMOTES = common dso_local global i32 0, align 4
@__readlinkkey_finished = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i8*)* @__initcore_finished to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__initcore_finished(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @ERR_OK, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i32, i32* @__wpad_keys, align 4
  %10 = load i32, i32* @WPAD_MAX_WIIMOTES, align 4
  %11 = load i32, i32* @__readlinkkey_finished, align 4
  %12 = call i32 @BTE_ReadStoredLinkKey(i32 %9, i32 %10, i32 %11)
  br label %13

13:                                               ; preds = %8, %2
  %14 = load i64, i64* @ERR_OK, align 8
  ret i64 %14
}

declare dso_local i32 @BTE_ReadStoredLinkKey(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
