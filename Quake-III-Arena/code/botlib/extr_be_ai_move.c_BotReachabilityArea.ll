; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotReachabilityArea.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotReachabilityArea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32, i64, i32 }
%struct.TYPE_8__ = type { i32*, i32 }

@PRESENCE_CROUCH = common dso_local global i32 0, align 4
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@CONTENTS_PLAYERCLIP = common dso_local global i32 0, align 4
@ENTITYNUM_NONE = common dso_local global i64 0, align 8
@ENTITYNUM_WORLD = common dso_local global i64 0, align 8
@modeltypes = common dso_local global i32* null, align 8
@MODELTYPE_FUNC_PLAT = common dso_local global i32 0, align 4
@MODELTYPE_FUNC_BOB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotReachabilityArea(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_7__, align 8
  %17 = alloca %struct.TYPE_8__, align 8
  %18 = alloca %struct.TYPE_7__, align 8
  %19 = alloca %struct.TYPE_8__, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* null, i32** %15, align 8
  %20 = load i32, i32* @PRESENCE_CROUCH, align 4
  %21 = load i32*, i32** %13, align 8
  %22 = load i32*, i32** %14, align 8
  %23 = call i32 @AAS_PresenceTypeBoundingBox(i32 %20, i32* %21, i32* %22)
  %24 = load i32*, i32** %4, align 8
  %25 = load i32*, i32** %15, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = call i32 @VectorMA(i32* %24, i32 -3, i32* %25, i32* %26)
  %28 = load i32*, i32** %4, align 8
  %29 = load i32*, i32** %13, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @CONTENTS_SOLID, align 4
  %34 = load i32, i32* @CONTENTS_PLAYERCLIP, align 4
  %35 = or i32 %33, %34
  call void @AAS_Trace(%struct.TYPE_7__* sret %18, i32* %28, i32* %29, i32* %30, i32* %31, i32 %32, i32 %35)
  %36 = bitcast %struct.TYPE_7__* %16 to i8*
  %37 = bitcast %struct.TYPE_7__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 24, i1 false)
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %136, label %41

41:                                               ; preds = %2
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %43, 1
  br i1 %44, label %45, label %136

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ENTITYNUM_NONE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %136

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ENTITYNUM_WORLD, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @BotFuzzyPointReachabilityArea(i32* %56)
  store i32 %57, i32* %3, align 4
  br label %139

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @AAS_EntityModelindex(i64 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32*, i32** @modeltypes, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @MODELTYPE_FUNC_PLAT, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %58
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @MODELTYPE_FUNC_BOB, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %70, %58
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @AAS_NextModelReachability(i32 0, i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @AAS_ReachabilityFromNum(i32 %80, %struct.TYPE_9__* %10)
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %3, align 4
  br label %139

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %84, %70
  %86 = load i32*, i32** %4, align 8
  %87 = call i64 @AAS_Swimming(i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @BotFuzzyPointReachabilityArea(i32* %90)
  store i32 %91, i32* %3, align 4
  br label %139

92:                                               ; preds = %85
  %93 = load i32*, i32** %4, align 8
  %94 = call i32 @BotFuzzyPointReachabilityArea(i32* %93)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load i32, i32* %9, align 4
  %99 = call i64 @AAS_AreaReachability(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %3, align 4
  br label %139

103:                                              ; preds = %97, %92
  %104 = load i32*, i32** %4, align 8
  %105 = load i32*, i32** %11, align 8
  %106 = call i32 @VectorCopy(i32* %104, i32* %105)
  %107 = load i32*, i32** %11, align 8
  %108 = load i32*, i32** %12, align 8
  %109 = call i32 @VectorCopy(i32* %107, i32* %108)
  %110 = load i32*, i32** %12, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 2
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %112, 800
  store i32 %113, i32* %111, align 4
  %114 = load i32*, i32** %11, align 8
  %115 = load i32*, i32** %12, align 8
  %116 = load i32, i32* @PRESENCE_CROUCH, align 4
  %117 = call { i32*, i32 } @AAS_TraceClientBBox(i32* %114, i32* %115, i32 %116, i32 -1)
  %118 = bitcast %struct.TYPE_8__* %19 to { i32*, i32 }*
  %119 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %118, i32 0, i32 0
  %120 = extractvalue { i32*, i32 } %117, 0
  store i32* %120, i32** %119, align 8
  %121 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %118, i32 0, i32 1
  %122 = extractvalue { i32*, i32 } %117, 1
  store i32 %122, i32* %121, align 8
  %123 = bitcast %struct.TYPE_8__* %17 to i8*
  %124 = bitcast %struct.TYPE_8__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %123, i8* align 8 %124, i64 16, i1 false)
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %103
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i32*, i32** %11, align 8
  %132 = call i32 @VectorCopy(i32* %130, i32* %131)
  br label %133

133:                                              ; preds = %128, %103
  %134 = load i32*, i32** %11, align 8
  %135 = call i32 @BotFuzzyPointReachabilityArea(i32* %134)
  store i32 %135, i32* %3, align 4
  br label %139

136:                                              ; preds = %45, %41, %2
  %137 = load i32*, i32** %4, align 8
  %138 = call i32 @BotFuzzyPointReachabilityArea(i32* %137)
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %136, %133, %101, %89, %79, %55
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @AAS_PresenceTypeBoundingBox(i32, i32*, i32*) #1

declare dso_local i32 @VectorMA(i32*, i32, i32*, i32*) #1

declare dso_local void @AAS_Trace(%struct.TYPE_7__* sret, i32*, i32*, i32*, i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BotFuzzyPointReachabilityArea(i32*) #1

declare dso_local i32 @AAS_EntityModelindex(i64) #1

declare dso_local i32 @AAS_NextModelReachability(i32, i32) #1

declare dso_local i32 @AAS_ReachabilityFromNum(i32, %struct.TYPE_9__*) #1

declare dso_local i64 @AAS_Swimming(i32*) #1

declare dso_local i64 @AAS_AreaReachability(i32) #1

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local { i32*, i32 } @AAS_TraceClientBBox(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
