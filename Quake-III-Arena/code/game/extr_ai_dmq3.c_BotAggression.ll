; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmq3.c_BotAggression.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmq3.c_BotAggression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i64 }

@INVENTORY_QUAD = common dso_local global i64 0, align 8
@WP_GAUNTLET = common dso_local global i64 0, align 8
@ENEMY_HORIZONTAL_DIST = common dso_local global i64 0, align 8
@ENEMY_HEIGHT = common dso_local global i64 0, align 8
@INVENTORY_HEALTH = common dso_local global i64 0, align 8
@INVENTORY_ARMOR = common dso_local global i64 0, align 8
@INVENTORY_BFG10K = common dso_local global i64 0, align 8
@INVENTORY_BFGAMMO = common dso_local global i64 0, align 8
@INVENTORY_RAILGUN = common dso_local global i64 0, align 8
@INVENTORY_SLUGS = common dso_local global i64 0, align 8
@INVENTORY_LIGHTNING = common dso_local global i64 0, align 8
@INVENTORY_LIGHTNINGAMMO = common dso_local global i64 0, align 8
@INVENTORY_ROCKETLAUNCHER = common dso_local global i64 0, align 8
@INVENTORY_ROCKETS = common dso_local global i64 0, align 8
@INVENTORY_PLASMAGUN = common dso_local global i64 0, align 8
@INVENTORY_CELLS = common dso_local global i64 0, align 8
@INVENTORY_GRENADELAUNCHER = common dso_local global i64 0, align 8
@INVENTORY_GRENADES = common dso_local global i64 0, align 8
@INVENTORY_SHOTGUN = common dso_local global i64 0, align 8
@INVENTORY_SHELLS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @BotAggression(%struct.TYPE_3__* %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* @INVENTORY_QUAD, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @WP_GAUNTLET, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %11
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @ENEMY_HORIZONTAL_DIST, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %23, 80
  br i1 %24, label %25, label %26

25:                                               ; preds = %17, %11
  store float 7.000000e+01, float* %2, align 4
  br label %183

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26, %1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @ENEMY_HEIGHT, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %33, 200
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store float 0.000000e+00, float* %2, align 4
  br label %183

36:                                               ; preds = %27
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @INVENTORY_HEALTH, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %42, 60
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store float 0.000000e+00, float* %2, align 4
  br label %183

45:                                               ; preds = %36
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @INVENTORY_HEALTH, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %51, 80
  br i1 %52, label %53, label %63

53:                                               ; preds = %45
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @INVENTORY_ARMOR, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %59, 40
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  store float 0.000000e+00, float* %2, align 4
  br label %183

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %45
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @INVENTORY_BFG10K, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %63
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* @INVENTORY_BFGAMMO, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %77, 7
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store float 1.000000e+02, float* %2, align 4
  br label %183

80:                                               ; preds = %71, %63
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* @INVENTORY_RAILGUN, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %80
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @INVENTORY_SLUGS, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = icmp sgt i32 %94, 5
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  store float 9.500000e+01, float* %2, align 4
  br label %183

97:                                               ; preds = %88, %80
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @INVENTORY_LIGHTNING, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %97
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* @INVENTORY_LIGHTNINGAMMO, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = icmp sgt i32 %111, 50
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  store float 9.000000e+01, float* %2, align 4
  br label %183

114:                                              ; preds = %105, %97
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* @INVENTORY_ROCKETLAUNCHER, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %114
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* @INVENTORY_ROCKETS, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = icmp sgt i32 %128, 5
  br i1 %129, label %130, label %131

130:                                              ; preds = %122
  store float 9.000000e+01, float* %2, align 4
  br label %183

131:                                              ; preds = %122, %114
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i64, i64* @INVENTORY_PLASMAGUN, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %131
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* @INVENTORY_CELLS, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = icmp sgt i32 %145, 40
  br i1 %146, label %147, label %148

147:                                              ; preds = %139
  store float 8.500000e+01, float* %2, align 4
  br label %183

148:                                              ; preds = %139, %131
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = load i64, i64* @INVENTORY_GRENADELAUNCHER, align 8
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %148
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i64, i64* @INVENTORY_GRENADES, align 8
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = icmp sgt i32 %162, 10
  br i1 %163, label %164, label %165

164:                                              ; preds = %156
  store float 8.000000e+01, float* %2, align 4
  br label %183

165:                                              ; preds = %156, %148
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = load i64, i64* @INVENTORY_SHOTGUN, align 8
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %173, label %182

173:                                              ; preds = %165
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = load i64, i64* @INVENTORY_SHELLS, align 8
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = icmp sgt i32 %179, 10
  br i1 %180, label %181, label %182

181:                                              ; preds = %173
  store float 5.000000e+01, float* %2, align 4
  br label %183

182:                                              ; preds = %173, %165
  store float 0.000000e+00, float* %2, align 4
  br label %183

183:                                              ; preds = %182, %181, %164, %147, %130, %113, %96, %79, %61, %44, %35, %25
  %184 = load float, float* %2, align 4
  ret float %184
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
