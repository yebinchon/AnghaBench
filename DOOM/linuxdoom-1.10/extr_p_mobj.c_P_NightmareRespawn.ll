; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_mobj.c_P_NightmareRespawn.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_mobj.c_P_NightmareRespawn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, %struct.TYPE_20__, i32, %struct.TYPE_17__*, %struct.TYPE_15__* }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }

@FRACBITS = common dso_local global i32 0, align 4
@MT_TFOG = common dso_local global i32 0, align 4
@sfx_telept = common dso_local global i32 0, align 4
@MF_SPAWNCEILING = common dso_local global i32 0, align 4
@ONCEILINGZ = common dso_local global i32 0, align 4
@ONFLOORZ = common dso_local global i32 0, align 4
@ANG45 = common dso_local global i32 0, align 4
@MTF_AMBUSH = common dso_local global i32 0, align 4
@MF_AMBUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @P_NightmareRespawn(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @FRACBITS, align 4
  %14 = shl i32 %12, %13
  store i32 %14, i32* %3, align 4
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @FRACBITS, align 4
  %20 = shl i32 %18, %19
  store i32 %20, i32* %4, align 4
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @P_CheckPosition(%struct.TYPE_19__* %21, i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  br label %114

27:                                               ; preds = %1
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MT_TFOG, align 4
  %42 = call %struct.TYPE_19__* @P_SpawnMobj(i32 %30, i32 %33, i32 %40, i32 %41)
  store %struct.TYPE_19__* %42, %struct.TYPE_19__** %7, align 8
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %44 = load i32, i32* @sfx_telept, align 4
  %45 = call i32 @S_StartSound(%struct.TYPE_19__* %43, i32 %44)
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call %struct.TYPE_18__* @R_PointInSubsector(i32 %46, i32 %47)
  store %struct.TYPE_18__* %48, %struct.TYPE_18__** %6, align 8
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MT_TFOG, align 4
  %57 = call %struct.TYPE_19__* @P_SpawnMobj(i32 %49, i32 %50, i32 %55, i32 %56)
  store %struct.TYPE_19__* %57, %struct.TYPE_19__** %7, align 8
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %59 = load i32, i32* @sfx_telept, align 4
  %60 = call i32 @S_StartSound(%struct.TYPE_19__* %58, i32 %59)
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 5
  store %struct.TYPE_20__* %62, %struct.TYPE_20__** %8, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 7
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @MF_SPAWNCEILING, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %27
  %72 = load i32, i32* @ONCEILINGZ, align 4
  store i32 %72, i32* %5, align 4
  br label %75

73:                                               ; preds = %27
  %74 = load i32, i32* @ONFLOORZ, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = call %struct.TYPE_19__* @P_SpawnMobj(i32 %76, i32 %77, i32 %78, i32 %81)
  store %struct.TYPE_19__* %82, %struct.TYPE_19__** %7, align 8
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 5
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 5
  %87 = bitcast %struct.TYPE_20__* %84 to i8*
  %88 = bitcast %struct.TYPE_20__* %86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %87, i8* align 4 %88, i64 16, i1 false)
  %89 = load i32, i32* @ANG45, align 4
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = sdiv i32 %92, 45
  %94 = mul nsw i32 %89, %93
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @MTF_AMBUSH, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %75
  %104 = load i32, i32* @MF_AMBUSH, align 4
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %103, %75
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 3
  store i32 18, i32* %111, align 4
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %113 = call i32 @P_RemoveMobj(%struct.TYPE_19__* %112)
  br label %114

114:                                              ; preds = %109, %26
  ret void
}

declare dso_local i32 @P_CheckPosition(%struct.TYPE_19__*, i32, i32) #1

declare dso_local %struct.TYPE_19__* @P_SpawnMobj(i32, i32, i32, i32) #1

declare dso_local i32 @S_StartSound(%struct.TYPE_19__*, i32) #1

declare dso_local %struct.TYPE_18__* @R_PointInSubsector(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @P_RemoveMobj(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
