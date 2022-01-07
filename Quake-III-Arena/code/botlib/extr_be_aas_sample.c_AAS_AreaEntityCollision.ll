; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_sample.c_AAS_AreaEntityCollision.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_sample.c_AAS_AreaEntityCollision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@qfalse = common dso_local global i32 0, align 4
@aasworld = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@CONTENTS_PLAYERCLIP = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_AreaEntityCollision(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.TYPE_9__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca %struct.TYPE_8__, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %13, align 8
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %15, align 4
  %21 = load i32, i32* %16, align 4
  %22 = call i32 @AAS_PresenceTypeBoundingBox(i32 %19, i32 %20, i32 %21)
  %23 = call i32 @Com_Memset(%struct.TYPE_8__* %18, i32 0, i32 16)
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load i32, i32* @qfalse, align 4
  store i32 %25, i32* %14, align 4
  %26 = load %struct.TYPE_10__**, %struct.TYPE_10__*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @aasworld, i32 0, i32 0), align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %26, i64 %28
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %17, align 8
  br label %31

31:                                               ; preds = %57, %6
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %33 = icmp ne %struct.TYPE_10__* %32, null
  br i1 %33, label %34, label %61

34:                                               ; preds = %31
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %12, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %57

41:                                               ; preds = %34
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @CONTENTS_SOLID, align 4
  %50 = load i32, i32* @CONTENTS_PLAYERCLIP, align 4
  %51 = or i32 %49, %50
  %52 = call i64 @AAS_EntityCollision(i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %51, %struct.TYPE_8__* %18)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %41
  %55 = load i32, i32* @qtrue, align 4
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %54, %41
  br label %57

57:                                               ; preds = %56, %40
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  store %struct.TYPE_10__* %60, %struct.TYPE_10__** %17, align 8
  br label %31

61:                                               ; preds = %31
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @VectorCopy(i32 %74, i32 %77)
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  %83 = load i32, i32* @qtrue, align 4
  store i32 %83, i32* %7, align 4
  br label %86

84:                                               ; preds = %61
  %85 = load i32, i32* @qfalse, align 4
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %84, %64
  %87 = load i32, i32* %7, align 4
  ret i32 %87
}

declare dso_local i32 @AAS_PresenceTypeBoundingBox(i32, i32, i32) #1

declare dso_local i32 @Com_Memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @AAS_EntityCollision(i32, i32, i32, i32, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
