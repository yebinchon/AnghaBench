; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_disassembler.c_arm_media.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_disassembler.c_arm_media.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FASTTRAP_T_INV = common dso_local global i32 0, align 4
@REG_PC = common dso_local global i64 0, align 8
@FASTTRAP_T_COMMON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @arm_media to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_media(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @BITS(i32 %6, i32 20, i32 31)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @BITS(i32 %8, i32 5, i32 7)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 28
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @arm_parallel_addsub_signed(i32 %14)
  store i32 %15, i32* %2, align 4
  br label %115

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, 28
  %19 = icmp eq i32 %18, 4
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @arm_parallel_addsub_unsigned(i32 %21)
  store i32 %22, i32* %2, align 4
  br label %115

23:                                               ; preds = %16
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, 24
  %26 = icmp eq i32 %25, 8
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @arm_pack_unpack_sat_reversal(i32 %28)
  store i32 %29, i32* %2, align 4
  br label %115

30:                                               ; preds = %23
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, 24
  %33 = icmp eq i32 %32, 16
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @arm_signed_multiplies(i32 %35)
  store i32 %36, i32* %2, align 4
  br label %115

37:                                               ; preds = %30
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %38, 31
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %41, 7
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* @FASTTRAP_T_INV, align 4
  store i32 %44, i32* %2, align 4
  br label %115

45:                                               ; preds = %40, %37
  %46 = load i32, i32* %4, align 4
  %47 = icmp eq i32 %46, 24
  br i1 %47, label %48, label %70

48:                                               ; preds = %45
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %48
  %52 = load i32, i32* %3, align 4
  %53 = call i64 @ARM_RM(i32 %52)
  %54 = load i64, i64* @REG_PC, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %51
  %57 = load i32, i32* %3, align 4
  %58 = call i64 @ARM_RS(i32 %57)
  %59 = load i64, i64* @REG_PC, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load i32, i32* %3, align 4
  %63 = call i64 @ARM_RN(i32 %62)
  %64 = load i64, i64* @REG_PC, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* @FASTTRAP_T_COMMON, align 4
  store i32 %67, i32* %2, align 4
  br label %115

68:                                               ; preds = %61, %56, %51
  %69 = load i32, i32* @FASTTRAP_T_INV, align 4
  store i32 %69, i32* %2, align 4
  br label %115

70:                                               ; preds = %48, %45
  %71 = load i32, i32* %4, align 4
  %72 = and i32 %71, 30
  %73 = icmp eq i32 %72, 28
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = load i32, i32* %5, align 4
  %76 = and i32 %75, 3
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %74
  %79 = load i32, i32* %3, align 4
  %80 = call i64 @ARM_RD(i32 %79)
  %81 = load i64, i64* @REG_PC, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* @FASTTRAP_T_COMMON, align 4
  store i32 %84, i32* %2, align 4
  br label %115

85:                                               ; preds = %78
  %86 = load i32, i32* @FASTTRAP_T_INV, align 4
  store i32 %86, i32* %2, align 4
  br label %115

87:                                               ; preds = %74, %70
  %88 = load i32, i32* %4, align 4
  %89 = and i32 %88, 30
  %90 = icmp eq i32 %89, 26
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %4, align 4
  %93 = and i32 %92, 30
  %94 = icmp eq i32 %93, 30
  br i1 %94, label %95, label %113

95:                                               ; preds = %91, %87
  %96 = load i32, i32* %5, align 4
  %97 = and i32 %96, 3
  %98 = icmp eq i32 %97, 2
  br i1 %98, label %99, label %113

99:                                               ; preds = %95
  %100 = load i32, i32* %3, align 4
  %101 = call i64 @ARM_RM(i32 %100)
  %102 = load i64, i64* @REG_PC, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load i32, i32* %3, align 4
  %106 = call i64 @ARM_RD(i32 %105)
  %107 = load i64, i64* @REG_PC, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i32, i32* @FASTTRAP_T_COMMON, align 4
  store i32 %110, i32* %2, align 4
  br label %115

111:                                              ; preds = %104, %99
  %112 = load i32, i32* @FASTTRAP_T_INV, align 4
  store i32 %112, i32* %2, align 4
  br label %115

113:                                              ; preds = %95, %91
  %114 = load i32, i32* @FASTTRAP_T_INV, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %113, %111, %109, %85, %83, %68, %66, %43, %34, %27, %20, %13
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @BITS(i32, i32, i32) #1

declare dso_local i32 @arm_parallel_addsub_signed(i32) #1

declare dso_local i32 @arm_parallel_addsub_unsigned(i32) #1

declare dso_local i32 @arm_pack_unpack_sat_reversal(i32) #1

declare dso_local i32 @arm_signed_multiplies(i32) #1

declare dso_local i64 @ARM_RM(i32) #1

declare dso_local i64 @ARM_RS(i32) #1

declare dso_local i64 @ARM_RN(i32) #1

declare dso_local i64 @ARM_RD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
