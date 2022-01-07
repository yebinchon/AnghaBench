; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_enemy.c_A_PainShootSkull.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_enemy.c_A_PainShootSkull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_16__*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i64, i32, i64, i64, i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }

@thinkercap = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@P_MobjThinker = common dso_local global i64 0, align 8
@MT_SKULL = common dso_local global i64 0, align 8
@ANGLETOFINESHIFT = common dso_local global i64 0, align 8
@FRACUNIT = common dso_local global i32 0, align 4
@mobjinfo = common dso_local global %struct.TYPE_18__* null, align 8
@finecosine = common dso_local global i32* null, align 8
@finesine = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @A_PainShootSkull(%struct.TYPE_17__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @thinkercap, i32 0, i32 0), align 8
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %12, align 8
  br label %14

14:                                               ; preds = %34, %2
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %16 = icmp ne %struct.TYPE_16__* %15, @thinkercap
  br i1 %16, label %17, label %38

17:                                               ; preds = %14
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @P_MobjThinker, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %17
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %26 = bitcast %struct.TYPE_16__* %25 to %struct.TYPE_17__*
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MT_SKULL, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* %11, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %31, %24, %17
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  store %struct.TYPE_16__* %37, %struct.TYPE_16__** %12, align 8
  br label %14

38:                                               ; preds = %14
  %39 = load i32, i32* %11, align 4
  %40 = icmp sgt i32 %39, 20
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %116

42:                                               ; preds = %38
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* @ANGLETOFINESHIFT, align 8
  %45 = lshr i64 %43, %44
  store i64 %45, i64* %9, align 8
  %46 = load i32, i32* @FRACUNIT, align 4
  %47 = mul nsw i32 4, %46
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 5
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** @mobjinfo, align 8
  %54 = load i64, i64* @MT_SKULL, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %52, %57
  %59 = mul nsw i32 3, %58
  %60 = sdiv i32 %59, 2
  %61 = add nsw i32 %47, %60
  store i32 %61, i32* %10, align 4
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32*, i32** @finecosine, align 8
  %67 = load i64, i64* %9, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @FixedMul(i32 %65, i32 %69)
  %71 = add nsw i64 %64, %70
  store i64 %71, i64* %5, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i32*, i32** @finesine, align 8
  %77 = load i64, i64* %9, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @FixedMul(i32 %75, i32 %79)
  %81 = add nsw i64 %74, %80
  store i64 %81, i64* %6, align 8
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* @FRACUNIT, align 4
  %86 = mul nsw i32 8, %85
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %84, %87
  store i64 %88, i64* %7, align 8
  %89 = load i64, i64* %5, align 8
  %90 = load i64, i64* %6, align 8
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* @MT_SKULL, align 8
  %93 = call %struct.TYPE_17__* @P_SpawnMobj(i64 %89, i64 %90, i64 %91, i64 %92)
  store %struct.TYPE_17__* %93, %struct.TYPE_17__** %8, align 8
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @P_TryMove(%struct.TYPE_17__* %94, i64 %97, i64 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %42
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %107 = call i32 @P_DamageMobj(%struct.TYPE_17__* %104, %struct.TYPE_17__* %105, %struct.TYPE_17__* %106, i32 10000)
  br label %116

108:                                              ; preds = %42
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 8
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %115 = call i32 @A_SkullAttack(%struct.TYPE_17__* %114)
  br label %116

116:                                              ; preds = %108, %103, %41
  ret void
}

declare dso_local i64 @FixedMul(i32, i32) #1

declare dso_local %struct.TYPE_17__* @P_SpawnMobj(i64, i64, i64, i64) #1

declare dso_local i32 @P_TryMove(%struct.TYPE_17__*, i64, i64) #1

declare dso_local i32 @P_DamageMobj(%struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @A_SkullAttack(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
