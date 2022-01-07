; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-core.c_op_BCD.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-core.c_op_BCD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@INSN_GET_REG = common dso_local global i32 0, align 4
@INSN_GET_REG0 = common dso_local global i32 0, align 4
@EA_PREDECREMENT = common dso_local global i32 0, align 4
@EA_DATA_REG = common dso_local global i32 0, align 4
@reg0 = common dso_local global i32 0, align 4
@reg = common dso_local global i32 0, align 4
@SIZE_B = common dso_local global i32 0, align 4
@SR_X_SHIFT = common dso_local global i32 0, align 4
@SR_X = common dso_local global i32 0, align 4
@SR_C = common dso_local global i32 0, align 4
@SR_Z = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @op_BCD to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op_BCD(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load i32, i32* @INSN_GET_REG, align 4
  %18 = load i32, i32* @INSN_GET_REG0, align 4
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, 16384
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, 8
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @EA_PREDECREMENT, align 4
  br label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @EA_DATA_REG, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = shl i32 %30, 3
  %32 = load i32, i32* @reg0, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @EA_PREDECREMENT, align 4
  br label %40

38:                                               ; preds = %29
  %39 = load i32, i32* @EA_DATA_REG, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = shl i32 %41, 3
  %43 = load i32, i32* @reg, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %8, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @SIZE_B, align 4
  %48 = call i32 @ea_get(%struct.TYPE_5__* %45, i32 %46, i32 %47, i32 0, i32* %9)
  store i32 %48, i32* %10, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @SIZE_B, align 4
  %52 = call i32 @ea_get(%struct.TYPE_5__* %49, i32 %50, i32 %51, i32 1, i32* %9)
  store i32 %52, i32* %11, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @SR_X_SHIFT, align 4
  %57 = ashr i32 %55, %56
  %58 = and i32 %57, 1
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* @SR_X, align 4
  %60 = load i32, i32* @SR_C, align 4
  %61 = or i32 %59, %60
  %62 = xor i32 %61, -1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %103

69:                                               ; preds = %40
  %70 = load i32, i32* %11, align 4
  %71 = and i32 %70, 15
  %72 = load i32, i32* %10, align 4
  %73 = and i32 %72, 15
  %74 = add nsw i32 %71, %73
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %74, %75
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp sge i32 %77, 10
  br i1 %78, label %79, label %82

79:                                               ; preds = %69
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, 6
  store i32 %81, i32* %12, align 4
  br label %82

82:                                               ; preds = %79, %69
  %83 = load i32, i32* %11, align 4
  %84 = and i32 %83, 240
  %85 = load i32, i32* %10, align 4
  %86 = and i32 %85, 240
  %87 = add nsw i32 %84, %86
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp sge i32 %90, 160
  br i1 %91, label %92, label %102

92:                                               ; preds = %82
  %93 = load i32, i32* %12, align 4
  %94 = sub nsw i32 %93, 160
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* @SR_X, align 4
  %96 = load i32, i32* @SR_C, align 4
  %97 = or i32 %95, %96
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %92, %82
  br label %151

103:                                              ; preds = %40
  %104 = load i32, i32* %11, align 4
  %105 = and i32 %104, 15
  %106 = load i32, i32* %10, align 4
  %107 = and i32 %106, 15
  %108 = sub nsw i32 %105, %107
  %109 = load i32, i32* %13, align 4
  %110 = sub nsw i32 %108, %109
  store i32 %110, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %111 = load i32, i32* %14, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %103
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 %114, 10
  store i32 %115, i32* %14, align 4
  store i32 16, i32* %15, align 4
  br label %116

116:                                              ; preds = %113, %103
  %117 = load i32, i32* %11, align 4
  %118 = and i32 %117, 240
  %119 = load i32, i32* %10, align 4
  %120 = and i32 %119, 240
  %121 = sub nsw i32 %118, %120
  %122 = load i32, i32* %15, align 4
  %123 = sub nsw i32 %121, %122
  store i32 %123, i32* %16, align 4
  %124 = load i32, i32* %16, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %116
  %127 = load i32, i32* %16, align 4
  %128 = add nsw i32 %127, 160
  store i32 %128, i32* %16, align 4
  %129 = load i32, i32* @SR_X, align 4
  %130 = load i32, i32* @SR_C, align 4
  %131 = or i32 %129, %130
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %126, %116
  %137 = load i32, i32* %16, align 4
  %138 = load i32, i32* %14, align 4
  %139 = add nsw i32 %137, %138
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %12, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %136
  %143 = load i32, i32* @SR_X, align 4
  %144 = load i32, i32* @SR_C, align 4
  %145 = or i32 %143, %144
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %142, %136
  br label %151

151:                                              ; preds = %150, %102
  %152 = load i32, i32* %12, align 4
  %153 = and i32 %152, 255
  store i32 %153, i32* %12, align 4
  %154 = load i32, i32* %12, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %151
  %157 = load i32, i32* @SR_Z, align 4
  %158 = xor i32 %157, -1
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = and i32 %161, %158
  store i32 %162, i32* %160, align 4
  br label %163

163:                                              ; preds = %156, %151
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* @SIZE_B, align 4
  %167 = load i32, i32* %12, align 4
  %168 = call i32 @ea_set(%struct.TYPE_5__* %164, i32 %165, i32 %166, i32 %167)
  %169 = load i32, i32* %6, align 4
  %170 = icmp ne i32 %169, 0
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i32 18, i32 6
  ret i32 %172
}

declare dso_local i32 @ea_get(%struct.TYPE_5__*, i32, i32, i32, i32*) #1

declare dso_local i32 @ea_set(%struct.TYPE_5__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
