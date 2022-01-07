; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_weapons.c_CG_AddViewWeapon.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_weapons.c_CG_AddViewWeapon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { %struct.TYPE_40__, %struct.TYPE_33__, i64, %struct.TYPE_32__, i64 }
%struct.TYPE_40__ = type { %struct.TYPE_36__, %struct.TYPE_34__ }
%struct.TYPE_36__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i64, i32, i32 }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_33__ = type { i32*, i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_27__ = type { float }
%struct.TYPE_26__ = type { float }
%struct.TYPE_25__ = type { float }
%struct.TYPE_28__ = type { i8* }
%struct.TYPE_24__ = type { i32* }
%struct.TYPE_39__ = type { i64*, i64, i64, i64 }
%struct.TYPE_38__ = type { i32, i32, i64, i8*, i8*, i32, i32 }

@PERS_TEAM = common dso_local global i64 0, align 8
@TEAM_SPECTATOR = common dso_local global i64 0, align 8
@PM_INTERMISSION = common dso_local global i64 0, align 8
@cg = common dso_local global %struct.TYPE_31__ zeroinitializer, align 8
@cg_drawGun = common dso_local global %struct.TYPE_30__ zeroinitializer, align 4
@EF_FIRING = common dso_local global i32 0, align 4
@cg_entities = common dso_local global i32* null, align 8
@cg_fov = common dso_local global %struct.TYPE_29__ zeroinitializer, align 4
@cg_weapons = common dso_local global %struct.TYPE_37__* null, align 8
@cg_gun_x = common dso_local global %struct.TYPE_27__ zeroinitializer, align 4
@cg_gun_y = common dso_local global %struct.TYPE_26__ zeroinitializer, align 4
@cg_gun_z = common dso_local global %struct.TYPE_25__ zeroinitializer, align 4
@cg_gun_frame = common dso_local global %struct.TYPE_28__ zeroinitializer, align 8
@cgs = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@RF_DEPTHHACK = common dso_local global i32 0, align 4
@RF_FIRST_PERSON = common dso_local global i32 0, align 4
@RF_MINLIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_AddViewWeapon(%struct.TYPE_39__* %0) #0 {
  %2 = alloca %struct.TYPE_39__*, align 8
  %3 = alloca %struct.TYPE_38__, align 8
  %4 = alloca %struct.TYPE_40__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_37__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_39__* %0, %struct.TYPE_39__** %2, align 8
  %10 = load %struct.TYPE_39__*, %struct.TYPE_39__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = load i64, i64* @PERS_TEAM, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TEAM_SPECTATOR, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %173

19:                                               ; preds = %1
  %20 = load %struct.TYPE_39__*, %struct.TYPE_39__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PM_INTERMISSION, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %173

26:                                               ; preds = %19
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @cg, i32 0, i32 4), align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %173

30:                                               ; preds = %26
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @cg_drawGun, i32 0, i32 0), align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %56, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @cg, i32 0, i32 3, i32 0), align 8
  %35 = load i32, i32* @EF_FIRING, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %33
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @cg, i32 0, i32 1, i32 1), align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @VectorCopy(i32 %39, i32 %40)
  %42 = load i32, i32* %9, align 4
  %43 = load i32*, i32** getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @cg, i32 0, i32 1, i32 0), align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @VectorMA(i32 %42, float -8.000000e+00, i32 %45, i32 %46)
  %48 = load i32*, i32** @cg_entities, align 8
  %49 = load %struct.TYPE_39__*, %struct.TYPE_39__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @CG_LightningBolt(i32* %52, i32 %53)
  br label %55

55:                                               ; preds = %38, %33
  br label %173

56:                                               ; preds = %30
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @cg, i32 0, i32 2), align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %173

60:                                               ; preds = %56
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @cg_fov, i32 0, i32 0), align 4
  %62 = icmp sgt i32 %61, 90
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @cg_fov, i32 0, i32 0), align 4
  %65 = sub nsw i32 %64, 90
  %66 = sitofp i32 %65 to double
  %67 = fmul double -2.000000e-01, %66
  %68 = fptrunc double %67 to float
  store float %68, float* %6, align 4
  br label %70

69:                                               ; preds = %60
  store float 0.000000e+00, float* %6, align 4
  br label %70

