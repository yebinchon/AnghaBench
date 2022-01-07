; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_GetNumber.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_GetNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Devices_ICDNOZ = common dso_local global i32 0, align 4
@CPU_regY = common dso_local global i32 0, align 4
@CPU_SetN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@h_textmode = common dso_local global i32* null, align 8
@h_iocb = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @Devices_GetNumber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Devices_GetNumber(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = call i32 (...) @Devices_GetIOCB()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %46

8:                                                ; preds = %1
  %9 = load i32, i32* @Devices_ICDNOZ, align 4
  %10 = call i32 @MEMORY_dGetByte(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp sgt i32 %11, 9
  br i1 %12, label %19, label %13

13:                                               ; preds = %8
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 5
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %13, %8
  store i32 160, i32* @CPU_regY, align 4
  %20 = load i32, i32* @CPU_SetN, align 4
  store i32 -1, i32* %2, align 4
  br label %46

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 5
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32, i32* @FALSE, align 4
  %29 = load i32*, i32** @h_textmode, align 8
  %30 = load i64, i64* @h_iocb, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32 %28, i32* %31, align 4
  br label %32

32:                                               ; preds = %27, %24
  %33 = load i32, i32* %4, align 4
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %2, align 4
  br label %46

35:                                               ; preds = %21
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32, i32* @TRUE, align 4
  %40 = load i32*, i32** @h_textmode, align 8
  %41 = load i64, i64* @h_iocb, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32 %39, i32* %42, align 4
  br label %43

43:                                               ; preds = %38, %35
  %44 = load i32, i32* %4, align 4
  %45 = sub nsw i32 %44, 6
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %43, %32, %19, %7
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @Devices_GetIOCB(...) #1

declare dso_local i32 @MEMORY_dGetByte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
