; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_items.c_RespawnItem.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_items.c_RespawnItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_13__, %struct.TYPE_12__, i64, %struct.TYPE_10__*, %struct.TYPE_14__*, %struct.TYPE_14__*, i64 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i8*, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64, i64 }

@.str = private unnamed_addr constant [28 x i8] c"RespawnItem: bad teammaster\00", align 1
@CONTENTS_TRIGGER = common dso_local global i32 0, align 4
@EF_NODRAW = common dso_local global i32 0, align 4
@SVF_NOCLIENT = common dso_local global i32 0, align 4
@IT_POWERUP = common dso_local global i64 0, align 8
@EV_GENERAL_SOUND = common dso_local global i32 0, align 4
@EV_GLOBAL_SOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"sound/items/poweruprespawn.wav\00", align 1
@SVF_BROADCAST = common dso_local global i32 0, align 4
@IT_HOLDABLE = common dso_local global i64 0, align 8
@HI_KAMIKAZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"sound/items/kamikazerespawn.wav\00", align 1
@EV_ITEM_RESPAWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RespawnItem(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 7
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %51

12:                                               ; preds = %1
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 6
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %16 = icmp ne %struct.TYPE_14__* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = call i32 @G_Error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %12
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 6
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %3, align 8
  store i32 0, i32* %4, align 4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %2, align 8
  br label %24

24:                                               ; preds = %28, %19
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %26 = icmp ne %struct.TYPE_14__* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 5
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  store %struct.TYPE_14__* %31, %struct.TYPE_14__** %2, align 8
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %24

34:                                               ; preds = %24
  %35 = call i32 (...) @rand()
  %36 = load i32, i32* %4, align 4
  %37 = srem i32 %35, %36
  store i32 %37, i32* %5, align 4
  store i32 0, i32* %4, align 4
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %2, align 8
  br label %39

39:                                               ; preds = %44, %34
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 5
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %46, align 8
  store %struct.TYPE_14__* %47, %struct.TYPE_14__** %2, align 8
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %39

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50, %1
  %52 = load i32, i32* @CONTENTS_TRIGGER, align 4
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* @EF_NODRAW, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %57
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* @SVF_NOCLIENT, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, %64
  store i32 %69, i32* %67, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %71 = call i32 @trap_LinkEntity(%struct.TYPE_14__* %70)
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @IT_POWERUP, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %111

79:                                               ; preds = %51
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @EV_GENERAL_SOUND, align 4
  %91 = call %struct.TYPE_14__* @G_TempEntity(i32 %89, i32 %90)
  store %struct.TYPE_14__* %91, %struct.TYPE_14__** %6, align 8
  br label %100

92:                                               ; preds = %79
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @EV_GLOBAL_SOUND, align 4
  %99 = call %struct.TYPE_14__* @G_TempEntity(i32 %97, i32 %98)
  store %struct.TYPE_14__* %99, %struct.TYPE_14__** %6, align 8
  br label %100

100:                                              ; preds = %92, %84
  %101 = call i8* @G_SoundIndex(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  store i8* %101, i8** %104, align 8
  %105 = load i32, i32* @SVF_BROADCAST, align 4
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %105
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %100, %51
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 4
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @IT_HOLDABLE, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %159

119:                                              ; preds = %111
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 4
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @HI_KAMIKAZE, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %159

127:                                              ; preds = %119
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %127
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @EV_GENERAL_SOUND, align 4
  %139 = call %struct.TYPE_14__* @G_TempEntity(i32 %137, i32 %138)
  store %struct.TYPE_14__* %139, %struct.TYPE_14__** %7, align 8
  br label %148

140:                                              ; preds = %127
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @EV_GLOBAL_SOUND, align 4
  %147 = call %struct.TYPE_14__* @G_TempEntity(i32 %145, i32 %146)
  store %struct.TYPE_14__* %147, %struct.TYPE_14__** %7, align 8
  br label %148

148:                                              ; preds = %140, %132
  %149 = call i8* @G_SoundIndex(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  store i8* %149, i8** %152, align 8
  %153 = load i32, i32* @SVF_BROADCAST, align 4
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %157, %153
  store i32 %158, i32* %156, align 8
  br label %159

159:                                              ; preds = %148, %119, %111
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %161 = load i32, i32* @EV_ITEM_RESPAWN, align 4
  %162 = call i32 @G_AddEvent(%struct.TYPE_14__* %160, i32 %161, i32 0)
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 0
  store i64 0, i64* %164, align 8
  ret void
}

declare dso_local i32 @G_Error(i8*) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @trap_LinkEntity(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @G_TempEntity(i32, i32) #1

declare dso_local i8* @G_SoundIndex(i8*) #1

declare dso_local i32 @G_AddEvent(%struct.TYPE_14__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
