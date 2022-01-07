; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/extr_carthw.c_PicoRead8_plk3.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/extr_carthw.c_PicoRead8_plk3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prot_lk3_cmd = common dso_local global i32 0, align 4
@prot_lk3_data = common dso_local global i32 0, align 4
@EL_UIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unhandled prot cmd %02x @%06x\00", align 1
@SekPc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"prot r8  [%06x]   %02x @%06x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @PicoRead8_plk3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PicoRead8_plk3(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @prot_lk3_cmd, align 4
  switch i32 %4, label %36 [
    i32 1, label %5
    i32 2, label %8
    i32 3, label %15
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @prot_lk3_data, align 4
  %7 = ashr i32 %6, 1
  store i32 %7, i32* %3, align 4
  br label %41

8:                                                ; preds = %1
  %9 = load i32, i32* @prot_lk3_data, align 4
  %10 = ashr i32 %9, 4
  %11 = load i32, i32* @prot_lk3_data, align 4
  %12 = shl i32 %11, 4
  %13 = or i32 %10, %12
  %14 = and i32 %13, 255
  store i32 %14, i32* %3, align 4
  br label %41

15:                                               ; preds = %1
  %16 = load i32, i32* @prot_lk3_data, align 4
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = ashr i32 %17, 4
  %19 = load i32, i32* %3, align 4
  %20 = shl i32 %19, 4
  %21 = or i32 %18, %20
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, 204
  %24 = ashr i32 %23, 2
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, 51
  %27 = shl i32 %26, 2
  %28 = or i32 %24, %27
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, 170
  %31 = ashr i32 %30, 1
  %32 = load i32, i32* %3, align 4
  %33 = and i32 %32, 85
  %34 = shl i32 %33, 1
  %35 = or i32 %31, %34
  store i32 %35, i32* %3, align 4
  br label %41

36:                                               ; preds = %1
  %37 = load i32, i32* @EL_UIO, align 4
  %38 = load i32, i32* @prot_lk3_cmd, align 4
  %39 = load i32, i32* @SekPc, align 4
  %40 = call i32 (i32, i8*, i32, i32, ...) @elprintf(i32 %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %15, %8, %5
  %42 = load i32, i32* @EL_UIO, align 4
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @SekPc, align 4
  %46 = call i32 (i32, i8*, i32, i32, ...) @elprintf(i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @elprintf(i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
