; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_ReadBasicFile.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_ReadBasicFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BINLOAD_bin_file = common dso_local global i32* null, align 8
@EOF = common dso_local global i32 0, align 4
@CPU_regY = common dso_local global i32 0, align 4
@CPU_SetN = common dso_local global i32 0, align 4
@BINLOAD_loading_basic = common dso_local global i32 0, align 4
@CPU_regA = common dso_local global i64 0, align 8
@CPU_ClrN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Devices_ReadBasicFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Devices_ReadBasicFile() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @BINLOAD_bin_file, align 8
  %3 = icmp ne i32* %2, null
  br i1 %3, label %4, label %72

4:                                                ; preds = %0
  %5 = load i32*, i32** @BINLOAD_bin_file, align 8
  %6 = call i32 @fgetc(i32* %5)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @EOF, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  store i32 136, i32* @CPU_regY, align 4
  %11 = load i32, i32* @CPU_SetN, align 4
  br label %72

12:                                               ; preds = %4
  %13 = load i32, i32* @BINLOAD_loading_basic, align 4
  switch i32 %13, label %67 [
    i32 134, label %14
    i32 132, label %21
    i32 129, label %26
    i32 131, label %31
    i32 130, label %48
    i32 128, label %66
    i32 133, label %66
  ]

14:                                               ; preds = %12
  %15 = load i32, i32* %1, align 4
  switch i32 %15, label %19 [
    i32 155, label %16
    i32 10, label %17
    i32 13, label %18
  ]

16:                                               ; preds = %14
  store i32 133, i32* @BINLOAD_loading_basic, align 4
  br label %20

17:                                               ; preds = %14
  store i32 129, i32* @BINLOAD_loading_basic, align 4
  store i32 155, i32* %1, align 4
  br label %20

18:                                               ; preds = %14
  store i32 130, i32* @BINLOAD_loading_basic, align 4
  store i32 155, i32* %1, align 4
  br label %20

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19, %18, %17, %16
  br label %68

21:                                               ; preds = %12
  %22 = load i32, i32* %1, align 4
  %23 = icmp eq i32 %22, 13
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 155, i32* %1, align 4
  br label %25

25:                                               ; preds = %24, %21
  br label %68

26:                                               ; preds = %12
  %27 = load i32, i32* %1, align 4
  %28 = icmp eq i32 %27, 10
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 155, i32* %1, align 4
  br label %30

30:                                               ; preds = %29, %26
  br label %68

31:                                               ; preds = %12
  %32 = load i32, i32* %1, align 4
  %33 = icmp eq i32 %32, 10
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load i32*, i32** @BINLOAD_bin_file, align 8
  %36 = call i32 @fgetc(i32* %35)
  store i32 %36, i32* %1, align 4
  %37 = load i32, i32* %1, align 4
  %38 = load i32, i32* @EOF, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  store i32 136, i32* @CPU_regY, align 4
  %41 = load i32, i32* @CPU_SetN, align 4
  br label %72

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %31
  %44 = load i32, i32* %1, align 4
  %45 = icmp eq i32 %44, 13
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 155, i32* %1, align 4
  br label %47

47:                                               ; preds = %46, %43
  br label %68

48:                                               ; preds = %12
  %49 = load i32, i32* %1, align 4
  %50 = icmp eq i32 %49, 10
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  store i32 131, i32* @BINLOAD_loading_basic, align 4
  %52 = load i32*, i32** @BINLOAD_bin_file, align 8
  %53 = call i32 @fgetc(i32* %52)
  store i32 %53, i32* %1, align 4
  %54 = load i32, i32* %1, align 4
  %55 = load i32, i32* @EOF, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  store i32 136, i32* @CPU_regY, align 4
  %58 = load i32, i32* @CPU_SetN, align 4
  br label %72

59:                                               ; preds = %51
  br label %61

60:                                               ; preds = %48
  store i32 132, i32* @BINLOAD_loading_basic, align 4
  br label %61

61:                                               ; preds = %60, %59
  %62 = load i32, i32* %1, align 4
  %63 = icmp eq i32 %62, 13
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 155, i32* %1, align 4
  br label %65

65:                                               ; preds = %64, %61
  br label %68

66:                                               ; preds = %12, %12
  br label %67

67:                                               ; preds = %12, %66
  br label %68

68:                                               ; preds = %67, %65, %47, %30, %25, %20
  %69 = load i32, i32* %1, align 4
  %70 = sext i32 %69 to i64
  store i64 %70, i64* @CPU_regA, align 8
  store i32 1, i32* @CPU_regY, align 4
  %71 = load i32, i32* @CPU_ClrN, align 4
  br label %72

72:                                               ; preds = %10, %40, %57, %68, %0
  ret void
}

declare dso_local i32 @fgetc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
