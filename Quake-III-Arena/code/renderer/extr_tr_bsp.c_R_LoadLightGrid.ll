; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_bsp.c_R_LoadLightGrid.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_bsp.c_R_LoadLightGrid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { float*, float*, i32*, i32*, i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { float** }
%struct.TYPE_10__ = type { i32* (i32, i32)*, i32 (i32, i8*)* }
%struct.TYPE_9__ = type { i32, i64 }

@s_worldData = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@ri = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@PRINT_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"WARNING: light grid mismatch\0A\00", align 1
@h_low = common dso_local global i32 0, align 4
@fileBase = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_LoadLightGrid(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store %struct.TYPE_8__* @s_worldData, %struct.TYPE_8__** %6, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = load float*, float** %10, align 8
  %12 = getelementptr inbounds float, float* %11, i64 0
  %13 = load float, float* %12, align 4
  %14 = fdiv float 1.000000e+00, %13
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load float*, float** %16, align 8
  %18 = getelementptr inbounds float, float* %17, i64 0
  store float %14, float* %18, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load float*, float** %20, align 8
  %22 = getelementptr inbounds float, float* %21, i64 1
  %23 = load float, float* %22, align 4
  %24 = fdiv float 1.000000e+00, %23
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load float*, float** %26, align 8
  %28 = getelementptr inbounds float, float* %27, i64 1
  store float %24, float* %28, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load float*, float** %30, align 8
  %32 = getelementptr inbounds float, float* %31, i64 2
  %33 = load float, float* %32, align 4
  %34 = fdiv float 1.000000e+00, %33
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load float*, float** %36, align 8
  %38 = getelementptr inbounds float, float* %37, i64 2
  store float %34, float* %38, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 5
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load float**, float*** %43, align 8
  %45 = getelementptr inbounds float*, float** %44, i64 0
  %46 = load float*, float** %45, align 8
  store float* %46, float** %7, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 5
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load float**, float*** %51, align 8
  %53 = getelementptr inbounds float*, float** %52, i64 1
  %54 = load float*, float** %53, align 8
  store float* %54, float** %8, align 8
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %147, %1
  %56 = load i32, i32* %3, align 4
  %57 = icmp slt i32 %56, 3
  br i1 %57, label %58, label %150

58:                                               ; preds = %55
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load float*, float** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds float, float* %61, i64 %63
  %65 = load float, float* %64, align 4
  %66 = load float*, float** %7, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float, float* %66, i64 %68
  %70 = load float, float* %69, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load float*, float** %72, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float, float* %73, i64 %75
  %77 = load float, float* %76, align 4
  %78 = fdiv float %70, %77
  %79 = call i32 @ceil(float %78)
  %80 = sitofp i32 %79 to float
  %81 = fmul float %65, %80
  %82 = fptosi float %81 to i32
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %82, i32* %88, align 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load float*, float** %90, align 8
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds float, float* %91, i64 %93
  %95 = load float, float* %94, align 4
  %96 = load float*, float** %8, align 8
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds float, float* %96, i64 %98
  %100 = load float, float* %99, align 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load float*, float** %102, align 8
  %104 = load i32, i32* %3, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds float, float* %103, i64 %105
  %107 = load float, float* %106, align 4
  %108 = fdiv float %100, %107
  %109 = call i32 @floor(float %108)
  %110 = sitofp i32 %109 to float
  %111 = fmul float %95, %110
  %112 = fptosi float %111 to i32
  %113 = load i32*, i32** %4, align 8
  %114 = load i32, i32* %3, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 %112, i32* %116, align 4
  %117 = load i32*, i32** %4, align 8
  %118 = load i32, i32* %3, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %3, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %121, %128
  %130 = sitofp i32 %129 to float
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load float*, float** %132, align 8
  %134 = load i32, i32* %3, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds float, float* %133, i64 %135
  %137 = load float, float* %136, align 4
  %138 = fdiv float %130, %137
  %139 = fadd float %138, 1.000000e+00
  %140 = fptosi float %139 to i32
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 3
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %3, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  store i32 %140, i32* %146, align 4
  br label %147

147:                                              ; preds = %58
  %148 = load i32, i32* %3, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %3, align 4
  br label %55

150:                                              ; preds = %55
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 3
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 3
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 1
  %160 = load i32, i32* %159, align 4
  %161 = mul nsw i32 %155, %160
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 3
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 2
  %166 = load i32, i32* %165, align 4
  %167 = mul nsw i32 %161, %166
  store i32 %167, i32* %5, align 4
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %5, align 4
  %172 = mul nsw i32 %171, 8
  %173 = icmp ne i32 %170, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %150
  %175 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ri, i32 0, i32 1), align 8
  %176 = load i32, i32* @PRINT_WARNING, align 4
  %177 = call i32 %175(i32 %176, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 4
  store i32* null, i32** %179, align 8
  br label %242

180:                                              ; preds = %150
  %181 = load i32* (i32, i32)*, i32* (i32, i32)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ri, i32 0, i32 0), align 8
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @h_low, align 4
  %186 = call i32* %181(i32 %184, i32 %185)
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 4
  store i32* %186, i32** %188, align 8
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 4
  %191 = load i32*, i32** %190, align 8
  %192 = load i64, i64* @fileBase, align 8
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = add nsw i64 %192, %195
  %197 = inttoptr i64 %196 to i8*
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @Com_Memcpy(i32* %191, i8* %197, i32 %200)
  store i32 0, i32* %3, align 4
  br label %202

202:                                              ; preds = %239, %180
  %203 = load i32, i32* %3, align 4
  %204 = load i32, i32* %5, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %242

206:                                              ; preds = %202
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 4
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %3, align 4
  %211 = mul nsw i32 %210, 8
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %209, i64 %212
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 4
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* %3, align 4
  %218 = mul nsw i32 %217, 8
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %216, i64 %219
  %221 = call i32 @R_ColorShiftLightingBytes(i32* %213, i32* %220)
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 4
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %3, align 4
  %226 = mul nsw i32 %225, 8
  %227 = add nsw i32 %226, 3
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %224, i64 %228
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 4
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %3, align 4
  %234 = mul nsw i32 %233, 8
  %235 = add nsw i32 %234, 3
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %232, i64 %236
  %238 = call i32 @R_ColorShiftLightingBytes(i32* %229, i32* %237)
  br label %239

239:                                              ; preds = %206
  %240 = load i32, i32* %3, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %3, align 4
  br label %202

242:                                              ; preds = %174, %202
  ret void
}

declare dso_local i32 @ceil(float) #1

declare dso_local i32 @floor(float) #1

declare dso_local i32 @Com_Memcpy(i32*, i8*, i32) #1

declare dso_local i32 @R_ColorShiftLightingBytes(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
