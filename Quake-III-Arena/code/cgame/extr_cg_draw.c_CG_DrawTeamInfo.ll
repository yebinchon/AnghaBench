; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_draw.c_CG_DrawTeamInfo.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_draw.c_CG_DrawTeamInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i64*, i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64* }
%struct.TYPE_12__ = type { i64 }

@cg_teamChatHeight = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@TEAMCHAT_HEIGHT = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@cg = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@cg_teamChatTime = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@TINYCHAR_HEIGHT = common dso_local global i32 0, align 4
@TINYCHAR_WIDTH = common dso_local global i32 0, align 4
@PERS_TEAM = common dso_local global i64 0, align 8
@TEAM_RED = common dso_local global i64 0, align 8
@TEAM_BLUE = common dso_local global i64 0, align 8
@qfalse = common dso_local global i32 0, align 4
@CHATLOC_X = common dso_local global i64 0, align 8
@CHATLOC_Y = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_DrawTeamInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_DrawTeamInfo() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg_teamChatHeight, i32 0, i32 0), align 4
  %8 = load i32, i32* @TEAMCHAT_HEIGHT, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg_teamChatHeight, i32 0, i32 0), align 4
  store i32 %11, i32* %6, align 4
  br label %14

12:                                               ; preds = %0
  %13 = load i32, i32* @TEAMCHAT_HEIGHT, align 4
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = load i32, i32* %6, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %173

18:                                               ; preds = %14
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cgs, i32 0, i32 0), align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cgs, i32 0, i32 1), align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %173

22:                                               ; preds = %18
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 0), align 8
  %24 = load i64*, i64** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cgs, i32 0, i32 2), align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cgs, i32 0, i32 0), align 8
  %26 = load i32, i32* %6, align 4
  %27 = srem i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %24, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %23, %30
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg_teamChatTime, i32 0, i32 0), align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cgs, i32 0, i32 0), align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cgs, i32 0, i32 0), align 8
  br label %37

37:                                               ; preds = %34, %22
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cgs, i32 0, i32 1), align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cgs, i32 0, i32 0), align 8
  %40 = sub nsw i32 %38, %39
  %41 = load i32, i32* @TINYCHAR_HEIGHT, align 4
  %42 = mul nsw i32 %40, %41
  store i32 %42, i32* %2, align 4
  store i32 0, i32* %1, align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cgs, i32 0, i32 0), align 8
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %63, %37
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cgs, i32 0, i32 1), align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %44
  %49 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cgs, i32 0, i32 3), align 8
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %6, align 4
  %52 = srem i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @CG_DrawStrlen(i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %1, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %1, align 4
  br label %62

62:                                               ; preds = %60, %48
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %44

66:                                               ; preds = %44
  %67 = load i32, i32* @TINYCHAR_WIDTH, align 4
  %68 = load i32, i32* %1, align 4
  %69 = mul nsw i32 %68, %67
  store i32 %69, i32* %1, align 4
  %70 = load i32, i32* @TINYCHAR_WIDTH, align 4
  %71 = mul nsw i32 %70, 2
  %72 = load i32, i32* %1, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %1, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 1), align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = load i64, i64* @PERS_TEAM, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @TEAM_RED, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %66
  %84 = load float*, float** %5, align 8
  %85 = getelementptr inbounds float, float* %84, i64 0
  store float 1.000000e+00, float* %85, align 4
  %86 = load float*, float** %5, align 8
  %87 = getelementptr inbounds float, float* %86, i64 1
  store float 0.000000e+00, float* %87, align 4
  %88 = load float*, float** %5, align 8
  %89 = getelementptr inbounds float, float* %88, i64 2
  store float 0.000000e+00, float* %89, align 4
  %90 = load float*, float** %5, align 8
  %91 = getelementptr inbounds float, float* %90, i64 3
  store float 0x3FD51EB860000000, float* %91, align 4
  br label %121

92:                                               ; preds = %66
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 1), align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = load i64, i64* @PERS_TEAM, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @TEAM_BLUE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %92
  %103 = load float*, float** %5, align 8
  %104 = getelementptr inbounds float, float* %103, i64 0
  store float 0.000000e+00, float* %104, align 4
  %105 = load float*, float** %5, align 8
  %106 = getelementptr inbounds float, float* %105, i64 1
  store float 0.000000e+00, float* %106, align 4
  %107 = load float*, float** %5, align 8
  %108 = getelementptr inbounds float, float* %107, i64 2
  store float 1.000000e+00, float* %108, align 4
  %109 = load float*, float** %5, align 8
  %110 = getelementptr inbounds float, float* %109, i64 3
  store float 0x3FD51EB860000000, float* %110, align 4
  br label %120

