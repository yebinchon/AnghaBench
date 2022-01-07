; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_H_BinReadWord.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_H_BinReadWord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@binf = common dso_local global i32* null, align 8
@BINLOAD_start_binloading = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"binload: not valid BIN file\00", align 1
@CPU_regY = common dso_local global i32 0, align 4
@CPU_SetN = common dso_local global i32 0, align 4
@runBinFile = common dso_local global i64 0, align 8
@CPU_regPC = common dso_local global i32 0, align 4
@CPU_ClrN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @Devices_H_BinReadWord to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Devices_H_BinReadWord() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [2 x i32], align 4
  %3 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %4 = load i32*, i32** @binf, align 8
  %5 = call i32 @fread(i32* %3, i32 1, i32 2, i32* %4)
  %6 = icmp ne i32 %5, 2
  br i1 %6, label %7, label %23

7:                                                ; preds = %0
  %8 = load i32*, i32** @binf, align 8
  %9 = call i32 @fclose(i32* %8)
  store i32* null, i32** @binf, align 8
  %10 = load i64, i64* @BINLOAD_start_binloading, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = load i64, i64* @FALSE, align 8
  store i64 %13, i64* @BINLOAD_start_binloading, align 8
  %14 = call i32 @Log_print(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 180, i32* @CPU_regY, align 4
  %15 = load i32, i32* @CPU_SetN, align 4
  store i32 -1, i32* %1, align 4
  br label %30

16:                                               ; preds = %7
  %17 = load i64, i64* @runBinFile, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 @MEMORY_dGetWordAligned(i32 736)
  store i32 %20, i32* @CPU_regPC, align 4
  br label %21

21:                                               ; preds = %19, %16
  store i32 1, i32* @CPU_regY, align 4
  %22 = load i32, i32* @CPU_ClrN, align 4
  store i32 -1, i32* %1, align 4
  br label %30

23:                                               ; preds = %0
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 8
  %29 = add nsw i32 %25, %28
  store i32 %29, i32* %1, align 4
  br label %30

30:                                               ; preds = %23, %21, %12
  %31 = load i32, i32* %1, align 4
  ret i32 %31
}

declare dso_local i32 @fread(i32*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @Log_print(i8*) #1

declare dso_local i32 @MEMORY_dGetWordAligned(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
