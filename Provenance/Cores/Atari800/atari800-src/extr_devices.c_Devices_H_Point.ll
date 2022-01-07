; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_H_Point.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_H_Point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@devbug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"POINT Command\00", align 1
@h_fp = common dso_local global i32** null, align 8
@h_iocb = common dso_local global i64 0, align 8
@Devices_IOCB0 = common dso_local global i64 0, align 8
@Devices_ICAX4 = common dso_local global i64 0, align 8
@Devices_ICAX3 = common dso_local global i64 0, align 8
@Devices_ICAX5 = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@CPU_regY = common dso_local global i32 0, align 4
@CPU_ClrN = common dso_local global i32 0, align 4
@CPU_SetN = common dso_local global i32 0, align 4
@h_lastop = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Devices_H_Point to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Devices_H_Point() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i64, i64* @devbug, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @Log_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %5, %0
  %8 = call i32 (...) @Devices_GetIOCB()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  br label %61

11:                                               ; preds = %7
  %12 = load i32**, i32*** @h_fp, align 8
  %13 = load i64, i64* @h_iocb, align 8
  %14 = getelementptr inbounds i32*, i32** %12, i64 %13
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %59

17:                                               ; preds = %11
  %18 = load i64, i64* @Devices_IOCB0, align 8
  %19 = load i64, i64* @h_iocb, align 8
  %20 = mul i64 %19, 16
  %21 = add i64 %18, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* @Devices_ICAX4, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @MEMORY_dGetByte(i64 %26)
  %28 = shl i32 %27, 16
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* @Devices_ICAX3, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @MEMORY_dGetByte(i64 %32)
  %34 = shl i32 %33, 8
  %35 = add nsw i32 %28, %34
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* @Devices_ICAX5, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @MEMORY_dGetByte(i64 %39)
  %41 = add nsw i32 %35, %40
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %2, align 8
  %43 = load i32**, i32*** @h_fp, align 8
  %44 = load i64, i64* @h_iocb, align 8
  %45 = getelementptr inbounds i32*, i32** %43, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %2, align 8
  %48 = load i32, i32* @SEEK_SET, align 4
  %49 = call i64 @fseek(i32* %46, i64 %47, i32 %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %17
  store i32 1, i32* @CPU_regY, align 4
  %52 = load i32, i32* @CPU_ClrN, align 4
  br label %55

53:                                               ; preds = %17
  store i32 166, i32* @CPU_regY, align 4
  %54 = load i32, i32* @CPU_SetN, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = load i8*, i8** @h_lastop, align 8
  %57 = load i64, i64* @h_iocb, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8 112, i8* %58, align 1
  br label %61

59:                                               ; preds = %11
  store i32 130, i32* @CPU_regY, align 4
  %60 = load i32, i32* @CPU_SetN, align 4
  br label %61

61:                                               ; preds = %10, %59, %55
  ret void
}

declare dso_local i32 @Log_print(i8*) #1

declare dso_local i32 @Devices_GetIOCB(...) #1

declare dso_local i32 @MEMORY_dGetByte(i64) #1

declare dso_local i64 @fseek(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
