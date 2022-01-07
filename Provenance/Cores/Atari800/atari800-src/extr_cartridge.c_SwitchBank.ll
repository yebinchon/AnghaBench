; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cartridge.c_SwitchBank.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cartridge.c_SwitchBank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@active_cart = common dso_local global %struct.TYPE_3__* null, align 8
@CARTRIDGE_piggyback = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @SwitchBank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SwitchBank(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** @active_cart, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %83 [
    i32 158, label %6
    i32 157, label %6
    i32 155, label %9
    i32 156, label %9
    i32 135, label %12
    i32 169, label %12
    i32 170, label %12
    i32 152, label %12
    i32 136, label %12
    i32 175, label %12
    i32 171, label %14
    i32 130, label %14
    i32 145, label %14
    i32 134, label %17
    i32 143, label %17
    i32 128, label %20
    i32 132, label %22
    i32 147, label %22
    i32 131, label %25
    i32 146, label %25
    i32 129, label %28
    i32 144, label %28
    i32 133, label %31
    i32 148, label %31
    i32 177, label %34
    i32 179, label %34
    i32 178, label %36
    i32 138, label %36
    i32 139, label %36
    i32 165, label %38
    i32 162, label %38
    i32 159, label %38
    i32 166, label %38
    i32 163, label %38
    i32 160, label %38
    i32 167, label %38
    i32 164, label %38
    i32 168, label %38
    i32 154, label %40
    i32 172, label %40
    i32 174, label %48
    i32 153, label %57
    i32 176, label %57
    i32 180, label %59
    i32 137, label %67
    i32 173, label %67
    i32 151, label %69
    i32 150, label %71
    i32 149, label %73
    i32 161, label %75
    i32 142, label %77
    i32 141, label %79
    i32 140, label %81
  ]

6:                                                ; preds = %1, %1
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @set_bank_A0AF(i32 12288, i32 %7)
  br label %83

9:                                                ; preds = %1, %1
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @set_bank_A0AF(i32 0, i32 %10)
  br label %83

12:                                               ; preds = %1, %1, %1, %1, %1, %1
  %13 = call i32 @set_bank_A0BF(i32 8, i32 7)
  br label %83

14:                                               ; preds = %1, %1, %1
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @set_bank_809F(i32 24576, i32 %15)
  br label %83

17:                                               ; preds = %1, %1
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @set_bank_809F(i32 57344, i32 %18)
  br label %83

20:                                               ; preds = %1
  %21 = call i32 (...) @set_bank_XEGS_8F_64()
  br label %83

22:                                               ; preds = %1, %1
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @set_bank_809F(i32 122880, i32 %23)
  br label %83

25:                                               ; preds = %1, %1
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @set_bank_809F(i32 253952, i32 %26)
  br label %83

28:                                               ; preds = %1, %1
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @set_bank_809F(i32 516096, i32 %29)
  br label %83

31:                                               ; preds = %1, %1
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @set_bank_809F(i32 1040384, i32 %32)
  br label %83

34:                                               ; preds = %1, %1
  %35 = call i32 @set_bank_A0BF(i32 128, i32 127)
  br label %83

36:                                               ; preds = %1, %1, %1
  %37 = call i32 @set_bank_A0BF(i32 16, i32 15)
  br label %83

38:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1
  %39 = call i32 (...) @set_bank_80BF()
  br label %83

40:                                               ; preds = %1, %1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @active_cart, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = call i32 (...) @MEMORY_CartA0bfDisable()
  br label %47

47:                                               ; preds = %45, %40
  br label %83

48:                                               ; preds = %1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @active_cart, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = call i32 (...) @MEMORY_Cart809fDisable()
  %55 = call i32 (...) @MEMORY_CartA0bfDisable()
  br label %56

56:                                               ; preds = %53, %48
  br label %83

57:                                               ; preds = %1, %1
  %58 = call i32 (...) @set_bank_SDX_128()
  br label %83

59:                                               ; preds = %1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** @active_cart, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %62, 65536
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = call i32 (...) @MEMORY_CartA0bfDisable()
  br label %66

66:                                               ; preds = %64, %59
  br label %83

67:                                               ; preds = %1, %1
  %68 = call i32 @set_bank_A0BF(i32 4, i32 3)
  br label %83

69:                                               ; preds = %1
  %70 = call i32 @set_bank_SIC(i32 7)
  br label %83

71:                                               ; preds = %1
  %72 = call i32 @set_bank_SIC(i32 15)
  br label %83

73:                                               ; preds = %1
  %74 = call i32 @set_bank_SIC(i32 31)
  br label %83

75:                                               ; preds = %1
  %76 = call i32 (...) @set_bank_MEGA_4096()
  br label %83

77:                                               ; preds = %1
  %78 = call i32 @set_bank_A0BF(i32 16384, i32 16383)
  br label %83

79:                                               ; preds = %1
  %80 = call i32 @set_bank_A0BF(i32 16384, i32 4095)
  br label %83

81:                                               ; preds = %1
  %82 = call i32 @set_bank_A0BF(i32 16384, i32 8191)
  br label %83

83:                                               ; preds = %1, %81, %79, %77, %75, %73, %71, %69, %67, %66, %57, %56, %47, %38, %36, %34, %31, %28, %25, %22, %20, %17, %14, %12, %9, %6
  ret void
}

declare dso_local i32 @set_bank_A0AF(i32, i32) #1

declare dso_local i32 @set_bank_A0BF(i32, i32) #1

declare dso_local i32 @set_bank_809F(i32, i32) #1

declare dso_local i32 @set_bank_XEGS_8F_64(...) #1

declare dso_local i32 @set_bank_80BF(...) #1

declare dso_local i32 @MEMORY_CartA0bfDisable(...) #1

declare dso_local i32 @MEMORY_Cart809fDisable(...) #1

declare dso_local i32 @set_bank_SDX_128(...) #1

declare dso_local i32 @set_bank_SIC(i32) #1

declare dso_local i32 @set_bank_MEGA_4096(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
