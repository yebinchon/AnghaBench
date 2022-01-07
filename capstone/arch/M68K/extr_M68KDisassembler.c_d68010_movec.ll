; ModuleID = '/home/carl/AnghaBench/capstone/arch/M68K/extr_M68KDisassembler.c_d68010_movec.c'
source_filename = "/home/carl/AnghaBench/capstone/arch/M68K/extr_M68KDisassembler.c_d68010_movec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8* }

@M68010_PLUS = common dso_local global i32 0, align 4
@M68K_REG_INVALID = common dso_local global i8* null, align 8
@M68K_INS_MOVEC = common dso_local global i32 0, align 4
@M68K_REG_SFC = common dso_local global i8* null, align 8
@M68K_REG_DFC = common dso_local global i8* null, align 8
@M68K_REG_USP = common dso_local global i8* null, align 8
@M68K_REG_VBR = common dso_local global i8* null, align 8
@M68K_REG_CACR = common dso_local global i8* null, align 8
@M68K_REG_CAAR = common dso_local global i8* null, align 8
@M68K_REG_MSP = common dso_local global i8* null, align 8
@M68K_REG_ISP = common dso_local global i8* null, align 8
@M68K_REG_TC = common dso_local global i8* null, align 8
@M68K_REG_ITT0 = common dso_local global i8* null, align 8
@M68K_REG_ITT1 = common dso_local global i8* null, align 8
@M68K_REG_DTT0 = common dso_local global i8* null, align 8
@M68K_REG_DTT1 = common dso_local global i8* null, align 8
@M68K_REG_MMUSR = common dso_local global i8* null, align 8
@M68K_REG_URP = common dso_local global i8* null, align 8
@M68K_REG_SRP = common dso_local global i8* null, align 8
@M68K_REG_A0 = common dso_local global i8* null, align 8
@M68K_REG_D0 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @d68010_movec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d68010_movec(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = load i32, i32* @M68010_PLUS, align 4
  %10 = call i32 @LIMIT_CPU_TYPES(%struct.TYPE_9__* %8, i32 %9)
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = call i32 @read_imm_16(%struct.TYPE_9__* %11)
  store i32 %12, i32* %3, align 4
  %13 = load i8*, i8** @M68K_REG_INVALID, align 8
  store i8* %13, i8** %4, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %15 = load i32, i32* @M68K_INS_MOVEC, align 4
  %16 = call %struct.TYPE_11__* @build_init_op(%struct.TYPE_9__* %14, i32 %15, i32 2, i32 0)
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %5, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i64 0
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %6, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i64 1
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %7, align 8
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, 4095
  switch i32 %26, label %59 [
    i32 0, label %27
    i32 1, label %29
    i32 2048, label %31
    i32 2049, label %33
    i32 2, label %35
    i32 2050, label %37
    i32 2051, label %39
    i32 2052, label %41
    i32 3, label %43
    i32 4, label %45
    i32 5, label %47
    i32 6, label %49
    i32 7, label %51
    i32 2053, label %53
    i32 2054, label %55
    i32 2055, label %57
  ]

27:                                               ; preds = %1
  %28 = load i8*, i8** @M68K_REG_SFC, align 8
  store i8* %28, i8** %4, align 8
  br label %59

29:                                               ; preds = %1
  %30 = load i8*, i8** @M68K_REG_DFC, align 8
  store i8* %30, i8** %4, align 8
  br label %59

31:                                               ; preds = %1
  %32 = load i8*, i8** @M68K_REG_USP, align 8
  store i8* %32, i8** %4, align 8
  br label %59

33:                                               ; preds = %1
  %34 = load i8*, i8** @M68K_REG_VBR, align 8
  store i8* %34, i8** %4, align 8
  br label %59

35:                                               ; preds = %1
  %36 = load i8*, i8** @M68K_REG_CACR, align 8
  store i8* %36, i8** %4, align 8
  br label %59

37:                                               ; preds = %1
  %38 = load i8*, i8** @M68K_REG_CAAR, align 8
  store i8* %38, i8** %4, align 8
  br label %59

39:                                               ; preds = %1
  %40 = load i8*, i8** @M68K_REG_MSP, align 8
  store i8* %40, i8** %4, align 8
  br label %59

41:                                               ; preds = %1
  %42 = load i8*, i8** @M68K_REG_ISP, align 8
  store i8* %42, i8** %4, align 8
  br label %59

43:                                               ; preds = %1
  %44 = load i8*, i8** @M68K_REG_TC, align 8
  store i8* %44, i8** %4, align 8
  br label %59

45:                                               ; preds = %1
  %46 = load i8*, i8** @M68K_REG_ITT0, align 8
  store i8* %46, i8** %4, align 8
  br label %59

47:                                               ; preds = %1
  %48 = load i8*, i8** @M68K_REG_ITT1, align 8
  store i8* %48, i8** %4, align 8
  br label %59

49:                                               ; preds = %1
  %50 = load i8*, i8** @M68K_REG_DTT0, align 8
  store i8* %50, i8** %4, align 8
  br label %59

51:                                               ; preds = %1
  %52 = load i8*, i8** @M68K_REG_DTT1, align 8
  store i8* %52, i8** %4, align 8
  br label %59

53:                                               ; preds = %1
  %54 = load i8*, i8** @M68K_REG_MMUSR, align 8
  store i8* %54, i8** %4, align 8
  br label %59

55:                                               ; preds = %1
  %56 = load i8*, i8** @M68K_REG_URP, align 8
  store i8* %56, i8** %4, align 8
  br label %59

57:                                               ; preds = %1
  %58 = load i8*, i8** @M68K_REG_SRP, align 8
  store i8* %58, i8** %4, align 8
  br label %59

59:                                               ; preds = %1, %57, %55, %53, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @BIT_1(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %85

65:                                               ; preds = %59
  %66 = load i32, i32* %3, align 4
  %67 = call i64 @BIT_F(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i8*, i8** @M68K_REG_A0, align 8
  br label %73

71:                                               ; preds = %65
  %72 = load i8*, i8** @M68K_REG_D0, align 8
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i8* [ %70, %69 ], [ %72, %71 ]
  %75 = load i32, i32* %3, align 4
  %76 = ashr i32 %75, 12
  %77 = and i32 %76, 7
  %78 = sext i32 %77 to i64
  %79 = getelementptr i8, i8* %74, i64 %78
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  %82 = load i8*, i8** %4, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  br label %105

85:                                               ; preds = %59
  %86 = load i8*, i8** %4, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  store i8* %86, i8** %88, align 8
  %89 = load i32, i32* %3, align 4
  %90 = call i64 @BIT_F(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i8*, i8** @M68K_REG_A0, align 8
  br label %96

94:                                               ; preds = %85
  %95 = load i8*, i8** @M68K_REG_D0, align 8
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i8* [ %93, %92 ], [ %95, %94 ]
  %98 = load i32, i32* %3, align 4
  %99 = ashr i32 %98, 12
  %100 = and i32 %99, 7
  %101 = sext i32 %100 to i64
  %102 = getelementptr i8, i8* %97, i64 %101
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  br label %105

105:                                              ; preds = %96, %73
  ret void
}

declare dso_local i32 @LIMIT_CPU_TYPES(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @read_imm_16(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_11__* @build_init_op(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i64 @BIT_1(i32) #1

declare dso_local i64 @BIT_F(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
