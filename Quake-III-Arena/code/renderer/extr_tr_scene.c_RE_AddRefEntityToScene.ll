; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_scene.c_RE_AddRefEntityToScene.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_scene.c_RE_AddRefEntityToScene.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_10__ = type { i32 (i32, i8*, i64)* }
%struct.TYPE_11__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@tr = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@r_numentities = common dso_local global i64 0, align 8
@ENTITYNUM_WORLD = common dso_local global i64 0, align 8
@RT_MAX_REF_ENTITY_TYPE = common dso_local global i64 0, align 8
@ri = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"RE_AddRefEntityToScene: bad reType %i\00", align 1
@backEndData = common dso_local global %struct.TYPE_11__** null, align 8
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RE_AddRefEntityToScene(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tr, i32 0, i32 1), align 8
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %54

6:                                                ; preds = %1
  %7 = load i64, i64* @r_numentities, align 8
  %8 = load i64, i64* @ENTITYNUM_WORLD, align 8
  %9 = icmp uge i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %54

11:                                               ; preds = %6
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %11
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @RT_MAX_REF_ENTITY_TYPE, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16, %11
  %23 = load i32 (i32, i8*, i64)*, i32 (i32, i8*, i64)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ri, i32 0, i32 0), align 8
  %24 = load i32, i32* @ERR_DROP, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 %23(i32 %24, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %27)
  br label %29

29:                                               ; preds = %22, %16
  %30 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @backEndData, align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tr, i32 0, i32 0), align 8
  %32 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %30, i64 %31
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = load i64, i64* @r_numentities, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %40 = bitcast %struct.TYPE_8__* %38 to i8*
  %41 = bitcast %struct.TYPE_8__* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 8, i1 false)
  %42 = load i32, i32* @qfalse, align 4
  %43 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @backEndData, align 8
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tr, i32 0, i32 0), align 8
  %45 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %43, i64 %44
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = load i64, i64* @r_numentities, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i32 %42, i32* %51, align 8
  %52 = load i64, i64* @r_numentities, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* @r_numentities, align 8
  br label %54

54:                                               ; preds = %29, %10, %5
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
