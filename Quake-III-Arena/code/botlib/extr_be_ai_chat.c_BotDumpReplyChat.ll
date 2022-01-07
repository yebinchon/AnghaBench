; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_chat.c_BotDumpReplyChat.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_chat.c_BotDumpReplyChat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { double, %struct.TYPE_11__*, %struct.TYPE_8__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i8*, %struct.TYPE_11__* }
%struct.TYPE_8__ = type { i32, i8*, %struct.TYPE_8__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_10__*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }

@.str = private unnamed_addr constant [19 x i8] c"BotDumpReplyChat:\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@RCKFL_AND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@RCKFL_NOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@RCKFL_NAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@RCKFL_GENDERFEMALE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"female\00", align 1
@RCKFL_GENDERMALE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"male\00", align 1
@RCKFL_GENDERLESS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"it\00", align 1
@RCKFL_VARIABLES = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@MT_STRING = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c")\00", align 1
@RCKFL_STRING = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [11 x i8] c"] = %1.0f\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"\09\22%s\22;\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotDumpReplyChat(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %8 = call i32* (...) @Log_FilePointer()
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %204

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 (i32*, i8*, ...) @fprintf(i32* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %4, align 8
  br label %16

16:                                               ; preds = %200, %12
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, null
  br i1 %18, label %19, label %204

19:                                               ; preds = %16
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 (i32*, i8*, ...) @fprintf(i32* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %5, align 8
  br label %25

25:                                               ; preds = %174, %19
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = icmp ne %struct.TYPE_8__* %26, null
  br i1 %27, label %28, label %178

28:                                               ; preds = %25
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @RCKFL_AND, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 (i32*, i8*, ...) @fprintf(i32* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %49

38:                                               ; preds = %28
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @RCKFL_NOT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 (i32*, i8*, ...) @fprintf(i32* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %38
  br label %49

49:                                               ; preds = %48, %35
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @RCKFL_NAME, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 (i32*, i8*, ...) @fprintf(i32* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %159

59:                                               ; preds = %49
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @RCKFL_GENDERFEMALE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 (i32*, i8*, ...) @fprintf(i32* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %158

69:                                               ; preds = %59
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @RCKFL_GENDERMALE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 (i32*, i8*, ...) @fprintf(i32* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %157

79:                                               ; preds = %69
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @RCKFL_GENDERLESS, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load i32*, i32** %3, align 8
  %88 = call i32 (i32*, i8*, ...) @fprintf(i32* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %156

89:                                               ; preds = %79
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @RCKFL_VARIABLES, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %141

96:                                               ; preds = %89
  %97 = load i32*, i32** %3, align 8
  %98 = call i32 (i32*, i8*, ...) @fprintf(i32* %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  store %struct.TYPE_10__* %101, %struct.TYPE_10__** %7, align 8
  br label %102

102:                                              ; preds = %134, %96
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %104 = icmp ne %struct.TYPE_10__* %103, null
  br i1 %104, label %105, label %138

105:                                              ; preds = %102
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @MT_STRING, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %105
  %112 = load i32*, i32** %3, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 3
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 (i32*, i8*, ...) @fprintf(i32* %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %117)
  br label %125

119:                                              ; preds = %105
  %120 = load i32*, i32** %3, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 (i32*, i8*, ...) @fprintf(i32* %120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %119, %111
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  %129 = icmp ne %struct.TYPE_10__* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = load i32*, i32** %3, align 8
  %132 = call i32 (i32*, i8*, ...) @fprintf(i32* %131, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  br label %133

133:                                              ; preds = %130, %125
  br label %134

134:                                              ; preds = %133
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  store %struct.TYPE_10__* %137, %struct.TYPE_10__** %7, align 8
  br label %102

138:                                              ; preds = %102
  %139 = load i32*, i32** %3, align 8
  %140 = call i32 (i32*, i8*, ...) @fprintf(i32* %139, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %155

141:                                              ; preds = %89
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @RCKFL_STRING, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %141
  %149 = load i32*, i32** %3, align 8
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 (i32*, i8*, ...) @fprintf(i32* %149, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %152)
  br label %154

154:                                              ; preds = %148, %141
  br label %155

155:                                              ; preds = %154, %138
  br label %156

156:                                              ; preds = %155, %86
  br label %157

157:                                              ; preds = %156, %76
  br label %158

158:                                              ; preds = %157, %66
  br label %159

159:                                              ; preds = %158, %56
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 2
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %161, align 8
  %163 = icmp ne %struct.TYPE_8__* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %159
  %165 = load i32*, i32** %3, align 8
  %166 = call i32 (i32*, i8*, ...) @fprintf(i32* %165, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  br label %173

167:                                              ; preds = %159
  %168 = load i32*, i32** %3, align 8
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load double, double* %170, align 8
  %172 = call i32 (i32*, i8*, ...) @fprintf(i32* %168, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), double %171)
  br label %173

173:                                              ; preds = %167, %164
  br label %174

174:                                              ; preds = %173
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %176, align 8
  store %struct.TYPE_8__* %177, %struct.TYPE_8__** %5, align 8
  br label %25

178:                                              ; preds = %25
  %179 = load i32*, i32** %3, align 8
  %180 = call i32 (i32*, i8*, ...) @fprintf(i32* %179, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %182, align 8
  store %struct.TYPE_11__* %183, %struct.TYPE_11__** %6, align 8
  br label %184

184:                                              ; preds = %193, %178
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %186 = icmp ne %struct.TYPE_11__* %185, null
  br i1 %186, label %187, label %197

187:                                              ; preds = %184
  %188 = load i32*, i32** %3, align 8
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = call i32 (i32*, i8*, ...) @fprintf(i32* %188, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* %191)
  br label %193

193:                                              ; preds = %187
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %195, align 8
  store %struct.TYPE_11__* %196, %struct.TYPE_11__** %6, align 8
  br label %184

197:                                              ; preds = %184
  %198 = load i32*, i32** %3, align 8
  %199 = call i32 (i32*, i8*, ...) @fprintf(i32* %198, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  br label %200

200:                                              ; preds = %197
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 3
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %202, align 8
  store %struct.TYPE_9__* %203, %struct.TYPE_9__** %4, align 8
  br label %16

204:                                              ; preds = %11, %16
  ret void
}

declare dso_local i32* @Log_FilePointer(...) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
