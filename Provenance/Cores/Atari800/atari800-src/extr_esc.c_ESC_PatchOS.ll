; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_esc.c_ESC_PatchOS.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_esc.c_ESC_PatchOS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESC_enable_sio_patch = common dso_local global i64 0, align 8
@Atari800_os_version = common dso_local global i32 0, align 4
@ESC_COPENLOAD = common dso_local global i32 0, align 4
@CASSETTE_LeaderLoad = common dso_local global i32 0, align 4
@ESC_COPENSAVE = common dso_local global i32 0, align 4
@CASSETTE_LeaderSave = common dso_local global i32 0, align 4
@ESC_SIOV = common dso_local global i32 0, align 4
@SIO_Handler = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ESC_PatchOS() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 (...) @Devices_PatchOS()
  store i32 %7, i32* %1, align 4
  %8 = load i64, i64* @ESC_enable_sio_patch, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %82

10:                                               ; preds = %0
  %11 = load i32, i32* @Atari800_os_version, align 4
  switch i32 %11, label %17 [
    i32 140, label %12
    i32 130, label %12
    i32 143, label %12
    i32 139, label %13
    i32 142, label %14
    i32 141, label %15
    i32 138, label %15
    i32 137, label %15
    i32 132, label %15
    i32 131, label %15
    i32 136, label %15
    i32 135, label %15
    i32 134, label %15
    i32 133, label %15
    i32 128, label %15
    i32 129, label %16
  ]

12:                                               ; preds = %10, %10, %10
  store i32 61300, i32* %2, align 4
  store i32 61372, i32* %3, align 4
  store i32 160, i32* %4, align 4
  store i32 128, i32* %5, align 4
  br label %18

13:                                               ; preds = %10
  store i32 61300, i32* %2, align 4
  store i32 61372, i32* %3, align 4
  store i32 160, i32* %4, align 4
  store i32 192, i32* %5, align 4
  br label %18

14:                                               ; preds = %10
  store i32 60743, i32* %2, align 4
  store i32 60820, i32* %3, align 4
  store i32 169, i32* %4, align 4
  store i32 3, i32* %5, align 4
  br label %18

15:                                               ; preds = %10, %10, %10, %10, %10, %10, %10, %10, %10, %10
  store i32 64787, i32* %2, align 4
  store i32 64864, i32* %3, align 4
  store i32 169, i32* %4, align 4
  store i32 3, i32* %5, align 4
  br label %18

16:                                               ; preds = %10
  store i32 61300, i32* %2, align 4
  store i32 61372, i32* %3, align 4
  store i32 169, i32* %4, align 4
  store i32 3, i32* %5, align 4
  br label %18

17:                                               ; preds = %10
  br label %107

18:                                               ; preds = %16, %15, %14, %13, %12
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @MEMORY_dGetByte(i32 %19)
  %21 = icmp eq i32 %20, 169
  br i1 %21, label %22, label %77

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = add nsw i32 %23, 1
  %25 = call i32 @MEMORY_dGetByte(i32 %24)
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %27, label %77

27:                                               ; preds = %22
  %28 = load i32, i32* %2, align 4
  %29 = add nsw i32 %28, 2
  %30 = call i32 @MEMORY_dGetByte(i32 %29)
  %31 = icmp eq i32 %30, 141
  br i1 %31, label %32, label %77

32:                                               ; preds = %27
  %33 = load i32, i32* %2, align 4
  %34 = add nsw i32 %33, 3
  %35 = call i32 @MEMORY_dGetByte(i32 %34)
  %36 = icmp eq i32 %35, 42
  br i1 %36, label %37, label %77

37:                                               ; preds = %32
  %38 = load i32, i32* %2, align 4
  %39 = add nsw i32 %38, 4
  %40 = call i32 @MEMORY_dGetByte(i32 %39)
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %77