111:                                              ; preds = %92
  %112 = load float*, float** %5, align 8
  %113 = getelementptr inbounds float, float* %112, i64 0
  store float 0.000000e+00, float* %113, align 4
  %114 = load float*, float** %5, align 8
  %115 = getelementptr inbounds float, float* %114, i64 1
  store float 1.000000e+00, float* %115, align 4
  %116 = load float*, float** %5, align 8
  %117 = getelementptr inbounds float, float* %116, i64 2
  store float 0.000000e+00, float* %117, align 4
  %118 = load float*, float** %5, align 8
  %119 = getelementptr inbounds float, float* %118, i64 3
  store float 0x3FD51EB860000000, float* %119, align 4
  br label %120

120:                                              ; preds = %111, %102
  br label %121

121:                                              ; preds = %120, %83
  %122 = load float*, float** %5, align 8
  %123 = call i32 @trap_R_SetColor(float* %122)
  %124 = load i32, i32* %2, align 4
  %125 = sub nsw i32 420, %124
  %126 = sext i32 %125 to i64
  %127 = load i32, i32* %2, align 4
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cgs, i32 0, i32 4, i32 0), align 8
  %129 = call i32 @CG_DrawPic(i64 0, i64 %126, i32 640, i32 %127, i32 %128)
  %130 = call i32 @trap_R_SetColor(float* null)
  %131 = load float*, float** %5, align 8
  %132 = getelementptr inbounds float, float* %131, i64 2
  store float 1.000000e+00, float* %132, align 4
  %133 = load float*, float** %5, align 8
  %134 = getelementptr inbounds float, float* %133, i64 1
  store float 1.000000e+00, float* %134, align 4
  %135 = load float*, float** %5, align 8
  %136 = getelementptr inbounds float, float* %135, i64 0
  store float 1.000000e+00, float* %136, align 4
  %137 = load float*, float** %5, align 8
  %138 = getelementptr inbounds float, float* %137, i64 3
  store float 1.000000e+00, float* %138, align 4
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cgs, i32 0, i32 1), align 4
  %140 = sub nsw i32 %139, 1
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %169, %121
  %142 = load i32, i32* %3, align 4
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cgs, i32 0, i32 0), align 8
  %144 = icmp sge i32 %142, %143
  br i1 %144, label %145, label %172

145:                                              ; preds = %141
  %146 = load i32, i32* @TINYCHAR_WIDTH, align 4
  %147 = add nsw i32 0, %146
  %148 = sext i32 %147 to i64
  %149 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cgs, i32 0, i32 1), align 4
  %150 = load i32, i32* %3, align 4
  %151 = sub nsw i32 %149, %150
  %152 = load i32, i32* @TINYCHAR_HEIGHT, align 4
  %153 = mul nsw i32 %151, %152
  %154 = sub nsw i32 420, %153
  %155 = sext i32 %154 to i64
  %156 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cgs, i32 0, i32 3), align 8
  %157 = load i32, i32* %3, align 4
  %158 = load i32, i32* %6, align 4
  %159 = srem i32 %157, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %156, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load float*, float** %5, align 8
  %164 = load i32, i32* @qfalse, align 4
  %165 = load i32, i32* @qfalse, align 4
  %166 = load i32, i32* @TINYCHAR_WIDTH, align 4
  %167 = load i32, i32* @TINYCHAR_HEIGHT, align 4
  %168 = call i32 @CG_DrawStringExt(i64 %148, i64 %155, i32 %162, float* %163, i32 %164, i32 %165, i32 %166, i32 %167, i32 0)
  br label %169

169:                                              ; preds = %145
  %170 = load i32, i32* %3, align 4
  %171 = add nsw i32 %170, -1
  store i32 %171, i32* %3, align 4
  br label %141

172:                                              ; preds = %141
  br label %173

173:                                              ; preds = %17, %172, %18
  ret void
}

declare dso_local i32 @CG_DrawStrlen(i32) #1

declare dso_local i32 @trap_R_SetColor(float*) #1

declare dso_local i32 @CG_DrawPic(i64, i64, i32, i32, i32) #1

declare dso_local i32 @CG_DrawStringExt(i64, i64, i32, float*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
