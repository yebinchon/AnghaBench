; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw.c_PicoDrawUpdateHighPal.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw.c_PicoDrawUpdateHighPal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@Pico = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PicoOpt = common dso_local global i32 0, align 4
@POPT_ALT_RENDERER = common dso_local global i32 0, align 4
@rendstatus = common dso_local global i32 0, align 4
@PDRAW_SONIC_MODE = common dso_local global i32 0, align 4
@HighPal = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PicoDrawUpdateHighPal() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 8
  %3 = getelementptr inbounds i32, i32* %2, i64 12
  %4 = load i32, i32* %3, align 4
  %5 = and i32 %4, 8
  %6 = ashr i32 %5, 3
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* @PicoOpt, align 4
  %8 = load i32, i32* @POPT_ALT_RENDERER, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %11, %0
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @PicoDoHighPal555(i32 %13)
  %15 = load i32, i32* @rendstatus, align 4
  %16 = load i32, i32* @PDRAW_SONIC_MODE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %12
  %20 = load i64, i64* @HighPal, align 8
  %21 = add nsw i64 %20, 64
  %22 = load i64, i64* @HighPal, align 8
  %23 = call i32 @memcpy(i64 %21, i64 %22, i32 128)
  %24 = load i64, i64* @HighPal, align 8
  %25 = add nsw i64 %24, 128
  %26 = load i64, i64* @HighPal, align 8
  %27 = call i32 @memcpy(i64 %25, i64 %26, i32 128)
  br label %28

28:                                               ; preds = %19, %12
  ret void
}

declare dso_local i32 @PicoDoHighPal555(i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