42:                                               ; preds = %37
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @MEMORY_dGetByte(i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %77

47:                                               ; preds = %42
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  %50 = call i32 @MEMORY_dGetByte(i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %77

53:                                               ; preds = %47
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 2
  %56 = call i32 @MEMORY_dGetByte(i32 %55)
  %57 = icmp eq i32 %56, 32
  br i1 %57, label %58, label %77

58:                                               ; preds = %53
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 3
  %61 = call i32 @MEMORY_dGetByte(i32 %60)
  %62 = icmp eq i32 %61, 92
  br i1 %62, label %63, label %77

63:                                               ; preds = %58
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 4
  %66 = call i32 @MEMORY_dGetByte(i32 %65)
  %67 = icmp eq i32 %66, 228
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = load i32, i32* %2, align 4
  %70 = load i32, i32* @ESC_COPENLOAD, align 4
  %71 = load i32, i32* @CASSETTE_LeaderLoad, align 4
  %72 = call i32 @ESC_Add(i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @ESC_COPENSAVE, align 4
  %75 = load i32, i32* @CASSETTE_LeaderSave, align 4
  %76 = call i32 @ESC_Add(i32 %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %68, %63, %58, %53, %47, %42, %37, %32, %27, %22, %18
  %78 = load i32, i32* @ESC_SIOV, align 4
  %79 = load i32, i32* @SIO_Handler, align 4
  %80 = call i32 @ESC_AddEscRts(i32 58457, i32 %78, i32 %79)
  %81 = load i32, i32* @TRUE, align 4
  store i32 %81, i32* %1, align 4
  br label %89

82:                                               ; preds = %0
  %83 = load i32, i32* @ESC_COPENLOAD, align 4
  %84 = call i32 @ESC_Remove(i32 %83)
  %85 = load i32, i32* @ESC_COPENSAVE, align 4
  %86 = call i32 @ESC_Remove(i32 %85)
  %87 = load i32, i32* @ESC_SIOV, align 4
  %88 = call i32 @ESC_Remove(i32 %87)
  br label %89

89:                                               ; preds = %82, %77
  %90 = load i32, i32* %1, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %89
  %93 = load i32, i32* @Atari800_os_version, align 4
  switch i32 %93, label %100 [
    i32 142, label %94
    i32 141, label %95
    i32 138, label %96
    i32 137, label %97
    i32 132, label %97
    i32 136, label %97
    i32 135, label %97
    i32 134, label %97
    i32 133, label %97
    i32 128, label %97
    i32 131, label %98
    i32 129, label %99
  ]

94:                                               ; preds = %92
  store i32 50130, i32* %6, align 4
  br label %101

95:                                               ; preds = %92
  store i32 49990, i32* %6, align 4
  br label %101

96:                                               ; preds = %92
  store i32 49963, i32* %6, align 4
  br label %101

97:                                               ; preds = %92, %92, %92, %92, %92, %92, %92
  store i32 49949, i32* %6, align 4
  br label %101

98:                                               ; preds = %92
  store i32 49964, i32* %6, align 4
  br label %101

99:                                               ; preds = %92
  store i32 49888, i32* %6, align 4
  br label %101

100:                                              ; preds = %92
  br label %107

101:                                              ; preds = %99, %98, %97, %96, %95, %94
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @MEMORY_dPutByte(i32 %102, i32 234)
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  %106 = call i32 @MEMORY_dPutByte(i32 %105, i32 234)
  br label %107

107:                                              ; preds = %17, %100, %101, %89
  ret void
}

declare dso_local i32 @Devices_PatchOS(...) #1

declare dso_local i32 @MEMORY_dGetByte(i32) #1

declare dso_local i32 @ESC_Add(i32, i32, i32) #1

declare dso_local i32 @ESC_AddEscRts(i32, i32, i32) #1

declare dso_local i32 @ESC_Remove(i32) #1

declare dso_local i32 @MEMORY_dPutByte(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
