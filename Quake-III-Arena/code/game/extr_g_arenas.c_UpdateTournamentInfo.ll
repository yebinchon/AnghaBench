; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_arenas.c_UpdateTournamentInfo.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_arenas.c_UpdateTournamentInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32*, i64*, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_16__, %struct.TYPE_12__ }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_15__*, %struct.TYPE_11__, i32 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_19__ = type { i64 }

@MAX_STRING_CHARS = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@g_entities = common dso_local global %struct.TYPE_17__* null, align 8
@SVF_BOT = common dso_local global i32 0, align 4
@TEAM_SPECTATOR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"postgame %i %i 0 0 0 0 0 0\00", align 1
@PERS_RANK = common dso_local global i64 0, align 8
@PERS_KILLED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"postgame %i %i %i %i %i %i %i %i\00", align 1
@PERS_IMPRESSIVE_COUNT = common dso_local global i64 0, align 8
@PERS_EXCELLENT_COUNT = common dso_local global i64 0, align 8
@PERS_GAUNTLET_FRAG_COUNT = common dso_local global i64 0, align 8
@PERS_SCORE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c" %i %i %i\00", align 1
@EXEC_APPEND = common dso_local global i32 0, align 4
@GT_CTF = common dso_local global i64 0, align 8
@PERS_ASSIST_COUNT = common dso_local global i64 0, align 8
@PERS_CAPTURES = common dso_local global i64 0, align 8
@PERS_DEFEND_COUNT = common dso_local global i64 0, align 8
@TEAM_BLUE = common dso_local global i64 0, align 8
@TEAM_RED = common dso_local global i64 0, align 8
@g_gametype = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UpdateTournamentInfo() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [32 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = load i32, i32* @MAX_STRING_CHARS, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %2, align 8
  store i32 0, i32* %1, align 4
  br label %17

17:                                               ; preds = %41, %0
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @level, i32 0, i32 0), align 8
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %17
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** @g_entities, align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i64 %24
  store %struct.TYPE_17__* %25, %struct.TYPE_17__** %2, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  br label %41

31:                                               ; preds = %21
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SVF_BOT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  br label %44

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %30
  %42 = load i32, i32* %1, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %1, align 4
  br label %17

44:                                               ; preds = %39, %17
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %46 = icmp ne %struct.TYPE_17__* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* %1, align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @level, i32 0, i32 0), align 8
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %44
  store i32 1, i32* %12, align 4
  br label %213

52:                                               ; preds = %47
  %53 = load i32, i32* %1, align 4
  store i32 %53, i32* %3, align 4
  %54 = call i32 (...) @CalculateRanks()
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @level, i32 0, i32 4), align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @TEAM_SPECTATOR, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %52
  %65 = trunc i64 %14 to i32
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @level, i32 0, i32 1), align 4
  %67 = load i32, i32* %3, align 4
  %68 = call i32 (i8*, i32, i8*, i32, i32, ...) @Com_sprintf(i8* %16, i32 %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67)
  br label %159

69:                                               ; preds = %52
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %69
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 %81, 100
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sdiv i32 %82, %87
  store i32 %88, i32* %5, align 4
  br label %90

89:                                               ; preds = %69
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %89, %76
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @level, i32 0, i32 4), align 8
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* @PERS_RANK, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %90
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i64*, i64** %107, align 8
  %109 = load i64, i64* @PERS_KILLED, align 8
  %110 = getelementptr inbounds i64, i64* %108, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %111, 0
  br label %113

113:                                              ; preds = %102, %90
  %114 = phi i1 [ false, %90 ], [ %112, %102 ]
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i32 1, i32 0
  store i32 %116, i32* %6, align 4
  %117 = trunc i64 %14 to i32
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @level, i32 0, i32 1), align 4
  %119 = load i32, i32* %3, align 4
  %120 = load i32, i32* %5, align 4
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i64*, i64** %125, align 8
  %127 = load i64, i64* @PERS_IMPRESSIVE_COUNT, align 8
  %128 = getelementptr inbounds i64, i64* %126, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = load i64*, i64** %134, align 8
  %136 = load i64, i64* @PERS_EXCELLENT_COUNT, align 8
  %137 = getelementptr inbounds i64, i64* %135, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  %144 = load i64*, i64** %143, align 8
  %145 = load i64, i64* @PERS_GAUNTLET_FRAG_COUNT, align 8
  %146 = getelementptr inbounds i64, i64* %144, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  %153 = load i64*, i64** %152, align 8
  %154 = load i64, i64* @PERS_SCORE, align 8
  %155 = getelementptr inbounds i64, i64* %153, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = load i32, i32* %6, align 4
  %158 = call i32 (i8*, i32, i8*, i32, i32, ...) @Com_sprintf(i8* %16, i32 %117, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %118, i32 %119, i32 %120, i64 %129, i64 %138, i64 %147, i64 %156, i32 %157)
  br label %159

159:                                              ; preds = %113, %64
  %160 = call i32 @strlen(i8* %16)
  store i32 %160, i32* %7, align 4
  store i32 0, i32* %1, align 4
  br label %161

161:                                              ; preds = %207, %159
  %162 = load i32, i32* %1, align 4
  %163 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @level, i32 0, i32 1), align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %210

165:                                              ; preds = %161
  %166 = load i64*, i64** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @level, i32 0, i32 3), align 8
  %167 = load i32, i32* %1, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64, i64* %166, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %4, align 4
  %172 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %173 = load i32, i32* %4, align 4
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @level, i32 0, i32 4), align 8
  %175 = load i32, i32* %4, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load i64, i64* @PERS_RANK, align 8
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @level, i32 0, i32 4), align 8
  %185 = load i32, i32* %4, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = load i64, i64* @PERS_SCORE, align 8
  %192 = getelementptr inbounds i32, i32* %190, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = call i32 (i8*, i32, i8*, i32, i32, ...) @Com_sprintf(i8* %172, i32 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %173, i32 %183, i32 %193)
  %195 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %196 = call i32 @strlen(i8* %195)
  store i32 %196, i32* %8, align 4
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* %8, align 4
  %199 = add nsw i32 %197, %198
  %200 = add nsw i32 %199, 1
  %201 = sext i32 %200 to i64
  %202 = icmp uge i64 %201, %14
  br i1 %202, label %203, label %204

203:                                              ; preds = %165
  br label %210

204:                                              ; preds = %165
  %205 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %206 = call i32 @strcat(i8* %16, i8* %205)
  br label %207

207:                                              ; preds = %204
  %208 = load i32, i32* %1, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %1, align 4
  br label %161

210:                                              ; preds = %203, %161
  %211 = load i32, i32* @EXEC_APPEND, align 4
  %212 = call i32 @trap_SendConsoleCommand(i32 %211, i8* %16)
  store i32 0, i32* %12, align 4
  br label %213

213:                                              ; preds = %210, %51
  %214 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %214)
  %215 = load i32, i32* %12, align 4
  switch i32 %215, label %217 [
    i32 0, label %216
    i32 1, label %216
  ]

216:                                              ; preds = %213, %213
  ret void

217:                                              ; preds = %213
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CalculateRanks(...) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32, i32, ...) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @trap_SendConsoleCommand(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
