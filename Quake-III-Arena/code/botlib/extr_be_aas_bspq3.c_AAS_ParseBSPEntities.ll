; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_bspq3.c_AAS_ParseBSPEntities.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_bspq3.c_AAS_ParseBSPEntities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8*, i8*, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i32 (i32, i8*)* }
%struct.TYPE_8__ = type { i64, i32 }

@bspworld = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i8] c"entdata\00", align 1
@SCFL_NOSTRINGWHITESPACES = common dso_local global i32 0, align 4
@SCFL_NOSTRINGESCAPECHARS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"invalid %s\0A\00", align 1
@MAX_BSPENTITIES = common dso_local global i32 0, align 4
@botimport = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@PRT_MESSAGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"too many entities in BSP file\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@TT_STRING = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"missing }\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_ParseBSPEntities() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_8__, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bspworld, i32 0, i32 3), align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bspworld, i32 0, i32 2), align 8
  %7 = call i32* @LoadScriptMemory(i32 %5, i32 %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32* %7, i32** %1, align 8
  %8 = load i32*, i32** %1, align 8
  %9 = load i32, i32* @SCFL_NOSTRINGWHITESPACES, align 4
  %10 = load i32, i32* @SCFL_NOSTRINGESCAPECHARS, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @SetScriptFlags(i32* %8, i32 %11)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bspworld, i32 0, i32 0), align 8
  br label %13

13:                                               ; preds = %135, %0
  %14 = load i32*, i32** %1, align 8
  %15 = call i64 @PS_ReadToken(i32* %14, %struct.TYPE_8__* %2)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %136

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @strcmp(i32 %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load i32*, i32** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i32*, i8*, ...) @ScriptError(i32* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = call i32 (...) @AAS_FreeBSPEntities()
  %28 = load i32*, i32** %1, align 8
  %29 = call i32 @FreeScript(i32* %28)
  br label %139

30:                                               ; preds = %17
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bspworld, i32 0, i32 0), align 8
  %32 = load i32, i32* @MAX_BSPENTITIES, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @botimport, i32 0, i32 0), align 8
  %36 = load i32, i32* @PRT_MESSAGE, align 4
  %37 = call i32 %35(i32 %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %136

38:                                               ; preds = %30
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bspworld, i32 0, i32 1), align 8
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bspworld, i32 0, i32 0), align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i64 %41
  store %struct.TYPE_10__* %42, %struct.TYPE_10__** %3, align 8
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bspworld, i32 0, i32 0), align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bspworld, i32 0, i32 0), align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %46, align 8
  br label %47

47:                                               ; preds = %106, %38
  %48 = load i32*, i32** %1, align 8
  %49 = call i64 @PS_ReadToken(i32* %48, %struct.TYPE_8__* %2)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %124

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @strcmp(i32 %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %124

57:                                               ; preds = %51
  %58 = call i64 @GetClearedHunkMemory(i32 24)
  %59 = inttoptr i64 %58 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %59, %struct.TYPE_9__** %4, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  store %struct.TYPE_9__* %62, %struct.TYPE_9__** %64, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  store %struct.TYPE_9__* %65, %struct.TYPE_9__** %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @TT_STRING, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %57
  %73 = load i32*, i32** %1, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i32*, i8*, ...) @ScriptError(i32* %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = call i32 (...) @AAS_FreeBSPEntities()
  %78 = load i32*, i32** %1, align 8
  %79 = call i32 @FreeScript(i32* %78)
  br label %139

80:                                               ; preds = %57
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @StripDoubleQuotes(i32 %82)
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @strlen(i32 %85)
  %87 = add nsw i64 %86, 1
  %88 = call i64 @GetHunkMemory(i64 %87)
  %89 = inttoptr i64 %88 to i8*
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @strcpy(i8* %94, i32 %96)
  %98 = load i32*, i32** %1, align 8
  %99 = load i64, i64* @TT_STRING, align 8
  %100 = call i32 @PS_ExpectTokenType(i32* %98, i64 %99, i32 0, %struct.TYPE_8__* %2)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %80
  %103 = call i32 (...) @AAS_FreeBSPEntities()
  %104 = load i32*, i32** %1, align 8
  %105 = call i32 @FreeScript(i32* %104)
  br label %139

106:                                              ; preds = %80
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @StripDoubleQuotes(i32 %108)
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i64 @strlen(i32 %111)
  %113 = add nsw i64 %112, 1
  %114 = call i64 @GetHunkMemory(i64 %113)
  %115 = inttoptr i64 %114 to i8*
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  store i8* %115, i8** %117, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @strcpy(i8* %120, i32 %122)
  br label %47

124:                                              ; preds = %56, %47
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @strcmp(i32 %126, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %124
  %130 = load i32*, i32** %1, align 8
  %131 = call i32 (i32*, i8*, ...) @ScriptError(i32* %130, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %132 = call i32 (...) @AAS_FreeBSPEntities()
  %133 = load i32*, i32** %1, align 8
  %134 = call i32 @FreeScript(i32* %133)
  br label %139

135:                                              ; preds = %124
  br label %13

136:                                              ; preds = %34, %13
  %137 = load i32*, i32** %1, align 8
  %138 = call i32 @FreeScript(i32* %137)
  br label %139

139:                                              ; preds = %136, %129, %102, %72, %22
  ret void
}

declare dso_local i32* @LoadScriptMemory(i32, i32, i8*) #1

declare dso_local i32 @SetScriptFlags(i32*, i32) #1

declare dso_local i64 @PS_ReadToken(i32*, %struct.TYPE_8__*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @ScriptError(i32*, i8*, ...) #1

declare dso_local i32 @AAS_FreeBSPEntities(...) #1

declare dso_local i32 @FreeScript(i32*) #1

declare dso_local i64 @GetClearedHunkMemory(i32) #1

declare dso_local i32 @StripDoubleQuotes(i32) #1

declare dso_local i64 @GetHunkMemory(i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @PS_ExpectTokenType(i32*, i64, i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
