; ModuleID = '/home/carl/AnghaBench/disque/src/extr_disque-cli.c_repl.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_disque-cli.c_repl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i64, i64, i8*, i32 }

@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@completionCallback = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%s/.disque_history\00", align 1
@context = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"not connected> \00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Invalid argument(s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@REDIS_OK = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"(%.2fs)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @repl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @repl() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %10 = call i32 @linenoiseSetMultiLine(i32 1)
  %11 = load i32, i32* @completionCallback, align 4
  %12 = call i32 @linenoiseSetCompletionCallback(i32 %11)
  %13 = load i32, i32* @stdin, align 4
  %14 = call i32 @fileno(i32 %13)
  %15 = call i64 @isatty(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %0
  store i32 1, i32* %2, align 4
  %18 = call i32* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = call i32 (...) @sdsempty()
  %22 = call i32* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %23 = call i32* @sdscatprintf(i32 %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* %22)
  store i32* %23, i32** %1, align 8
  %24 = load i32*, i32** %1, align 8
  %25 = call i32 @linenoiseHistoryLoad(i32* %24)
  br label %26

26:                                               ; preds = %20, %17
  br label %27

27:                                               ; preds = %26, %0
  %28 = call i32 (...) @cliRefreshPrompt()
  br label %29

29:                                               ; preds = %189, %62, %27
  %30 = load i64, i64* @context, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 8
  br label %35

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i8* [ %33, %32 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), %34 ]
  %37 = call i8* @linenoise(i8* %36)
  store i8* %37, i8** %3, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %192

39:                                               ; preds = %35
  %40 = load i8*, i8** %3, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %189

45:                                               ; preds = %39
  %46 = load i8*, i8** %3, align 8
  %47 = call i32** @sdssplitargs(i8* %46, i32* %4)
  store i32** %47, i32*** %5, align 8
  %48 = load i32, i32* %2, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 @linenoiseHistoryAdd(i8* %51)
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i32*, i32** %1, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32*, i32** %1, align 8
  %58 = call i32 @linenoiseHistorySave(i32* %57)
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i32**, i32*** %5, align 8
  %61 = icmp eq i32** %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %64 = load i8*, i8** %3, align 8
  %65 = call i32 @free(i8* %64)
  br label %29

66:                                               ; preds = %59
  %67 = load i32, i32* %4, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %184

69:                                               ; preds = %66
  %70 = load i32**, i32*** %5, align 8
  %71 = getelementptr inbounds i32*, i32** %70, i64 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i64 @strcasecmp(i32* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  %76 = load i32**, i32*** %5, align 8
  %77 = getelementptr inbounds i32*, i32** %76, i64 0
  %78 = load i32*, i32** %77, align 8
  %79 = call i64 @strcasecmp(i32* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75, %69
  %82 = call i32 @exit(i32 0) #3
  unreachable

83:                                               ; preds = %75
  %84 = load i32, i32* %4, align 4
  %85 = icmp eq i32 %84, 3
  br i1 %85, label %86, label %105

86:                                               ; preds = %83
  %87 = load i32**, i32*** %5, align 8
  %88 = getelementptr inbounds i32*, i32** %87, i64 0
  %89 = load i32*, i32** %88, align 8
  %90 = call i64 @strcasecmp(i32* %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %105, label %92

92:                                               ; preds = %86
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 5), align 8
  %94 = call i32 @sdsfree(i32 %93)
  %95 = load i32**, i32*** %5, align 8
  %96 = getelementptr inbounds i32*, i32** %95, i64 1
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @sdsnew(i32* %97)
  store i32 %98, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 5), align 8
  %99 = load i32**, i32*** %5, align 8
  %100 = getelementptr inbounds i32*, i32** %99, i64 2
  %101 = load i32*, i32** %100, align 8
  %102 = call i8* @atoi(i32* %101)
  store i8* %102, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 4), align 8
  %103 = call i32 (...) @cliRefreshPrompt()
  %104 = call i32 @cliConnect(i32 1)
  br label %182

105:                                              ; preds = %86, %83
  %106 = load i32, i32* %4, align 4
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %116

