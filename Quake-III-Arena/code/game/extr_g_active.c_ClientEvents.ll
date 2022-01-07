; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_active.c_ClientEvents.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_active.c_ClientEvents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_22__*, i32, i32, i32, %struct.TYPE_18__ }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_20__, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { i32, i32*, i32*, i32, i32*, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@MAX_PS_EVENTS = common dso_local global i32 0, align 4
@ET_PLAYER = common dso_local global i32 0, align 4
@g_dmflags = common dso_local global %struct.TYPE_25__ zeroinitializer, align 4
@DF_NO_FALLING = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_23__ zeroinitializer, align 4
@MOD_FALLING = common dso_local global i32 0, align 4
@PW_REDFLAG = common dso_local global i64 0, align 8
@PW_BLUEFLAG = common dso_local global i64 0, align 8
@PW_NEUTRALFLAG = common dso_local global i64 0, align 8
@STAT_MAX_HEALTH = common dso_local global i64 0, align 8
@GT_HARVESTER = common dso_local global i32 0, align 4
@TEAM_BLUE = common dso_local global i32 0, align 4
@TEAM_RED = common dso_local global i32 0, align 4
@g_gametype = common dso_local global %struct.TYPE_24__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ClientEvents(%struct.TYPE_21__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  store %struct.TYPE_22__* %17, %struct.TYPE_22__** %8, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @MAX_PS_EVENTS, align 4
  %24 = sub nsw i32 %22, %23
  %25 = icmp slt i32 %18, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @MAX_PS_EVENTS, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %26, %2
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %206, %33
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %36, %40
  br i1 %41, label %42, label %209

42:                                               ; preds = %35
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @MAX_PS_EVENTS, align 4
  %49 = sub nsw i32 %48, 1
  %50 = and i32 %47, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %46, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  switch i32 %54, label %204 [
    i32 134, label %55
    i32 135, label %55
    i32 133, label %85
    i32 132, label %88
    i32 131, label %191
  ]

55:                                               ; preds = %42, %42
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ET_PLAYER, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %205

63:                                               ; preds = %55
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @g_dmflags, i32 0, i32 0), align 4
  %65 = load i32, i32* @DF_NO_FALLING, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %205

69:                                               ; preds = %63
  %70 = load i32, i32* %7, align 4
  %71 = icmp eq i32 %70, 135
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 10, i32* %9, align 4
  br label %74

73:                                               ; preds = %69
  store i32 5, i32* %9, align 4
  br label %74

74:                                               ; preds = %73, %72
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @VectorSet(i32 %75, i32 0, i32 0, i32 1)
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @level, i32 0, i32 0), align 4
  %78 = add nsw i32 %77, 200
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 8
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @MOD_FALLING, align 4
  %84 = call i32 @G_Damage(%struct.TYPE_21__* %81, i32* null, i32* null, i32* null, i32* null, i32 %82, i32 0, i32 %83)
  br label %205

85:                                               ; preds = %42
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %87 = call i32 @FireWeapon(%struct.TYPE_21__* %86)
  br label %205

88:                                               ; preds = %42
  store i32* null, i32** %13, align 8
  store i32 0, i32* %6, align 4
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* @PW_REDFLAG, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %88
  %100 = load i64, i64* @PW_REDFLAG, align 8
  %101 = call i32* @BG_FindItemForPowerup(i64 %100)
  store i32* %101, i32** %13, align 8
  %102 = load i64, i64* @PW_REDFLAG, align 8
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %6, align 4
  br label %138

104:                                              ; preds = %88
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* @PW_BLUEFLAG, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %104
  %116 = load i64, i64* @PW_BLUEFLAG, align 8
  %117 = call i32* @BG_FindItemForPowerup(i64 %116)
  store i32* %117, i32** %13, align 8
  %118 = load i64, i64* @PW_BLUEFLAG, align 8
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %6, align 4
  br label %137

120:                                              ; preds = %104
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = load i64, i64* @PW_NEUTRALFLAG, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %120
  %132 = load i64, i64* @PW_NEUTRALFLAG, align 8
  %133 = call i32* @BG_FindItemForPowerup(i64 %132)
  store i32* %133, i32** %13, align 8
  %134 = load i64, i64* @PW_NEUTRALFLAG, align 8
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %131, %120
  br label %137

137:                                              ; preds = %136, %115
  br label %138

138:                                              ; preds = %137, %99
  %139 = load i32*, i32** %13, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %177

141:                                              ; preds = %138
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %143 = load i32*, i32** %13, align 8
  %144 = call %struct.TYPE_21__* @Drop_Item(%struct.TYPE_21__* %142, i32* %143, i32 0)
  store %struct.TYPE_21__* %144, %struct.TYPE_21__** %14, align 8
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @level, i32 0, i32 0), align 4
  %156 = sub nsw i32 %154, %155
  %157 = sdiv i32 %156, 1000
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp slt i32 %162, 1
  br i1 %163, label %164, label %167

164:                                              ; preds = %141
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 0
  store i32 1, i32* %166, align 8
  br label %167

167:                                              ; preds = %164, %141
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %6, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  store i32 0, i32* %176, align 4
  br label %177

177:                                              ; preds = %167, %138
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_22__*, %struct.TYPE_22__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* %12, align 4
  %186 = call i32 @SelectSpawnPoint(i32 %183, i32 %184, i32 %185)
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %188 = load i32, i32* %11, align 4
  %189 = load i32, i32* %12, align 4
  %190 = call i32 @TeleportPlayer(%struct.TYPE_21__* %187, i32 %188, i32 %189)
  br label %205

191:                                              ; preds = %42
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 4
  %197 = load i32*, i32** %196, align 8
  %198 = load i64, i64* @STAT_MAX_HEALTH, align 8
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %200, 25
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 2
  store i32 %201, i32* %203, align 8
  br label %205

204:                                              ; preds = %42
  br label %205

205:                                              ; preds = %204, %191, %177, %85, %74, %68, %62
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %5, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %5, align 4
  br label %35

209:                                              ; preds = %35
  ret void
}

declare dso_local i32 @VectorSet(i32, i32, i32, i32) #1

declare dso_local i32 @G_Damage(%struct.TYPE_21__*, i32*, i32*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @FireWeapon(%struct.TYPE_21__*) #1

declare dso_local i32* @BG_FindItemForPowerup(i64) #1

declare dso_local %struct.TYPE_21__* @Drop_Item(%struct.TYPE_21__*, i32*, i32) #1

declare dso_local i32 @SelectSpawnPoint(i32, i32, i32) #1

declare dso_local i32 @TeleportPlayer(%struct.TYPE_21__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
