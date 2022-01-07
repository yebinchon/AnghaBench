; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_inter.c_P_GiveWeapon.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_inter.c_P_GiveWeapon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32*, i64, i32 }

@netgame = common dso_local global i64 0, align 8
@deathmatch = common dso_local global i32 0, align 4
@BONUSADD = common dso_local global i64 0, align 8
@weaponinfo = common dso_local global %struct.TYPE_7__* null, align 8
@players = common dso_local global %struct.TYPE_6__* null, align 8
@consoleplayer = common dso_local global i64 0, align 8
@sfx_wpnup = common dso_local global i32 0, align 4
@am_noammo = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @P_GiveWeapon(%struct.TYPE_6__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* @netgame, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %71

12:                                               ; preds = %3
  %13 = load i32, i32* @deathmatch, align 4
  %14 = icmp ne i32 %13, 2
  br i1 %14, label %15, label %71

15:                                               ; preds = %12
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %71, label %18

18:                                               ; preds = %15
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %127

27:                                               ; preds = %18
  %28 = load i64, i64* @BONUSADD, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %28
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %30, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 1, i32* %39, align 4
  %40 = load i32, i32* @deathmatch, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %27
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** @weaponinfo, align 8
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @P_GiveAmmo(%struct.TYPE_6__* %43, i64 %48, i32 5)
  br label %58

50:                                               ; preds = %27
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** @weaponinfo, align 8
  %53 = load i64, i64* %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @P_GiveAmmo(%struct.TYPE_6__* %51, i64 %56, i32 2)
  br label %58

58:                                               ; preds = %50, %42
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** @players, align 8
  %64 = load i64, i64* @consoleplayer, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %64
  %66 = icmp eq %struct.TYPE_6__* %62, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load i32, i32* @sfx_wpnup, align 4
  %69 = call i32 @S_StartSound(i32* null, i32 %68)
  br label %70

70:                                               ; preds = %67, %58
  store i32 0, i32* %4, align 4
  br label %127

71:                                               ; preds = %15, %12, %3
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** @weaponinfo, align 8
  %73 = load i64, i64* %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @am_noammo, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %99

79:                                               ; preds = %71
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** @weaponinfo, align 8
  %85 = load i64, i64* %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @P_GiveAmmo(%struct.TYPE_6__* %83, i64 %88, i32 1)
  store i32 %89, i32* %8, align 4
  br label %98

90:                                               ; preds = %79
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** @weaponinfo, align 8
  %93 = load i64, i64* %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @P_GiveAmmo(%struct.TYPE_6__* %91, i64 %96, i32 2)
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %90, %82
  br label %100

99:                                               ; preds = %71
  store i32 0, i32* %8, align 4
  br label %100

100:                                              ; preds = %99, %98
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* %6, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  store i32 0, i32* %9, align 4
  br label %118

109:                                              ; preds = %100
  store i32 1, i32* %9, align 4
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i64, i64* %6, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  store i32 1, i32* %114, align 4
  %115 = load i64, i64* %6, align 8
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  store i64 %115, i64* %117, align 8
  br label %118

118:                                              ; preds = %109, %108
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br label %124

124:                                              ; preds = %121, %118
  %125 = phi i1 [ true, %118 ], [ %123, %121 ]
  %126 = zext i1 %125 to i32
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %124, %70, %26
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @P_GiveAmmo(%struct.TYPE_6__*, i64, i32) #1

declare dso_local i32 @S_StartSound(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
