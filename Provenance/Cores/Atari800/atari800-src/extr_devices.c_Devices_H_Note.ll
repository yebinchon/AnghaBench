; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_H_Note.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_H_Note.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@devbug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"NOTE Command\00", align 1
@h_fp = common dso_local global i32** null, align 8
@h_iocb = common dso_local global i64 0, align 8
@Devices_IOCB0 = common dso_local global i64 0, align 8
@h_lastop = common dso_local global i8* null, align 8
@h_lastbyte = common dso_local global i64* null, align 8
@EOF = common dso_local global i64 0, align 8
@Devices_ICAX5 = common dso_local global i64 0, align 8
@Devices_ICAX3 = common dso_local global i64 0, align 8
@Devices_ICAX4 = common dso_local global i64 0, align 8
@CPU_regY = common dso_local global i32 0, align 4
@CPU_ClrN = common dso_local global i32 0, align 4
@CPU_SetN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Devices_H_Note to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Devices_H_Note() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = load i64, i64* @devbug, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @Log_print(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %5, %0
  %8 = call i32 (...) @Devices_GetIOCB()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  br label %77

11:                                               ; preds = %7
  %12 = load i32**, i32*** @h_fp, align 8
  %13 = load i64, i64* @h_iocb, align 8
  %14 = getelementptr inbounds i32*, i32** %12, i64 %13
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %75

17:                                               ; preds = %11
  %18 = load i32**, i32*** @h_fp, align 8
  %19 = load i64, i64* @h_iocb, align 8
  %20 = getelementptr inbounds i32*, i32** %18, i64 %19
  %21 = load i32*, i32** %20, align 8
  %22 = call i64 @ftell(i32* %21)
  store i64 %22, i64* %1, align 8
  %23 = load i64, i64* %1, align 8
  %24 = icmp sge i64 %23, 0
  br i1 %24, label %25, label %72

25:                                               ; preds = %17
  %26 = load i64, i64* @Devices_IOCB0, align 8
  %27 = load i64, i64* @h_iocb, align 8
  %28 = mul i64 %27, 16
  %29 = add i64 %26, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %2, align 4
  %31 = load i8*, i8** @h_lastop, align 8
  %32 = load i64, i64* @h_iocb, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 114
  br i1 %36, label %37, label %47

37:                                               ; preds = %25
  %38 = load i64*, i64** @h_lastbyte, align 8
  %39 = load i64, i64* @h_iocb, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @EOF, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i64, i64* %1, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, i64* %1, align 8
  br label %47

47:                                               ; preds = %44, %37, %25
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* @Devices_ICAX5, align 8
  %51 = add nsw i64 %49, %50
  %52 = load i64, i64* %1, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @MEMORY_dPutByte(i64 %51, i32 %53)
  %55 = load i32, i32* %2, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* @Devices_ICAX3, align 8
  %58 = add nsw i64 %56, %57
  %59 = load i64, i64* %1, align 8
  %60 = ashr i64 %59, 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 @MEMORY_dPutByte(i64 %58, i32 %61)
  %63 = load i32, i32* %2, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* @Devices_ICAX4, align 8
  %66 = add nsw i64 %64, %65
  %67 = load i64, i64* %1, align 8
  %68 = ashr i64 %67, 16
  %69 = trunc i64 %68 to i32
  %70 = call i32 @MEMORY_dPutByte(i64 %66, i32 %69)
  store i32 1, i32* @CPU_regY, align 4
  %71 = load i32, i32* @CPU_ClrN, align 4
  br label %74

72:                                               ; preds = %17
  store i32 144, i32* @CPU_regY, align 4
  %73 = load i32, i32* @CPU_SetN, align 4
  br label %74

74:                                               ; preds = %72, %47
  br label %77

75:                                               ; preds = %11
  store i32 130, i32* @CPU_regY, align 4
  %76 = load i32, i32* @CPU_SetN, align 4
  br label %77

77:                                               ; preds = %10, %75, %74
  ret void
}

declare dso_local i32 @Log_print(i8*) #1

declare dso_local i32 @Devices_GetIOCB(...) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i32 @MEMORY_dPutByte(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
