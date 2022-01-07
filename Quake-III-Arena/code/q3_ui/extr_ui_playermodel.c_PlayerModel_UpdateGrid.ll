; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_playermodel.c_PlayerModel_UpdateGrid.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_playermodel.c_PlayerModel_UpdateGrid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i32, %struct.TYPE_17__, %struct.TYPE_15__, %struct.TYPE_13__*, %struct.TYPE_11__*, i32** }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i32, i32* }

@s_playermodel = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@MAX_MODELSPERPAGE = common dso_local global i32 0, align 4
@PLAYERGRID_ROWS = common dso_local global i32 0, align 4
@PLAYERGRID_COLS = common dso_local global i32 0, align 4
@QMF_INACTIVE = common dso_local global i32 0, align 4
@QMF_HIGHLIGHT = common dso_local global i32 0, align 4
@QMF_PULSEIFFOCUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @PlayerModel_UpdateGrid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PlayerModel_UpdateGrid() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_playermodel, i32 0, i32 0), align 8
  %4 = load i32, i32* @MAX_MODELSPERPAGE, align 4
  %5 = mul nsw i32 %3, %4
  store i32 %5, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %79, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @PLAYERGRID_ROWS, align 4
  %9 = load i32, i32* @PLAYERGRID_COLS, align 4
  %10 = mul nsw i32 %8, %9
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %84

12:                                               ; preds = %6
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_playermodel, i32 0, i32 1), align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %12
  %17 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_playermodel, i32 0, i32 8), align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32*, i32** %17, i64 %19
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_playermodel, i32 0, i32 7), align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  store i32* %21, i32** %27, align 8
  %28 = load i32, i32* @QMF_INACTIVE, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_playermodel, i32 0, i32 6), align 8
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %29
  store i32 %37, i32* %35, align 4
  br label %54

38:                                               ; preds = %12
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_playermodel, i32 0, i32 7), align 8
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  %45 = load i32, i32* @QMF_INACTIVE, align 4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_playermodel, i32 0, i32 6), align 8
  %47 = load i32, i32* %1, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %45
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %38, %16
  %55 = load i32, i32* @QMF_HIGHLIGHT, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_playermodel, i32 0, i32 7), align 8
  %58 = load i32, i32* %1, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, %56
  store i32 %64, i32* %62, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_playermodel, i32 0, i32 7), align 8
  %66 = load i32, i32* %1, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  %70 = load i32, i32* @QMF_PULSEIFFOCUS, align 4
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_playermodel, i32 0, i32 6), align 8
  %72 = load i32, i32* %1, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %70
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %54
  %80 = load i32, i32* %1, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %1, align 4
  %82 = load i32, i32* %2, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %2, align 4
  br label %6

84:                                               ; preds = %6
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_playermodel, i32 0, i32 2), align 8
  %86 = load i32, i32* @MAX_MODELSPERPAGE, align 4
  %87 = sdiv i32 %85, %86
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_playermodel, i32 0, i32 0), align 8
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %113

90:                                               ; preds = %84
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_playermodel, i32 0, i32 2), align 8
  %92 = load i32, i32* @MAX_MODELSPERPAGE, align 4
  %93 = srem i32 %91, %92
  store i32 %93, i32* %1, align 4
  %94 = load i32, i32* @QMF_HIGHLIGHT, align 4
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_playermodel, i32 0, i32 7), align 8
  %96 = load i32, i32* %1, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %94
  store i32 %102, i32* %100, align 8
  %103 = load i32, i32* @QMF_PULSEIFFOCUS, align 4
  %104 = xor i32 %103, -1
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_playermodel, i32 0, i32 6), align 8
  %106 = load i32, i32* %1, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, %104
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %90, %84
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_playermodel, i32 0, i32 3), align 4
  %115 = icmp sgt i32 %114, 1
  br i1 %115, label %116, label %143

116:                                              ; preds = %113
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_playermodel, i32 0, i32 0), align 8
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = load i32, i32* @QMF_INACTIVE, align 4
  %121 = xor i32 %120, -1
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_playermodel, i32 0, i32 5, i32 0, i32 0), align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_playermodel, i32 0, i32 5, i32 0, i32 0), align 4
  br label %128

124:                                              ; preds = %116
  %125 = load i32, i32* @QMF_INACTIVE, align 4
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_playermodel, i32 0, i32 5, i32 0, i32 0), align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_playermodel, i32 0, i32 5, i32 0, i32 0), align 4
  br label %128

128:                                              ; preds = %124, %119
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_playermodel, i32 0, i32 0), align 8
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_playermodel, i32 0, i32 3), align 4
  %131 = sub nsw i32 %130, 1
  %132 = icmp slt i32 %129, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load i32, i32* @QMF_INACTIVE, align 4
  %135 = xor i32 %134, -1
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_playermodel, i32 0, i32 4, i32 0, i32 0), align 8
  %137 = and i32 %136, %135
  store i32 %137, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_playermodel, i32 0, i32 4, i32 0, i32 0), align 8
  br label %142

138:                                              ; preds = %128
  %139 = load i32, i32* @QMF_INACTIVE, align 4
  %140 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_playermodel, i32 0, i32 4, i32 0, i32 0), align 8
  %141 = or i32 %140, %139
  store i32 %141, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_playermodel, i32 0, i32 4, i32 0, i32 0), align 8
  br label %142

142:                                              ; preds = %138, %133
  br label %150

143:                                              ; preds = %113
  %144 = load i32, i32* @QMF_INACTIVE, align 4
  %145 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_playermodel, i32 0, i32 5, i32 0, i32 0), align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_playermodel, i32 0, i32 5, i32 0, i32 0), align 4
  %147 = load i32, i32* @QMF_INACTIVE, align 4
  %148 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_playermodel, i32 0, i32 4, i32 0, i32 0), align 8
  %149 = or i32 %148, %147
  store i32 %149, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_playermodel, i32 0, i32 4, i32 0, i32 0), align 8
  br label %150

150:                                              ; preds = %143, %142
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
