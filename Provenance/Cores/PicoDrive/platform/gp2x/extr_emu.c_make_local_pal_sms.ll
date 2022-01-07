; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_emu.c_make_local_pal_sms.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_emu.c_make_local_pal_sms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i16* }

@Pico = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@localPal = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @make_local_pal_sms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_local_pal_sms(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i16*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i16*, i16** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), align 8
  store i16* %7, i16** %3, align 8
  %8 = load i64, i64* @localPal, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %4, align 8
  store i32 64, i32* %5, align 4
  br label %11

11:                                               ; preds = %41, %1
  %12 = load i32, i32* %5, align 4
  %13 = icmp ugt i32 %12, 0
  br i1 %13, label %14, label %44

14:                                               ; preds = %11
  %15 = load i16*, i16** %3, align 8
  %16 = getelementptr inbounds i16, i16* %15, i32 1
  store i16* %16, i16** %3, align 8
  %17 = load i16, i16* %15, align 2
  %18 = zext i16 %17 to i32
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 3
  %21 = shl i32 %20, 22
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 12
  %24 = shl i32 %23, 12
  %25 = or i32 %21, %24
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 48
  %28 = shl i32 %27, 2
  %29 = or i32 %25, %28
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = lshr i32 %30, 2
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = lshr i32 %34, 4
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %4, align 8
  store i32 %38, i32* %39, align 4
  br label %41

41:                                               ; preds = %14
  %42 = load i32, i32* %5, align 4
  %43 = add i32 %42, -1
  store i32 %43, i32* %5, align 4
  br label %11

44:                                               ; preds = %11
  ret i32 64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
