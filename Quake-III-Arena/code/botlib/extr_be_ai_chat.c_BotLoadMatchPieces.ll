; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_chat.c_BotLoadMatchPieces.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_chat.c_BotLoadMatchPieces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__*, %struct.TYPE_10__*, i32 }
%struct.TYPE_9__ = type { i8*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i64, i32, i64, i64 }

@qfalse = common dso_local global i32 0, align 4
@TT_NUMBER = common dso_local global i64 0, align 8
@TT_INTEGER = common dso_local global i32 0, align 4
@MAX_MATCHVARIABLES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"can't have more than %d match variables\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"not allowed to have adjacent variables\0A\00", align 1
@qtrue = common dso_local global i32 0, align 4
@MT_VARIABLE = common dso_local global i32 0, align 4
@TT_STRING = common dso_local global i64 0, align 8
@MT_STRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"invalid token %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @BotLoadMatchPieces(i32* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %11, align 8
  %14 = load i32, i32* @qfalse, align 4
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %204, %2
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @PC_ReadToken(i32* %16, %struct.TYPE_8__* %8)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %205

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TT_NUMBER, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %80

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @TT_INTEGER, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %80

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MAX_MATCHVARIABLES, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %34, %30
  %40 = load i32*, i32** %4, align 8
  %41 = load i64, i64* @MAX_MATCHVARIABLES, align 8
  %42 = call i32 (i32*, i8*, ...) @SourceError(i32* %40, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %41)
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @FreeSource(i32* %43)
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %46 = call i32 @BotFreeMatchPieces(%struct.TYPE_10__* %45)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %207

