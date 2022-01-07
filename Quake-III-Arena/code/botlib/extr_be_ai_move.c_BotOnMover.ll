; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotOnMover.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotOnMover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (i32, i8*, i32)* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32, i32 }

@botimport = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@PRT_MESSAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"no entity with model %d\0A\00", align 1
@qfalse = common dso_local global i32 0, align 4
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@CONTENTS_PLAYERCLIP = common dso_local global i32 0, align 4
@ENTITYNUM_NONE = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotOnMover(i64* %0, i32 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca %struct.TYPE_6__, align 8
  %19 = alloca %struct.TYPE_6__, align 8
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store i64* null, i64** %15, align 8
  store i64* inttoptr (i64 -16 to i64*), i64** %16, align 8
  store i64* inttoptr (i64 16 to i64*), i64** %17, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 65535
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i64*, i64** %15, align 8
  %26 = load i64*, i64** %10, align 8
  %27 = load i64*, i64** %11, align 8
  %28 = call i32 @AAS_BSPModelMinsMaxsOrigin(i32 %24, i64* %25, i64* %26, i64* %27, i32* null)
  %29 = load i32, i32* %9, align 4
  %30 = load i64*, i64** %12, align 8
  %31 = call i32 @AAS_OriginOfMoverWithModelNum(i32 %29, i64* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %3
  %34 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @botimport, i32 0, i32 0), align 8
  %35 = load i32, i32* @PRT_MESSAGE, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 %34(i32 %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @qfalse, align 4
  store i32 %38, i32* %4, align 4
  br label %143

39:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %86, %39
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 2
  br i1 %42, label %43, label %89

43:                                               ; preds = %40
  %44 = load i64*, i64** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %12, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %11, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %53, %58
  %60 = add nsw i64 %59, 16
  %61 = icmp sgt i64 %48, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %43
  %63 = load i32, i32* @qfalse, align 4
  store i32 %63, i32* %4, align 4
  br label %143

64:                                               ; preds = %43
  %65 = load i64*, i64** %5, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = load i64*, i64** %12, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = load i64*, i64** %10, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %74, %79
  %81 = sub nsw i64 %80, 16
  %82 = icmp slt i64 %69, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %64
  %84 = load i32, i32* @qfalse, align 4
  store i32 %84, i32* %4, align 4
  br label %143

85:                                               ; preds = %64
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %40

89:                                               ; preds = %40
  %90 = load i64*, i64** %5, align 8
  %91 = load i64*, i64** %13, align 8
  %92 = call i32 @VectorCopy(i64* %90, i64* %91)
  %93 = load i64*, i64** %13, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 2
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, 24
  store i64 %96, i64* %94, align 8
  %97 = load i64*, i64** %5, align 8
  %98 = load i64*, i64** %14, align 8
  %99 = call i32 @VectorCopy(i64* %97, i64* %98)
  %100 = load i64*, i64** %14, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 2
  %102 = load i64, i64* %101, align 8
  %103 = sub nsw i64 %102, 48
  store i64 %103, i64* %101, align 8
  %104 = load i64*, i64** %13, align 8
  %105 = load i64*, i64** %16, align 8
  %106 = load i64*, i64** %17, align 8
  %107 = load i64*, i64** %14, align 8
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @CONTENTS_SOLID, align 4
  %110 = load i32, i32* @CONTENTS_PLAYERCLIP, align 4
  %111 = or i32 %109, %110
  %112 = call { i64, i64 } @AAS_Trace(i64* %104, i64* %105, i64* %106, i64* %107, i32 %108, i32 %111)
  %113 = bitcast %struct.TYPE_6__* %19 to { i64, i64 }*
  %114 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %113, i32 0, i32 0
  %115 = extractvalue { i64, i64 } %112, 0
  store i64 %115, i64* %114, align 8
  %116 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %113, i32 0, i32 1
  %117 = extractvalue { i64, i64 } %112, 1
  store i64 %117, i64* %116, align 8
  %118 = bitcast %struct.TYPE_6__* %18 to i8*
  %119 = bitcast %struct.TYPE_6__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %118, i8* align 8 %119, i64 16, i1 false)
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %141, label %123

123:                                              ; preds = %89
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %141, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @ENTITYNUM_NONE, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @AAS_EntityModelNum(i64 %134)
  %136 = load i32, i32* %9, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = load i32, i32* @qtrue, align 4
  store i32 %139, i32* %4, align 4
  br label %143

140:                                              ; preds = %132, %127
  br label %141

141:                                              ; preds = %140, %123, %89
  %142 = load i32, i32* @qfalse, align 4
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %141, %138, %83, %62, %33
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i32 @AAS_BSPModelMinsMaxsOrigin(i32, i64*, i64*, i64*, i32*) #1

declare dso_local i32 @AAS_OriginOfMoverWithModelNum(i32, i64*) #1

declare dso_local i32 @VectorCopy(i64*, i64*) #1

declare dso_local { i64, i64 } @AAS_Trace(i64*, i64*, i64*, i64*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @AAS_EntityModelNum(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
