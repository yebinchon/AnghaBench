; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_disassembler.c_arm_dataproc_misc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_disassembler.c_arm_dataproc_misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_PC = common dso_local global i64 0, align 8
@FASTTRAP_T_COMMON = common dso_local global i32 0, align 4
@FASTTRAP_T_INV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @arm_dataproc_misc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_dataproc_misc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @BITS(i32 %7, i32 25, i32 1)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @BITS(i32 %9, i32 20, i32 31)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @BITS(i32 %11, i32 4, i32 15)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %108

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 25
  %18 = icmp ne i32 %17, 16
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @arm_dataproc_reg(i32 %24)
  store i32 %25, i32* %2, align 4
  br label %149

26:                                               ; preds = %19, %15
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, 25
  %29 = icmp ne i32 %28, 16
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 9
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @arm_dataproc_regshift(i32 %35)
  store i32 %36, i32* %2, align 4
  br label %149

37:                                               ; preds = %30, %26
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, 25
  %40 = icmp eq i32 %39, 16
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @arm_misc(i32 %46)
  store i32 %47, i32* %2, align 4
  br label %149

48:                                               ; preds = %41, %37
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, 25
  %51 = icmp eq i32 %50, 25
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %53, 9
  %55 = icmp eq i32 %54, 8
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @arm_halfword_multiply(i32 %57)
  store i32 %58, i32* %2, align 4
  br label %149

59:                                               ; preds = %52, %48
  %60 = load i32, i32* %5, align 4
  %61 = and i32 %60, 16
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %64, 9
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @arm_multiply(i32 %67)
  store i32 %68, i32* %2, align 4
  br label %149

69:                                               ; preds = %63, %59
  %70 = load i32, i32* %5, align 4
  %71 = and i32 %70, 16
  %72 = icmp eq i32 %71, 16
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load i32, i32* %6, align 4
  %75 = icmp eq i32 %74, 9
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @arm_sync_primitive(i32 %77)
  store i32 %78, i32* %2, align 4
  br label %149

79:                                               ; preds = %73, %69
  %80 = load i32, i32* %5, align 4
  %81 = and i32 %80, 18
  %82 = icmp ne i32 %81, 2
  br i1 %82, label %83, label %93

83:                                               ; preds = %79
  %84 = load i32, i32* %6, align 4
  %85 = icmp eq i32 %84, 11
  br i1 %85, label %90, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %6, align 4
  %88 = and i32 %87, 13
  %89 = icmp eq i32 %88, 13
  br i1 %89, label %90, label %93

90:                                               ; preds = %86, %83
  %91 = load i32, i32* %3, align 4
  %92 = call i32 @arm_extra_loadstore(i32 %91)
  store i32 %92, i32* %2, align 4
  br label %149

93:                                               ; preds = %86, %79
  %94 = load i32, i32* %5, align 4
  %95 = and i32 %94, 18
  %96 = icmp eq i32 %95, 2
  br i1 %96, label %97, label %107

97:                                               ; preds = %93
  %98 = load i32, i32* %6, align 4
  %99 = icmp eq i32 %98, 11
  br i1 %99, label %104, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %6, align 4
  %102 = and i32 %101, 13
  %103 = icmp eq i32 %102, 13
  br i1 %103, label %104, label %107

104:                                              ; preds = %100, %97
  %105 = load i32, i32* %3, align 4
  %106 = call i32 @arm_extra_loadstore_unpriv(i32 %105)
  store i32 %106, i32* %2, align 4
  br label %149

107:                                              ; preds = %100, %93
  br label %147

108:                                              ; preds = %1
  %109 = load i32, i32* %5, align 4
  %110 = and i32 %109, 25
  %111 = icmp ne i32 %110, 16
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i32, i32* %3, align 4
  %114 = call i32 @arm_dataproc_immed(i32 %113)
  store i32 %114, i32* %2, align 4
  br label %149

115:                                              ; preds = %108
  %116 = load i32, i32* %5, align 4
  %117 = icmp eq i32 %116, 16
  br i1 %117, label %118, label %127

118:                                              ; preds = %115
  %119 = load i32, i32* %3, align 4
  %120 = call i64 @ARM_RD(i32 %119)
  %121 = load i64, i64* @REG_PC, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load i32, i32* @FASTTRAP_T_COMMON, align 4
  store i32 %124, i32* %2, align 4
  br label %149

125:                                              ; preds = %118
  %126 = load i32, i32* @FASTTRAP_T_INV, align 4
  store i32 %126, i32* %2, align 4
  br label %149

127:                                              ; preds = %115
  %128 = load i32, i32* %5, align 4
  %129 = icmp eq i32 %128, 20
  br i1 %129, label %130, label %139

130:                                              ; preds = %127
  %131 = load i32, i32* %3, align 4
  %132 = call i64 @ARM_RD(i32 %131)
  %133 = load i64, i64* @REG_PC, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = load i32, i32* @FASTTRAP_T_COMMON, align 4
  store i32 %136, i32* %2, align 4
  br label %149

137:                                              ; preds = %130
  %138 = load i32, i32* @FASTTRAP_T_INV, align 4
  store i32 %138, i32* %2, align 4
  br label %149

139:                                              ; preds = %127
  %140 = load i32, i32* %5, align 4
  %141 = and i32 %140, 27
  %142 = icmp eq i32 %141, 18
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = load i32, i32* %3, align 4
  %145 = call i32 @arm_msr_hints(i32 %144)
  store i32 %145, i32* %2, align 4
  br label %149

146:                                              ; preds = %139
  br label %147

147:                                              ; preds = %146, %107
  %148 = load i32, i32* @FASTTRAP_T_INV, align 4
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %147, %143, %137, %135, %125, %123, %112, %104, %90, %76, %66, %56, %45, %34, %23
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local i32 @BITS(i32, i32, i32) #1

declare dso_local i32 @arm_dataproc_reg(i32) #1

declare dso_local i32 @arm_dataproc_regshift(i32) #1

declare dso_local i32 @arm_misc(i32) #1

declare dso_local i32 @arm_halfword_multiply(i32) #1

declare dso_local i32 @arm_multiply(i32) #1

declare dso_local i32 @arm_sync_primitive(i32) #1

declare dso_local i32 @arm_extra_loadstore(i32) #1

declare dso_local i32 @arm_extra_loadstore_unpriv(i32) #1

declare dso_local i32 @arm_dataproc_immed(i32) #1

declare dso_local i64 @ARM_RD(i32) #1

declare dso_local i32 @arm_msr_hints(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
