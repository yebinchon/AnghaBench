; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_vcmd.c_BotVoiceChatCommand.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_vcmd.c_BotVoiceChatCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*, i32, i32)*, i64 }

@MAX_MESSAGE_SIZE = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@SAY_ALL = common dso_local global i32 0, align 4
@voiceCommands = common dso_local global %struct.TYPE_2__* null, align 8
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotVoiceChatCommand(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %17 = load i32, i32* @MAX_MESSAGE_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %13, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %14, align 8
  %21 = call i32 (...) @TeamPlayIsOn()
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @qfalse, align 4
  store i32 %24, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %186

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @SAY_ALL, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @qfalse, align 4
  store i32 %30, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %186

31:                                               ; preds = %25
  %32 = load i8*, i8** %7, align 8
  %33 = trunc i64 %18 to i32
  %34 = call i32 @Q_strncpyz(i8* %20, i8* %32, i32 %33)
  store i8* %20, i8** %15, align 8
  %35 = load i8*, i8** %15, align 8
  store i8* %35, i8** %12, align 8
  br label %36

36:                                               ; preds = %49, %31
  %37 = load i8*, i8** %15, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i8*, i8** %15, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp sgt i32 %44, 32
  br label %46

46:                                               ; preds = %41, %36
  %47 = phi i1 [ false, %36 ], [ %45, %41 ]
  br i1 %47, label %48, label %52

48:                                               ; preds = %46
  br label %49

49:                                               ; preds = %48
  %50 = load i8*, i8** %15, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %15, align 8
  br label %36

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %65, %52
  %54 = load i8*, i8** %15, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i8*, i8** %15, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp sle i32 %61, 32
  br label %63

63:                                               ; preds = %58, %53
  %64 = phi i1 [ false, %53 ], [ %62, %58 ]
  br i1 %64, label %65, label %68

65:                                               ; preds = %63
  %66 = load i8*, i8** %15, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %15, align 8
  store i8 0, i8* %66, align 1
  br label %53

68:                                               ; preds = %63
  %69 = load i8*, i8** %12, align 8
  %70 = call i32 @atoi(i8* %69)
  store i32 %70, i32* %9, align 4
  %71 = load i8*, i8** %15, align 8
  store i8* %71, i8** %12, align 8
  br label %72

72:                                               ; preds = %85, %68
  %73 = load i8*, i8** %15, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load i8*, i8** %15, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp sgt i32 %80, 32
  br label %82

82:                                               ; preds = %77, %72
  %83 = phi i1 [ false, %72 ], [ %81, %77 ]
  br i1 %83, label %84, label %88

84:                                               ; preds = %82
  br label %85

85:                                               ; preds = %84
  %86 = load i8*, i8** %15, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %15, align 8
  br label %72

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %101, %88
  %90 = load i8*, i8** %15, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load i8*, i8** %15, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp sle i32 %97, 32
  br label %99

99:                                               ; preds = %94, %89
  %100 = phi i1 [ false, %89 ], [ %98, %94 ]
  br i1 %100, label %101, label %104

101:                                              ; preds = %99
  %102 = load i8*, i8** %15, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %15, align 8
  store i8 0, i8* %102, align 1
  br label %89

104:                                              ; preds = %99
  %105 = load i8*, i8** %12, align 8
  %106 = call i32 @atoi(i8* %105)
  store i32 %106, i32* %10, align 4
  %107 = load i8*, i8** %15, align 8
  store i8* %107, i8** %12, align 8
  br label %108

108:                                              ; preds = %121, %104
  %109 = load i8*, i8** %15, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load i8*, i8** %15, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp sgt i32 %116, 32
  br label %118

118:                                              ; preds = %113, %108
  %119 = phi i1 [ false, %108 ], [ %117, %113 ]
  br i1 %119, label %120, label %124

120:                                              ; preds = %118
  br label %121

121:                                              ; preds = %120
  %122 = load i8*, i8** %15, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %15, align 8
  br label %108

124:                                              ; preds = %118
  br label %125

125:                                              ; preds = %137, %124
  %126 = load i8*, i8** %15, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load i8*, i8** %15, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp sle i32 %133, 32
  br label %135

135:                                              ; preds = %130, %125
  %136 = phi i1 [ false, %125 ], [ %134, %130 ]
  br i1 %136, label %137, label %140

137:                                              ; preds = %135
  %138 = load i8*, i8** %15, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %15, align 8
  store i8 0, i8* %138, align 1
  br label %125

140:                                              ; preds = %135
  %141 = load i8*, i8** %12, align 8
  %142 = call i32 @atoi(i8* %141)
  store i32 %142, i32* %11, align 4
  %143 = load i32*, i32** %5, align 8
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @BotSameTeam(i32* %143, i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %140
  %148 = load i32, i32* @qfalse, align 4
  store i32 %148, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %186

149:                                              ; preds = %140
  store i32 0, i32* %8, align 4
  br label %150

150:                                              ; preds = %181, %149
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** @voiceCommands, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %184

158:                                              ; preds = %150
  %159 = load i8*, i8** %15, align 8
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** @voiceCommands, align 8
  %161 = load i32, i32* %8, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @Q_stricmp(i8* %159, i64 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %180, label %168

168:                                              ; preds = %158
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** @voiceCommands, align 8
  %170 = load i32, i32* %8, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %173, align 8
  %175 = load i32*, i32** %5, align 8
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* %6, align 4
  %178 = call i32 %174(i32* %175, i32 %176, i32 %177)
  %179 = load i32, i32* @qtrue, align 4
  store i32 %179, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %186

180:                                              ; preds = %158
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %8, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %8, align 4
  br label %150

184:                                              ; preds = %150
  %185 = load i32, i32* @qfalse, align 4
  store i32 %185, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %186

186:                                              ; preds = %184, %168, %147, %29, %23
  %187 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %187)
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TeamPlayIsOn(...) #2

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @BotSameTeam(i32*, i32) #2

declare dso_local i32 @Q_stricmp(i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
