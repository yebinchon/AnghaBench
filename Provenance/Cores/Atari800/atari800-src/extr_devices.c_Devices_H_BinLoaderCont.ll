; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_H_BinLoaderCont.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_H_BinLoaderCont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@binf = common dso_local global i32* null, align 8
@BINLOAD_start_binloading = common dso_local global i64 0, align 8
@CPU_regS = common dso_local global i32 0, align 4
@devbug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"H: Load: From %04X to %04X\00", align 1
@runBinFile = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@EOF = common dso_local global i32 0, align 4
@CPU_regPC = common dso_local global i32 0, align 4
@initBinFile = common dso_local global i64 0, align 8
@ESC_BINLOADER_CONT = common dso_local global i32 0, align 4
@CPU_SetC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Devices_H_BinLoaderCont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Devices_H_BinLoaderCont() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load i32*, i32** @binf, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %138

8:                                                ; preds = %0
  %9 = load i64, i64* @BINLOAD_start_binloading, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = call i32 @MEMORY_dPutByte(i32 580, i32 0)
  %13 = call i32 @MEMORY_dPutByte(i32 9, i32 1)
  br label %17

14:                                               ; preds = %8
  %15 = load i32, i32* @CPU_regS, align 4
  %16 = add nsw i32 %15, 2
  store i32 %16, i32* @CPU_regS, align 4
  br label %17

17:                                               ; preds = %14, %11
  %18 = call i32 @MEMORY_dPutByte(i32 739, i32 215)
  br label %19

19:                                               ; preds = %112, %17
  br label %20

20:                                               ; preds = %22, %19
  %21 = call i32 (...) @Devices_H_BinReadWord()
  store i32 %21, i32* %1, align 4
  br label %22

22:                                               ; preds = %20
  %23 = load i32, i32* %1, align 4
  %24 = icmp eq i32 %23, 65535
  br i1 %24, label %20, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %1, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %138

29:                                               ; preds = %25
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %2, align 8
  %32 = call i32 (...) @Devices_H_BinReadWord()
  store i32 %32, i32* %1, align 4
  %33 = load i32, i32* %1, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %138

36:                                               ; preds = %29
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %3, align 8
  %39 = load i64, i64* @devbug, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i64, i64* %2, align 8
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @Log_print(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %42, i64 %43)
  br label %45

45:                                               ; preds = %41, %36
  %46 = load i64, i64* @BINLOAD_start_binloading, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load i64, i64* @runBinFile, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i64, i64* %2, align 8
  %53 = call i32 @MEMORY_dPutWordAligned(i32 736, i64 %52)
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i64, i64* @FALSE, align 8
  store i64 %55, i64* @BINLOAD_start_binloading, align 8
  br label %56

56:                                               ; preds = %54, %45
  %57 = load i64, i64* %3, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %3, align 8
  br label %59

59:                                               ; preds = %101, %56
  %60 = load i32*, i32** @binf, align 8
  %61 = call i32 @fgetc(i32* %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @EOF, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %95

65:                                               ; preds = %59
  %66 = load i32*, i32** @binf, align 8
  %67 = call i32 @fclose(i32* %66)
  store i32* null, i32** @binf, align 8
  %68 = load i64, i64* @runBinFile, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = call i32 @MEMORY_dGetWordAligned(i32 736)
  store i32 %71, i32* @CPU_regPC, align 4
  br label %72

72:                                               ; preds = %70, %65
  %73 = load i64, i64* @initBinFile, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %94

75:                                               ; preds = %72
  %76 = call i32 @MEMORY_dGetByte(i32 739)
  %77 = icmp ne i32 %76, 215
  br i1 %77, label %78, label %94

78:                                               ; preds = %75
  %79 = load i32, i32* @CPU_regPC, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* @CPU_regPC, align 4
  %81 = load i32, i32* @CPU_regS, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* @CPU_regS, align 4
  %83 = add nsw i32 256, %81
  %84 = load i32, i32* @CPU_regPC, align 4
  %85 = ashr i32 %84, 8
  %86 = call i32 @MEMORY_dPutByte(i32 %83, i32 %85)
  %87 = load i32, i32* @CPU_regS, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* @CPU_regS, align 4
  %89 = add nsw i32 256, %87
  %90 = load i32, i32* @CPU_regPC, align 4
  %91 = and i32 %90, 255
  %92 = call i32 @MEMORY_dPutByte(i32 %89, i32 %91)
  %93 = call i32 @MEMORY_dGetWordAligned(i32 738)
  store i32 %93, i32* @CPU_regPC, align 4
  br label %94

94:                                               ; preds = %78, %75, %72
  br label %138

95:                                               ; preds = %59
  %96 = load i64, i64* %2, align 8
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @MEMORY_PutByte(i64 %96, i32 %97)
  %99 = load i64, i64* %2, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %2, align 8
  br label %101

101:                                              ; preds = %95
  %102 = load i64, i64* %2, align 8
  %103 = load i64, i64* %3, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %59, label %105

105:                                              ; preds = %101
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* @initBinFile, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = call i32 @MEMORY_dGetByte(i32 739)
  %111 = icmp eq i32 %110, 215
  br label %112

112:                                              ; preds = %109, %106
  %113 = phi i1 [ true, %106 ], [ %111, %109 ]
  br i1 %113, label %19, label %114

114:                                              ; preds = %112
  %115 = load i32, i32* @CPU_regS, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* @CPU_regS, align 4
  %117 = load i32, i32* @CPU_regS, align 4
  %118 = add nsw i32 256, %117
  %119 = sext i32 %118 to i64
  %120 = load i32, i32* @ESC_BINLOADER_CONT, align 4
  %121 = call i32 @ESC_Add(i64 %119, i32 %120, void (...)* bitcast (void ()* @Devices_H_BinLoaderCont to void (...)*))
  %122 = load i32, i32* @CPU_regS, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* @CPU_regS, align 4
  %124 = load i32, i32* @CPU_regS, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* @CPU_regS, align 4
  %126 = add nsw i32 256, %124
  %127 = call i32 @MEMORY_dPutByte(i32 %126, i32 1)
  %128 = load i32, i32* @CPU_regS, align 4
  %129 = add nsw i32 256, %128
  %130 = load i32, i32* @CPU_regS, align 4
  %131 = add nsw i32 %130, 1
  %132 = call i32 @MEMORY_dPutByte(i32 %129, i32 %131)
  %133 = load i32, i32* @CPU_regS, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* @CPU_regS, align 4
  %135 = call i32 @MEMORY_dGetWordAligned(i32 738)
  store i32 %135, i32* @CPU_regPC, align 4
  %136 = load i32, i32* @CPU_SetC, align 4
  %137 = call i32 @MEMORY_dPutByte(i32 768, i32 49)
  br label %138

138:                                              ; preds = %114, %94, %35, %28, %7
  ret void
}

declare dso_local i32 @MEMORY_dPutByte(i32, i32) #1

declare dso_local i32 @Devices_H_BinReadWord(...) #1

declare dso_local i32 @Log_print(i8*, i64, i64) #1

declare dso_local i32 @MEMORY_dPutWordAligned(i32, i64) #1

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @MEMORY_dGetWordAligned(i32) #1

declare dso_local i32 @MEMORY_dGetByte(i32) #1

declare dso_local i32 @MEMORY_PutByte(i64, i32) #1

declare dso_local i32 @ESC_Add(i64, i32, void (...)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
