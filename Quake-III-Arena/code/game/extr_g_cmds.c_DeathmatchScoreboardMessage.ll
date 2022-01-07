; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_cmds.c_DeathmatchScoreboardMessage.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_cmds.c_DeathmatchScoreboardMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64*, i32, i32*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, i64* }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@level = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@CON_CONNECTING = common dso_local global i64 0, align 8
@PERS_RANK = common dso_local global i64 0, align 8
@PERS_KILLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c" %i %i %i %i %i %i %i %i %i %i %i %i %i %i\00", align 1
@PERS_SCORE = common dso_local global i64 0, align 8
@g_entities = common dso_local global %struct.TYPE_12__* null, align 8
@PERS_IMPRESSIVE_COUNT = common dso_local global i64 0, align 8
@PERS_EXCELLENT_COUNT = common dso_local global i64 0, align 8
@PERS_GAUNTLET_FRAG_COUNT = common dso_local global i64 0, align 8
@PERS_DEFEND_COUNT = common dso_local global i64 0, align 8
@PERS_ASSIST_COUNT = common dso_local global i64 0, align 8
@PERS_CAPTURES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"scores %i %i %i%s\00", align 1
@TEAM_RED = common dso_local global i64 0, align 8
@TEAM_BLUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DeathmatchScoreboardMessage(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca [1400 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %14 = getelementptr inbounds [1400 x i8], [1400 x i8]* %4, i64 0, i64 0
  store i8 0, i8* %14, align 16
  store i32 0, i32* %5, align 4
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 0), align 8
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %180, %1
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %183

20:                                               ; preds = %16
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 4), align 8
  %22 = load i64*, i64** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 1), align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i64 %26
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %8, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CON_CONNECTING, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  store i32 -1, i32* %13, align 4
  br label %49

35:                                               ; preds = %20
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %39, 999
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  br label %47

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46, %41
  %48 = phi i32 [ %45, %41 ], [ 999, %46 ]
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %47, %34
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %57, 100
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sdiv i32 %58, %61
  store i32 %62, i32* %11, align 4
  br label %64

63:                                               ; preds = %49
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %63, %54
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* @PERS_RANK, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %64
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = load i64*, i64** %76, align 8
  %78 = load i64, i64* @PERS_KILLED, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 0
  br label %82

82:                                               ; preds = %73, %64
  %83 = phi i1 [ false, %64 ], [ %81, %73 ]
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 1, i32 0
  store i32 %85, i32* %12, align 4
  %86 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %87 = load i64*, i64** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 1), align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = load i64*, i64** %94, align 8
  %96 = load i64, i64* @PERS_SCORE, align 8
  %97 = getelementptr inbounds i64, i64* %95, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 2), align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = sub nsw i32 %100, %104
  %106 = sdiv i32 %105, 60000
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** @g_entities, align 8
  %109 = load i64*, i64** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 1), align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %11, align 4
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  %122 = load i64*, i64** %121, align 8
  %123 = load i64, i64* @PERS_IMPRESSIVE_COUNT, align 8
  %124 = getelementptr inbounds i64, i64* %122, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  %129 = load i64*, i64** %128, align 8
  %130 = load i64, i64* @PERS_EXCELLENT_COUNT, align 8
  %131 = getelementptr inbounds i64, i64* %129, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = load i64*, i64** %135, align 8
  %137 = load i64, i64* @PERS_GAUNTLET_FRAG_COUNT, align 8
  %138 = getelementptr inbounds i64, i64* %136, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  %143 = load i64*, i64** %142, align 8
  %144 = load i64, i64* @PERS_DEFEND_COUNT, align 8
  %145 = getelementptr inbounds i64, i64* %143, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  %150 = load i64*, i64** %149, align 8
  %151 = load i64, i64* @PERS_ASSIST_COUNT, align 8
  %152 = getelementptr inbounds i64, i64* %150, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* %12, align 4
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 1
  %158 = load i64*, i64** %157, align 8
  %159 = load i64, i64* @PERS_CAPTURES, align 8
  %160 = getelementptr inbounds i64, i64* %158, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @Com_sprintf(i8* %86, i32 1024, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %91, i64 %98, i32 %99, i32 %106, i32 %107, i32 %117, i32 %118, i64 %125, i64 %132, i64 %139, i64 %146, i64 %153, i32 %154, i64 %161)
  %163 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %164 = call i32 @strlen(i8* %163)
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* %7, align 4
  %167 = add nsw i32 %165, %166
  %168 = icmp sgt i32 %167, 1024
  br i1 %168, label %169, label %170

169:                                              ; preds = %82
  br label %183

170:                                              ; preds = %82
  %171 = getelementptr inbounds [1400 x i8], [1400 x i8]* %4, i64 0, i64 0
  %172 = load i32, i32* %5, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  %175 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %176 = call i32 @strcpy(i8* %174, i8* %175)
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* %5, align 4
  %179 = add nsw i32 %178, %177
  store i32 %179, i32* %5, align 4
  br label %180

180:                                              ; preds = %170
  %181 = load i32, i32* %6, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %6, align 4
  br label %16

183:                                              ; preds = %169, %16
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** @g_entities, align 8
  %186 = ptrtoint %struct.TYPE_12__* %184 to i64
  %187 = ptrtoint %struct.TYPE_12__* %185 to i64
  %188 = sub i64 %186, %187
  %189 = sdiv exact i64 %188, 4
  %190 = trunc i64 %189 to i32
  %191 = load i32, i32* %6, align 4
  %192 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 3), align 8
  %193 = load i64, i64* @TEAM_RED, align 8
  %194 = getelementptr inbounds i32, i32* %192, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 3), align 8
  %197 = load i64, i64* @TEAM_BLUE, align 8
  %198 = getelementptr inbounds i32, i32* %196, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = getelementptr inbounds [1400 x i8], [1400 x i8]* %4, i64 0, i64 0
  %201 = call i32 @va(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %191, i32 %195, i32 %199, i8* %200)
  %202 = call i32 @trap_SendServerCommand(i32 %190, i32 %201)
  ret void
}

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i32, i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @trap_SendServerCommand(i32, i32) #1

declare dso_local i32 @va(i8*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
