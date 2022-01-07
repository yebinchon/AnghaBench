; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_enemy.c_A_BossDeath.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_enemy.c_A_BossDeath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_13__ = type { i32 }

@gamemode = common dso_local global i64 0, align 8
@commercial = common dso_local global i64 0, align 8
@gamemap = common dso_local global i32 0, align 4
@MT_FATSO = common dso_local global i64 0, align 8
@MT_BABY = common dso_local global i64 0, align 8
@gameepisode = common dso_local global i32 0, align 4
@MT_BRUISER = common dso_local global i64 0, align 8
@MT_CYBORG = common dso_local global i64 0, align 8
@MT_SPIDER = common dso_local global i64 0, align 8
@MAXPLAYERS = common dso_local global i32 0, align 4
@playeringame = common dso_local global i64* null, align 8
@players = common dso_local global %struct.TYPE_14__* null, align 8
@thinkercap = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@P_MobjThinker = common dso_local global i64 0, align 8
@lowerFloorToLowest = common dso_local global i32 0, align 4
@raiseToTexture = common dso_local global i32 0, align 4
@blazeOpen = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @A_BossDeath(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %7 = load i64, i64* @gamemode, align 8
  %8 = load i64, i64* @commercial, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %1
  %11 = load i32, i32* @gamemap, align 4
  %12 = icmp ne i32 %11, 7
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %209

14:                                               ; preds = %10
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MT_FATSO, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MT_BABY, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %209

27:                                               ; preds = %20, %14
  br label %92

28:                                               ; preds = %1
  %29 = load i32, i32* @gameepisode, align 4
  switch i32 %29, label %86 [
    i32 1, label %30
    i32 2, label %42
    i32 3, label %54
    i32 4, label %66
  ]

30:                                               ; preds = %28
  %31 = load i32, i32* @gamemap, align 4
  %32 = icmp ne i32 %31, 8
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %209

34:                                               ; preds = %30
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MT_BRUISER, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %209

41:                                               ; preds = %34
  br label %91

42:                                               ; preds = %28
  %43 = load i32, i32* @gamemap, align 4
  %44 = icmp ne i32 %43, 8
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %209

46:                                               ; preds = %42
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MT_CYBORG, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %209

53:                                               ; preds = %46
  br label %91

54:                                               ; preds = %28
  %55 = load i32, i32* @gamemap, align 4
  %56 = icmp ne i32 %55, 8
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %209

58:                                               ; preds = %54
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @MT_SPIDER, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %209

65:                                               ; preds = %58
  br label %91

66:                                               ; preds = %28
  %67 = load i32, i32* @gamemap, align 4
  switch i32 %67, label %84 [
    i32 6, label %68
    i32 8, label %76
  ]

68:                                               ; preds = %66
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @MT_CYBORG, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %209

75:                                               ; preds = %68
  br label %85

76:                                               ; preds = %66
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @MT_SPIDER, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %209

83:                                               ; preds = %76
  br label %85

84:                                               ; preds = %66
  br label %209

85:                                               ; preds = %83, %75
  br label %91

86:                                               ; preds = %28
  %87 = load i32, i32* @gamemap, align 4
  %88 = icmp ne i32 %87, 8
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  br label %209

90:                                               ; preds = %86
  br label %91

91:                                               ; preds = %90, %85, %65, %53, %41
  br label %92

92:                                               ; preds = %91, %27
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %114, %92
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @MAXPLAYERS, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %117

97:                                               ; preds = %93
  %98 = load i64*, i64** @playeringame, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %97
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** @players, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp sgt i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  br label %117

113:                                              ; preds = %104, %97
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %6, align 4
  br label %93

117:                                              ; preds = %112, %93
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @MAXPLAYERS, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  br label %209

122:                                              ; preds = %117
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @thinkercap, i32 0, i32 1), align 8
  store %struct.TYPE_11__* %123, %struct.TYPE_11__** %3, align 8
  br label %124

124:                                              ; preds = %156, %122
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %126 = icmp ne %struct.TYPE_11__* %125, @thinkercap
  br i1 %126, label %127, label %160

127:                                              ; preds = %124
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @P_MobjThinker, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  br label %156

135:                                              ; preds = %127
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %137 = bitcast %struct.TYPE_11__* %136 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %137, %struct.TYPE_12__** %4, align 8
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %140 = icmp ne %struct.TYPE_12__* %138, %139
  br i1 %140, label %141, label %155

141:                                              ; preds = %135
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %144, %147
  br i1 %148, label %149, label %155

149:                                              ; preds = %141
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp sgt i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  br label %209

155:                                              ; preds = %149, %141, %135
  br label %156

156:                                              ; preds = %155, %134
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %158, align 8
  store %struct.TYPE_11__* %159, %struct.TYPE_11__** %3, align 8
  br label %124

160:                                              ; preds = %124
  %161 = load i64, i64* @gamemode, align 8
  %162 = load i64, i64* @commercial, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %189

164:                                              ; preds = %160
  %165 = load i32, i32* @gamemap, align 4
  %166 = icmp eq i32 %165, 7
  br i1 %166, label %167, label %188

167:                                              ; preds = %164
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @MT_FATSO, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %167
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  store i32 666, i32* %174, align 4
  %175 = load i32, i32* @lowerFloorToLowest, align 4
  %176 = call i32 @EV_DoFloor(%struct.TYPE_13__* %5, i32 %175)
  br label %209

177:                                              ; preds = %167
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @MT_BABY, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %187

183:                                              ; preds = %177
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  store i32 667, i32* %184, align 4
  %185 = load i32, i32* @raiseToTexture, align 4
  %186 = call i32 @EV_DoFloor(%struct.TYPE_13__* %5, i32 %185)
  br label %209

187:                                              ; preds = %177
  br label %188

188:                                              ; preds = %187, %164
  br label %207

189:                                              ; preds = %160
  %190 = load i32, i32* @gameepisode, align 4
  switch i32 %190, label %206 [
    i32 1, label %191
    i32 4, label %195
  ]

191:                                              ; preds = %189
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  store i32 666, i32* %192, align 4
  %193 = load i32, i32* @lowerFloorToLowest, align 4
  %194 = call i32 @EV_DoFloor(%struct.TYPE_13__* %5, i32 %193)
  br label %209

195:                                              ; preds = %189
  %196 = load i32, i32* @gamemap, align 4
  switch i32 %196, label %205 [
    i32 6, label %197
    i32 8, label %201
  ]

197:                                              ; preds = %195
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  store i32 666, i32* %198, align 4
  %199 = load i32, i32* @blazeOpen, align 4
  %200 = call i32 @EV_DoDoor(%struct.TYPE_13__* %5, i32 %199)
  br label %209

201:                                              ; preds = %195
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  store i32 666, i32* %202, align 4
  %203 = load i32, i32* @lowerFloorToLowest, align 4
  %204 = call i32 @EV_DoFloor(%struct.TYPE_13__* %5, i32 %203)
  br label %209

205:                                              ; preds = %195
  br label %206

206:                                              ; preds = %205, %189
  br label %207

207:                                              ; preds = %206, %188
  %208 = call i32 (...) @G_ExitLevel()
  br label %209

209:                                              ; preds = %207, %201, %197, %191, %183, %173, %154, %121, %89, %84, %82, %74, %64, %57, %52, %45, %40, %33, %26, %13
  ret void
}

declare dso_local i32 @EV_DoFloor(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @EV_DoDoor(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @G_ExitLevel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
