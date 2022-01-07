; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_system.c___read_rom.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_system.c___read_rom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXI_CHANNEL_0 = common dso_local global i32 0, align 4
@EXI_DEVICE_1 = common dso_local global i32 0, align 4
@EXI_SPEED8MHZ = common dso_local global i32 0, align 4
@EXI_WRITE = common dso_local global i32 0, align 4
@EXI_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @__read_rom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__read_rom(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @DCInvalidateRange(i8* %10, i32 %11)
  %13 = load i32, i32* @EXI_CHANNEL_0, align 4
  %14 = load i32, i32* @EXI_DEVICE_1, align 4
  %15 = call i64 @EXI_Lock(i32 %13, i32 %14, i32* null)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %80

18:                                               ; preds = %3
  %19 = load i32, i32* @EXI_CHANNEL_0, align 4
  %20 = load i32, i32* @EXI_DEVICE_1, align 4
  %21 = load i32, i32* @EXI_SPEED8MHZ, align 4
  %22 = call i64 @EXI_Select(i32 %19, i32 %20, i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EXI_CHANNEL_0, align 4
  %26 = call i64 @EXI_Unlock(i32 %25)
  store i32 0, i32* %4, align 4
  br label %80

27:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = shl i32 %28, 6
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* @EXI_CHANNEL_0, align 4
  %31 = load i32, i32* @EXI_WRITE, align 4
  %32 = call i64 @EXI_Imm(i32 %30, i32* %9, i32 4, i32 %31, i32* null)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %34, %27
  %38 = load i32, i32* @EXI_CHANNEL_0, align 4
  %39 = call i64 @EXI_Sync(i32 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, 2
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %41, %37
  %45 = load i32, i32* @EXI_CHANNEL_0, align 4
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @EXI_READ, align 4
  %49 = call i64 @EXI_Dma(i32 %45, i8* %46, i32 %47, i32 %48, i32* null)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, 4
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %51, %44
  %55 = load i32, i32* @EXI_CHANNEL_0, align 4
  %56 = call i64 @EXI_Sync(i32 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %59, 8
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %58, %54
  %62 = load i32, i32* @EXI_CHANNEL_0, align 4
  %63 = call i64 @EXI_Deselect(i32 %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, 16
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %65, %61
  %69 = load i32, i32* @EXI_CHANNEL_0, align 4
  %70 = call i64 @EXI_Unlock(i32 %69)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* %8, align 4
  %74 = or i32 %73, 32
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %72, %68
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 0, i32* %4, align 4
  br label %80

79:                                               ; preds = %75
  store i32 1, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %78, %24, %17
  %81 = load i32, i32* %4, align 4
  ret i32 %81
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
