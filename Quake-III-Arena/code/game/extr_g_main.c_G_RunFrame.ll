; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_main.c_G_RunFrame.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_main.c_G_RunFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_21__ = type { i64, i32, i64, %struct.TYPE_20__, i64, i64, %struct.TYPE_19__, i64, i64, %struct.TYPE_18__* }
%struct.TYPE_20__ = type { i64, i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_23__ = type { i64 }

@level = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@g_entities = common dso_local global %struct.TYPE_21__* null, align 8
@EVENT_VALID_MSEC = common dso_local global i64 0, align 8
@qfalse = common dso_local global i64 0, align 8
@ET_MISSILE = common dso_local global i64 0, align 8
@ET_ITEM = common dso_local global i64 0, align 8
@ET_MOVER = common dso_local global i64 0, align 8
@MAX_CLIENTS = common dso_local global i32 0, align 4
@TEAM_RED = common dso_local global i32 0, align 4
@TEAM_BLUE = common dso_local global i32 0, align 4
@g_listEntity = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8
@MAX_GENTITIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%4i: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"g_listEntity\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @G_RunFrame(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @level, i32 0, i32 5), align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %207

11:                                               ; preds = %1
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @level, i32 0, i32 4), align 8
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @level, i32 0, i32 4), align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @level, i32 0, i32 1), align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @level, i32 0, i32 0), align 8
  %15 = load i32, i32* %2, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @level, i32 0, i32 1), align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @level, i32 0, i32 1), align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @level, i32 0, i32 0), align 8
  %18 = sub nsw i32 %16, %17
  store i32 %18, i32* %5, align 4
  %19 = call i32 (...) @G_UpdateCvars()
  %20 = call i32 (...) @trap_Milliseconds()
  store i32 %20, i32* %6, align 4
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** @g_entities, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i64 0
  store %struct.TYPE_21__* %22, %struct.TYPE_21__** %4, align 8
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %147, %11
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @level, i32 0, i32 2), align 8
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %152

27:                                               ; preds = %23
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %147

33:                                               ; preds = %27
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @level, i32 0, i32 1), align 4
  %35 = sext i32 %34 to i64
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %35, %38
  %40 = load i64, i64* @EVENT_VALID_MSEC, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %84

42:                                               ; preds = %33
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %42
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 9
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %53, align 8
  %55 = icmp ne %struct.TYPE_18__* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %48
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 9
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %56, %48
  br label %63

63:                                               ; preds = %62, %42
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 7
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %70 = call i32 @G_FreeEntity(%struct.TYPE_21__* %69)
  br label %147

71:                                               ; preds = %63
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 8
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load i64, i64* @qfalse, align 8
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 8
  store i64 %77, i64* %79, align 8
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %81 = call i32 @trap_UnlinkEntity(%struct.TYPE_21__* %80)
  br label %82

82:                                               ; preds = %76, %71
  br label %83

83:                                               ; preds = %82
  br label %84

84:                                               ; preds = %83, %33
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 7
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %147

90:                                               ; preds = %84
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 6
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %90
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 5
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %147

102:                                              ; preds = %96, %90
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @ET_MISSILE, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %111 = call i32 @G_RunMissile(%struct.TYPE_21__* %110)
  br label %147

112:                                              ; preds = %102
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @ET_ITEM, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %124, label %119

119:                                              ; preds = %112
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119, %112
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %126 = call i32 @G_RunItem(%struct.TYPE_21__* %125)
  br label %147

127:                                              ; preds = %119
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @ET_MOVER, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %127
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %136 = call i32 @G_RunMover(%struct.TYPE_21__* %135)
  br label %147

137:                                              ; preds = %127
  %138 = load i32, i32* %3, align 4
  %139 = load i32, i32* @MAX_CLIENTS, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %143 = call i32 @G_RunClient(%struct.TYPE_21__* %142)
  br label %147

144:                                              ; preds = %137
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %146 = call i32 @G_RunThink(%struct.TYPE_21__* %145)
  br label %147

