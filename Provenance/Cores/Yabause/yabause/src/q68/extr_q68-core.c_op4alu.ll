; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-core.c_op4alu.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-core.c_op4alu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@INSN_GET_SIZE = common dso_local global i32 0, align 4
@size = common dso_local global i64 0, align 8
@EA_ADDRESS_REG = common dso_local global i64 0, align 8
@EA_DATA_REG = common dso_local global i64 0, align 8
@SIZE_L = common dso_local global i64 0, align 8
@SR_N = common dso_local global i32 0, align 4
@SR_V = common dso_local global i32 0, align 4
@SR_C = common dso_local global i32 0, align 4
@SR_X_SHIFT = common dso_local global i32 0, align 4
@SR_Z = common dso_local global i32 0, align 4
@SR_X = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @op4alu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op4alu(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* @INSN_GET_SIZE, align 4
  %15 = load i64, i64* @size, align 8
  %16 = call i32 @SIZE_TO_BYTES(i64 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = mul nsw i32 %17, 8
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = shl i32 -2, %20
  %22 = xor i32 %21, -1
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %5, align 4
  %24 = ashr i32 %23, 9
  %25 = and i32 %24, 7
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @EA_MODE(i32 %26)
  %28 = load i64, i64* @EA_ADDRESS_REG, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @op_ill(%struct.TYPE_6__* %31, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %203

34:                                               ; preds = %2
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i64, i64* @size, align 8
  %38 = call i32 @ea_get(%struct.TYPE_6__* %35, i32 %36, i64 %37, i32 1, i32* %10)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %203

42:                                               ; preds = %34
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 5
  br i1 %44, label %45, label %67

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = call i64 @EA_MODE(i32 %46)
  %48 = load i64, i64* @EA_DATA_REG, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load i64, i64* @size, align 8
  %52 = load i64, i64* @SIZE_L, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 2
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %54, %50
  br label %66

58:                                               ; preds = %45
  %59 = load i64, i64* @size, align 8
  %60 = load i64, i64* @SIZE_L, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 8, i32 4
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %58, %57
  br label %67

67:                                               ; preds = %66, %42
  %68 = load i32, i32* %9, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %67
  %71 = load i32, i32* @SR_N, align 4
  %72 = load i32, i32* @SR_V, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @SR_C, align 4
  %75 = or i32 %73, %74
  %76 = xor i32 %75, -1
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %83

81:                                               ; preds = %67
  %82 = call i32 (...) @INSN_CLEAR_CC()
  br label %83

83:                                               ; preds = %81, %70
  %84 = load i32, i32* %9, align 4
  switch i32 %84, label %187 [
    i32 0, label %85
    i32 2, label %108
    i32 1, label %174
    i32 3, label %180
  ]

85:                                               ; preds = %83
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @SR_X_SHIFT, align 4
  %90 = ashr i32 %88, %89
  %91 = and i32 %90, 1
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %11, align 4
  %93 = sub nsw i32 0, %92
  %94 = load i32, i32* %13, align 4
  %95 = sub nsw i32 %93, %94
  %96 = load i32, i32* %8, align 4
  %97 = and i32 %95, %96
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %85
  %101 = load i32, i32* @SR_Z, align 4
  %102 = xor i32 %101, -1
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, %102
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %100, %85
  br label %129

108:                                              ; preds = %83
  %109 = load i32, i32* %11, align 4
  %110 = sub nsw i32 0, %109
  %111 = load i32, i32* %8, align 4
  %112 = and i32 %110, %111
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %12, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %108
  %116 = load i32, i32* @SR_Z, align 4
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 4
  br label %128

121:                                              ; preds = %108
  %122 = load i32, i32* @SR_Z, align 4
  %123 = xor i32 %122, -1
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, %123
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %121, %115
  br label %129

129:                                              ; preds = %128, %107
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %7, align 4
  %132 = ashr i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %129
  %135 = load i32, i32* @SR_N, align 4
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %134, %129
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* %12, align 4
  %143 = and i32 %141, %142
  %144 = load i32, i32* %7, align 4
  %145 = ashr i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %140
  %148 = load i32, i32* @SR_V, align 4
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 4
  br label %153

153:                                              ; preds = %147, %140
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* %12, align 4
  %156 = or i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %166

158:                                              ; preds = %153
  %159 = load i32, i32* @SR_X, align 4
  %160 = load i32, i32* @SR_C, align 4
  %161 = or i32 %159, %160
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 4
  br label %173

166:                                              ; preds = %153
  %167 = load i32, i32* @SR_X, align 4
  %168 = xor i32 %167, -1
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = and i32 %171, %168
  store i32 %172, i32* %170, align 4
  br label %173

173:                                              ; preds = %166, %158
  br label %191

174:                                              ; preds = %83
  store i32 0, i32* %12, align 4
  %175 = load i32, i32* @SR_Z, align 4
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %175
  store i32 %179, i32* %177, align 4
  br label %191

180:                                              ; preds = %83
  %181 = load i32, i32* %11, align 4
  %182 = xor i32 %181, -1
  %183 = load i32, i32* %8, align 4
  %184 = and i32 %182, %183
  store i32 %184, i32* %12, align 4
  %185 = load i32, i32* %12, align 4
  %186 = call i32 @INSN_SETNZ_SHIFT(i32 %185)
  br label %191

187:                                              ; preds = %83
  %188 = load i32, i32* %11, align 4
  store i32 %188, i32* %12, align 4
  %189 = load i32, i32* %11, align 4
  %190 = call i32 @INSN_SETNZ_SHIFT(i32 %189)
  br label %191

191:                                              ; preds = %187, %180, %174, %173
  %192 = load i32, i32* %9, align 4
  %193 = icmp ne i32 %192, 5
  br i1 %193, label %194, label %200

194:                                              ; preds = %191
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %196 = load i32, i32* %5, align 4
  %197 = load i64, i64* @size, align 8
  %198 = load i32, i32* %12, align 4
  %199 = call i32 @ea_set(%struct.TYPE_6__* %195, i32 %196, i64 %197, i32 %198)
  br label %200

200:                                              ; preds = %194, %191
  %201 = load i32, i32* %10, align 4
  %202 = add nsw i32 4, %201
  store i32 %202, i32* %3, align 4
  br label %203

203:                                              ; preds = %200, %41, %30
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

declare dso_local i32 @SIZE_TO_BYTES(i64) #1

declare dso_local i64 @EA_MODE(i32) #1

declare dso_local i32 @op_ill(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ea_get(%struct.TYPE_6__*, i32, i64, i32, i32*) #1

declare dso_local i32 @INSN_CLEAR_CC(...) #1

declare dso_local i32 @INSN_SETNZ_SHIFT(i32) #1

declare dso_local i32 @ea_set(%struct.TYPE_6__*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
