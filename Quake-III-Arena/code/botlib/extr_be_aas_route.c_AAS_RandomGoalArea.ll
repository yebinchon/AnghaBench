; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_route.c_AAS_RandomGoalArea.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_route.c_AAS_RandomGoalArea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32*, i32 }

@qfalse = common dso_local global i32 0, align 4
@aasworld = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@qtrue = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"area %d center %f %f %f in solid?\00", align 1
@PRESENCE_CROUCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_RandomGoalArea(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_6__, align 8
  %16 = alloca %struct.TYPE_6__, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @AAS_AreaReachability(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @qfalse, align 4
  store i32 %21, i32* %5, align 4
  br label %145

22:                                               ; preds = %4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 0), align 8
  %24 = call i32 (...) @random()
  %25 = mul nsw i32 %23, %24
  store i32 %25, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %140, %22
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 0), align 8
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %143

30:                                               ; preds = %26
  %31 = load i32, i32* %11, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 1, i32* %11, align 4
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 0), align 8
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 1, i32* %11, align 4
  br label %39

39:                                               ; preds = %38, %34
  %40 = load i32, i32* %11, align 4
  %41 = call i64 @AAS_AreaReachability(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %137

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 1), align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @AAS_AreaTravelTimeToGoalArea(i32 %44, i32* %50, i32 %51, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %136

56:                                               ; preds = %43
  %57 = load i32, i32* %11, align 4
  %58 = call i64 @AAS_AreaSwim(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %56
  %61 = load i32, i32* %11, align 4
  %62 = load i32*, i32** %8, align 8
  store i32 %61, i32* %62, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 1), align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = call i32 @VectorCopy(i32* %68, i32* %69)
  %71 = load i32, i32* @qtrue, align 4
  store i32 %71, i32* %5, align 4
  br label %145

72:                                               ; preds = %56
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 1), align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32*, i32** %13, align 8
  %80 = call i32 @VectorCopy(i32* %78, i32* %79)
  %81 = load i32*, i32** %13, align 8
  %82 = call i32 @AAS_PointAreaNum(i32* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %72
  %85 = load i32, i32* %11, align 4
  %86 = load i32*, i32** %13, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %13, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %13, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @Log_Write(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %88, i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %84, %72
  %97 = load i32*, i32** %13, align 8
  %98 = load i32*, i32** %14, align 8
  %99 = call i32 @VectorCopy(i32* %97, i32* %98)
  %100 = load i32*, i32** %14, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 %102, 300
  store i32 %103, i32* %101, align 4
  %104 = load i32*, i32** %13, align 8
  %105 = load i32*, i32** %14, align 8
  %106 = load i32, i32* @PRESENCE_CROUCH, align 4
  call void @AAS_TraceClientBBox(%struct.TYPE_6__* sret %16, i32* %104, i32* %105, i32 %106, i32 -1)
  %107 = bitcast %struct.TYPE_6__* %15 to i8*
  %108 = bitcast %struct.TYPE_6__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %107, i8* align 8 %108, i64 24, i1 false)
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %135, label %112

112:                                              ; preds = %96
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %114, 1
  br i1 %115, label %116, label %135

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @AAS_PointAreaNum(i32* %118)
  %120 = load i32, i32* %11, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %135

122:                                              ; preds = %116
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @AAS_AreaGroundFaceArea(i32 %123)
  %125 = icmp sgt i32 %124, 300
  br i1 %125, label %126, label %134

126:                                              ; preds = %122
  %127 = load i32, i32* %11, align 4
  %128 = load i32*, i32** %8, align 8
  store i32 %127, i32* %128, align 4
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i32*, i32** %9, align 8
  %132 = call i32 @VectorCopy(i32* %130, i32* %131)
  %133 = load i32, i32* @qtrue, align 4
  store i32 %133, i32* %5, align 4
  br label %145

134:                                              ; preds = %122
  br label %135

135:                                              ; preds = %134, %116, %112, %96
  br label %136

136:                                              ; preds = %135, %43
  br label %137

137:                                              ; preds = %136, %39
  %138 = load i32, i32* %11, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %11, align 4
  br label %140

140:                                              ; preds = %137
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %10, align 4
  br label %26

143:                                              ; preds = %26
  %144 = load i32, i32* @qfalse, align 4
  store i32 %144, i32* %5, align 4
  br label %145

145:                                              ; preds = %143, %126, %60, %20
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local i64 @AAS_AreaReachability(i32) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @AAS_AreaTravelTimeToGoalArea(i32, i32*, i32, i32) #1

declare dso_local i64 @AAS_AreaSwim(i32) #1

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local i32 @AAS_PointAreaNum(i32*) #1

declare dso_local i32 @Log_Write(i8*, i32, i32, i32, i32) #1

declare dso_local void @AAS_TraceClientBBox(%struct.TYPE_6__* sret, i32*, i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @AAS_AreaGroundFaceArea(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
