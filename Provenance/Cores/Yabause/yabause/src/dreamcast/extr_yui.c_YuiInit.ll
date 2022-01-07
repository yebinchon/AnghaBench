; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_yui.c_YuiInit.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_yui.c_YuiInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (...)* }
%struct.TYPE_4__ = type { i32, i64, i64, i64, i32, i64, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32 }

@PERCORE_DC = common dso_local global i32 0, align 4
@VIDCORE_DC = common dso_local global i32 0, align 4
@M68KCORE_C68K = common dso_local global i32 0, align 4
@SNDCORE_DUMMY = common dso_local global i32 0, align 4
@CDCORE_ARCH = common dso_local global i32 0, align 4
@CART_NONE = common dso_local global i32 0, align 4
@REGION_AUTODETECT = common dso_local global i32 0, align 4
@emulate_bios = common dso_local global i64 0, align 8
@bios = common dso_local global i32* null, align 8
@VIDEOFORMATTYPE_NTSC = common dso_local global i32 0, align 4
@PERCore = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @YuiInit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @PERCORE_DC, align 4
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 17
  store i32 %4, i32* %5, align 8
  %6 = load i32, i32* %2, align 4
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i32 %6, i32* %7, align 8
  %8 = load i32, i32* @VIDCORE_DC, align 4
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 16
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @M68KCORE_C68K, align 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 15
  store i32 %10, i32* %11, align 8
  %12 = load i32, i32* @SNDCORE_DUMMY, align 4
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 14
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @CDCORE_ARCH, align 4
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 13
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* @CART_NONE, align 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 12
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @REGION_AUTODETECT, align 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 11
  store i32 %18, i32* %19, align 8
  %20 = load i64, i64* @emulate_bios, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %25

23:                                               ; preds = %1
  %24 = load i32*, i32** @bios, align 8
  br label %25

25:                                               ; preds = %23, %22
  %26 = phi i32* [ null, %22 ], [ %24, %23 ]
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 10
  store i32* %26, i32** %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 9
  store i32* null, i32** %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 8
  store i32* null, i32** %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 7
  store i32* null, i32** %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 6
  store i32* null, i32** %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 5
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* @VIDEOFORMATTYPE_NTSC, align 4
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 4
  store i32 %33, i32* %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = call i64 @YabauseInit(%struct.TYPE_4__* %3)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %25
  ret i32 -1

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %42, %41
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @PERCore, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32 (...)*, i32 (...)** %44, align 8
  %46 = call i32 (...) %45()
  br label %42
}

declare dso_local i64 @YabauseInit(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
