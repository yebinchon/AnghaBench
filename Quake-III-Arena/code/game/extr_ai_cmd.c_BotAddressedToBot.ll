; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_cmd.c_BotAddressedToBot.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_cmd.c_BotAddressedToBot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32 }
%struct.TYPE_10__ = type { i32, i64, i8* }

@MAX_MESSAGE_SIZE = common dso_local global i32 0, align 4
@NETNAME = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@ST_ADDRESSED = common dso_local global i32 0, align 4
@ADDRESSEE = common dso_local global i32 0, align 4
@MTCONTEXT_ADDRESSEE = common dso_local global i32 0, align 4
@MSG_EVERYONE = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4
@MSG_MULTIPLENAMES = common dso_local global i64 0, align 8
@TEAMMATE = common dso_local global i32 0, align 4
@MORE = common dso_local global i32 0, align 4
@MTCONTEXT_REPLYCHAT = common dso_local global i32 0, align 4
@MSG_CHATTELL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotAddressedToBot(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [128 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %15 = load i32, i32* @MAX_MESSAGE_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %19 = load i32, i32* @MAX_MESSAGE_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %8, align 8
  %22 = load i32, i32* @MAX_MESSAGE_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %9, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = load i32, i32* @NETNAME, align 4
  %27 = trunc i64 %20 to i32
  %28 = call i32 @trap_BotMatchVariable(%struct.TYPE_10__* %25, i32 %26, i8* %21, i32 %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = call i32 @ClientOnSameTeamFromName(%struct.TYPE_9__* %29, i8* %21)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* @qfalse, align 4
  store i32 %34, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %146

35:                                               ; preds = %2
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @ST_ADDRESSED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %119

42:                                               ; preds = %35
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = load i32, i32* @ADDRESSEE, align 4
  %45 = trunc i64 %16 to i32
  %46 = call i32 @trap_BotMatchVariable(%struct.TYPE_10__* %43, i32 %44, i8* %18, i32 %45)
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %51 = call i32 @ClientName(i32 %49, i8* %50, i32 128)
  br label %52

52:                                               ; preds = %116, %42
  %53 = load i32, i32* @MTCONTEXT_ADDRESSEE, align 4
  %54 = call i64 @trap_BotFindMatch(i8* %18, %struct.TYPE_10__* %12, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %117

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MSG_EVERYONE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @qtrue, align 4
  store i32 %62, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %146

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @MSG_MULTIPLENAMES, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %93

68:                                               ; preds = %63
  %69 = load i32, i32* @TEAMMATE, align 4
  %70 = trunc i64 %23 to i32
  %71 = call i32 @trap_BotMatchVariable(%struct.TYPE_10__* %12, i32 %69, i8* %24, i32 %70)
  %72 = call i64 @strlen(i8* %24)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %68
  %75 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %76 = call i64 @stristr(i8* %75, i8* %24)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* @qtrue, align 4
  store i32 %79, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %146

80:                                               ; preds = %74
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 @stristr(i8* %83, i8* %24)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load i32, i32* @qtrue, align 4
  store i32 %87, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %146

88:                                               ; preds = %80
  br label %89

89:                                               ; preds = %88, %68
  %90 = load i32, i32* @MORE, align 4
  %91 = load i32, i32* @MAX_MESSAGE_SIZE, align 4
  %92 = call i32 @trap_BotMatchVariable(%struct.TYPE_10__* %12, i32 %90, i8* %18, i32 %91)
  br label %115

93:                                               ; preds = %63
  %94 = load i32, i32* @TEAMMATE, align 4
  %95 = load i32, i32* @MAX_MESSAGE_SIZE, align 4
  %96 = call i32 @trap_BotMatchVariable(%struct.TYPE_10__* %12, i32 %94, i8* %24, i32 %95)
  %97 = call i64 @strlen(i8* %24)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %114

99:                                               ; preds = %93
  %100 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %101 = call i64 @stristr(i8* %100, i8* %24)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i32, i32* @qtrue, align 4
  store i32 %104, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %146

105:                                              ; preds = %99
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i64 @stristr(i8* %108, i8* %24)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = load i32, i32* @qtrue, align 4
  store i32 %112, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %146

113:                                              ; preds = %105
  br label %114

114:                                              ; preds = %113, %93
  br label %117

115:                                              ; preds = %89
  br label %116

116:                                              ; preds = %115
  br label %52

117:                                              ; preds = %114, %52
  %118 = load i32, i32* @qfalse, align 4
  store i32 %118, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %146

119:                                              ; preds = %35
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  store i64 0, i64* %120, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 2
  %123 = load i8*, i8** %122, align 8
  %124 = load i32, i32* @MTCONTEXT_REPLYCHAT, align 4
  %125 = call i64 @trap_BotFindMatch(i8* %123, %struct.TYPE_10__* %14, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %119
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @MSG_CHATTELL, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %143

132:                                              ; preds = %127, %119
  %133 = call float (...) @random()
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %135 = call i32 @NumPlayersOnSameTeam(%struct.TYPE_9__* %134)
  %136 = sub nsw i32 %135, 1
  %137 = sitofp i32 %136 to float
  %138 = fdiv float 1.000000e+00, %137
  %139 = fcmp ogt float %133, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %132
  %141 = load i32, i32* @qfalse, align 4
  store i32 %141, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %146

142:                                              ; preds = %132
  br label %143

143:                                              ; preds = %142, %127
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* @qtrue, align 4
  store i32 %145, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %146

146:                                              ; preds = %144, %140, %117, %111, %103, %86, %78, %61, %33
  %147 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %147)
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_BotMatchVariable(%struct.TYPE_10__*, i32, i8*, i32) #2

declare dso_local i32 @ClientOnSameTeamFromName(%struct.TYPE_9__*, i8*) #2

declare dso_local i32 @ClientName(i32, i8*, i32) #2

declare dso_local i64 @trap_BotFindMatch(i8*, %struct.TYPE_10__*, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @stristr(i8*, i8*) #2

declare dso_local float @random(...) #2

declare dso_local i32 @NumPlayersOnSameTeam(%struct.TYPE_9__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
