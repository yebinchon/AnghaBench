; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kcpu.c_m68k_set_reg.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kcpu.c_m68k_set_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_D = common dso_local global i8** null, align 8
@REG_A = common dso_local global i8** null, align 8
@REG_SP = common dso_local global i8* null, align 8
@FLAG_S = common dso_local global i32 0, align 4
@REG_USP = common dso_local global i8* null, align 8
@REG_ISP = common dso_local global i8* null, align 8
@REG_IR = common dso_local global i32 0, align 4
@CPU_PREF_ADDR = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_set_reg(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %119 [
    i32 142, label %6
    i32 141, label %11
    i32 140, label %16
    i32 139, label %21
    i32 138, label %26
    i32 137, label %31
    i32 136, label %36
    i32 135, label %41
    i32 150, label %46
    i32 149, label %51
    i32 148, label %56
    i32 147, label %61
    i32 146, label %66
    i32 145, label %71
    i32 144, label %76
    i32 143, label %81
    i32 132, label %86
    i32 129, label %90
    i32 130, label %93
    i32 128, label %96
    i32 133, label %106
    i32 134, label %116
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* %4, align 4
  %8 = call i8* @MASK_OUT_ABOVE_32(i32 %7)
  %9 = load i8**, i8*** @REG_D, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  store i8* %8, i8** %10, align 8
  br label %120

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = call i8* @MASK_OUT_ABOVE_32(i32 %12)
  %14 = load i8**, i8*** @REG_D, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  store i8* %13, i8** %15, align 8
  br label %120

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = call i8* @MASK_OUT_ABOVE_32(i32 %17)
  %19 = load i8**, i8*** @REG_D, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 2
  store i8* %18, i8** %20, align 8
  br label %120

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = call i8* @MASK_OUT_ABOVE_32(i32 %22)
  %24 = load i8**, i8*** @REG_D, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 3
  store i8* %23, i8** %25, align 8
  br label %120

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = call i8* @MASK_OUT_ABOVE_32(i32 %27)
  %29 = load i8**, i8*** @REG_D, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 4
  store i8* %28, i8** %30, align 8
  br label %120

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  %33 = call i8* @MASK_OUT_ABOVE_32(i32 %32)
  %34 = load i8**, i8*** @REG_D, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 5
  store i8* %33, i8** %35, align 8
  br label %120

36:                                               ; preds = %2
  %37 = load i32, i32* %4, align 4
  %38 = call i8* @MASK_OUT_ABOVE_32(i32 %37)
  %39 = load i8**, i8*** @REG_D, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 6
  store i8* %38, i8** %40, align 8
  br label %120

41:                                               ; preds = %2
  %42 = load i32, i32* %4, align 4
  %43 = call i8* @MASK_OUT_ABOVE_32(i32 %42)
  %44 = load i8**, i8*** @REG_D, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 7
  store i8* %43, i8** %45, align 8
  br label %120

46:                                               ; preds = %2
  %47 = load i32, i32* %4, align 4
  %48 = call i8* @MASK_OUT_ABOVE_32(i32 %47)
  %49 = load i8**, i8*** @REG_A, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  store i8* %48, i8** %50, align 8
  br label %120

51:                                               ; preds = %2
  %52 = load i32, i32* %4, align 4
  %53 = call i8* @MASK_OUT_ABOVE_32(i32 %52)
  %54 = load i8**, i8*** @REG_A, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  store i8* %53, i8** %55, align 8
  br label %120

56:                                               ; preds = %2
  %57 = load i32, i32* %4, align 4
  %58 = call i8* @MASK_OUT_ABOVE_32(i32 %57)
  %59 = load i8**, i8*** @REG_A, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 2
  store i8* %58, i8** %60, align 8
  br label %120

61:                                               ; preds = %2
  %62 = load i32, i32* %4, align 4
  %63 = call i8* @MASK_OUT_ABOVE_32(i32 %62)
  %64 = load i8**, i8*** @REG_A, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 3
  store i8* %63, i8** %65, align 8
  br label %120

66:                                               ; preds = %2
  %67 = load i32, i32* %4, align 4
  %68 = call i8* @MASK_OUT_ABOVE_32(i32 %67)
  %69 = load i8**, i8*** @REG_A, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 4
  store i8* %68, i8** %70, align 8
  br label %120

71:                                               ; preds = %2
  %72 = load i32, i32* %4, align 4
  %73 = call i8* @MASK_OUT_ABOVE_32(i32 %72)
  %74 = load i8**, i8*** @REG_A, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 5
  store i8* %73, i8** %75, align 8
  br label %120

76:                                               ; preds = %2
  %77 = load i32, i32* %4, align 4
  %78 = call i8* @MASK_OUT_ABOVE_32(i32 %77)
  %79 = load i8**, i8*** @REG_A, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 6
  store i8* %78, i8** %80, align 8
  br label %120

81:                                               ; preds = %2
  %82 = load i32, i32* %4, align 4
  %83 = call i8* @MASK_OUT_ABOVE_32(i32 %82)
  %84 = load i8**, i8*** @REG_A, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 7
  store i8* %83, i8** %85, align 8
  br label %120

86:                                               ; preds = %2
  %87 = load i32, i32* %4, align 4
  %88 = call i8* @MASK_OUT_ABOVE_32(i32 %87)
  %89 = call i32 @m68ki_jump(i8* %88)
  br label %120

90:                                               ; preds = %2
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @m68ki_set_sr(i32 %91)
  br label %120

93:                                               ; preds = %2
  %94 = load i32, i32* %4, align 4
  %95 = call i8* @MASK_OUT_ABOVE_32(i32 %94)
  store i8* %95, i8** @REG_SP, align 8
  br label %120

96:                                               ; preds = %2
  %97 = load i32, i32* @FLAG_S, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* %4, align 4
  %101 = call i8* @MASK_OUT_ABOVE_32(i32 %100)
  store i8* %101, i8** @REG_USP, align 8
  br label %105

102:                                              ; preds = %96
  %103 = load i32, i32* %4, align 4
  %104 = call i8* @MASK_OUT_ABOVE_32(i32 %103)
  store i8* %104, i8** @REG_SP, align 8
  br label %105

105:                                              ; preds = %102, %99
  br label %120

106:                                              ; preds = %2
  %107 = load i32, i32* @FLAG_S, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32, i32* %4, align 4
  %111 = call i8* @MASK_OUT_ABOVE_32(i32 %110)
  store i8* %111, i8** @REG_SP, align 8
  br label %115

112:                                              ; preds = %106
  %113 = load i32, i32* %4, align 4
  %114 = call i8* @MASK_OUT_ABOVE_32(i32 %113)
  store i8* %114, i8** @REG_ISP, align 8
  br label %115

115:                                              ; preds = %112, %109
  br label %120

116:                                              ; preds = %2
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @MASK_OUT_ABOVE_16(i32 %117)
  store i32 %118, i32* @REG_IR, align 4
  br label %120

119:                                              ; preds = %2
  br label %120

120:                                              ; preds = %119, %116, %115, %105, %93, %90, %86, %81, %76, %71, %66, %61, %56, %51, %46, %41, %36, %31, %26, %21, %16, %11, %6
  ret void
}

declare dso_local i8* @MASK_OUT_ABOVE_32(i32) #1

declare dso_local i32 @m68ki_jump(i8*) #1

declare dso_local i32 @m68ki_set_sr(i32) #1

declare dso_local i32 @MASK_OUT_ABOVE_16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