108:                                              ; preds = %105
  %109 = load i32**, i32*** %5, align 8
  %110 = getelementptr inbounds i32*, i32** %109, i64 0
  %111 = load i32*, i32** %110, align 8
  %112 = call i64 @strcasecmp(i32* %111, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %108
  %115 = call i32 (...) @linenoiseClearScreen()
  br label %181

116:                                              ; preds = %108, %105
  %117 = call i64 (...) @mstime()
  store i64 %117, i64* %6, align 8
  store i32 0, i32* %9, align 4
  %118 = load i32**, i32*** %5, align 8
  %119 = getelementptr inbounds i32*, i32** %118, i64 0
  %120 = load i32*, i32** %119, align 8
  %121 = call i8* @atoi(i32* %120)
  %122 = ptrtoint i8* %121 to i32
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %4, align 4
  %124 = icmp sgt i32 %123, 1
  br i1 %124, label %125, label %129

125:                                              ; preds = %116
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i32 1, i32* %9, align 4
  br label %130

129:                                              ; preds = %125, %116
  store i32 1, i32* %8, align 4
  br label %130

130:                                              ; preds = %129, %128
  br label %131

131:                                              ; preds = %130, %168
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 2), align 8
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* %9, align 4
  %134 = sub nsw i32 %132, %133
  %135 = load i32**, i32*** %5, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32*, i32** %135, i64 %137
  %139 = load i32, i32* %8, align 4
  %140 = call i64 @cliSendCommand(i32 %134, i32** %138, i32 %139)
  %141 = load i64, i64* @REDIS_OK, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %159

143:                                              ; preds = %131
  %144 = call i32 @cliConnect(i32 1)
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* %9, align 4
  %147 = sub nsw i32 %145, %146
  %148 = load i32**, i32*** %5, align 8
  %149 = load i32, i32* %9, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32*, i32** %148, i64 %150
  %152 = load i32, i32* %8, align 4
  %153 = call i64 @cliSendCommand(i32 %147, i32** %151, i32 %152)
  %154 = load i64, i64* @REDIS_OK, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %143
  %157 = call i32 (...) @cliPrintContextError()
  br label %158

158:                                              ; preds = %156, %143
  br label %159

159:                                              ; preds = %158, %131
  %160 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 3), align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %159
  %163 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 2), align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %162
  %166 = call i32 @cliConnect(i32 1)
  br label %168

167:                                              ; preds = %162, %159
  br label %169

168:                                              ; preds = %165
  br label %131

169:                                              ; preds = %167
  %170 = call i64 (...) @mstime()
  %171 = load i64, i64* %6, align 8
  %172 = sub nsw i64 %170, %171
  store i64 %172, i64* %7, align 8
  %173 = load i64, i64* %7, align 8
  %174 = icmp sge i64 %173, 500
  br i1 %174, label %175, label %180

175:                                              ; preds = %169
  %176 = load i64, i64* %7, align 8
  %177 = sitofp i64 %176 to double
  %178 = fdiv double %177, 1.000000e+03
  %179 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), double %178)
  br label %180

180:                                              ; preds = %175, %169
  br label %181

181:                                              ; preds = %180, %114
  br label %182

182:                                              ; preds = %181, %92
  br label %183

183:                                              ; preds = %182
  br label %184

184:                                              ; preds = %183, %66
  br label %185

185:                                              ; preds = %184
  %186 = load i32**, i32*** %5, align 8
  %187 = load i32, i32* %4, align 4
  %188 = call i32 @sdsfreesplitres(i32** %186, i32 %187)
  br label %189

189:                                              ; preds = %185, %39
  %190 = load i8*, i8** %3, align 8
  %191 = call i32 @free(i8* %190)
  br label %29

192:                                              ; preds = %35
  %193 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @linenoiseSetMultiLine(i32) #1

declare dso_local i32 @linenoiseSetCompletionCallback(i32) #1

declare dso_local i64 @isatty(i32) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i32* @getenv(i8*) #1

declare dso_local i32* @sdscatprintf(i32, i8*, i32*) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @linenoiseHistoryLoad(i32*) #1

declare dso_local i32 @cliRefreshPrompt(...) #1

declare dso_local i8* @linenoise(i8*) #1

declare dso_local i32** @sdssplitargs(i8*, i32*) #1

declare dso_local i32 @linenoiseHistoryAdd(i8*) #1

declare dso_local i32 @linenoiseHistorySave(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strcasecmp(i32*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i32 @sdsnew(i32*) #1

declare dso_local i8* @atoi(i32*) #1

declare dso_local i32 @cliConnect(i32) #1

declare dso_local i32 @linenoiseClearScreen(...) #1

declare dso_local i64 @mstime(...) #1

declare dso_local i64 @cliSendCommand(i32, i32**, i32) #1

declare dso_local i32 @cliPrintContextError(...) #1

declare dso_local i32 @sdsfreesplitres(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