70:                                               ; preds = %69, %63
  store %struct.TYPE_40__* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @cg, i32 0, i32 0), %struct.TYPE_40__** %4, align 8
  %71 = load %struct.TYPE_39__*, %struct.TYPE_39__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @CG_RegisterWeapon(i64 %73)
  %75 = load %struct.TYPE_37__*, %struct.TYPE_37__** @cg_weapons, align 8
  %76 = load %struct.TYPE_39__*, %struct.TYPE_39__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %75, i64 %78
  store %struct.TYPE_37__* %79, %struct.TYPE_37__** %8, align 8
  %80 = call i32 @memset(%struct.TYPE_38__* %3, i32 0, i32 40)
  %81 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %3, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @CG_CalculateWeaponPosition(i32 %82, i32 %83)
  %85 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %3, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = load float, float* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @cg_gun_x, i32 0, i32 0), align 4
  %88 = load i32*, i32** getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @cg, i32 0, i32 1, i32 0), align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %3, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @VectorMA(i32 %86, float %87, i32 %90, i32 %92)
  %94 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %3, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = load float, float* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @cg_gun_y, i32 0, i32 0), align 4
  %97 = load i32*, i32** getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @cg, i32 0, i32 1, i32 0), align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %3, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @VectorMA(i32 %95, float %96, i32 %99, i32 %101)
  %103 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %3, i32 0, i32 6
  %104 = load i32, i32* %103, align 4
  %105 = load float, float* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @cg_gun_z, i32 0, i32 0), align 4
  %106 = load float, float* %6, align 4
  %107 = fadd float %105, %106
  %108 = load i32*, i32** getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @cg, i32 0, i32 1, i32 0), align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 2
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %3, i32 0, i32 6
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @VectorMA(i32 %104, float %107, i32 %110, i32 %112)
  %114 = load i32, i32* %7, align 4
  %115 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %3, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @AnglesToAxis(i32 %114, i32 %116)
  %118 = load i8*, i8** getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @cg_gun_frame, i32 0, i32 0), align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %70
  %121 = load i8*, i8** getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @cg_gun_frame, i32 0, i32 0), align 8
  %122 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %3, i32 0, i32 3
  store i8* %121, i8** %122, align 8
  %123 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %3, i32 0, i32 4
  store i8* %121, i8** %123, align 8
  %124 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %3, i32 0, i32 2
  store i64 0, i64* %124, align 8
  br label %154

125:                                              ; preds = %70
  %126 = load i32*, i32** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @cgs, i32 0, i32 0), align 8
  %127 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds i32, i32* %126, i64 %130
  store i32* %131, i32** %5, align 8
  %132 = load i32*, i32** %5, align 8
  %133 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = call i8* @CG_MapTorsoToWeaponFrame(i32* %132, i32 %137)
  %139 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %3, i32 0, i32 4
  store i8* %138, i8** %139, align 8
  %140 = load i32*, i32** %5, align 8
  %141 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = call i8* @CG_MapTorsoToWeaponFrame(i32* %140, i32 %145)
  %147 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %3, i32 0, i32 3
  store i8* %146, i8** %147, align 8
  %148 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %3, i32 0, i32 2
  store i64 %152, i64* %153, align 8
  br label %154

154:                                              ; preds = %125, %120
  %155 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %3, i32 0, i32 1
  store i32 %157, i32* %158, align 4
  %159 = load i32, i32* @RF_DEPTHHACK, align 4
  %160 = load i32, i32* @RF_FIRST_PERSON, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @RF_MINLIGHT, align 4
  %163 = or i32 %161, %162
  %164 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %3, i32 0, i32 0
  store i32 %163, i32* %164, align 8
  %165 = load %struct.TYPE_39__*, %struct.TYPE_39__** %2, align 8
  %166 = load %struct.TYPE_39__*, %struct.TYPE_39__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %166, i32 0, i32 0
  %168 = load i64*, i64** %167, align 8
  %169 = load i64, i64* @PERS_TEAM, align 8
  %170 = getelementptr inbounds i64, i64* %168, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @CG_AddPlayerWeapon(%struct.TYPE_38__* %3, %struct.TYPE_39__* %165, %struct.TYPE_40__* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @cg, i32 0, i32 0), i64 %171)
  br label %173

173:                                              ; preds = %154, %59, %55, %29, %25, %18
  ret void
}

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @VectorMA(i32, float, i32, i32) #1

declare dso_local i32 @CG_LightningBolt(i32*, i32) #1

declare dso_local i32 @CG_RegisterWeapon(i64) #1

declare dso_local i32 @memset(%struct.TYPE_38__*, i32, i32) #1

declare dso_local i32 @CG_CalculateWeaponPosition(i32, i32) #1

declare dso_local i32 @AnglesToAxis(i32, i32) #1

declare dso_local i8* @CG_MapTorsoToWeaponFrame(i32*, i32) #1

declare dso_local i32 @CG_AddPlayerWeapon(%struct.TYPE_38__*, %struct.TYPE_39__*, %struct.TYPE_40__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
