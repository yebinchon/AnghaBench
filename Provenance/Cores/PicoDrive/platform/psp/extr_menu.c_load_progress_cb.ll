; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_menu.c_load_progress_cb.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_menu.c_load_progress_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@menu_screen = common dso_local global i64 0, align 8
@lcdr_line = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @load_progress_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_progress_cb(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i16*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = mul nsw i32 %6, 480
  %8 = sdiv i32 %7, 100
  store i32 %8, i32* %4, align 4
  %9 = load i64, i64* @menu_screen, align 8
  %10 = inttoptr i64 %9 to i16*
  %11 = load i32, i32* @lcdr_line, align 4
  %12 = mul nsw i32 5120, %11
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i16, i16* %10, i64 %13
  store i16* %14, i16** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp sgt i32 %15, 480
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 480, i32* %4, align 4
  br label %18

18:                                               ; preds = %17, %1
  store i32 8, i32* %3, align 4
  br label %19

19:                                               ; preds = %27, %18
  %20 = load i32, i32* %3, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load i16*, i16** %5, align 8
  %24 = load i32, i32* %4, align 4
  %25 = mul nsw i32 %24, 2
  %26 = call i32 @memset(i16* %23, i32 255, i32 %25)
  br label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %3, align 4
  %30 = load i16*, i16** %5, align 8
  %31 = getelementptr inbounds i16, i16* %30, i64 512
  store i16* %31, i16** %5, align 8
  br label %19

32:                                               ; preds = %19
  ret void
}

declare dso_local i32 @memset(i16*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
