; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotGapDistance.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotGapDistance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { float }
%struct.TYPE_5__ = type { i32, i32*, i32 }

@PRESENCE_CROUCH = common dso_local global i32 0, align 4
@sv_maxbarrier = common dso_local global %struct.TYPE_7__* null, align 8
@sv_maxstep = common dso_local global %struct.TYPE_6__* null, align 8
@CONTENTS_WATER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @BotGapDistance(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_5__, align 8
  %13 = alloca %struct.TYPE_5__, align 8
  %14 = alloca %struct.TYPE_5__, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  %17 = load i32, i32* %16, align 4
  %18 = sitofp i32 %17 to float
  store float %18, float* %9, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = call i32 @VectorCopy(i32* %19, i32* %20)
  %22 = load i32*, i32** %5, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = call i32 @VectorCopy(i32* %22, i32* %23)
  %25 = load i32*, i32** %11, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 60
  store i32 %28, i32* %26, align 4
  %29 = load i32*, i32** %10, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = load i32, i32* @PRESENCE_CROUCH, align 4
  %32 = load i32, i32* %7, align 4
  call void @AAS_TraceClientBBox(%struct.TYPE_5__* sret %13, i32* %29, i32* %30, i32 %31, i32 %32)
  %33 = bitcast %struct.TYPE_5__* %12 to i8*
  %34 = bitcast %struct.TYPE_5__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 24, i1 false)
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sge i32 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %3
  store float 1.000000e+00, float* %4, align 4
  br label %123

39:                                               ; preds = %3
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  %45 = sitofp i32 %44 to float
  store float %45, float* %9, align 4
  store float 8.000000e+00, float* %8, align 4
  br label %46

46:                                               ; preds = %119, %39
  %47 = load float, float* %8, align 4
  %48 = fcmp ole float %47, 1.000000e+02
  br i1 %48, label %49, label %122

49:                                               ; preds = %46
  %50 = load i32*, i32** %5, align 8
  %51 = load float, float* %8, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @VectorMA(i32* %50, float %51, i32* %52, i32* %53)
  %55 = load float, float* %9, align 4
  %56 = fadd float %55, 2.400000e+01
  %57 = fptosi float %56 to i32
  %58 = load i32*, i32** %10, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  store i32 %57, i32* %59, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 @VectorCopy(i32* %60, i32* %61)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sv_maxbarrier, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 48, %65
  %67 = load i32*, i32** %11, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = sub nsw i64 %70, %66
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %68, align 4
  %73 = load i32*, i32** %10, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = load i32, i32* @PRESENCE_CROUCH, align 4
  %76 = load i32, i32* %7, align 4
  call void @AAS_TraceClientBBox(%struct.TYPE_5__* sret %14, i32* %73, i32* %74, i32 %75, i32 %76)
  %77 = bitcast %struct.TYPE_5__* %12 to i8*
  %78 = bitcast %struct.TYPE_5__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* align 8 %78, i64 24, i1 false)
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %118, label %82

82:                                               ; preds = %49
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  %86 = load i32, i32* %85, align 4
  %87 = sitofp i32 %86 to float
  %88 = load float, float* %9, align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sv_maxstep, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load float, float* %90, align 4
  %92 = fsub float %88, %91
  %93 = fsub float %92, 8.000000e+00
  %94 = fcmp olt float %87, %93
  br i1 %94, label %95, label %112

95:                                               ; preds = %82
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32*, i32** %11, align 8
  %99 = call i32 @VectorCopy(i32* %97, i32* %98)
  %100 = load i32*, i32** %11, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 %102, 20
  store i32 %103, i32* %101, align 4
  %104 = load i32*, i32** %11, align 8
  %105 = call i32 @AAS_PointContents(i32* %104)
  %106 = load i32, i32* @CONTENTS_WATER, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %95
  br label %122

110:                                              ; preds = %95
  %111 = load float, float* %8, align 4
  store float %111, float* %4, align 4
  br label %123

112:                                              ; preds = %82
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 2
  %116 = load i32, i32* %115, align 4
  %117 = sitofp i32 %116 to float
  store float %117, float* %9, align 4
  br label %118

118:                                              ; preds = %112, %49
  br label %119

119:                                              ; preds = %118
  %120 = load float, float* %8, align 4
  %121 = fadd float %120, 8.000000e+00
  store float %121, float* %8, align 4
  br label %46

122:                                              ; preds = %109, %46
  store float 0.000000e+00, float* %4, align 4
  br label %123

123:                                              ; preds = %122, %110, %38
  %124 = load float, float* %4, align 4
  ret float %124
}

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local void @AAS_TraceClientBBox(%struct.TYPE_5__* sret, i32*, i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @VectorMA(i32*, float, i32*, i32*) #1

declare dso_local i32 @AAS_PointContents(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