47:                                               ; preds = %34
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 (i32*, i8*, ...) @SourceError(i32* %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @FreeSource(i32* %53)
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %56 = call i32 @BotFreeMatchPieces(%struct.TYPE_10__* %55)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %207

57:                                               ; preds = %47
  %58 = load i32, i32* @qtrue, align 4
  store i32 %58, i32* %6, align 4
  %59 = call i64 @GetClearedHunkMemory(i32 32)
  %60 = inttoptr i64 %59 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %60, %struct.TYPE_10__** %9, align 8
  %61 = load i32, i32* @MT_VARIABLE, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %69, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %71 = icmp ne %struct.TYPE_10__* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %57
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  store %struct.TYPE_10__* %73, %struct.TYPE_10__** %75, align 8
  br label %78

76:                                               ; preds = %57
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %77, %struct.TYPE_10__** %10, align 8
  br label %78

78:                                               ; preds = %76, %72
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %79, %struct.TYPE_10__** %11, align 8
  br label %189

80:                                               ; preds = %24, %19
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @TT_STRING, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %179

85:                                               ; preds = %80
  %86 = call i64 @GetClearedHunkMemory(i32 32)
  %87 = inttoptr i64 %86 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %87, %struct.TYPE_10__** %9, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %89, align 8
  %90 = load i32, i32* @MT_STRING, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 2
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %96, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %98 = icmp ne %struct.TYPE_10__* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %85
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 2
  store %struct.TYPE_10__* %100, %struct.TYPE_10__** %102, align 8
  br label %105

103:                                              ; preds = %85
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %104, %struct.TYPE_10__** %10, align 8
  br label %105

105:                                              ; preds = %103, %99
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %106, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %13, align 8
  %107 = load i32, i32* @qfalse, align 4
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %169, %105
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = icmp ne %struct.TYPE_9__* %111, null
  br i1 %112, label %113, label %124

113:                                              ; preds = %108
  %114 = load i32*, i32** %4, align 8
  %115 = load i64, i64* @TT_STRING, align 8
  %116 = call i32 @PC_ExpectTokenType(i32* %114, i64 %115, i32 0, %struct.TYPE_8__* %8)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %113
  %119 = load i32*, i32** %4, align 8
  %120 = call i32 @FreeSource(i32* %119)
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %122 = call i32 @BotFreeMatchPieces(%struct.TYPE_10__* %121)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %207

123:                                              ; preds = %113
  br label %124

124:                                              ; preds = %123, %108
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @StripDoubleQuotes(i64 %126)
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @strlen(i64 %129)
  %131 = sext i32 %130 to i64
  %132 = add i64 16, %131
  %133 = add i64 %132, 1
  %134 = trunc i64 %133 to i32
  %135 = call i64 @GetClearedHunkMemory(i32 %134)
  %136 = inttoptr i64 %135 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %136, %struct.TYPE_9__** %12, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %138 = bitcast %struct.TYPE_9__* %137 to i8*
  %139 = getelementptr inbounds i8, i8* %138, i64 16
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  store i8* %139, i8** %141, align 8
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @strcpy(i8* %144, i64 %146)
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @strlen(i64 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %124
  %153 = load i32, i32* @qtrue, align 4
  store i32 %153, i32* %7, align 4
  br label %154

154:                                              ; preds = %152, %124
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %156, align 8
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %158 = icmp ne %struct.TYPE_9__* %157, null
  br i1 %158, label %159, label %163

159:                                              ; preds = %154
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 1
  store %struct.TYPE_9__* %160, %struct.TYPE_9__** %162, align 8
  br label %167

163:                                              ; preds = %154
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 1
  store %struct.TYPE_9__* %164, %struct.TYPE_9__** %166, align 8
  br label %167

167:                                              ; preds = %163, %159
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %168, %struct.TYPE_9__** %13, align 8
  br label %169

169:                                              ; preds = %167
  %170 = load i32*, i32** %4, align 8
  %171 = call i64 @PC_CheckTokenString(i32* %170, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %108, label %173

173:                                              ; preds = %169
  %174 = load i32, i32* %7, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %173
  %177 = load i32, i32* @qfalse, align 4
  store i32 %177, i32* %6, align 4
  br label %178

178:                                              ; preds = %176, %173
  br label %188

179:                                              ; preds = %80
  %180 = load i32*, i32** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  %182 = load i64, i64* %181, align 8
  %183 = call i32 (i32*, i8*, ...) @SourceError(i32* %180, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 %182)
  %184 = load i32*, i32** %4, align 8
  %185 = call i32 @FreeSource(i32* %184)
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %187 = call i32 @BotFreeMatchPieces(%struct.TYPE_10__* %186)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %207

188:                                              ; preds = %178
  br label %189

189:                                              ; preds = %188, %78
  %190 = load i32*, i32** %4, align 8
  %191 = load i8*, i8** %5, align 8
  %192 = call i64 @PC_CheckTokenString(i32* %190, i8* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %189
  br label %205

195:                                              ; preds = %189
  %196 = load i32*, i32** %4, align 8
  %197 = call i32 @PC_ExpectTokenString(i32* %196, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %204, label %199

199:                                              ; preds = %195
  %200 = load i32*, i32** %4, align 8
  %201 = call i32 @FreeSource(i32* %200)
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %203 = call i32 @BotFreeMatchPieces(%struct.TYPE_10__* %202)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %207

204:                                              ; preds = %195
  br label %15

205:                                              ; preds = %194, %15
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %206, %struct.TYPE_10__** %3, align 8
  br label %207

207:                                              ; preds = %205, %199, %179, %118, %50, %39
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  ret %struct.TYPE_10__* %208
}

declare dso_local i64 @PC_ReadToken(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @SourceError(i32*, i8*, ...) #1

declare dso_local i32 @FreeSource(i32*) #1

declare dso_local i32 @BotFreeMatchPieces(%struct.TYPE_10__*) #1

declare dso_local i64 @GetClearedHunkMemory(i32) #1

declare dso_local i32 @PC_ExpectTokenType(i32*, i64, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @StripDoubleQuotes(i64) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @strcpy(i8*, i64) #1

declare dso_local i64 @PC_CheckTokenString(i32*, i8*) #1

declare dso_local i32 @PC_ExpectTokenString(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
