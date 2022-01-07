; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_chat.c_BotLoadMatchTemplates.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_chat.c_BotLoadMatchTemplates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (i32, i8*, i8*)* }
%struct.TYPE_9__ = type { i64, i64, i64, i32, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i64, i32, i64, i32 }

@BOTFILESBASEFOLDER = common dso_local global i32 0, align 4
@botimport = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@PRT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"counldn't load %s\0A\00", align 1
@TT_NUMBER = common dso_local global i64 0, align 8
@TT_INTEGER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"expected integer, found %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c";\00", align 1
@PRT_MESSAGE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"loaded %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @BotLoadMatchTemplates(i8* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %10 = load i32, i32* @BOTFILESBASEFOLDER, align 4
  %11 = call i32 @PC_SetBaseFolder(i32 %10)
  %12 = load i8*, i8** %3, align 8
  %13 = call i32* @LoadSourceFile(i8* %12)
  store i32* %13, i32** %4, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @botimport, i32 0, i32 0), align 8
  %18 = load i32, i32* @PRT_ERROR, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 %17(i32 %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %19)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %160

21:                                               ; preds = %1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %8, align 8
  br label %22

22:                                               ; preds = %151, %21
  %23 = load i32*, i32** %4, align 8
  %24 = call i64 @PC_ReadToken(i32* %23, %struct.TYPE_8__* %5)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %152

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TT_NUMBER, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @TT_INTEGER, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %31, %26
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @SourceError(i32* %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = call i32 @BotFreeMatchTemplates(%struct.TYPE_9__* %42)
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @FreeSource(i32* %44)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %160

46:                                               ; preds = %31
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %9, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @PC_ExpectTokenString(i32* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %46
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %54 = call i32 @BotFreeMatchTemplates(%struct.TYPE_9__* %53)
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @FreeSource(i32* %55)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %160

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %150, %57
  %59 = load i32*, i32** %4, align 8
  %60 = call i64 @PC_ReadToken(i32* %59, %struct.TYPE_8__* %5)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %151

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @strcmp(i32 %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  br label %151

68:                                               ; preds = %62
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @PC_UnreadLastToken(i32* %69)
  %71 = call i64 @GetClearedHunkMemory(i32 40)
  %72 = inttoptr i64 %71 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %72, %struct.TYPE_9__** %6, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %77, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %79 = icmp ne %struct.TYPE_9__* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %68
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 4
  store %struct.TYPE_9__* %81, %struct.TYPE_9__** %83, align 8
  br label %86

84:                                               ; preds = %68
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %85, %struct.TYPE_9__** %7, align 8
  br label %86

86:                                               ; preds = %84, %80
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %87, %struct.TYPE_9__** %8, align 8
  %88 = load i32*, i32** %4, align 8
  %89 = call i32 @BotLoadMatchPieces(i32* %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %86
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %98 = call i32 @BotFreeMatchTemplates(%struct.TYPE_9__* %97)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %160

99:                                               ; preds = %86
  %100 = load i32*, i32** %4, align 8
  %101 = call i32 @PC_ExpectTokenString(i32* %100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %99
  %104 = load i32*, i32** %4, align 8
  %105 = load i64, i64* @TT_NUMBER, align 8
  %106 = load i32, i32* @TT_INTEGER, align 4
  %107 = call i32 @PC_ExpectTokenType(i32* %104, i64 %105, i32 %106, %struct.TYPE_8__* %5)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %103, %99
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %111 = call i32 @BotFreeMatchTemplates(%struct.TYPE_9__* %110)
  %112 = load i32*, i32** %4, align 8
  %113 = call i32 @FreeSource(i32* %112)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %160

114:                                              ; preds = %103
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  store i64 %116, i64* %118, align 8
  %119 = load i32*, i32** %4, align 8
  %120 = call i32 @PC_ExpectTokenString(i32* %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %114
  %123 = load i32*, i32** %4, align 8
  %124 = load i64, i64* @TT_NUMBER, align 8
  %125 = load i32, i32* @TT_INTEGER, align 4
  %126 = call i32 @PC_ExpectTokenType(i32* %123, i64 %124, i32 %125, %struct.TYPE_8__* %5)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %122, %114
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %130 = call i32 @BotFreeMatchTemplates(%struct.TYPE_9__* %129)
  %131 = load i32*, i32** %4, align 8
  %132 = call i32 @FreeSource(i32* %131)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %160

133:                                              ; preds = %122
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 2
  store i64 %135, i64* %137, align 8
  %138 = load i32*, i32** %4, align 8
  %139 = call i32 @PC_ExpectTokenString(i32* %138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %133
  %142 = load i32*, i32** %4, align 8
  %143 = call i32 @PC_ExpectTokenString(i32* %142, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %141, %133
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %147 = call i32 @BotFreeMatchTemplates(%struct.TYPE_9__* %146)
  %148 = load i32*, i32** %4, align 8
  %149 = call i32 @FreeSource(i32* %148)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %160

150:                                              ; preds = %141
  br label %58

151:                                              ; preds = %67, %58
  br label %22

152:                                              ; preds = %22
  %153 = load i32*, i32** %4, align 8
  %154 = call i32 @FreeSource(i32* %153)
  %155 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @botimport, i32 0, i32 0), align 8
  %156 = load i32, i32* @PRT_MESSAGE, align 4
  %157 = load i8*, i8** %3, align 8
  %158 = call i32 %155(i32 %156, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* %157)
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* %159, %struct.TYPE_9__** %2, align 8
  br label %160

160:                                              ; preds = %152, %145, %128, %109, %96, %52, %37, %16
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  ret %struct.TYPE_9__* %161
}

declare dso_local i32 @PC_SetBaseFolder(i32) #1

declare dso_local i32* @LoadSourceFile(i8*) #1

declare dso_local i64 @PC_ReadToken(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @SourceError(i32*, i8*, i32) #1

declare dso_local i32 @BotFreeMatchTemplates(%struct.TYPE_9__*) #1

declare dso_local i32 @FreeSource(i32*) #1

declare dso_local i32 @PC_ExpectTokenString(i32*, i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @PC_UnreadLastToken(i32*) #1

declare dso_local i64 @GetClearedHunkMemory(i32) #1

declare dso_local i32 @BotLoadMatchPieces(i32*, i8*) #1

declare dso_local i32 @PC_ExpectTokenType(i32*, i64, i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
