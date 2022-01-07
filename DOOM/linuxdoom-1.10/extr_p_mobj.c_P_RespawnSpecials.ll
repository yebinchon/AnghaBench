; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_mobj.c_P_RespawnSpecials.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_mobj.c_P_RespawnSpecials.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i64, i32 }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__ }

@deathmatch = common dso_local global i32 0, align 4
@iquehead = common dso_local global i64 0, align 8
@iquetail = common dso_local global i64 0, align 8
@leveltime = common dso_local global i32 0, align 4
@itemrespawntime = common dso_local global i32* null, align 8
@itemrespawnque = common dso_local global %struct.TYPE_13__* null, align 8
@FRACBITS = common dso_local global i32 0, align 4
@MT_IFOG = common dso_local global i32 0, align 4
@sfx_itmbk = common dso_local global i32 0, align 4
@NUMMOBJTYPES = common dso_local global i32 0, align 4
@mobjinfo = common dso_local global %struct.TYPE_14__* null, align 8
@MF_SPAWNCEILING = common dso_local global i32 0, align 4
@ONCEILINGZ = common dso_local global i32 0, align 4
@ONFLOORZ = common dso_local global i32 0, align 4
@ANG45 = common dso_local global i32 0, align 4
@ITEMQUESIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @P_RespawnSpecials() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = load i32, i32* @deathmatch, align 4
  %9 = icmp ne i32 %8, 2
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %113

11:                                               ; preds = %0
  %12 = load i64, i64* @iquehead, align 8
  %13 = load i64, i64* @iquetail, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %113

16:                                               ; preds = %11
  %17 = load i32, i32* @leveltime, align 4
  %18 = load i32*, i32** @itemrespawntime, align 8
  %19 = load i64, i64* @iquetail, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %17, %21
  %23 = icmp slt i32 %22, 1050
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %113

25:                                               ; preds = %16
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** @itemrespawnque, align 8
  %27 = load i64, i64* @iquetail, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i64 %27
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** %6, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @FRACBITS, align 4
  %33 = shl i32 %31, %32
  store i32 %33, i32* %1, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @FRACBITS, align 4
  %38 = shl i32 %36, %37
  store i32 %38, i32* %2, align 4
  %39 = load i32, i32* %1, align 4
  %40 = load i32, i32* %2, align 4
  %41 = call %struct.TYPE_11__* @R_PointInSubsector(i32 %39, i32 %40)
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %4, align 8
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* %2, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MT_IFOG, align 4
  %50 = call %struct.TYPE_12__* @P_SpawnMobj(i32 %42, i32 %43, i32 %48, i32 %49)
  store %struct.TYPE_12__* %50, %struct.TYPE_12__** %5, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %52 = load i32, i32* @sfx_itmbk, align 4
  %53 = call i32 @S_StartSound(%struct.TYPE_12__* %51, i32 %52)
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %71, %25
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @NUMMOBJTYPES, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %54
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** @mobjinfo, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %61, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  br label %74

70:                                               ; preds = %58
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %54

74:                                               ; preds = %69, %54
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** @mobjinfo, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @MF_SPAWNCEILING, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %74
  %85 = load i32, i32* @ONCEILINGZ, align 4
  store i32 %85, i32* %3, align 4
  br label %88

86:                                               ; preds = %74
  %87 = load i32, i32* @ONFLOORZ, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = load i32, i32* %1, align 4
  %90 = load i32, i32* %2, align 4
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call %struct.TYPE_12__* @P_SpawnMobj(i32 %89, i32 %90, i32 %91, i32 %92)
  store %struct.TYPE_12__* %93, %struct.TYPE_12__** %5, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %97 = bitcast %struct.TYPE_13__* %95 to i8*
  %98 = bitcast %struct.TYPE_13__* %96 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %97, i8* align 8 %98, i64 24, i1 false)
  %99 = load i32, i32* @ANG45, align 4
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = sdiv i32 %102, 45
  %104 = mul nsw i32 %99, %103
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load i64, i64* @iquetail, align 8
  %108 = add i64 %107, 1
  %109 = load i32, i32* @ITEMQUESIZE, align 4
  %110 = sub nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = and i64 %108, %111
  store i64 %112, i64* @iquetail, align 8
  br label %113

113:                                              ; preds = %88, %24, %15, %10
  ret void
}

declare dso_local %struct.TYPE_11__* @R_PointInSubsector(i32, i32) #1

declare dso_local %struct.TYPE_12__* @P_SpawnMobj(i32, i32, i32, i32) #1

declare dso_local i32 @S_StartSound(%struct.TYPE_12__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
