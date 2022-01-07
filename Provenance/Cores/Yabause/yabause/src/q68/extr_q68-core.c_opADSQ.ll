; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-core.c_opADSQ.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-core.c_opADSQ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@INSN_GET_COUNT = common dso_local global i32 0, align 4
@INSN_GET_SIZE = common dso_local global i32 0, align 4
@EA_ADDRESS_REG = common dso_local global i64 0, align 8
@size = common dso_local global i32 0, align 4
@count = common dso_local global i32 0, align 4
@SR_V = common dso_local global i32 0, align 4
@SR_X = common dso_local global i32 0, align 4
@SR_C = common dso_local global i32 0, align 4
@SIZE_L = common dso_local global i32 0, align 4
@EA_INDIRECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @opADSQ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opADSQ(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, 256
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @INSN_GET_COUNT, align 4
  %16 = load i32, i32* @INSN_GET_SIZE, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @EA_MODE(i32 %17)
  %19 = load i64, i64* @EA_ADDRESS_REG, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32, i32* @size, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 2, i32* @size, align 4
  br label %25

25:                                               ; preds = %24, %21, %2
  %26 = load i32, i32* @size, align 4
  %27 = call i32 @SIZE_TO_BYTES(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = mul nsw i32 %28, 8
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = shl i32 -2, %31
  %33 = xor i32 %32, -1
  store i32 %33, i32* %9, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @size, align 4
  %37 = call i32 @ea_get(%struct.TYPE_5__* %34, i32 %35, i32 %36, i32 1, i32* %10)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %141

41:                                               ; preds = %25
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @count, align 4
  %47 = sub nsw i32 %45, %46
  store i32 %47, i32* %12, align 4
  br label %52

48:                                               ; preds = %41
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @count, align 4
  %51 = add nsw i32 %49, %50
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %48, %44
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %12, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i64 @EA_MODE(i32 %56)
  %58 = load i64, i64* @EA_ADDRESS_REG, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %114

60:                                               ; preds = %52
  %61 = call i32 (...) @INSN_CLEAR_XCC()
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @INSN_SETNZ_SHIFT(i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load i32, i32* %12, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %11, align 4
  %70 = and i32 %68, %69
  br label %76

71:                                               ; preds = %60
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %11, align 4
  %74 = xor i32 %73, -1
  %75 = and i32 %72, %74
  br label %76

76:                                               ; preds = %71, %66
  %77 = phi i32 [ %70, %66 ], [ %75, %71 ]
  %78 = load i32, i32* %8, align 4
  %79 = ashr i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load i32, i32* @SR_V, align 4
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %81, %76
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %11, align 4
  %93 = xor i32 %92, -1
  %94 = and i32 %91, %93
  br label %100

95:                                               ; preds = %87
  %96 = load i32, i32* %12, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %11, align 4
  %99 = and i32 %97, %98
  br label %100

100:                                              ; preds = %95, %90
  %101 = phi i32 [ %94, %90 ], [ %99, %95 ]
  %102 = load i32, i32* %8, align 4
  %103 = ashr i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %100
  %106 = load i32, i32* @SR_X, align 4
  %107 = load i32, i32* @SR_C, align 4
  %108 = or i32 %106, %107
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %105, %100
  br label %114

114:                                              ; preds = %113, %52
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* @size, align 4
  %118 = load i32, i32* %12, align 4
  %119 = call i32 @ea_set(%struct.TYPE_5__* %115, i32 %116, i32 %117, i32 %118)
  %120 = load i32, i32* @size, align 4
  %121 = load i32, i32* @SIZE_L, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %128, label %123

123:                                              ; preds = %114
  %124 = load i32, i32* %5, align 4
  %125 = call i64 @EA_MODE(i32 %124)
  %126 = load i64, i64* @EA_ADDRESS_REG, align 8
  %127 = icmp eq i64 %125, %126
  br label %128

128:                                              ; preds = %123, %114
  %129 = phi i1 [ true, %114 ], [ %127, %123 ]
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i32 8, i32 4
  %132 = load i32, i32* %5, align 4
  %133 = call i64 @EA_MODE(i32 %132)
  %134 = load i64, i64* @EA_INDIRECT, align 8
  %135 = icmp sge i64 %133, %134
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i32 4, i32 0
  %138 = add nsw i32 %131, %137
  %139 = load i32, i32* %10, align 4
  %140 = add nsw i32 %138, %139
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %128, %40
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i64 @EA_MODE(i32) #1

declare dso_local i32 @SIZE_TO_BYTES(i32) #1

declare dso_local i32 @ea_get(%struct.TYPE_5__*, i32, i32, i32, i32*) #1

declare dso_local i32 @INSN_CLEAR_XCC(...) #1

declare dso_local i32 @INSN_SETNZ_SHIFT(i32) #1

declare dso_local i32 @ea_set(%struct.TYPE_5__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
