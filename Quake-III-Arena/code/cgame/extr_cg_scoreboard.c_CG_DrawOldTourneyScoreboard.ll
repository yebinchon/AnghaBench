; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_scoreboard.c_CG_DrawOldTourneyScoreboard.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_scoreboard.c_CG_DrawOldTourneyScoreboard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i8*, i32, i32 }

@cg = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"score\00", align 1
@SCREEN_WIDTH = common dso_local global i32 0, align 4
@SCREEN_HEIGHT = common dso_local global i32 0, align 4
@CS_MOTD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Scoreboard\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%i:%i%i\00", align 1
@cgs = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@GT_TEAM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"Red Team\00", align 1
@qtrue = common dso_local global i32 0, align 4
@GIANT_WIDTH = common dso_local global i32 0, align 4
@GIANT_HEIGHT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Blue Team\00", align 1
@MAX_CLIENTS = common dso_local global i32 0, align 4
@TEAM_FREE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_DrawOldTourneyScoreboard() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 0), align 8
  %10 = add nsw i32 %9, 2000
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 1), align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 1), align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 0), align 8
  %15 = call i32 @trap_SendClientCommand(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %0
  %17 = load i32*, i32** %2, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 1, i32* %18, align 4
  %19 = load i32*, i32** %2, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 1, i32* %20, align 4
  %21 = load i32*, i32** %2, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  store i32 1, i32* %22, align 4
  %23 = load i32*, i32** %2, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  store i32 1, i32* %24, align 4
  %25 = load i32*, i32** %2, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  store i32 0, i32* %26, align 4
  %27 = load i32*, i32** %2, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 0, i32* %28, align 4
  %29 = load i32*, i32** %2, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 0, i32* %30, align 4
  %31 = load i32*, i32** %2, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  store i32 1, i32* %32, align 4
  %33 = load i32, i32* @SCREEN_WIDTH, align 4
  %34 = load i32, i32* @SCREEN_HEIGHT, align 4
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @CG_FillRect(i32 0, i32 0, i32 %33, i32 %34, i32* %35)
  %37 = load i32, i32* @CS_MOTD, align 4
  %38 = call i8* @CG_ConfigString(i32 %37)
  store i8* %38, i8** %1, align 8
  %39 = load i8*, i8** %1, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = icmp ne i8 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %16
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  br label %44

44:                                               ; preds = %43, %16
  %45 = load i8*, i8** %1, align 8
  %46 = call i32 @CG_CenterGiantLine(i32 8, i8* %45)
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 1), align 4
  %48 = sdiv i32 %47, 1000
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = sdiv i32 %49, 60
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %5, align 4
  %52 = srem i32 %51, 60
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = sdiv i32 %53, 10
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %5, align 4
  %56 = srem i32 %55, 10
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i8* (i8*, i32, ...) @va(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %58, i32 %59)
  store i8* %60, i8** %1, align 8
  %61 = load i8*, i8** %1, align 8
  %62 = call i32 @CG_CenterGiantLine(i32 64, i8* %61)
  store i32 160, i32* %7, align 4
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 0), align 8
  %64 = load i64, i64* @GT_TEAM, align 8
  %65 = icmp sge i64 %63, %64
  br i1 %65, label %66, label %117

