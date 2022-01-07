; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_chat.c_BotLoadRandomStrings.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_chat.c_BotLoadRandomStrings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (i32, i8*, i32)* }
%struct.TYPE_9__ = type { i8*, %struct.TYPE_8__*, i64, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i8*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i64, i8* }

@MAX_MESSAGE_SIZE = common dso_local global i32 0, align 4
@BOTFILESBASEFOLDER = common dso_local global i32 0, align 4
@botimport = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@PRT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"counldn't load %s\0A\00", align 1
@TT_NAME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"unknown random %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@PRT_MESSAGE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"loaded %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @BotLoadRandomStrings(i8* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %6, align 8
  %16 = load i32, i32* @MAX_MESSAGE_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  store i32 0, i32* %5, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %13, align 8
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %176, %1
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %179

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @GetClearedHunkMemory(i32 %30)
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %6, align 8
  br label %33

33:                                               ; preds = %29, %26, %23
  %34 = load i32, i32* @BOTFILESBASEFOLDER, align 4
  %35 = call i32 @PC_SetBaseFolder(i32 %34)
  %36 = load i8*, i8** %3, align 8
  %37 = call i32* @LoadSourceFile(i8* %36)
  store i32* %37, i32** %9, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %33
  %41 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @botimport, i32 0, i32 0), align 8
  %42 = load i32, i32* @PRT_ERROR, align 4
  %43 = load i8*, i8** %3, align 8
  %44 = ptrtoint i8* %43 to i32
  %45 = call i32 %41(i32 %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %44)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  store i32 1, i32* %15, align 4
  br label %186

46:                                               ; preds = %33
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %12, align 8
  br label %47

47:                                               ; preds = %172, %46
  %48 = load i32*, i32** %9, align 8
  %49 = call i64 @PC_ReadToken(i32* %48, %struct.TYPE_7__* %10)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %173

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @TT_NAME, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @SourceError(i32* %57, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @FreeSource(i32* %61)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  store i32 1, i32* %15, align 4
  br label %186

63:                                               ; preds = %51
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @strlen(i8* %65)
  %67 = add i64 32, %66
  %68 = add i64 %67, 1
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = add i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %109

75:                                               ; preds = %63
  %76 = load i8*, i8** %6, align 8
  %77 = bitcast i8* %76 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %77, %struct.TYPE_9__** %13, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 32
  store i8* %79, i8** %6, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = call i64 @strlen(i8* %84)
  %86 = add nsw i64 %85, 1
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 %86
  store i8* %88, i8** %6, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @strcpy(i8* %91, i8* %93)
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %96, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 2
  store i64 0, i64* %98, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %100 = icmp ne %struct.TYPE_9__* %99, null
  br i1 %100, label %101, label %105

101:                                              ; preds = %75
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 3
  store %struct.TYPE_9__* %102, %struct.TYPE_9__** %104, align 8
  br label %107

105:                                              ; preds = %75
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %106, %struct.TYPE_9__** %11, align 8
  br label %107

107:                                              ; preds = %105, %101
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %108, %struct.TYPE_9__** %12, align 8
  br label %109

109:                                              ; preds = %107, %63
  %110 = load i32*, i32** %9, align 8
  %111 = call i32 @PC_ExpectTokenString(i32* %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %109
  %114 = load i32*, i32** %9, align 8
  %115 = call i32 @PC_ExpectTokenString(i32* %114, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %113, %109
  %118 = load i32*, i32** %9, align 8
  %119 = call i32 @FreeSource(i32* %118)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  store i32 1, i32* %15, align 4
  br label %186

120:                                              ; preds = %113
  br label %121

121:                                              ; preds = %171, %120
  %122 = load i32*, i32** %9, align 8
  %123 = call i32 @PC_CheckTokenString(i32* %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %124 = icmp ne i32 %123, 0
  %125 = xor i1 %124, true
  br i1 %125, label %126, label %172

126:                                              ; preds = %121
  %127 = load i32*, i32** %9, align 8
  %128 = call i32 @BotLoadChatMessage(i32* %127, i8* %19)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %126
  %131 = load i32*, i32** %9, align 8
  %132 = call i32 @FreeSource(i32* %131)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  store i32 1, i32* %15, align 4
  br label %186

133:                                              ; preds = %126
  %134 = call i64 @strlen(i8* %19)
  %135 = add i64 16, %134
  %136 = add i64 %135, 1
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = add i64 %138, %136
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %5, align 4
  %141 = load i32, i32* %4, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %171

143:                                              ; preds = %133
  %144 = load i8*, i8** %6, align 8
  %145 = bitcast i8* %144 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %145, %struct.TYPE_8__** %14, align 8
  %146 = load i8*, i8** %6, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 16
  store i8* %147, i8** %6, align 8
  %148 = load i8*, i8** %6, align 8
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  store i8* %148, i8** %150, align 8
  %151 = call i64 @strlen(i8* %19)
  %152 = add nsw i64 %151, 1
  %153 = load i8*, i8** %6, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 %152
  store i8* %154, i8** %6, align 8
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 @strcpy(i8* %157, i8* %19)
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = add nsw i64 %161, 1
  store i64 %162, i64* %160, align 8
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %164, align 8
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 1
  store %struct.TYPE_8__* %165, %struct.TYPE_8__** %167, align 8
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 1
  store %struct.TYPE_8__* %168, %struct.TYPE_8__** %170, align 8
  br label %171

171:                                              ; preds = %143, %133
  br label %121

172:                                              ; preds = %121
  br label %47

173:                                              ; preds = %47
  %174 = load i32*, i32** %9, align 8
  %175 = call i32 @FreeSource(i32* %174)
  br label %176

176:                                              ; preds = %173
  %177 = load i32, i32* %4, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %4, align 4
  br label %20

179:                                              ; preds = %20
  %180 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @botimport, i32 0, i32 0), align 8
  %181 = load i32, i32* @PRT_MESSAGE, align 4
  %182 = load i8*, i8** %3, align 8
  %183 = ptrtoint i8* %182 to i32
  %184 = call i32 %180(i32 %181, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %183)
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %185, %struct.TYPE_9__** %2, align 8
  store i32 1, i32* %15, align 4
  br label %186

186:                                              ; preds = %179, %130, %117, %56, %40
  %187 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %187)
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  ret %struct.TYPE_9__* %188
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @GetClearedHunkMemory(i32) #2

declare dso_local i32 @PC_SetBaseFolder(i32) #2

declare dso_local i32* @LoadSourceFile(i8*) #2

declare dso_local i64 @PC_ReadToken(i32*, %struct.TYPE_7__*) #2

declare dso_local i32 @SourceError(i32*, i8*, i8*) #2

declare dso_local i32 @FreeSource(i32*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @PC_ExpectTokenString(i32*, i8*) #2

declare dso_local i32 @PC_CheckTokenString(i32*, i8*) #2

declare dso_local i32 @BotLoadChatMessage(i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
