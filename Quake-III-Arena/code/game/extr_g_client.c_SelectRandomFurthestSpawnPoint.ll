; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_client.c_SelectRandomFurthestSpawnPoint.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_client.c_SelectRandomFurthestSpawnPoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@classname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"info_player_deathmatch\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Couldn't find a spawn point\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @SelectRandomFurthestSpawnPoint(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca float, align 4
  %11 = alloca [64 x float], align 16
  %12 = alloca [64 x %struct.TYPE_8__*], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %13, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  br label %17

17:                                               ; preds = %116, %27, %3
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %19 = load i32, i32* @classname, align 4
  %20 = call i32 @FOFS(i32 %19)
  %21 = call %struct.TYPE_8__* @G_Find(%struct.TYPE_8__* %18, i32 %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %8, align 8
  %22 = icmp ne %struct.TYPE_8__* %21, null
  br i1 %22, label %23, label %117

23:                                               ; preds = %17
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %25 = call i64 @SpotWouldTelefrag(%struct.TYPE_8__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %17

28:                                               ; preds = %23
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @VectorSubtract(i32 %32, i32* %33, i32* %34)
  %36 = load i32*, i32** %9, align 8
  %37 = call float @VectorLength(i32* %36)
  store float %37, float* %10, align 4
  store i32 0, i32* %15, align 4
  br label %38

38:                                               ; preds = %95, %28
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %98

42:                                               ; preds = %38
  %43 = load float, float* %10, align 4
  %44 = load i32, i32* %15, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [64 x float], [64 x float]* %11, i64 0, i64 %45
  %47 = load float, float* %46, align 4
  %48 = fcmp ogt float %43, %47
  br i1 %48, label %49, label %94

49:                                               ; preds = %42
  %50 = load i32, i32* %13, align 4
  %51 = icmp sge i32 %50, 64
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 63, i32* %13, align 4
  br label %53

53:                                               ; preds = %52, %49
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %16, align 4
  br label %55

55:                                               ; preds = %76, %53
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %55
  %60 = load i32, i32* %16, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [64 x float], [64 x float]* %11, i64 0, i64 %62
  %64 = load float, float* %63, align 4
  %65 = load i32, i32* %16, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [64 x float], [64 x float]* %11, i64 0, i64 %66
  store float %64, float* %67, align 4
  %68 = load i32, i32* %16, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [64 x %struct.TYPE_8__*], [64 x %struct.TYPE_8__*]* %12, i64 0, i64 %70
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = load i32, i32* %16, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [64 x %struct.TYPE_8__*], [64 x %struct.TYPE_8__*]* %12, i64 0, i64 %74
  store %struct.TYPE_8__* %72, %struct.TYPE_8__** %75, align 8
  br label %76

76:                                               ; preds = %59
  %77 = load i32, i32* %16, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %16, align 4
  br label %55

79:                                               ; preds = %55
  %80 = load float, float* %10, align 4
  %81 = load i32, i32* %15, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [64 x float], [64 x float]* %11, i64 0, i64 %82
  store float %80, float* %83, align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %85 = load i32, i32* %15, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [64 x %struct.TYPE_8__*], [64 x %struct.TYPE_8__*]* %12, i64 0, i64 %86
  store %struct.TYPE_8__* %84, %struct.TYPE_8__** %87, align 8
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = icmp sgt i32 %90, 64
  br i1 %91, label %92, label %93

92:                                               ; preds = %79
  store i32 64, i32* %13, align 4
  br label %93

93:                                               ; preds = %92, %79
  br label %98

94:                                               ; preds = %42
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %15, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %15, align 4
  br label %38

98:                                               ; preds = %93, %38
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %13, align 4
  %101 = icmp sge i32 %99, %100
  br i1 %101, label %102, label %116

102:                                              ; preds = %98
  %103 = load i32, i32* %13, align 4
  %104 = icmp slt i32 %103, 64
  br i1 %104, label %105, label %116

105:                                              ; preds = %102
  %106 = load float, float* %10, align 4
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [64 x float], [64 x float]* %11, i64 0, i64 %108
  store float %106, float* %109, align 4
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %111 = load i32, i32* %13, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [64 x %struct.TYPE_8__*], [64 x %struct.TYPE_8__*]* %12, i64 0, i64 %112
  store %struct.TYPE_8__* %110, %struct.TYPE_8__** %113, align 8
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %13, align 4
  br label %116

116:                                              ; preds = %105, %102, %98
  br label %17

117:                                              ; preds = %17
  %118 = load i32, i32* %13, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %146, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* @classname, align 4
  %122 = call i32 @FOFS(i32 %121)
  %123 = call %struct.TYPE_8__* @G_Find(%struct.TYPE_8__* null, i32 %122, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_8__* %123, %struct.TYPE_8__** %8, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %125 = icmp ne %struct.TYPE_8__* %124, null
  br i1 %125, label %128, label %126

126:                                              ; preds = %120
  %127 = call i32 @G_Error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %120
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %6, align 8
  %134 = call i32 @VectorCopy(i32 %132, i32* %133)
  %135 = load i32*, i32** %6, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 2
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 9
  store i32 %138, i32* %136, align 4
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32*, i32** %7, align 8
  %144 = call i32 @VectorCopy(i32 %142, i32* %143)
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %145, %struct.TYPE_8__** %4, align 8
  br label %177

146:                                              ; preds = %117
  %147 = call i32 (...) @random()
  %148 = load i32, i32* %13, align 4
  %149 = sdiv i32 %148, 2
  %150 = mul nsw i32 %147, %149
  store i32 %150, i32* %14, align 4
  %151 = load i32, i32* %14, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [64 x %struct.TYPE_8__*], [64 x %struct.TYPE_8__*]* %12, i64 0, i64 %152
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %6, align 8
  %159 = call i32 @VectorCopy(i32 %157, i32* %158)
  %160 = load i32*, i32** %6, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 2
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, 9
  store i32 %163, i32* %161, align 4
  %164 = load i32, i32* %14, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [64 x %struct.TYPE_8__*], [64 x %struct.TYPE_8__*]* %12, i64 0, i64 %165
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32*, i32** %7, align 8
  %172 = call i32 @VectorCopy(i32 %170, i32* %171)
  %173 = load i32, i32* %14, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [64 x %struct.TYPE_8__*], [64 x %struct.TYPE_8__*]* %12, i64 0, i64 %174
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %175, align 8
  store %struct.TYPE_8__* %176, %struct.TYPE_8__** %4, align 8
  br label %177

177:                                              ; preds = %146, %128
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %178
}

declare dso_local %struct.TYPE_8__* @G_Find(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @FOFS(i32) #1

declare dso_local i64 @SpotWouldTelefrag(%struct.TYPE_8__*) #1

declare dso_local i32 @VectorSubtract(i32, i32*, i32*) #1

declare dso_local float @VectorLength(i32*) #1

declare dso_local i32 @G_Error(i8*) #1

declare dso_local i32 @VectorCopy(i32, i32*) #1

declare dso_local i32 @random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
