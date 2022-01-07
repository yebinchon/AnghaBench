; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_mover.c_SP_func_door.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_mover.c_SP_func_door.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i64, i32, i64, i32*, i32*, %struct.TYPE_9__, i32*, %struct.TYPE_8__, i32, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_9__ = type { i32*, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"sound/movers/doors/dr1_strt.wav\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"sound/movers/doors/dr1_end.wav\00", align 1
@Blocked_Door = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"lip\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"dmg\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@level = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@FRAMETIME = common dso_local global i64 0, align 8
@FL_TEAMSLAVE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"health\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@qtrue = common dso_local global i32 0, align 4
@Think_MatchTeam = common dso_local global i32 0, align 4
@Think_SpawnNewDoorTrigger = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SP_func_door(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca float, align 4
  %5 = alloca i32*, align 8
  %6 = alloca float, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %9 = call i8* @G_SoundIndex(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 18
  store i8* %9, i8** %11, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 19
  store i8* %9, i8** %13, align 8
  %14 = call i8* @G_SoundIndex(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 16
  store i8* %14, i8** %16, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 17
  store i8* %14, i8** %18, align 8
  %19 = load i32, i32* @Blocked_Door, align 4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 15
  store i32 %19, i32* %21, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  store i32 400, i32* %28, align 8
  br label %29

29:                                               ; preds = %26, %1
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  store i32 2, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %29
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %40, 1000
  store i32 %41, i32* %39, align 4
  %42 = call i32 @G_SpawnFloat(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), float* %6)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 2
  %45 = call i32 @G_SpawnInt(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32* %44)
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 11
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 9
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @VectorCopy(i32* %49, i32* %52)
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 14
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @trap_SetBrushModel(%struct.TYPE_10__* %54, i32 %57)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 11
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 12
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @G_SetMovedir(i32 %62, i32* %65)
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 12
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @fabs(i32 %71)
  %73 = load i32*, i32** %3, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 12
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @fabs(i32 %79)
  %81 = load i32*, i32** %3, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 12
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @fabs(i32 %87)
  %89 = load i32*, i32** %3, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  store i32 %88, i32* %90, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 13
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 13
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32*, i32** %5, align 8
  %100 = call i32 @VectorSubtract(i32 %94, i32 %98, i32* %99)
  %101 = load i32*, i32** %3, align 8
  %102 = load i32*, i32** %5, align 8
  %103 = call float @DotProduct(i32* %101, i32* %102)
  %104 = load float, float* %6, align 4
  %105 = fsub float %103, %104
  store float %105, float* %4, align 4
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 9
  %108 = load i32*, i32** %107, align 8
  %109 = load float, float* %4, align 4
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 12
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 10
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @VectorMA(i32* %108, float %109, i32* %112, i32* %115)
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 1
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %141

122:                                              ; preds = %37
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 10
  %125 = load i32*, i32** %124, align 8
  %126 = load i32*, i32** %7, align 8
  %127 = call i32 @VectorCopy(i32* %125, i32* %126)
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 11
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 10
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @VectorCopy(i32* %131, i32* %134)
  %136 = load i32*, i32** %7, align 8
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 9
  %139 = load i32*, i32** %138, align 8
  %140 = call i32 @VectorCopy(i32* %136, i32* %139)
  br label %141

141:                                              ; preds = %122, %37
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %143 = call i32 @InitMover(%struct.TYPE_10__* %142)
  %144 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @level, i32 0, i32 0), align 8
  %145 = load i64, i64* @FRAMETIME, align 8
  %146 = add nsw i64 %144, %145
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 8
  store i64 %146, i64* %148, align 8
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @FL_TEAMSLAVE, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %180, label %155

155:                                              ; preds = %141
  %156 = call i32 @G_SpawnInt(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32* %8)
  %157 = load i32, i32* %8, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %155
  %160 = load i32, i32* @qtrue, align 4
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 7
  store i32 %160, i32* %162, align 8
  br label %163

163:                                              ; preds = %159, %155
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 6
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %163
  %169 = load i32, i32* %8, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %168, %163
  %172 = load i32, i32* @Think_MatchTeam, align 4
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 5
  store i32 %172, i32* %174, align 4
  br label %179

175:                                              ; preds = %168
  %176 = load i32, i32* @Think_SpawnNewDoorTrigger, align 4
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 5
  store i32 %176, i32* %178, align 4
  br label %179

179:                                              ; preds = %175, %171
  br label %180

180:                                              ; preds = %179, %141
  ret void
}

declare dso_local i8* @G_SoundIndex(i8*) #1

declare dso_local i32 @G_SpawnFloat(i8*, i8*, float*) #1

declare dso_local i32 @G_SpawnInt(i8*, i8*, i32*) #1

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local i32 @trap_SetBrushModel(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @G_SetMovedir(i32, i32*) #1

declare dso_local i32 @fabs(i32) #1

declare dso_local i32 @VectorSubtract(i32, i32, i32*) #1

declare dso_local float @DotProduct(i32*, i32*) #1

declare dso_local i32 @VectorMA(i32*, float, i32*, i32*) #1

declare dso_local i32 @InitMover(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
