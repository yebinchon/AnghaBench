; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_rankings.c_SV_RankEnd.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_rankings.c_SV_RankEnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"SV_RankEnd();\0A\00", align 1
@s_rankings_active = common dso_local global i64 0, align 8
@s_ranked_players = common dso_local global %struct.TYPE_5__* null, align 8
@sv_maxclients = common dso_local global %struct.TYPE_4__* null, align 8
@s_server_context = common dso_local global i64 0, align 8
@QGR_STATUS_ACTIVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"SV_RankEnd: SV_RankUserLogout %d\0A\00", align 1
@SV_RankSendReportsCBF = common dso_local global i32 0, align 4
@GR_OPT_END = common dso_local global i32 0, align 4
@GR_STATUS_PENDING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"SV_RankEnd: Expected GR_STATUS_PENDING, got %s\00", align 1
@qfalse = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"sv_rankingsActive\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SV_RankEnd() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = call i32 (i8*, ...) @Com_DPrintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %4 = load i64, i64* @s_rankings_active, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %41, label %6

6:                                                ; preds = %0
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_ranked_players, align 8
  %8 = icmp ne %struct.TYPE_5__* %7, null
  br i1 %8, label %9, label %35

9:                                                ; preds = %6
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %31, %9
  %11 = load i32, i32* %2, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sv_maxclients, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %10
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_ranked_players, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %16
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_ranked_players, align 8
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 %27
  %29 = call i32 @SV_RankCloseContext(%struct.TYPE_5__* %28)
  br label %30

30:                                               ; preds = %24, %16
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %2, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %2, align 4
  br label %10

34:                                               ; preds = %10
  br label %35

35:                                               ; preds = %34, %6
  %36 = load i64, i64* @s_server_context, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 @SV_RankCloseContext(%struct.TYPE_5__* null)
  br label %40

40:                                               ; preds = %38, %35
  br label %85

41:                                               ; preds = %0
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %63, %41
  %43 = load i32, i32* %2, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sv_maxclients, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %42
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_ranked_players, align 8
  %50 = load i32, i32* %2, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @QGR_STATUS_ACTIVE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %48
  %58 = load i32, i32* %2, align 4
  %59 = call i32 @SV_RankUserLogout(i32 %58)
  %60 = load i32, i32* %2, align 4
  %61 = call i32 (i8*, ...) @Com_DPrintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %57, %48
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %2, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %2, align 4
  br label %42

66:                                               ; preds = %42
  %67 = load i64, i64* @s_server_context, align 8
  %68 = icmp ne i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load i64, i64* @s_server_context, align 8
  %72 = load i32, i32* @SV_RankSendReportsCBF, align 4
  %73 = load i32, i32* @GR_OPT_END, align 4
  %74 = call i64 @GRankSendReportsAsync(i64 %71, i32 0, i32 %72, i32* null, i32 %73)
  store i64 %74, i64* %1, align 8
  %75 = load i64, i64* %1, align 8
  %76 = load i64, i64* @GR_STATUS_PENDING, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %66
  %79 = load i64, i64* %1, align 8
  %80 = call i32 @SV_RankStatusString(i64 %79)
  %81 = call i32 @SV_RankError(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %78, %66
  %83 = load i64, i64* @qfalse, align 8
  store i64 %83, i64* @s_rankings_active, align 8
  %84 = call i32 @Cvar_Set(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %40
  ret void
}

declare dso_local i32 @Com_DPrintf(i8*, ...) #1

declare dso_local i32 @SV_RankCloseContext(%struct.TYPE_5__*) #1

declare dso_local i32 @SV_RankUserLogout(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @GRankSendReportsAsync(i64, i32, i32, i32*, i32) #1

declare dso_local i32 @SV_RankError(i8*, i32) #1

declare dso_local i32 @SV_RankStatusString(i64) #1

declare dso_local i32 @Cvar_Set(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
