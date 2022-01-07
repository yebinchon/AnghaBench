; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_items.c_G_RunItem.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_items.c_G_RunItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_19__*, %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_20__ = type { i32, i64, i32 }

@TR_GRAVITY = common dso_local global i64 0, align 8
@level = common dso_local global %struct.TYPE_22__ zeroinitializer, align 4
@TR_STATIONARY = common dso_local global i64 0, align 8
@MASK_PLAYERSOLID = common dso_local global i32 0, align 4
@CONTENTS_BODY = common dso_local global i32 0, align 4
@CONTENTS_NODROP = common dso_local global i32 0, align 4
@IT_TEAM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @G_RunItem(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %7 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %32

12:                                               ; preds = %1
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TR_GRAVITY, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %12
  %21 = load i64, i64* @TR_GRAVITY, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  store i64 %21, i64* %25, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @level, i32 0, i32 0), align 4
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  store i32 %26, i32* %30, align 8
  br label %31

31:                                               ; preds = %20, %12
  br label %32

32:                                               ; preds = %31, %1
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TR_STATIONARY, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %42 = call i32 @G_RunThink(%struct.TYPE_21__* %41)
  br label %137

43:                                               ; preds = %32
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 1
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @level, i32 0, i32 0), align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @BG_EvaluateTrajectory(%struct.TYPE_16__* %46, i32 %47, i32 %48)
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %43
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %6, align 4
  br label %63

58:                                               ; preds = %43
  %59 = load i32, i32* @MASK_PLAYERSOLID, align 4
  %60 = load i32, i32* @CONTENTS_BODY, align 4
  %61 = xor i32 %60, -1
  %62 = and i32 %59, %61
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %58, %54
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @trap_Trace(%struct.TYPE_20__* %4, i32 %67, i32 %71, i32 %75, i32 %76, i32 %80, i32 %81)
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @VectorCopy(i32 %84, i32 %88)
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %63
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 0
  store i32 0, i32* %94, align 8
  br label %95

95:                                               ; preds = %93, %63
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %97 = call i32 @trap_LinkEntity(%struct.TYPE_21__* %96)
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %99 = call i32 @G_RunThink(%struct.TYPE_21__* %98)
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  br label %137

104:                                              ; preds = %95
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @trap_PointContents(i32 %108, i32 -1)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @CONTENTS_NODROP, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %134

114:                                              ; preds = %104
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %116, align 8
  %118 = icmp ne %struct.TYPE_19__* %117, null
  br i1 %118, label %119, label %130

119:                                              ; preds = %114
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @IT_TEAM, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %119
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %129 = call i32 @Team_FreeEntity(%struct.TYPE_21__* %128)
  br label %133

130:                                              ; preds = %119, %114
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %132 = call i32 @G_FreeEntity(%struct.TYPE_21__* %131)
  br label %133

133:                                              ; preds = %130, %127
  br label %137

134:                                              ; preds = %104
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %136 = call i32 @G_BounceItem(%struct.TYPE_21__* %135, %struct.TYPE_20__* %4)
  br label %137

137:                                              ; preds = %134, %133, %103, %40
  ret void
}

declare dso_local i32 @G_RunThink(%struct.TYPE_21__*) #1

declare dso_local i32 @BG_EvaluateTrajectory(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @trap_Trace(%struct.TYPE_20__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @trap_LinkEntity(%struct.TYPE_21__*) #1

declare dso_local i32 @trap_PointContents(i32, i32) #1

declare dso_local i32 @Team_FreeEntity(%struct.TYPE_21__*) #1

declare dso_local i32 @G_FreeEntity(%struct.TYPE_21__*) #1

declare dso_local i32 @G_BounceItem(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
