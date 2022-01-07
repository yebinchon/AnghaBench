; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shadows.c_RB_ShadowTessEnd.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shadows.c_RB_ShadowTessEnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, float**, i32, i32* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@tess = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@SHADER_MAX_VERTEXES = common dso_local global i32 0, align 4
@glConfig = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@backEnd = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@numEdgeDefs = common dso_local global i32 0, align 4
@facing = common dso_local global i32* null, align 8
@tr = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@GL_CULL_FACE = common dso_local global i32 0, align 4
@GLS_SRCBLEND_ONE = common dso_local global i32 0, align 4
@GLS_DSTBLEND_ZERO = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i32 0, align 4
@GL_STENCIL_TEST = common dso_local global i32 0, align 4
@GL_ALWAYS = common dso_local global i32 0, align 4
@GL_FRONT = common dso_local global i32 0, align 4
@GL_KEEP = common dso_local global i32 0, align 4
@GL_INCR = common dso_local global i32 0, align 4
@GL_BACK = common dso_local global i32 0, align 4
@GL_DECR = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_ShadowTessEnd() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 0), align 8
  %15 = load i32, i32* @SHADER_MAX_VERTEXES, align 4
  %16 = sdiv i32 %15, 2
  %17 = icmp sge i32 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %0
  br label %211

19:                                               ; preds = %0
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @glConfig, i32 0, i32 0), align 4
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %211

23:                                               ; preds = %19
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @backEnd, i32 0, i32 1), align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @VectorCopy(i32 %26, i32 %27)
  store i32 0, i32* %1, align 4
  br label %29

29:                                               ; preds = %48, %23
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 0), align 8
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %29
  %34 = load float**, float*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 1), align 8
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds float*, float** %34, i64 %36
  %38 = load float*, float** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = load float**, float*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 1), align 8
  %41 = load i32, i32* %1, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 0), align 8
  %43 = add nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float*, float** %40, i64 %44
  %46 = load float*, float** %45, align 8
  %47 = call i32 @VectorMA(float* %38, i32 -512, i32 %39, float* %46)
  br label %48

48:                                               ; preds = %33
  %49 = load i32, i32* %1, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %1, align 4
  br label %29

51:                                               ; preds = %29
  %52 = load i32, i32* @numEdgeDefs, align 4
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 0), align 8
  %54 = mul nsw i32 4, %53
  %55 = call i32 @Com_Memset(i32 %52, i32 0, i32 %54)
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 2), align 8
  %57 = sdiv i32 %56, 3
  store i32 %57, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %58

58:                                               ; preds = %151, %51
  %59 = load i32, i32* %1, align 4
  %60 = load i32, i32* %2, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %154

62:                                               ; preds = %58
  %63 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 3), align 8
  %64 = load i32, i32* %1, align 4
  %65 = mul nsw i32 %64, 3
  %66 = add nsw i32 %65, 0
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %4, align 4
  %70 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 3), align 8
  %71 = load i32, i32* %1, align 4
  %72 = mul nsw i32 %71, 3
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %70, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %5, align 4
  %77 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 3), align 8
  %78 = load i32, i32* %1, align 4
  %79 = mul nsw i32 %78, 3
  %80 = add nsw i32 %79, 2
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %77, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %6, align 4
  %84 = load float**, float*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 1), align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds float*, float** %84, i64 %86
  %88 = load float*, float** %87, align 8
  store float* %88, float** %10, align 8
  %89 = load float**, float*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 1), align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float*, float** %89, i64 %91
  %93 = load float*, float** %92, align 8
  store float* %93, float** %11, align 8
  %94 = load float**, float*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 1), align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float*, float** %94, i64 %96
  %98 = load float*, float** %97, align 8
  store float* %98, float** %12, align 8
  %99 = load float*, float** %11, align 8
  %100 = load float*, float** %10, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @VectorSubtract(float* %99, float* %100, i32 %101)
  %103 = load float*, float** %12, align 8
  %104 = load float*, float** %10, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @VectorSubtract(float* %103, float* %104, i32 %105)
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @CrossProduct(i32 %107, i32 %108, i32 %109)
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %3, align 4
  %113 = call float @DotProduct(i32 %111, i32 %112)
  store float %113, float* %13, align 4
  %114 = load float, float* %13, align 4
  %115 = fcmp ogt float %114, 0.000000e+00
  br i1 %115, label %116, label %121

116:                                              ; preds = %62
  %117 = load i32*, i32** @facing, align 8
  %118 = load i32, i32* %1, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32 1, i32* %120, align 4
  br label %126

121:                                              ; preds = %62
  %122 = load i32*, i32** @facing, align 8
  %123 = load i32, i32* %1, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 0, i32* %125, align 4
  br label %126

126:                                              ; preds = %121, %116
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* %5, align 4
  %129 = load i32*, i32** @facing, align 8
  %130 = load i32, i32* %1, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @R_AddEdgeDef(i32 %127, i32 %128, i32 %133)
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* %6, align 4
  %137 = load i32*, i32** @facing, align 8
  %138 = load i32, i32* %1, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @R_AddEdgeDef(i32 %135, i32 %136, i32 %141)
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* %4, align 4
  %145 = load i32*, i32** @facing, align 8
  %146 = load i32, i32* %1, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @R_AddEdgeDef(i32 %143, i32 %144, i32 %149)
  br label %151

