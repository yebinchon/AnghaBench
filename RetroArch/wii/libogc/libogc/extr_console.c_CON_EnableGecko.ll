; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_console.c_CON_EnableGecko.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_console.c_CON_EnableGecko.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__gecko_status = common dso_local global i32 0, align 4
@__gecko_safe = common dso_local global i32 0, align 4
@dotab_stdout = common dso_local global i32 0, align 4
@devoptab_list = common dso_local global i32** null, align 8
@STD_OUT = common dso_local global i64 0, align 8
@STD_ERR = common dso_local global i64 0, align 8
@curr_con = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@_IOLBF = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CON_EnableGecko(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @usb_isgeckoalive(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10, %7
  store i32 -1, i32* %3, align 4
  br label %15

15:                                               ; preds = %14, %10, %2
  %16 = load i32, i32* %3, align 4
  store i32 %16, i32* @__gecko_status, align 4
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* @__gecko_safe, align 4
  %18 = load i32, i32* @__gecko_status, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %37

20:                                               ; preds = %15
  %21 = load i32**, i32*** @devoptab_list, align 8
  %22 = load i64, i64* @STD_OUT, align 8
  %23 = getelementptr inbounds i32*, i32** %21, i64 %22
  store i32* @dotab_stdout, i32** %23, align 8
  %24 = load i32**, i32*** @devoptab_list, align 8
  %25 = load i64, i64* @STD_ERR, align 8
  %26 = getelementptr inbounds i32*, i32** %24, i64 %25
  store i32* @dotab_stdout, i32** %26, align 8
  %27 = load i32, i32* @curr_con, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* @stdout, align 4
  %31 = load i32, i32* @_IOLBF, align 4
  %32 = call i32 @setvbuf(i32 %30, i32* null, i32 %31, i32 0)
  %33 = load i32, i32* @stderr, align 4
  %34 = load i32, i32* @_IOLBF, align 4
  %35 = call i32 @setvbuf(i32 %33, i32* null, i32 %34, i32 0)
  br label %36

36:                                               ; preds = %29, %20
  br label %37

37:                                               ; preds = %36, %15
  ret void
}

declare dso_local i32 @usb_isgeckoalive(i32) #1

declare dso_local i32 @setvbuf(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
