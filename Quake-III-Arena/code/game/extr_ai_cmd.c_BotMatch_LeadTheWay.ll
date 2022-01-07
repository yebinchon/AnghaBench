; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_cmd.c_BotMatch_LeadTheWay.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_cmd.c_BotMatch_LeadTheWay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i64, i64, i32, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32, i64 }

@MAX_MESSAGE_SIZE = common dso_local global i32 0, align 4
@ST_SOMEONE = common dso_local global i32 0, align 4
@TEAMMATE = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@NETNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"whois\00", align 1
@CHAT_TEAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"whereis\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"whereareyou\00", align 1
@TEAM_LEAD_TIME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotMatch_LeadTheWay(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_18__, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %13 = load i32, i32* @MAX_MESSAGE_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i32, i32* @MAX_MESSAGE_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %20 = call i32 (...) @TeamPlayIsOn()
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 1, i32* %12, align 4
  br label %165

23:                                               ; preds = %2
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %26 = call i32 @BotAddressedToBot(%struct.TYPE_16__* %24, %struct.TYPE_17__* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 1, i32* %12, align 4
  br label %165

29:                                               ; preds = %23
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ST_SOMEONE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %29
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %38 = load i32, i32* @TEAMMATE, align 4
  %39 = trunc i64 %18 to i32
  %40 = call i32 @trap_BotMatchVariable(%struct.TYPE_17__* %37, i32 %38, i8* %19, i32 %39)
  %41 = call i32 @FindClientByName(i8* %19)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* @qfalse, align 4
  store i32 %48, i32* %11, align 4
  br label %58

49:                                               ; preds = %36
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @BotSameTeam(%struct.TYPE_16__* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  store i32 1, i32* %12, align 4
  br label %165

55:                                               ; preds = %49
  %56 = load i32, i32* @qtrue, align 4
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %55
  br label %58

58:                                               ; preds = %57, %47
  br label %66

59:                                               ; preds = %29
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %61 = load i32, i32* @NETNAME, align 4
  %62 = trunc i64 %14 to i32
  %63 = call i32 @trap_BotMatchVariable(%struct.TYPE_17__* %60, i32 %61, i8* %16, i32 %62)
  %64 = call i32 @ClientFromName(i8* %16)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* @qfalse, align 4
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %59, %58
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %66
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %71 = call i32 @BotAI_BotInitialChat(%struct.TYPE_16__* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %16, i32* null)
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @CHAT_TEAM, align 4
  %79 = call i32 @trap_BotEnterChat(i32 %74, i32 %77, i32 %78)
  store i32 1, i32* %12, align 4
  br label %165

80:                                               ; preds = %66
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 7
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  store i32 -1, i32* %83, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @BotEntityInfo(i32 %84, %struct.TYPE_18__* %5)
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %122

89:                                               ; preds = %80
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @BotPointAreaNum(i32 %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %121

95:                                               ; preds = %89
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 7
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 7
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 1
  store i32 %100, i32* %103, align 4
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 7
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @VectorCopy(i32 %105, i32 %109)
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 7
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @VectorSet(i32 %114, i32 -8, i32 -8, i32 -8)
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 7
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @VectorSet(i32 %119, i32 8, i32 8, i32 8)
  br label %121

121:                                              ; preds = %95, %89
  br label %122

122:                                              ; preds = %121, %80
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 6
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %146

128:                                              ; preds = %122
  %129 = load i32, i32* %11, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %133 = call i32 @BotAI_BotInitialChat(%struct.TYPE_16__* %132, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %19, i32* null)
  br label %137

134:                                              ; preds = %128
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %136 = call i32 @BotAI_BotInitialChat(%struct.TYPE_16__* %135, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %16, i32* null)
  br label %137

137:                                              ; preds = %134, %131
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @CHAT_TEAM, align 4
  %145 = call i32 @trap_BotEnterChat(i32 %140, i32 %143, i32 %144)
  store i32 1, i32* %12, align 4
  br label %165

146:                                              ; preds = %122
  %147 = load i32, i32* %9, align 4
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  %150 = call i32 (...) @FloatTime()
  %151 = sext i32 %150 to i64
  %152 = load i64, i64* @TEAM_LEAD_TIME, align 8
  %153 = add nsw i64 %151, %152
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 4
  store i64 %153, i64* %155, align 8
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 3
  store i64 0, i64* %157, align 8
  %158 = call i32 (...) @FloatTime()
  %159 = call i32 (...) @random()
  %160 = mul nsw i32 2, %159
  %161 = add nsw i32 %158, %160
  %162 = sub nsw i32 0, %161
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 8
  store i32 0, i32* %12, align 4
  br label %165

165:                                              ; preds = %146, %137, %69, %54, %28, %22
  %166 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %166)
  %167 = load i32, i32* %12, align 4
  switch i32 %167, label %169 [
    i32 0, label %168
    i32 1, label %168
  ]

168:                                              ; preds = %165, %165
  ret void

169:                                              ; preds = %165
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TeamPlayIsOn(...) #2

declare dso_local i32 @BotAddressedToBot(%struct.TYPE_16__*, %struct.TYPE_17__*) #2

declare dso_local i32 @trap_BotMatchVariable(%struct.TYPE_17__*, i32, i8*, i32) #2

declare dso_local i32 @FindClientByName(i8*) #2

declare dso_local i32 @BotSameTeam(%struct.TYPE_16__*, i32) #2

declare dso_local i32 @ClientFromName(i8*) #2

declare dso_local i32 @BotAI_BotInitialChat(%struct.TYPE_16__*, i8*, i8*, i32*) #2

declare dso_local i32 @trap_BotEnterChat(i32, i32, i32) #2

declare dso_local i32 @BotEntityInfo(i32, %struct.TYPE_18__*) #2

declare dso_local i32 @BotPointAreaNum(i32) #2

declare dso_local i32 @VectorCopy(i32, i32) #2

declare dso_local i32 @VectorSet(i32, i32, i32, i32) #2

declare dso_local i32 @FloatTime(...) #2

declare dso_local i32 @random(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