151:                                              ; preds = %126
  %152 = load i32, i32* %1, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %1, align 4
  br label %58

154:                                              ; preds = %58
  %155 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tr, i32 0, i32 0), align 4
  %156 = call i32 @GL_Bind(i32 %155)
  %157 = load i32, i32* @GL_CULL_FACE, align 4
  %158 = call i32 @qglEnable(i32 %157)
  %159 = load i32, i32* @GLS_SRCBLEND_ONE, align 4
  %160 = load i32, i32* @GLS_DSTBLEND_ZERO, align 4
  %161 = or i32 %159, %160
  %162 = call i32 @GL_State(i32 %161)
  %163 = call i32 @qglColor3f(float 0x3FC99999A0000000, float 0x3FC99999A0000000, float 0x3FC99999A0000000)
  %164 = load i32, i32* @GL_FALSE, align 4
  %165 = load i32, i32* @GL_FALSE, align 4
  %166 = load i32, i32* @GL_FALSE, align 4
  %167 = load i32, i32* @GL_FALSE, align 4
  %168 = call i32 @qglColorMask(i32 %164, i32 %165, i32 %166, i32 %167)
  %169 = load i32, i32* @GL_STENCIL_TEST, align 4
  %170 = call i32 @qglEnable(i32 %169)
  %171 = load i32, i32* @GL_ALWAYS, align 4
  %172 = call i32 @qglStencilFunc(i32 %171, i32 1, i32 255)
  %173 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @backEnd, i32 0, i32 0, i32 0), align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %190

175:                                              ; preds = %154
  %176 = load i32, i32* @GL_FRONT, align 4
  %177 = call i32 @qglCullFace(i32 %176)
  %178 = load i32, i32* @GL_KEEP, align 4
  %179 = load i32, i32* @GL_KEEP, align 4
  %180 = load i32, i32* @GL_INCR, align 4
  %181 = call i32 @qglStencilOp(i32 %178, i32 %179, i32 %180)
  %182 = call i32 (...) @R_RenderShadowEdges()
  %183 = load i32, i32* @GL_BACK, align 4
  %184 = call i32 @qglCullFace(i32 %183)
  %185 = load i32, i32* @GL_KEEP, align 4
  %186 = load i32, i32* @GL_KEEP, align 4
  %187 = load i32, i32* @GL_DECR, align 4
  %188 = call i32 @qglStencilOp(i32 %185, i32 %186, i32 %187)
  %189 = call i32 (...) @R_RenderShadowEdges()
  br label %205

190:                                              ; preds = %154
  %191 = load i32, i32* @GL_BACK, align 4
  %192 = call i32 @qglCullFace(i32 %191)
  %193 = load i32, i32* @GL_KEEP, align 4
  %194 = load i32, i32* @GL_KEEP, align 4
  %195 = load i32, i32* @GL_INCR, align 4
  %196 = call i32 @qglStencilOp(i32 %193, i32 %194, i32 %195)
  %197 = call i32 (...) @R_RenderShadowEdges()
  %198 = load i32, i32* @GL_FRONT, align 4
  %199 = call i32 @qglCullFace(i32 %198)
  %200 = load i32, i32* @GL_KEEP, align 4
  %201 = load i32, i32* @GL_KEEP, align 4
  %202 = load i32, i32* @GL_DECR, align 4
  %203 = call i32 @qglStencilOp(i32 %200, i32 %201, i32 %202)
  %204 = call i32 (...) @R_RenderShadowEdges()
  br label %205

205:                                              ; preds = %190, %175
  %206 = load i32, i32* @GL_TRUE, align 4
  %207 = load i32, i32* @GL_TRUE, align 4
  %208 = load i32, i32* @GL_TRUE, align 4
  %209 = load i32, i32* @GL_TRUE, align 4
  %210 = call i32 @qglColorMask(i32 %206, i32 %207, i32 %208, i32 %209)
  br label %211

211:                                              ; preds = %205, %22, %18
  ret void
}

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @VectorMA(float*, i32, i32, float*) #1

declare dso_local i32 @Com_Memset(i32, i32, i32) #1

declare dso_local i32 @VectorSubtract(float*, float*, i32) #1

declare dso_local i32 @CrossProduct(i32, i32, i32) #1

declare dso_local float @DotProduct(i32, i32) #1

declare dso_local i32 @R_AddEdgeDef(i32, i32, i32) #1

declare dso_local i32 @GL_Bind(i32) #1

declare dso_local i32 @qglEnable(i32) #1

declare dso_local i32 @GL_State(i32) #1

declare dso_local i32 @qglColor3f(float, float, float) #1

declare dso_local i32 @qglColorMask(i32, i32, i32, i32) #1

declare dso_local i32 @qglStencilFunc(i32, i32, i32) #1

declare dso_local i32 @qglCullFace(i32) #1

declare dso_local i32 @qglStencilOp(i32, i32, i32) #1

declare dso_local i32 @R_RenderShadowEdges(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
