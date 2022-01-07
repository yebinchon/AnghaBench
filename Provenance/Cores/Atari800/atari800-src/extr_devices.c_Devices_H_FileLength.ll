; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_H_FileLength.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_H_FileLength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@devbug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Get File Length Command\00", align 1
@h_fp = common dso_local global i32** null, align 8
@h_iocb = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@h_lastop = common dso_local global i8* null, align 8
@h_lastbyte = common dso_local global i64* null, align 8
@EOF = common dso_local global i64 0, align 8
@SEEK_CUR = common dso_local global i32 0, align 4
@binf = common dso_local global i32* null, align 8
@Devices_IOCB0 = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@Devices_ICAX3 = common dso_local global i64 0, align 8
@Devices_ICAX4 = common dso_local global i64 0, align 8
@Devices_ICAX5 = common dso_local global i64 0, align 8
@CPU_regY = common dso_local global i32 0, align 4
@CPU_ClrN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Devices_H_FileLength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Devices_H_FileLength() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = load i64, i64* @devbug, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @Log_print(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %0
  %10 = call i32 (...) @Devices_GetIOCB()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  br label %97

13:                                               ; preds = %9
  %14 = load i32**, i32*** @h_fp, align 8
  %15 = load i64, i64* @h_iocb, align 8
  %16 = getelementptr inbounds i32*, i32** %14, i64 %15
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* @TRUE, align 4
  %21 = call i32 @Devices_H_Load(i32 %20)
  br label %97

22:                                               ; preds = %13
  %23 = call signext i8 @MEMORY_dGetByte(i32 1792)
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 77
  br i1 %25, label %26, label %57

26:                                               ; preds = %22
  %27 = load i8*, i8** @h_lastop, align 8
  %28 = load i64, i64* @h_iocb, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 114
  br i1 %32, label %33, label %47

33:                                               ; preds = %26
  %34 = load i64*, i64** @h_lastbyte, align 8
  %35 = load i64, i64* @h_iocb, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @EOF, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load i32**, i32*** @h_fp, align 8
  %42 = load i64, i64* @h_iocb, align 8
  %43 = getelementptr inbounds i32*, i32** %41, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* @SEEK_CUR, align 4
  %46 = call i32 @fseek(i32* %44, i64 -1, i32 %45)
  br label %47

47:                                               ; preds = %40, %33, %26
  %48 = load i32**, i32*** @h_fp, align 8
  %49 = load i64, i64* @h_iocb, align 8
  %50 = getelementptr inbounds i32*, i32** %48, i64 %49
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** @binf, align 8
  %52 = load i32, i32* @TRUE, align 4
  %53 = call i32 @Devices_H_LoadProceed(i32 %52)
  %54 = load i8*, i8** @h_lastop, align 8
  %55 = load i64, i64* @h_iocb, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8 98, i8* %56, align 1
  br label %96

57:                                               ; preds = %22
  %58 = load i64, i64* @Devices_IOCB0, align 8
  %59 = load i64, i64* @h_iocb, align 8
  %60 = mul i64 %59, 16
  %61 = add i64 %58, %60
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %1, align 4
  %63 = load i32**, i32*** @h_fp, align 8
  %64 = load i64, i64* @h_iocb, align 8
  %65 = getelementptr inbounds i32*, i32** %63, i64 %64
  %66 = load i32*, i32** %65, align 8
  store i32* %66, i32** %3, align 8
  %67 = load i32*, i32** %3, align 8
  %68 = call i64 @ftell(i32* %67)
  store i64 %68, i64* %4, align 8
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @Util_flen(i32* %69)
  store i32 %70, i32* %2, align 4
  %71 = load i32*, i32** %3, align 8
  %72 = load i64, i64* %4, align 8
  %73 = load i32, i32* @SEEK_SET, align 4
  %74 = call i32 @fseek(i32* %71, i64 %72, i32 %73)
  %75 = load i32, i32* %1, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* @Devices_ICAX3, align 8
  %78 = add nsw i64 %76, %77
  %79 = load i32, i32* %2, align 4
  %80 = call i32 @MEMORY_dPutByte(i64 %78, i32 %79)
  %81 = load i32, i32* %1, align 4
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* @Devices_ICAX4, align 8
  %84 = add nsw i64 %82, %83
  %85 = load i32, i32* %2, align 4
  %86 = ashr i32 %85, 8
  %87 = call i32 @MEMORY_dPutByte(i64 %84, i32 %86)
  %88 = load i32, i32* %1, align 4
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* @Devices_ICAX5, align 8
  %91 = add nsw i64 %89, %90
  %92 = load i32, i32* %2, align 4
  %93 = ashr i32 %92, 16
  %94 = call i32 @MEMORY_dPutByte(i64 %91, i32 %93)
  store i32 1, i32* @CPU_regY, align 4
  %95 = load i32, i32* @CPU_ClrN, align 4
  br label %96

96:                                               ; preds = %57, %47
  br label %97

97:                                               ; preds = %12, %96, %19
  ret void
}

declare dso_local i32 @Log_print(i8*) #1

declare dso_local i32 @Devices_GetIOCB(...) #1

declare dso_local i32 @Devices_H_Load(i32) #1

declare dso_local signext i8 @MEMORY_dGetByte(i32) #1

declare dso_local i32 @fseek(i32*, i64, i32) #1

declare dso_local i32 @Devices_H_LoadProceed(i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i32 @Util_flen(i32*) #1

declare dso_local i32 @MEMORY_dPutByte(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
