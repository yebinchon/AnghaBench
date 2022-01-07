; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/extr_carthw.c_PicoWrite8_sprot.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/extr_carthw.c_PicoWrite8_sprot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EL_UIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"prot w8  [%06x]   %02x @%06x\00", align 1
@SekPc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"prot w8  [%06x]   %02x MISS @%06x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @PicoWrite8_sprot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PicoWrite8_sprot(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp sle i32 10551296, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 10559488
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @PicoWrite8_io(i32 %12, i32 %13)
  br label %54

15:                                               ; preds = %8, %2
  %16 = load i32, i32* %3, align 4
  %17 = call i32* @carthw_sprot_get_val(i32 %16, i32 1)
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %47

20:                                               ; preds = %15
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 65280
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %28, 255
  %30 = or i32 %27, %29
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  br label %40

32:                                               ; preds = %20
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 255
  %36 = load i32, i32* %4, align 4
  %37 = shl i32 %36, 8
  %38 = or i32 %35, %37
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %32, %24
  %41 = load i32, i32* @EL_UIO, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %43, 255
  %45 = load i32, i32* @SekPc, align 4
  %46 = call i32 @elprintf(i32 %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %44, i32 %45)
  br label %54

47:                                               ; preds = %15
  %48 = load i32, i32* @EL_UIO, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %4, align 4
  %51 = and i32 %50, 255
  %52 = load i32, i32* @SekPc, align 4
  %53 = call i32 @elprintf(i32 %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %11, %47, %40
  ret void
}

declare dso_local i32 @PicoWrite8_io(i32, i32) #1

declare dso_local i32* @carthw_sprot_get_val(i32, i32) #1

declare dso_local i32 @elprintf(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