66:                                               ; preds = %44
  %67 = load i32, i32* %7, align 4
  %68 = load i32*, i32** %2, align 8
  %69 = load i32, i32* @qtrue, align 4
  %70 = load i32, i32* @qtrue, align 4
  %71 = load i32, i32* @GIANT_WIDTH, align 4
  %72 = load i32, i32* @GIANT_HEIGHT, align 4
  %73 = call i32 @CG_DrawStringExt(i32 8, i32 %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* %68, i32 %69, i32 %70, i32 %71, i32 %72, i32 0)
  %74 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 2), align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = call i8* (i8*, i32, ...) @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  store i8* %77, i8** %1, align 8
  %78 = load i32, i32* @GIANT_WIDTH, align 4
  %79 = load i8*, i8** %1, align 8
  %80 = call i32 @strlen(i8* %79)
  %81 = mul nsw i32 %78, %80
  %82 = sub nsw i32 632, %81
  %83 = load i32, i32* %7, align 4
  %84 = load i8*, i8** %1, align 8
  %85 = load i32*, i32** %2, align 8
  %86 = load i32, i32* @qtrue, align 4
  %87 = load i32, i32* @qtrue, align 4
  %88 = load i32, i32* @GIANT_WIDTH, align 4
  %89 = load i32, i32* @GIANT_HEIGHT, align 4
  %90 = call i32 @CG_DrawStringExt(i32 %82, i32 %83, i8* %84, i32* %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 0)
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 64
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32*, i32** %2, align 8
  %95 = load i32, i32* @qtrue, align 4
  %96 = load i32, i32* @qtrue, align 4
  %97 = load i32, i32* @GIANT_WIDTH, align 4
  %98 = load i32, i32* @GIANT_HEIGHT, align 4
  %99 = call i32 @CG_DrawStringExt(i32 8, i32 %93, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32* %94, i32 %95, i32 %96, i32 %97, i32 %98, i32 0)
  %100 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 2), align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = call i8* (i8*, i32, ...) @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %102)
  store i8* %103, i8** %1, align 8
  %104 = load i32, i32* @GIANT_WIDTH, align 4
  %105 = load i8*, i8** %1, align 8
  %106 = call i32 @strlen(i8* %105)
  %107 = mul nsw i32 %104, %106
  %108 = sub nsw i32 632, %107
  %109 = load i32, i32* %7, align 4
  %110 = load i8*, i8** %1, align 8
  %111 = load i32*, i32** %2, align 8
  %112 = load i32, i32* @qtrue, align 4
  %113 = load i32, i32* @qtrue, align 4
  %114 = load i32, i32* @GIANT_WIDTH, align 4
  %115 = load i32, i32* @GIANT_HEIGHT, align 4
  %116 = call i32 @CG_DrawStringExt(i32 %108, i32 %109, i8* %110, i32* %111, i32 %112, i32 %113, i32 %114, i32 %115, i32 0)
  br label %173

117:                                              ; preds = %44
  store i32 0, i32* %8, align 4
  br label %118

118:                                              ; preds = %169, %117
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @MAX_CLIENTS, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %172

122:                                              ; preds = %118
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 1), align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i64 %125
  store %struct.TYPE_4__* %126, %struct.TYPE_4__** %6, align 8
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %122
  br label %169

132:                                              ; preds = %122
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @TEAM_FREE, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  br label %169

139:                                              ; preds = %132
  %140 = load i32, i32* %7, align 4
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  %143 = load i8*, i8** %142, align 8
  %144 = load i32*, i32** %2, align 8
  %145 = load i32, i32* @qtrue, align 4
  %146 = load i32, i32* @qtrue, align 4
  %147 = load i32, i32* @GIANT_WIDTH, align 4
  %148 = load i32, i32* @GIANT_HEIGHT, align 4
  %149 = call i32 @CG_DrawStringExt(i32 8, i32 %140, i8* %143, i32* %144, i32 %145, i32 %146, i32 %147, i32 %148, i32 0)
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = call i8* (i8*, i32, ...) @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %152)
  store i8* %153, i8** %1, align 8
  %154 = load i32, i32* @GIANT_WIDTH, align 4
  %155 = load i8*, i8** %1, align 8
  %156 = call i32 @strlen(i8* %155)
  %157 = mul nsw i32 %154, %156
  %158 = sub nsw i32 632, %157
  %159 = load i32, i32* %7, align 4
  %160 = load i8*, i8** %1, align 8
  %161 = load i32*, i32** %2, align 8
  %162 = load i32, i32* @qtrue, align 4
  %163 = load i32, i32* @qtrue, align 4
  %164 = load i32, i32* @GIANT_WIDTH, align 4
  %165 = load i32, i32* @GIANT_HEIGHT, align 4
  %166 = call i32 @CG_DrawStringExt(i32 %158, i32 %159, i8* %160, i32* %161, i32 %162, i32 %163, i32 %164, i32 %165, i32 0)
  %167 = load i32, i32* %7, align 4
  %168 = add nsw i32 %167, 64
  store i32 %168, i32* %7, align 4
  br label %169

169:                                              ; preds = %139, %138, %131
  %170 = load i32, i32* %8, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %8, align 4
  br label %118

172:                                              ; preds = %118
  br label %173

173:                                              ; preds = %172, %66
  ret void
}

declare dso_local i32 @trap_SendClientCommand(i8*) #1

declare dso_local i32 @CG_FillRect(i32, i32, i32, i32, i32*) #1

declare dso_local i8* @CG_ConfigString(i32) #1

declare dso_local i32 @CG_CenterGiantLine(i32, i8*) #1

declare dso_local i8* @va(i8*, i32, ...) #1

declare dso_local i32 @CG_DrawStringExt(i32, i32, i8*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
