; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_binload.c_loader_cont.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_binload.c_loader_cont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BINLOAD_bin_file = common dso_local global i32* null, align 8
@BINLOAD_start_binloading = common dso_local global i64 0, align 8
@CPU_regS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@EOF = common dso_local global i32 0, align 4
@CPU_regPC = common dso_local global i32 0, align 4
@ESC_BINLOADER_CONT = common dso_local global i32 0, align 4
@CPU_SetC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @loader_cont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loader_cont() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load i32*, i32** @BINLOAD_bin_file, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %115

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

19:                                               ; preds = %88, %17
  br label %20

20:                                               ; preds = %22, %19
  %21 = call i32 (...) @read_word()
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
  br label %115

29:                                               ; preds = %25
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %2, align 8
  %32 = call i32 (...) @read_word()
  store i32 %32, i32* %1, align 4
  %33 = load i32, i32* %1, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %115

36:                                               ; preds = %29
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %3, align 8
  %39 = load i64, i64* @BINLOAD_start_binloading, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i64, i64* %2, align 8
  %43 = call i32 @MEMORY_dPutWordAligned(i32 736, i64 %42)
  %44 = load i64, i64* @FALSE, align 8
  store i64 %44, i64* @BINLOAD_start_binloading, align 8
  br label %45

45:                                               ; preds = %41, %36
  %46 = load i64, i64* %3, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %3, align 8
  br label %48

48:                                               ; preds = %83, %45
  %49 = load i32*, i32** @BINLOAD_bin_file, align 8
  %50 = call i32 @fgetc(i32* %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @EOF, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %77

54:                                               ; preds = %48
  %55 = load i32*, i32** @BINLOAD_bin_file, align 8
  %56 = call i32 @fclose(i32* %55)
  store i32* null, i32** @BINLOAD_bin_file, align 8
  %57 = call i32 @MEMORY_dGetWordAligned(i32 736)
  store i32 %57, i32* @CPU_regPC, align 4
  %58 = call i32 @MEMORY_dGetByte(i32 739)
  %59 = icmp ne i32 %58, 215
  br i1 %59, label %60, label %76

60:                                               ; preds = %54
  %61 = load i32, i32* @CPU_regPC, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* @CPU_regPC, align 4
  %63 = load i32, i32* @CPU_regS, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* @CPU_regS, align 4
  %65 = add nsw i32 256, %63
  %66 = load i32, i32* @CPU_regPC, align 4
  %67 = ashr i32 %66, 8
  %68 = call i32 @MEMORY_dPutByte(i32 %65, i32 %67)
  %69 = load i32, i32* @CPU_regS, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* @CPU_regS, align 4
  %71 = add nsw i32 256, %69
  %72 = load i32, i32* @CPU_regPC, align 4
  %73 = and i32 %72, 255
  %74 = call i32 @MEMORY_dPutByte(i32 %71, i32 %73)
  %75 = call i32 @MEMORY_dGetWordAligned(i32 738)
  store i32 %75, i32* @CPU_regPC, align 4
  br label %76

76:                                               ; preds = %60, %54
  br label %115

77:                                               ; preds = %48
  %78 = load i64, i64* %2, align 8
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @MEMORY_PutByte(i64 %78, i32 %79)
  %81 = load i64, i64* %2, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %2, align 8
  br label %83

83:                                               ; preds = %77
  %84 = load i64, i64* %2, align 8
  %85 = load i64, i64* %3, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %48, label %87

87:                                               ; preds = %83
  br label %88

88:                                               ; preds = %87
  %89 = call i32 @MEMORY_dGetByte(i32 739)
  %90 = icmp eq i32 %89, 215
  br i1 %90, label %19, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* @CPU_regS, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* @CPU_regS, align 4
  %94 = load i32, i32* @CPU_regS, align 4
  %95 = add nsw i32 256, %94
  %96 = sext i32 %95 to i64
  %97 = load i32, i32* @ESC_BINLOADER_CONT, align 4
  %98 = call i32 @ESC_Add(i64 %96, i32 %97, void (...)* bitcast (void ()* @loader_cont to void (...)*))
  %99 = load i32, i32* @CPU_regS, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* @CPU_regS, align 4
  %101 = load i32, i32* @CPU_regS, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* @CPU_regS, align 4
  %103 = add nsw i32 256, %101
  %104 = call i32 @MEMORY_dPutByte(i32 %103, i32 1)
  %105 = load i32, i32* @CPU_regS, align 4
  %106 = add nsw i32 256, %105
  %107 = load i32, i32* @CPU_regS, align 4
  %108 = add nsw i32 %107, 1
  %109 = call i32 @MEMORY_dPutByte(i32 %106, i32 %108)
  %110 = load i32, i32* @CPU_regS, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* @CPU_regS, align 4
  %112 = call i32 @MEMORY_dGetWordAligned(i32 738)
  store i32 %112, i32* @CPU_regPC, align 4
  %113 = load i32, i32* @CPU_SetC, align 4
  %114 = call i32 @MEMORY_dPutByte(i32 768, i32 49)
  br label %115

115:                                              ; preds = %91, %76, %35, %28, %7
  ret void
}

declare dso_local i32 @MEMORY_dPutByte(i32, i32) #1

declare dso_local i32 @read_word(...) #1

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
