; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_missile.c_G_RunMissile.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_missile.c_G_RunMissile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_23__, i32, %struct.TYPE_22__, %struct.TYPE_21__*, %struct.TYPE_19__* }
%struct.TYPE_23__ = type { i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i64, i64, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_25__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32, i32, i64, i32, i64 }

@level = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@SURF_NOIMPACT = common dso_local global i32 0, align 4
@ET_MISSILE = common dso_local global i64 0, align 8
@ENTITYNUM_NONE = common dso_local global i32 0, align 4
@WP_PROX_LAUNCHER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @G_RunMissile(%struct.TYPE_25__* %0) #0 {
  %2 = alloca %struct.TYPE_25__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_24__, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %2, align 8
  %6 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 2
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @level, i32 0, i32 0), align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @BG_EvaluateTrajectory(i32* %8, i32 %9, i32 %10)
  %12 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %12, i32 0, i32 5
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %15 = icmp ne %struct.TYPE_19__* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  br label %28

23:                                               ; preds = %1
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %23, %16
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @trap_Trace(%struct.TYPE_24__* %4, i32 %32, i32 %36, i32 %40, i32 %41, i32 %42, i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %4, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %28
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %4, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %77

54:                                               ; preds = %50, %28
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @trap_Trace(%struct.TYPE_24__* %4, i32 %58, i32 %62, i32 %66, i32 %70, i32 %71, i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %4, i32 0, i32 0
  store i32 0, i32* %76, align 8
  br label %85

77:                                               ; preds = %50
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %4, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @VectorCopy(i32 %79, i32 %83)
  br label %85

85:                                               ; preds = %77, %54
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %87 = call i32 @trap_LinkEntity(%struct.TYPE_25__* %86)
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %4, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 1
  br i1 %90, label %91, label %140

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %4, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @SURF_NOIMPACT, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %129

97:                                               ; preds = %91
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %98, i32 0, i32 4
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %99, align 8
  %101 = icmp ne %struct.TYPE_21__* %100, null
  br i1 %101, label %102, label %126

102:                                              ; preds = %97
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 4
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %106, align 8
  %108 = icmp ne %struct.TYPE_20__* %107, null
  br i1 %108, label %109, label %126

109:                                              ; preds = %102
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 4
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %115, align 8
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %118 = icmp eq %struct.TYPE_25__* %116, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %109
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 4
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 0
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %125, align 8
  br label %126

126:                                              ; preds = %119, %109, %102, %97
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %128 = call i32 @G_FreeEntity(%struct.TYPE_25__* %127)
  br label %143

129:                                              ; preds = %91
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %131 = call i32 @G_MissileImpact(%struct.TYPE_25__* %130, %struct.TYPE_24__* %4)
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @ET_MISSILE, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %129
  br label %143

139:                                              ; preds = %129
  br label %140

140:                                              ; preds = %139, %85
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %142 = call i32 @G_RunThink(%struct.TYPE_25__* %141)
  br label %143

143:                                              ; preds = %140, %138, %126
  ret void
}

declare dso_local i32 @BG_EvaluateTrajectory(i32*, i32, i32) #1

declare dso_local i32 @trap_Trace(%struct.TYPE_24__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @trap_LinkEntity(%struct.TYPE_25__*) #1

declare dso_local i32 @G_FreeEntity(%struct.TYPE_25__*) #1

declare dso_local i32 @G_MissileImpact(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i32 @G_RunThink(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
