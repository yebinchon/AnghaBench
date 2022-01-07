; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_H_Write.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_H_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@devbug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"HHWRIT\00", align 1
@h_fp = common dso_local global i32** null, align 8
@h_iocb = common dso_local global i64 0, align 8
@h_lastop = common dso_local global i8* null, align 8
@SEEK_CUR = common dso_local global i32 0, align 4
@CPU_regA = common dso_local global i32 0, align 4
@h_textmode = common dso_local global i64* null, align 8
@CPU_regY = common dso_local global i32 0, align 4
@CPU_ClrN = common dso_local global i32 0, align 4
@CPU_SetN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Devices_H_Write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Devices_H_Write() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @devbug, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 @Log_print(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %6

6:                                                ; preds = %4, %0
  %7 = call i32 (...) @Devices_GetIOCB()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  br label %54

10:                                               ; preds = %6
  %11 = load i32**, i32*** @h_fp, align 8
  %12 = load i64, i64* @h_iocb, align 8
  %13 = getelementptr inbounds i32*, i32** %11, i64 %12
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %52

16:                                               ; preds = %10
  %17 = load i8*, i8** @h_lastop, align 8
  %18 = load i64, i64* @h_iocb, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 114
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = load i32**, i32*** @h_fp, align 8
  %25 = load i64, i64* @h_iocb, align 8
  %26 = getelementptr inbounds i32*, i32** %24, i64 %25
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* @SEEK_CUR, align 4
  %29 = call i32 @fseek(i32* %27, i32 0, i32 %28)
  br label %30

30:                                               ; preds = %23, %16
  %31 = load i8*, i8** @h_lastop, align 8
  %32 = load i64, i64* @h_iocb, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8 119, i8* %33, align 1
  %34 = load i32, i32* @CPU_regA, align 4
  store i32 %34, i32* %1, align 4
  %35 = load i32, i32* %1, align 4
  %36 = icmp eq i32 %35, 155
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load i64*, i64** @h_textmode, align 8
  %39 = load i64, i64* @h_iocb, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 10, i32* %1, align 4
  br label %44

44:                                               ; preds = %43, %37, %30
  %45 = load i32, i32* %1, align 4
  %46 = load i32**, i32*** @h_fp, align 8
  %47 = load i64, i64* @h_iocb, align 8
  %48 = getelementptr inbounds i32*, i32** %46, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @fputc(i32 %45, i32* %49)
  store i32 1, i32* @CPU_regY, align 4
  %51 = load i32, i32* @CPU_ClrN, align 4
  br label %54

52:                                               ; preds = %10
  store i32 135, i32* @CPU_regY, align 4
  %53 = load i32, i32* @CPU_SetN, align 4
  br label %54

54:                                               ; preds = %9, %52, %44
  ret void
}

declare dso_local i32 @Log_print(i8*) #1

declare dso_local i32 @Devices_GetIOCB(...) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @fputc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
