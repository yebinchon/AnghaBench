; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotTravel_Jump.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotTravel_Jump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32*, i32, i32, i32 }
%struct.TYPE_11__ = type { i32*, i32* }
%struct.TYPE_10__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @BotTravel_Jump(%struct.TYPE_9__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_10__, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %15 = call i32 @BotClearMoveResult(%struct.TYPE_10__* %3)
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = call i32 @AAS_JumpReachRunStart(%struct.TYPE_11__* %16, i32* %17)
  %19 = load i32*, i32** %11, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %21, %26
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 %27, i32* %29, align 4
  %30 = load i32*, i32** %11, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %32, %37
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 %38, i32* %40, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  store i32 0, i32* %42, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = call float @VectorNormalize(i32* %43)
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @VectorCopy(i32* %47, i32* %48)
  %50 = load i32*, i32** %9, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @VectorMA(i32* %56, float 8.000000e+01, i32* %57, i32* %58)
  store float 0.000000e+00, float* %12, align 4
  br label %60

60:                                               ; preds = %82, %2
  %61 = load float, float* %12, align 4
  %62 = fcmp olt float %61, 8.000000e+01
  br i1 %62, label %63, label %85

63:                                               ; preds = %60
  %64 = load i32*, i32** %9, align 8
  %65 = load float, float* %12, align 4
  %66 = fadd float %65, 1.000000e+01
  %67 = load i32*, i32** %6, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @VectorMA(i32* %64, float %66, i32* %67, i32* %68)
  %70 = load i32*, i32** %10, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = call i64 @AAS_PointAreaNum(i32* %74)
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %75, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %63
  br label %85

81:                                               ; preds = %63
  br label %82

82:                                               ; preds = %81
  %83 = load float, float* %12, align 4
  %84 = fadd float %83, 1.000000e+01
  store float %84, float* %12, align 4
  br label %60

85:                                               ; preds = %80, %60
  %86 = load float, float* %12, align 4
  %87 = fcmp olt float %86, 8.000000e+01
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load float, float* %12, align 4
  %93 = load i32*, i32** %6, align 8
  %94 = load i32*, i32** %11, align 8
  %95 = call i32 @VectorMA(i32* %91, float %92, i32* %93, i32* %94)
  br label %96

96:                                               ; preds = %88, %85
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32*, i32** %7, align 8
  %104 = call i32 @VectorSubtract(i32* %99, i32* %102, i32* %103)
  %105 = load i32*, i32** %7, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  store i32 0, i32* %106, align 4
  %107 = load i32*, i32** %7, align 8
  %108 = call float @VectorNormalize(i32* %107)
  store float %108, float* %12, align 4
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i32*, i32** %11, align 8
  %113 = load i32*, i32** %8, align 8
  %114 = call i32 @VectorSubtract(i32* %111, i32* %112, i32* %113)
  %115 = load i32*, i32** %8, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  store i32 0, i32* %116, align 4
  %117 = load i32*, i32** %8, align 8
  %118 = call float @VectorNormalize(i32* %117)
  store float %118, float* %13, align 4
  %119 = load i32*, i32** %7, align 8
  %120 = load i32*, i32** %8, align 8
  %121 = call double @DotProduct(i32* %119, i32* %120)
  %122 = fcmp olt double %121, -8.000000e-01
  br i1 %122, label %126, label %123

123:                                              ; preds = %96
  %124 = load float, float* %13, align 4
  %125 = fcmp olt float %124, 5.000000e+00
  br i1 %125, label %126, label %184

126:                                              ; preds = %123, %96
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = sub nsw i32 %131, %136
  %138 = load i32*, i32** %6, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  store i32 %137, i32* %139, align 4
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  %149 = load i32, i32* %148, align 4
  %150 = sub nsw i32 %144, %149
  %151 = load i32*, i32** %6, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 1
  store i32 %150, i32* %152, align 4
  %153 = load i32*, i32** %6, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 2
  store i32 0, i32* %154, align 4
  %155 = load i32*, i32** %6, align 8
  %156 = call float @VectorNormalize(i32* %155)
  %157 = load float, float* %12, align 4
  %158 = fcmp olt float %157, 2.400000e+01
  br i1 %158, label %159, label %164

159:                                              ; preds = %126
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @EA_Jump(i32 %162)
  br label %173

164:                                              ; preds = %126
  %165 = load float, float* %12, align 4
  %166 = fcmp olt float %165, 3.200000e+01
  br i1 %166, label %167, label %172

167:                                              ; preds = %164
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @EA_DelayedJump(i32 %170)
  br label %172

172:                                              ; preds = %167, %164
  br label %173

173:                                              ; preds = %172, %159
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load i32*, i32** %6, align 8
  %178 = call i32 @EA_Move(i32 %176, i32* %177, float 6.000000e+02)
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 4
  store i32 %181, i32* %183, align 8
  br label %225

184:                                              ; preds = %123
  %185 = load i32*, i32** %11, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 0
  %192 = load i32, i32* %191, align 4
  %193 = sub nsw i32 %187, %192
  %194 = load i32*, i32** %6, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 0
  store i32 %193, i32* %195, align 4
  %196 = load i32*, i32** %11, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 1
  %203 = load i32, i32* %202, align 4
  %204 = sub nsw i32 %198, %203
  %205 = load i32*, i32** %6, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 1
  store i32 %204, i32* %206, align 4
  %207 = load i32*, i32** %6, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 2
  store i32 0, i32* %208, align 4
  %209 = load i32*, i32** %6, align 8
  %210 = call float @VectorNormalize(i32* %209)
  %211 = load float, float* %13, align 4
  %212 = fcmp ogt float %211, 8.000000e+01
  br i1 %212, label %213, label %214

213:                                              ; preds = %184
  store float 8.000000e+01, float* %13, align 4
  br label %214

214:                                              ; preds = %213, %184
  %215 = load float, float* %13, align 4
  %216 = fmul float 5.000000e+00, %215
  %217 = fsub float 4.000000e+02, %216
  %218 = fsub float 4.000000e+02, %217
  store float %218, float* %14, align 4
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = load i32*, i32** %6, align 8
  %223 = load float, float* %14, align 4
  %224 = call i32 @EA_Move(i32 %221, i32* %222, float %223)
  br label %225

225:                                              ; preds = %214, %173
  %226 = load i32*, i32** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = call i32 @VectorCopy(i32* %226, i32* %228)
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  ret i32* %231
}

declare dso_local i32 @BotClearMoveResult(%struct.TYPE_10__*) #1

declare dso_local i32 @AAS_JumpReachRunStart(%struct.TYPE_11__*, i32*) #1

declare dso_local float @VectorNormalize(i32*) #1

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local i32 @VectorMA(i32*, float, i32*, i32*) #1

declare dso_local i64 @AAS_PointAreaNum(i32*) #1

declare dso_local i32 @VectorSubtract(i32*, i32*, i32*) #1

declare dso_local double @DotProduct(i32*, i32*) #1

declare dso_local i32 @EA_Jump(i32) #1

declare dso_local i32 @EA_DelayedJump(i32) #1

declare dso_local i32 @EA_Move(i32, i32*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
