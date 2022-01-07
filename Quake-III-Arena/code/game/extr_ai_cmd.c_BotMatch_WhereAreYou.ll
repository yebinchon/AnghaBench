; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_cmd.c_BotMatch_WhereAreYou.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_cmd.c_BotMatch_WhereAreYou.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@MAX_MESSAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Shotgun\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Grenade Launcher\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Rocket Launcher\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Plasmagun\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Railgun\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Lightning Gun\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"BFG10K\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Quad Damage\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Regeneration\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"Battle Suit\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"Speed\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"Invisibility\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"Flight\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"Armor\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"Heavy Armor\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"Red Flag\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"Blue Flag\00", align 1
@__const.BotMatch_WhereAreYou.nearbyitems = private unnamed_addr constant [18 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8* null], align 16
@gametype = common dso_local global i64 0, align 8
@GT_CTF = common dso_local global i64 0, align 8
@ctf_redflag = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@TFL_DEFAULT = common dso_local global i32 0, align 4
@ctf_blueflag = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@.str.17 = private unnamed_addr constant [13 x i8] c"teamlocation\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@NETNAME = common dso_local global i32 0, align 4
@CHAT_TELL = common dso_local global i32 0, align 4
@GT_1FCTF = common dso_local global i64 0, align 8
@GT_HARVESTER = common dso_local global i64 0, align 8
@GT_OBELISK = common dso_local global i64 0, align 8
@blueobelisk = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@redobelisk = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotMatch_WhereAreYou(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca [18 x i8*], align 16
  %16 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32* %1, i32** %4, align 8
  %17 = load i32, i32* @MAX_MESSAGE_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %13, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %14, align 8
  %21 = bitcast [18 x i8*]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %21, i8* align 16 bitcast ([18 x i8*]* @__const.BotMatch_WhereAreYou.nearbyitems to i8*), i64 144, i1 false)
  %22 = call i32 (...) @TeamPlayIsOn()
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i32 1, i32* %16, align 4
  br label %141

25:                                               ; preds = %2
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @BotAddressedToBot(%struct.TYPE_10__* %26, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32 1, i32* %16, align 4
  br label %141

31:                                               ; preds = %25
  store i32 -1, i32* %8, align 4
  store float 9.999990e+05, float* %6, align 4
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %52, %31
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [18 x i8*], [18 x i8*]* %15, i64 0, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %55

38:                                               ; preds = %32
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [18 x i8*], [18 x i8*]* %15, i64 0, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call float @BotNearestVisibleItem(%struct.TYPE_10__* %39, i8* %43, i32* %12)
  store float %44, float* %5, align 4
  %45 = load float, float* %5, align 4
  %46 = load float, float* %6, align 4
  %47 = fcmp olt float %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load float, float* %5, align 4
  store float %49, float* %6, align 4
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %48, %38
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %32

55:                                               ; preds = %32
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, -1
  br i1 %57, label %58, label %140

58:                                               ; preds = %55
  %59 = load i64, i64* @gametype, align 8
  %60 = load i64, i64* @GT_CTF, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %121

62:                                               ; preds = %58
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ctf_redflag, i32 0, i32 0), align 4
  %70 = load i32, i32* @TFL_DEFAULT, align 4
  %71 = call i32 @trap_AAS_AreaTravelTimeToGoalArea(i32 %65, i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ctf_blueflag, i32 0, i32 0), align 4
  %79 = load i32, i32* @TFL_DEFAULT, align 4
  %80 = call i32 @trap_AAS_AreaTravelTimeToGoalArea(i32 %74, i32 %77, i32 %78, i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %9, align 4
  %82 = sitofp i32 %81 to double
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %83, %84
  %86 = sitofp i32 %85 to double
  %87 = fmul double %86, 4.000000e-01
  %88 = fcmp olt double %82, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %62
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [18 x i8*], [18 x i8*]* %15, i64 0, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 (%struct.TYPE_10__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_10__* %90, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8* %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* null)
  br label %120

96:                                               ; preds = %62
  %97 = load i32, i32* %10, align 4
  %98 = sitofp i32 %97 to double
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %99, %100
  %102 = sitofp i32 %101 to double
  %103 = fmul double %102, 4.000000e-01
  %104 = fcmp olt double %98, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %96
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [18 x i8*], [18 x i8*]* %15, i64 0, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 (%struct.TYPE_10__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_10__* %106, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8* %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* null)
  br label %119

112:                                              ; preds = %96
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [18 x i8*], [18 x i8*]* %15, i64 0, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 (%struct.TYPE_10__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_10__* %113, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i8* %117, i8* null)
  br label %119

119:                                              ; preds = %112, %105
  br label %120

120:                                              ; preds = %119, %89
  br label %128

121:                                              ; preds = %58
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [18 x i8*], [18 x i8*]* %15, i64 0, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 (%struct.TYPE_10__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_10__* %122, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i8* %126, i8* null)
  br label %128

128:                                              ; preds = %121, %120
  %129 = load i32*, i32** %4, align 8
  %130 = load i32, i32* @NETNAME, align 4
  %131 = trunc i64 %18 to i32
  %132 = call i32 @trap_BotMatchVariable(i32* %129, i32 %130, i8* %20, i32 %131)
  %133 = call i32 @ClientFromName(i8* %20)
  store i32 %133, i32* %11, align 4
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* @CHAT_TELL, align 4
  %139 = call i32 @trap_BotEnterChat(i32 %136, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %128, %55
  store i32 0, i32* %16, align 4
  br label %141

141:                                              ; preds = %140, %30, %24
  %142 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %142)
  %143 = load i32, i32* %16, align 4
  switch i32 %143, label %145 [
    i32 0, label %144
    i32 1, label %144
  ]

144:                                              ; preds = %141, %141
  ret void

145:                                              ; preds = %141
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @TeamPlayIsOn(...) #3

declare dso_local i32 @BotAddressedToBot(%struct.TYPE_10__*, i32*) #3

declare dso_local float @BotNearestVisibleItem(%struct.TYPE_10__*, i8*, i32*) #3

declare dso_local i32 @trap_AAS_AreaTravelTimeToGoalArea(i32, i32, i32, i32) #3

declare dso_local i32 @BotAI_BotInitialChat(%struct.TYPE_10__*, i8*, i8*, i8*, ...) #3

declare dso_local i32 @trap_BotMatchVariable(i32*, i32, i8*, i32) #3

declare dso_local i32 @ClientFromName(i8*) #3

declare dso_local i32 @trap_BotEnterChat(i32, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
