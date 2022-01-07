; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_system.c___sram_write.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_system.c___sram_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXI_CHANNEL_0 = common dso_local global i32 0, align 4
@EXI_DEVICE_1 = common dso_local global i32 0, align 4
@__sram_writecallback = common dso_local global i32 0, align 4
@EXI_SPEED8MHZ = common dso_local global i32 0, align 4
@EXI_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @__sram_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sram_write(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @EXI_CHANNEL_0, align 4
  %11 = load i32, i32* @EXI_DEVICE_1, align 4
  %12 = load i32, i32* @__sram_writecallback, align 4
  %13 = call i64 @EXI_Lock(i32 %10, i32 %11, i32 %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %72

16:                                               ; preds = %3
  %17 = load i32, i32* @EXI_CHANNEL_0, align 4
  %18 = load i32, i32* @EXI_DEVICE_1, align 4
  %19 = load i32, i32* @EXI_SPEED8MHZ, align 4
  %20 = call i64 @EXI_Select(i32 %17, i32 %18, i32 %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @EXI_CHANNEL_0, align 4
  %24 = call i64 @EXI_Unlock(i32 %23)
  store i32 0, i32* %4, align 4
  br label %72

25:                                               ; preds = %16
  store i32 0, i32* %9, align 4
  %26 = load i32, i32* %6, align 4
  %27 = shl i32 %26, 6
  %28 = add i32 -1610612480, %27
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* @EXI_CHANNEL_0, align 4
  %30 = load i32, i32* @EXI_WRITE, align 4
  %31 = call i64 @EXI_Imm(i32 %29, i32* %8, i32 4, i32 %30, i32* null)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32, i32* %9, align 4
  %35 = or i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %33, %25
  %37 = load i32, i32* @EXI_CHANNEL_0, align 4
  %38 = call i64 @EXI_Sync(i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, 2
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %40, %36
  %44 = load i32, i32* @EXI_CHANNEL_0, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @EXI_WRITE, align 4
  %48 = call i64 @EXI_ImmEx(i32 %44, i8* %45, i32 %46, i32 %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, 4
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %50, %43
  %54 = load i32, i32* @EXI_CHANNEL_0, align 4
  %55 = call i64 @EXI_Deselect(i32 %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* %9, align 4
  %59 = or i32 %58, 8
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %57, %53
  %61 = load i32, i32* @EXI_CHANNEL_0, align 4
  %62 = call i64 @EXI_Unlock(i32 %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %65, 16
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %64, %60
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %72

71:                                               ; preds = %67
  store i32 1, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %70, %22, %15
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i64 @EXI_Lock(i32, i32, i32) #1

declare dso_local i64 @EXI_Select(i32, i32, i32) #1

declare dso_local i64 @EXI_Unlock(i32) #1

declare dso_local i64 @EXI_Imm(i32, i32*, i32, i32, i32*) #1

declare dso_local i64 @EXI_Sync(i32) #1

declare dso_local i64 @EXI_ImmEx(i32, i8*, i32, i32) #1

declare dso_local i64 @EXI_Deselect(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
