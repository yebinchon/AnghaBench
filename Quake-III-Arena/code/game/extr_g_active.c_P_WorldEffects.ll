; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_active.c_P_WorldEffects.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_active.c_P_WorldEffects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i64, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i64* }

@level = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@PW_BATTLESUIT = common dso_local global i64 0, align 8
@CHAN_VOICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"*drown.wav\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"sound/player/gurp1.wav\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"sound/player/gurp2.wav\00", align 1
@DAMAGE_NO_ARMOR = common dso_local global i32 0, align 4
@MOD_WATER = common dso_local global i32 0, align 4
@CONTENTS_LAVA = common dso_local global i32 0, align 4
@CONTENTS_SLIME = common dso_local global i32 0, align 4
@EV_POWERUP_BATTLESUIT = common dso_local global i32 0, align 4
@MOD_LAVA = common dso_local global i32 0, align 4
@MOD_SLIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @P_WorldEffects(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 5
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @level, i32 0, i32 0), align 8
  %13 = add nsw i64 %12, 12000
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 5
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  store i64 %13, i64* %17, align 8
  br label %187

18:                                               ; preds = %1
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %4, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 5
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* @PW_BATTLESUIT, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @level, i32 0, i32 0), align 8
  %32 = icmp sgt i64 %30, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %36, label %119

36:                                               ; preds = %18
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @level, i32 0, i32 0), align 8
  %41 = add nsw i64 %40, 10000
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 5
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  store i64 %41, i64* %45, align 8
  br label %46

46:                                               ; preds = %39, %36
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 5
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @level, i32 0, i32 0), align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %118

54:                                               ; preds = %46
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 5
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1000
  store i64 %60, i64* %58, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %117

65:                                               ; preds = %54
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 2
  store i32 %69, i32* %67, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp sgt i32 %72, 15
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 2
  store i32 15, i32* %76, align 8
  br label %77

77:                                               ; preds = %74, %65
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp sle i32 %80, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %77
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %87 = load i32, i32* @CHAN_VOICE, align 4
  %88 = call i32 @G_SoundIndex(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %89 = call i32 @G_Sound(%struct.TYPE_11__* %86, i32 %87, i32 %88)
  br label %105

90:                                               ; preds = %77
  %91 = call i32 (...) @rand()
  %92 = and i32 %91, 1
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %96 = load i32, i32* @CHAN_VOICE, align 4
  %97 = call i32 @G_SoundIndex(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %98 = call i32 @G_Sound(%struct.TYPE_11__* %95, i32 %96, i32 %97)
  br label %104

99:                                               ; preds = %90
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %101 = load i32, i32* @CHAN_VOICE, align 4
  %102 = call i32 @G_SoundIndex(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %103 = call i32 @G_Sound(%struct.TYPE_11__* %100, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %99, %94
  br label %105

105:                                              ; preds = %104, %85
  %106 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @level, i32 0, i32 0), align 8
  %107 = add nsw i64 %106, 200
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 3
  store i64 %107, i64* %109, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @DAMAGE_NO_ARMOR, align 4
  %115 = load i32, i32* @MOD_WATER, align 4
  %116 = call i32 @G_Damage(%struct.TYPE_11__* %110, i32* null, i32* null, i32* null, i32* null, i32 %113, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %105, %54
  br label %118

118:                                              ; preds = %117, %46
  br label %128

119:                                              ; preds = %18
  %120 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @level, i32 0, i32 0), align 8
  %121 = add nsw i64 %120, 12000
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 5
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  store i64 %121, i64* %125, align 8
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 2
  store i32 2, i32* %127, align 8
  br label %128

128:                                              ; preds = %119, %118
  %129 = load i32, i32* %4, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %187

131:                                              ; preds = %128
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @CONTENTS_LAVA, align 4
  %136 = load i32, i32* @CONTENTS_SLIME, align 4
  %137 = or i32 %135, %136
  %138 = and i32 %134, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %187

140:                                              ; preds = %131
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %186

145:                                              ; preds = %140
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @level, i32 0, i32 0), align 8
  %150 = icmp sle i64 %148, %149
  br i1 %150, label %151, label %186

151:                                              ; preds = %145
  %152 = load i32, i32* %3, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %151
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %156 = load i32, i32* @EV_POWERUP_BATTLESUIT, align 4
  %157 = call i32 @G_AddEvent(%struct.TYPE_11__* %155, i32 %156, i32 0)
  br label %185

158:                                              ; preds = %151
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @CONTENTS_LAVA, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %158
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %167 = load i32, i32* %4, align 4
  %168 = mul nsw i32 30, %167
  %169 = load i32, i32* @MOD_LAVA, align 4
  %170 = call i32 @G_Damage(%struct.TYPE_11__* %166, i32* null, i32* null, i32* null, i32* null, i32 %168, i32 0, i32 %169)
  br label %171

171:                                              ; preds = %165, %158
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @CONTENTS_SLIME, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %171
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %180 = load i32, i32* %4, align 4
  %181 = mul nsw i32 10, %180
  %182 = load i32, i32* @MOD_SLIME, align 4
  %183 = call i32 @G_Damage(%struct.TYPE_11__* %179, i32* null, i32* null, i32* null, i32* null, i32 %181, i32 0, i32 %182)
  br label %184

184:                                              ; preds = %178, %171
  br label %185

185:                                              ; preds = %184, %154
  br label %186

186:                                              ; preds = %185, %145, %140
  br label %187

187:                                              ; preds = %11, %186, %131, %128
  ret void
}

declare dso_local i32 @G_Sound(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @G_SoundIndex(i8*) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @G_Damage(%struct.TYPE_11__*, i32*, i32*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @G_AddEvent(%struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
