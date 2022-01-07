; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-core.c_opADSX.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-core.c_opADSX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@INSN_GET_REG = common dso_local global i32 0, align 4
@INSN_GET_SIZE = common dso_local global i32 0, align 4
@INSN_GET_REG0 = common dso_local global i32 0, align 4
@size = common dso_local global i64 0, align 8
@EA_PREDECREMENT = common dso_local global i32 0, align 4
@EA_DATA_REG = common dso_local global i32 0, align 4
@reg0 = common dso_local global i32 0, align 4
@reg = common dso_local global i32 0, align 4
@SR_X_SHIFT = common dso_local global i32 0, align 4
@SR_X = common dso_local global i32 0, align 4
@SR_N = common dso_local global i32 0, align 4
@SR_V = common dso_local global i32 0, align 4
@SR_C = common dso_local global i32 0, align 4
@SR_Z = common dso_local global i32 0, align 4
@SIZE_L = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @opADSX to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opADSX(%struct.TYPE_5__* %0, i32 %1) #0 {
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
  %18 = load i32, i32* @INSN_GET_SIZE, align 4
  %19 = load i32, i32* @INSN_GET_REG0, align 4
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 16384
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, 8
  store i32 %23, i32* %6, align 4
  %24 = load i64, i64* @size, align 8
  %25 = call i32 @SIZE_TO_BYTES(i64 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = mul nsw i32 %26, 8
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = shl i32 -2, %29
  %31 = xor i32 %30, -1
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* @EA_PREDECREMENT, align 4
  br label %38

36:                                               ; preds = %2
  %37 = load i32, i32* @EA_DATA_REG, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = shl i32 %39, 3
  %41 = load i32, i32* @reg0, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @EA_PREDECREMENT, align 4
  br label %49

47:                                               ; preds = %38
  %48 = load i32, i32* @EA_DATA_REG, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = shl i32 %50, 3
  %52 = load i32, i32* @reg, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %11, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i64, i64* @size, align 8
  %57 = call i32 @ea_get(%struct.TYPE_5__* %54, i32 %55, i64 %56, i32 0, i32* %12)
  store i32 %57, i32* %13, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load i64, i64* @size, align 8
  %61 = call i32 @ea_get(%struct.TYPE_5__* %58, i32 %59, i64 %60, i32 1, i32* %12)
  store i32 %61, i32* %14, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @SR_X_SHIFT, align 4
  %66 = ashr i32 %64, %65
  %67 = and i32 %66, 1
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* @SR_X, align 4
  %69 = load i32, i32* @SR_N, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @SR_V, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @SR_C, align 4
  %74 = or i32 %72, %73
  %75 = xor i32 %74, -1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %128

82:                                               ; preds = %49
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %83, %84
  %86 = load i32, i32* %16, align 4
  %87 = add nsw i32 %85, %86
  %88 = load i32, i32* %9, align 4
  %89 = and i32 %87, %88
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %15, align 4
  %92 = xor i32 %90, %91
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %15, align 4
  %95 = xor i32 %93, %94
  %96 = and i32 %92, %95
  %97 = load i32, i32* %8, align 4
  %98 = ashr i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %82
  %101 = load i32, i32* @SR_V, align 4
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %100, %82
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %8, align 4
  %109 = ashr i32 %107, %108
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %8, align 4
  %112 = ashr i32 %110, %111
  %113 = add nsw i32 %109, %112
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* %8, align 4
  %116 = ashr i32 %114, %115
  %117 = sub nsw i32 %113, %116
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %106
  %120 = load i32, i32* @SR_X, align 4
  %121 = load i32, i32* @SR_C, align 4
  %122 = or i32 %120, %121
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %119, %106
  br label %174

128:                                              ; preds = %49
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* %13, align 4
  %131 = sub nsw i32 %129, %130
  %132 = load i32, i32* %16, align 4
  %133 = sub nsw i32 %131, %132
  %134 = load i32, i32* %9, align 4
  %135 = and i32 %133, %134
  store i32 %135, i32* %15, align 4
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* %14, align 4
  %138 = xor i32 %136, %137
  %139 = load i32, i32* %15, align 4
  %140 = load i32, i32* %14, align 4
  %141 = xor i32 %139, %140
  %142 = and i32 %138, %141
  %143 = load i32, i32* %8, align 4
  %144 = ashr i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %128
  %147 = load i32, i32* @SR_V, align 4
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %146, %128
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* %8, align 4
  %155 = ashr i32 %153, %154
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* %8, align 4
  %158 = ashr i32 %156, %157
  %159 = sub nsw i32 %155, %158
  %160 = load i32, i32* %15, align 4
  %161 = load i32, i32* %8, align 4
  %162 = ashr i32 %160, %161
  %163 = add nsw i32 %159, %162
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %152
  %166 = load i32, i32* @SR_X, align 4
  %167 = load i32, i32* @SR_C, align 4
  %168 = or i32 %166, %167
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 4
  br label %173

173:                                              ; preds = %165, %152
  br label %174

174:                                              ; preds = %173, %127
  %175 = load i32, i32* %15, align 4
  %176 = load i32, i32* %8, align 4
  %177 = ashr i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %174
  %180 = load i32, i32* @SR_N, align 4
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 4
  br label %185

185:                                              ; preds = %179, %174
  %186 = load i32, i32* %15, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %185
  %189 = load i32, i32* @SR_Z, align 4
  %190 = xor i32 %189, -1
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = and i32 %193, %190
  store i32 %194, i32* %192, align 4
  br label %195

195:                                              ; preds = %188, %185
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %197 = load i32, i32* %11, align 4
  %198 = load i64, i64* @size, align 8
  %199 = load i32, i32* %15, align 4
  %200 = call i32 @ea_set(%struct.TYPE_5__* %196, i32 %197, i64 %198, i32 %199)
  %201 = load i32, i32* %6, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %195
  %204 = load i64, i64* @size, align 8
  %205 = load i64, i64* @SIZE_L, align 8
  %206 = icmp eq i64 %204, %205
  %207 = zext i1 %206 to i64
  %208 = select i1 %206, i32 30, i32 18
  br label %215

209:                                              ; preds = %195
  %210 = load i64, i64* @size, align 8
  %211 = load i64, i64* @SIZE_L, align 8
  %212 = icmp eq i64 %210, %211
  %213 = zext i1 %212 to i64
  %214 = select i1 %212, i32 8, i32 4
  br label %215

215:                                              ; preds = %209, %203
  %216 = phi i32 [ %208, %203 ], [ %214, %209 ]
  ret i32 %216
}

declare dso_local i32 @SIZE_TO_BYTES(i64) #1

declare dso_local i32 @ea_get(%struct.TYPE_5__*, i32, i64, i32, i32*) #1

declare dso_local i32 @ea_set(%struct.TYPE_5__*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