147:                                              ; preds = %144, %141, %134, %124, %109, %101, %89, %68, %32
  %148 = load i32, i32* %3, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %3, align 4
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 1
  store %struct.TYPE_21__* %151, %struct.TYPE_21__** %4, align 8
  br label %23

152:                                              ; preds = %23
  %153 = call i32 (...) @trap_Milliseconds()
  store i32 %153, i32* %7, align 4
  %154 = call i32 (...) @trap_Milliseconds()
  store i32 %154, i32* %6, align 4
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** @g_entities, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i64 0
  store %struct.TYPE_21__* %156, %struct.TYPE_21__** %4, align 8
  store i32 0, i32* %3, align 4
  br label %157

157:                                              ; preds = %170, %152
  %158 = load i32, i32* %3, align 4
  %159 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @level, i32 0, i32 3), align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %175

161:                                              ; preds = %157
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %168 = call i32 @ClientEndFrame(%struct.TYPE_21__* %167)
  br label %169

169:                                              ; preds = %166, %161
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %3, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %3, align 4
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 1
  store %struct.TYPE_21__* %174, %struct.TYPE_21__** %4, align 8
  br label %157

175:                                              ; preds = %157
  %176 = call i32 (...) @trap_Milliseconds()
  store i32 %176, i32* %7, align 4
  %177 = call i32 (...) @CheckTournament()
  %178 = call i32 (...) @CheckExitRules()
  %179 = call i32 (...) @CheckTeamStatus()
  %180 = call i32 (...) @CheckVote()
  %181 = load i32, i32* @TEAM_RED, align 4
  %182 = call i32 @CheckTeamVote(i32 %181)
  %183 = load i32, i32* @TEAM_BLUE, align 4
  %184 = call i32 @CheckTeamVote(i32 %183)
  %185 = call i32 (...) @CheckCvars()
  %186 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @g_listEntity, i32 0, i32 0), align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %207

188:                                              ; preds = %175
  store i32 0, i32* %3, align 4
  br label %189

189:                                              ; preds = %202, %188
  %190 = load i32, i32* %3, align 4
  %191 = load i32, i32* @MAX_GENTITIES, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %205

193:                                              ; preds = %189
  %194 = load i32, i32* %3, align 4
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** @g_entities, align 8
  %196 = load i32, i32* %3, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @G_Printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %194, i32 %200)
  br label %202

202:                                              ; preds = %193
  %203 = load i32, i32* %3, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %3, align 4
  br label %189

205:                                              ; preds = %189
  %206 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %207

207:                                              ; preds = %10, %205, %175
  ret void
}

declare dso_local i32 @G_UpdateCvars(...) #1

declare dso_local i32 @trap_Milliseconds(...) #1

declare dso_local i32 @G_FreeEntity(%struct.TYPE_21__*) #1

declare dso_local i32 @trap_UnlinkEntity(%struct.TYPE_21__*) #1

declare dso_local i32 @G_RunMissile(%struct.TYPE_21__*) #1

declare dso_local i32 @G_RunItem(%struct.TYPE_21__*) #1

declare dso_local i32 @G_RunMover(%struct.TYPE_21__*) #1

declare dso_local i32 @G_RunClient(%struct.TYPE_21__*) #1

declare dso_local i32 @G_RunThink(%struct.TYPE_21__*) #1

declare dso_local i32 @ClientEndFrame(%struct.TYPE_21__*) #1

declare dso_local i32 @CheckTournament(...) #1

declare dso_local i32 @CheckExitRules(...) #1

declare dso_local i32 @CheckTeamStatus(...) #1

declare dso_local i32 @CheckVote(...) #1

declare dso_local i32 @CheckTeamVote(i32) #1

declare dso_local i32 @CheckCvars(...) #1

declare dso_local i32 @G_Printf(i8*, i32, i32) #1

declare dso_local i32 @trap_Cvar_Set(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
