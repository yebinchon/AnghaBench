; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotOnTopOfEntity.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotOnTopOfEntity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i64, i32 }

@__const.BotOnTopOfEntity.up = private unnamed_addr constant %struct.TYPE_13__ { i32 0, i32 0, i32 1 }, align 4
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@CONTENTS_PLAYERCLIP = common dso_local global i32 0, align 4
@ENTITYNUM_WORLD = common dso_local global i64 0, align 8
@ENTITYNUM_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotOnTopOfEntity(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_13__, align 4
  %5 = alloca %struct.TYPE_13__, align 4
  %6 = alloca %struct.TYPE_13__, align 8
  %7 = alloca %struct.TYPE_13__, align 4
  %8 = alloca %struct.TYPE_14__, align 8
  %9 = alloca { i64, i32 }, align 4
  %10 = alloca { i64, i32 }, align 4
  %11 = alloca { i64, i32 }, align 4
  %12 = alloca { i64, i32 }, align 4
  %13 = alloca %struct.TYPE_14__, align 8
  %14 = alloca { i64, i32 }, align 4
  %15 = alloca { i64, i32 }, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %16 = bitcast %struct.TYPE_13__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.TYPE_13__* @__const.BotOnTopOfEntity.up to i8*), i64 12, i1 false)
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = bitcast { i64, i32 }* %9 to i8*
  %21 = bitcast %struct.TYPE_13__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 12, i1 false)
  %22 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  %23 = load i64, i64* %22, align 4
  %24 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = bitcast { i64, i32 }* %10 to i8*
  %27 = bitcast %struct.TYPE_13__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 12, i1 false)
  %28 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  %29 = load i64, i64* %28, align 4
  %30 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @AAS_PresenceTypeBoundingBox(i32 %19, i64 %23, i32 %25, i64 %29, i32 %31)
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = bitcast { i64, i32 }* %11 to i8*
  %37 = bitcast %struct.TYPE_13__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 12, i1 false)
  %38 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 0
  %39 = load i64, i64* %38, align 4
  %40 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = bitcast { i64, i32 }* %12 to i8*
  %43 = bitcast %struct.TYPE_13__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 12, i1 false)
  %44 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  %45 = load i64, i64* %44, align 4
  %46 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @VectorMA(i32 %35, i32 -3, i64 %39, i32 %41, i64 %45, i32 %47)
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @CONTENTS_SOLID, align 4
  %56 = load i32, i32* @CONTENTS_PLAYERCLIP, align 4
  %57 = or i32 %55, %56
  %58 = bitcast { i64, i32 }* %14 to i8*
  %59 = bitcast %struct.TYPE_13__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 4 %59, i64 12, i1 false)
  %60 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 0
  %61 = load i64, i64* %60, align 4
  %62 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = bitcast { i64, i32 }* %15 to i8*
  %65 = bitcast %struct.TYPE_13__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %64, i8* align 4 %65, i64 12, i1 false)
  %66 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 0
  %67 = load i64, i64* %66, align 4
  %68 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call { i64, i32 } @AAS_Trace(i32 %51, i64 %61, i32 %63, i64 %67, i32 %69, %struct.TYPE_13__* byval(%struct.TYPE_13__) align 8 %6, i32 %54, i32 %57)
  %71 = bitcast %struct.TYPE_14__* %13 to { i64, i32 }*
  %72 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %71, i32 0, i32 0
  %73 = extractvalue { i64, i32 } %70, 0
  store i64 %73, i64* %72, align 8
  %74 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %71, i32 0, i32 1
  %75 = extractvalue { i64, i32 } %70, 1
  store i32 %75, i32* %74, align 8
  %76 = bitcast %struct.TYPE_14__* %8 to i8*
  %77 = bitcast %struct.TYPE_14__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %76, i8* align 8 %77, i64 16, i1 false)
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %95, label %81

81:                                               ; preds = %1
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @ENTITYNUM_WORLD, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @ENTITYNUM_NONE, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %2, align 4
  br label %96

95:                                               ; preds = %86, %81, %1
  store i32 -1, i32* %2, align 4
  br label %96

96:                                               ; preds = %95, %91
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @AAS_PresenceTypeBoundingBox(i32, i64, i32, i64, i32) #2

declare dso_local i32 @VectorMA(i32, i32, i64, i32, i64, i32) #2

declare dso_local { i64, i32 } @AAS_Trace(i32, i64, i32, i64, i32, %struct.TYPE_13__* byval(%struct.TYPE_13__) align 8, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
