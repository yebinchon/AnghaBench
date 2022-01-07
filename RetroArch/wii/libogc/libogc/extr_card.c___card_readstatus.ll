; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_readstatus.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_readstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXI_CHANNEL_0 = common dso_local global i64 0, align 8
@EXI_CHANNEL_2 = common dso_local global i64 0, align 8
@CARD_ERROR_NOCARD = common dso_local global i64 0, align 8
@EXI_DEVICE_0 = common dso_local global i32 0, align 4
@EXI_SPEED16MHZ = common dso_local global i32 0, align 4
@EXI_WRITE = common dso_local global i32 0, align 4
@EXI_READ = common dso_local global i32 0, align 4
@CARD_ERROR_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32*)* @__card_readstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__card_readstatus(i64 %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @EXI_CHANNEL_0, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @EXI_CHANNEL_2, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %2
  %17 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  store i64 %17, i64* %3, align 8
  br label %76

18:                                               ; preds = %12
  %19 = load i64, i64* %4, align 8
  %20 = load i32, i32* @EXI_DEVICE_0, align 4
  %21 = load i32, i32* @EXI_SPEED16MHZ, align 4
  %22 = call i64 @EXI_Select(i64 %19, i32 %20, i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  store i64 %25, i64* %3, align 8
  br label %76

26:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 131, i32* %27, align 4
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 0, i32* %28, align 4
  %29 = load i64, i64* %4, align 8
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %31 = load i32, i32* @EXI_WRITE, align 4
  %32 = call i64 @EXI_Imm(i64 %29, i32* %30, i32 2, i32 %31, i32* null)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %34, %26
  %38 = load i64, i64* %4, align 8
  %39 = call i64 @EXI_Sync(i64 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, 2
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %41, %37
  %45 = load i64, i64* %4, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* @EXI_READ, align 4
  %48 = call i64 @EXI_Imm(i64 %45, i32* %46, i32 1, i32 %47, i32* null)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, 4
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %50, %44
  %54 = load i64, i64* %4, align 8
  %55 = call i64 @EXI_Sync(i64 %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, 8
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %57, %53
  %61 = load i64, i64* %4, align 8
  %62 = call i64 @EXI_Deselect(i64 %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %65, 16
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %64, %60
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  store i64 %71, i64* %8, align 8
  br label %74

72:                                               ; preds = %67
  %73 = load i64, i64* @CARD_ERROR_READY, align 8
  store i64 %73, i64* %8, align 8
  br label %74

74:                                               ; preds = %72, %70
  %75 = load i64, i64* %8, align 8
  store i64 %75, i64* %3, align 8
  br label %76

76:                                               ; preds = %74, %24, %16
  %77 = load i64, i64* %3, align 8
  ret i64 %77
}

declare dso_local i64 @EXI_Select(i64, i32, i32) #1

declare dso_local i64 @EXI_Imm(i64, i32*, i32, i32, i32*) #1

declare dso_local i64 @EXI_Sync(i64) #1

declare dso_local i64 @EXI_Deselect(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
