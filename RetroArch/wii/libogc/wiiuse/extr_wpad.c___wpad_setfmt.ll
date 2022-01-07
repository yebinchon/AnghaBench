; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wpad.c___wpad_setfmt.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wpad.c___wpad_setfmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@__wpdcb = common dso_local global %struct.TYPE_2__* null, align 8
@__wpads = common dso_local global i32* null, align 8
@WIIUSE_CONTINUOUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @__wpad_setfmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__wpad_setfmt(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__wpdcb, align 8
  %4 = load i64, i64* %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i64 %4
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %59 [
    i32 130, label %8
    i32 129, label %25
    i32 128, label %42
  ]

8:                                                ; preds = %1
  %9 = load i32*, i32** @__wpads, align 8
  %10 = load i64, i64* %2, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @WIIUSE_CONTINUOUS, align 4
  %14 = call i32 @wiiuse_set_flags(i32 %12, i32 0, i32 %13)
  %15 = load i32*, i32** @__wpads, align 8
  %16 = load i64, i64* %2, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @wiiuse_motion_sensing(i32 %18, i32 0)
  %20 = load i32*, i32** @__wpads, align 8
  %21 = load i64, i64* %2, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @wiiuse_set_ir(i32 %23, i32 0)
  br label %60

25:                                               ; preds = %1
  %26 = load i32*, i32** @__wpads, align 8
  %27 = load i64, i64* %2, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @WIIUSE_CONTINUOUS, align 4
  %31 = call i32 @wiiuse_set_flags(i32 %29, i32 %30, i32 0)
  %32 = load i32*, i32** @__wpads, align 8
  %33 = load i64, i64* %2, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @wiiuse_motion_sensing(i32 %35, i32 1)
  %37 = load i32*, i32** @__wpads, align 8
  %38 = load i64, i64* %2, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @wiiuse_set_ir(i32 %40, i32 0)
  br label %60

42:                                               ; preds = %1
  %43 = load i32*, i32** @__wpads, align 8
  %44 = load i64, i64* %2, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @WIIUSE_CONTINUOUS, align 4
  %48 = call i32 @wiiuse_set_flags(i32 %46, i32 %47, i32 0)
  %49 = load i32*, i32** @__wpads, align 8
  %50 = load i64, i64* %2, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @wiiuse_motion_sensing(i32 %52, i32 1)
  %54 = load i32*, i32** @__wpads, align 8
  %55 = load i64, i64* %2, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @wiiuse_set_ir(i32 %57, i32 1)
  br label %60

59:                                               ; preds = %1
  br label %60

60:                                               ; preds = %59, %42, %25, %8
  ret void
}

declare dso_local i32 @wiiuse_set_flags(i32, i32, i32) #1

declare dso_local i32 @wiiuse_motion_sensing(i32, i32) #1

declare dso_local i32 @wiiuse_set_ir(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
