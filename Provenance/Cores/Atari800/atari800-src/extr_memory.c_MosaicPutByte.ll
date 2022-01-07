; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_memory.c_MosaicPutByte.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_memory.c_MosaicPutByte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mosaic_curbank = common dso_local global i32 0, align 4
@mosaic_current_num_banks = common dso_local global i32 0, align 4
@mosaic_ram = common dso_local global i64 0, align 8
@MEMORY_mem = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @MosaicPutByte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MosaicPutByte(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 65472
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %82

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = sub nsw i32 %10, 65472
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @mosaic_curbank, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %9
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @mosaic_current_num_banks, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i32, i32* @mosaic_curbank, align 4
  %21 = load i32, i32* @mosaic_current_num_banks, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %9
  br label %82

24:                                               ; preds = %19, %15
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @mosaic_current_num_banks, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = load i32, i32* @mosaic_curbank, align 4
  %30 = load i32, i32* @mosaic_current_num_banks, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load i64, i64* @mosaic_ram, align 8
  %34 = load i32, i32* @mosaic_curbank, align 4
  %35 = mul nsw i32 %34, 4096
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %33, %36
  %38 = load i64, i64* @MEMORY_mem, align 8
  %39 = add nsw i64 %38, 49152
  %40 = call i32 @memcpy(i64 %37, i64 %39, i32 4096)
  %41 = call i32 @MEMORY_dFillMem(i32 49152, i32 255, i32 4096)
  %42 = call i32 @MEMORY_SetROM(i32 49152, i32 53247)
  br label %80

43:                                               ; preds = %28, %24
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @mosaic_current_num_banks, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %43
  %48 = load i32, i32* @mosaic_curbank, align 4
  %49 = load i32, i32* @mosaic_current_num_banks, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %47
  %52 = load i64, i64* @MEMORY_mem, align 8
  %53 = add nsw i64 %52, 49152
  %54 = load i64, i64* @mosaic_ram, align 8
  %55 = load i32, i32* %5, align 4
  %56 = mul nsw i32 %55, 4096
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %54, %57
  %59 = call i32 @memcpy(i64 %53, i64 %58, i32 4096)
  %60 = call i32 @MEMORY_SetRAM(i32 49152, i32 53247)
  br label %79

61:                                               ; preds = %47, %43
  %62 = load i64, i64* @mosaic_ram, align 8
  %63 = load i32, i32* @mosaic_curbank, align 4
  %64 = mul nsw i32 %63, 4096
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %62, %65
  %67 = load i64, i64* @MEMORY_mem, align 8
  %68 = add nsw i64 %67, 49152
  %69 = call i32 @memcpy(i64 %66, i64 %68, i32 4096)
  %70 = load i64, i64* @MEMORY_mem, align 8
  %71 = add nsw i64 %70, 49152
  %72 = load i64, i64* @mosaic_ram, align 8
  %73 = load i32, i32* %5, align 4
  %74 = mul nsw i32 %73, 4096
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %72, %75
  %77 = call i32 @memcpy(i64 %71, i64 %76, i32 4096)
  %78 = call i32 @MEMORY_SetRAM(i32 49152, i32 53247)
  br label %79

79:                                               ; preds = %61, %51
  br label %80

80:                                               ; preds = %79, %32
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* @mosaic_curbank, align 4
  br label %82

82:                                               ; preds = %80, %23, %8
  ret void
}

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @MEMORY_dFillMem(i32, i32, i32) #1

declare dso_local i32 @MEMORY_SetROM(i32, i32) #1

declare dso_local i32 @MEMORY_SetRAM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
