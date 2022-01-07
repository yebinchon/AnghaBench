; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_system.c___sram_read.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_system.c___sram_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXI_CHANNEL_0 = common dso_local global i32 0, align 4
@EXI_DEVICE_1 = common dso_local global i32 0, align 4
@EXI_SPEED8MHZ = common dso_local global i32 0, align 4
@EXI_WRITE = common dso_local global i32 0, align 4
@EXI_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @__sram_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sram_read(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @DCInvalidateRange(i8* %6, i32 64)
  %8 = load i32, i32* @EXI_CHANNEL_0, align 4
  %9 = load i32, i32* @EXI_DEVICE_1, align 4
  %10 = call i64 @EXI_Lock(i32 %8, i32 %9, i32* null)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %72

13:                                               ; preds = %1
  %14 = load i32, i32* @EXI_CHANNEL_0, align 4
  %15 = load i32, i32* @EXI_DEVICE_1, align 4
  %16 = load i32, i32* @EXI_SPEED8MHZ, align 4
  %17 = call i64 @EXI_Select(i32 %14, i32 %15, i32 %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* @EXI_CHANNEL_0, align 4
  %21 = call i64 @EXI_Unlock(i32 %20)
  store i32 0, i32* %2, align 4
  br label %72

22:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  store i32 536871168, i32* %4, align 4
  %23 = load i32, i32* @EXI_CHANNEL_0, align 4
  %24 = load i32, i32* @EXI_WRITE, align 4
  %25 = call i64 @EXI_Imm(i32 %23, i32* %4, i32 4, i32 %24, i32* null)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %27, %22
  %31 = load i32, i32* @EXI_CHANNEL_0, align 4
  %32 = call i64 @EXI_Sync(i32 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, 2
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %34, %30
  %38 = load i32, i32* @EXI_CHANNEL_0, align 4
  %39 = load i8*, i8** %3, align 8
  %40 = load i32, i32* @EXI_READ, align 4
  %41 = call i64 @EXI_Dma(i32 %38, i8* %39, i32 64, i32 %40, i32* null)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %43, %37
  %47 = load i32, i32* @EXI_CHANNEL_0, align 4
  %48 = call i64 @EXI_Sync(i32 %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %51, 8
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %50, %46
  %54 = load i32, i32* @EXI_CHANNEL_0, align 4
  %55 = call i64 @EXI_Deselect(i32 %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, 16
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %57, %53
  %61 = load i32, i32* @EXI_CHANNEL_0, align 4
  %62 = call i64 @EXI_Unlock(i32 %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, 32
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %64, %60
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %72

71:                                               ; preds = %67
  store i32 1, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %70, %19, %12
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @DCInvalidateRange(i8*, i32) #1

declare dso_local i64 @EXI_Lock(i32, i32, i32*) #1

declare dso_local i64 @EXI_Select(i32, i32, i32) #1

declare dso_local i64 @EXI_Unlock(i32) #1

declare dso_local i64 @EXI_Imm(i32, i32*, i32, i32, i32*) #1

declare dso_local i64 @EXI_Sync(i32) #1

declare dso_local i64 @EXI_Dma(i32, i8*, i32, i32, i32*) #1

declare dso_local i64 @EXI_Deselect(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
