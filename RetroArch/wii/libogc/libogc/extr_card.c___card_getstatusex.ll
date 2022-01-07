; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_getstatusex.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_getstatusex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.card_direntry = type { i32 }
%struct.card_dat = type { i32* }

@EXI_CHANNEL_0 = common dso_local global i64 0, align 8
@EXI_CHANNEL_2 = common dso_local global i64 0, align 8
@CARD_ERROR_NOCARD = common dso_local global i64 0, align 8
@CARD_MAXFILES = common dso_local global i64 0, align 8
@CARD_ERROR_FATAL_ERROR = common dso_local global i64 0, align 8
@CARD_ERROR_BROKEN = common dso_local global i64 0, align 8
@CARD_ERROR_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, %struct.card_direntry*)* @__card_getstatusex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__card_getstatusex(i64 %0, i64 %1, %struct.card_direntry* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.card_direntry*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.card_dat*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.card_direntry* %2, %struct.card_direntry** %7, align 8
  store i32* null, i32** %9, align 8
  store %struct.card_dat* null, %struct.card_dat** %10, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @EXI_CHANNEL_0, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @EXI_CHANNEL_2, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %3
  %19 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  store i64 %19, i64* %4, align 8
  br label %54

20:                                               ; preds = %14
  %21 = load i64, i64* %6, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @CARD_MAXFILES, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %20
  %28 = load i64, i64* @CARD_ERROR_FATAL_ERROR, align 8
  store i64 %28, i64* %4, align 8
  br label %54

29:                                               ; preds = %23
  %30 = load i64, i64* %5, align 8
  %31 = call i64 @__card_getcntrlblock(i64 %30, i32** %9)
  store i64 %31, i64* %8, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i64, i64* %8, align 8
  store i64 %34, i64* %4, align 8
  br label %54

35:                                               ; preds = %29
  %36 = load i64, i64* @CARD_ERROR_BROKEN, align 8
  store i64 %36, i64* %8, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call %struct.card_dat* @__card_getdirblock(i32* %37)
  store %struct.card_dat* %38, %struct.card_dat** %10, align 8
  %39 = load %struct.card_dat*, %struct.card_dat** %10, align 8
  %40 = icmp ne %struct.card_dat* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load i64, i64* @CARD_ERROR_READY, align 8
  store i64 %42, i64* %8, align 8
  %43 = load %struct.card_direntry*, %struct.card_direntry** %7, align 8
  %44 = load %struct.card_dat*, %struct.card_dat** %10, align 8
  %45 = getelementptr inbounds %struct.card_dat, %struct.card_dat* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = call i32 @memcpy(%struct.card_direntry* %43, i32* %48, i32 4)
  br label %50

50:                                               ; preds = %41, %35
  %51 = load i32*, i32** %9, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i64 @__card_putcntrlblock(i32* %51, i64 %52)
  store i64 %53, i64* %4, align 8
  br label %54

54:                                               ; preds = %50, %33, %27, %18
  %55 = load i64, i64* %4, align 8
  ret i64 %55
}

declare dso_local i64 @__card_getcntrlblock(i64, i32**) #1

declare dso_local %struct.card_dat* @__card_getdirblock(i32*) #1

declare dso_local i32 @memcpy(%struct.card_direntry*, i32*, i32) #1

declare dso_local i64 @__card_putcntrlblock(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
