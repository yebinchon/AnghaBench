; ModuleID = '/home/carl/AnghaBench/disque/src/extr_disque-cli.c_cliReadReply.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_disque-cli.c_cliReadReply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i64, i8*, i32, i32, i64, i64, i64, i64 }
%struct.TYPE_10__ = type { i64, i8* }

@context = common dso_local global %struct.TYPE_11__* null, align 8
@REDIS_OK = common dso_local global i64 0, align 8
@config = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@REDIS_ERR_IO = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ECONNRESET = common dso_local global i64 0, align 8
@EPIPE = common dso_local global i64 0, align 8
@REDIS_ERR = common dso_local global i32 0, align 4
@REDIS_ERR_EOF = common dso_local global i64 0, align 8
@REDIS_REPLY_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"MOVED\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ASK\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"-> Redirected to slot [%d] located at %s:%d\0A\00", align 1
@OUTPUT_RAW = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@OUTPUT_STANDARD = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@OUTPUT_CSV = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cliReadReply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cliReadReply(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* null, i8** %6, align 8
  store i32 1, i32* %7, align 4
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** @context, align 8
  %12 = call i64 @redisGetReply(%struct.TYPE_11__* %11, i8** %4)
  %13 = load i64, i64* @REDIS_OK, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %54

15:                                               ; preds = %1
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @config, i32 0, i32 7), align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** @context, align 8
  %20 = call i32 @redisFree(%struct.TYPE_11__* %19)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** @context, align 8
  %21 = load i64, i64* @REDIS_OK, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %2, align 4
  br label %166

23:                                               ; preds = %15
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @config, i32 0, i32 5), align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %23
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** @context, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @REDIS_ERR_IO, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load i64, i64* @errno, align 8
  %34 = load i64, i64* @ECONNRESET, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* @errno, align 8
  %38 = load i64, i64* @EPIPE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36, %32
  %41 = load i32, i32* @REDIS_ERR, align 4
  store i32 %41, i32* %2, align 4
  br label %166

42:                                               ; preds = %36, %26
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** @context, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @REDIS_ERR_EOF, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @REDIS_ERR, align 4
  store i32 %49, i32* %2, align 4
  br label %166

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %23
  %52 = call i32 (...) @cliPrintContextError()
  %53 = call i32 @exit(i32 1) #3
  unreachable

54:                                               ; preds = %1
  %55 = load i8*, i8** %4, align 8
  %56 = bitcast i8* %55 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %56, %struct.TYPE_10__** %5, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @config, i32 0, i32 0), align 8
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @config, i32 0, i32 6), align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %116

62:                                               ; preds = %54
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @REDIS_REPLY_ERROR, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %116

68:                                               ; preds = %62
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @strncmp(i8* %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %116, label %80

80:                                               ; preds = %74, %68
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %8, align 8
  store i32 0, i32* %7, align 4
  %84 = load i8*, i8** %8, align 8
  %85 = call i8* @strchr(i8* %84, i8 signext 32)
  store i8* %85, i8** %9, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  %88 = call i8* @strchr(i8* %87, i8 signext 32)
  store i8* %88, i8** %8, align 8
  %89 = load i8*, i8** %8, align 8
  store i8 0, i8* %89, align 1
  %90 = load i8*, i8** %9, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = call i8* @atoi(i8* %91)
  %93 = ptrtoint i8* %92 to i32
  store i32 %93, i32* %10, align 4
  %94 = load i8*, i8** %8, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = call i8* @strchr(i8* %95, i8 signext 58)
  store i8* %96, i8** %9, align 8
  %97 = load i8*, i8** %9, align 8
  store i8 0, i8* %97, align 1
  %98 = load i8*, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @config, i32 0, i32 1), align 8
  %99 = call i32 @sdsfree(i8* %98)
  %100 = load i8*, i8** %8, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  %102 = call i8* @sdsnew(i8* %101)
  store i8* %102, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @config, i32 0, i32 1), align 8
  %103 = load i8*, i8** %9, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  %105 = call i8* @atoi(i8* %104)
  %106 = ptrtoint i8* %105 to i32
  store i32 %106, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @config, i32 0, i32 2), align 8
  %107 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @config, i32 0, i32 5), align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %80
  %110 = load i32, i32* %10, align 4
  %111 = load i8*, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @config, i32 0, i32 1), align 8
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @config, i32 0, i32 2), align 8
  %113 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %110, i8* %111, i32 %112)
  br label %114

114:                                              ; preds = %109, %80
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @config, i32 0, i32 3), align 4
  %115 = call i32 (...) @cliRefreshPrompt()
  br label %116

116:                                              ; preds = %114, %74, %62, %54
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %161

119:                                              ; preds = %116
  %120 = load i32, i32* %3, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %124 = call i8* @cliFormatReplyRaw(%struct.TYPE_10__* %123)
  store i8* %124, i8** %6, align 8
  br label %153

125:                                              ; preds = %119
  %126 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @config, i32 0, i32 4), align 8
  %127 = load i64, i64* @OUTPUT_RAW, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %131 = call i8* @cliFormatReplyRaw(%struct.TYPE_10__* %130)
  store i8* %131, i8** %6, align 8
  %132 = load i8*, i8** %6, align 8
  %133 = call i8* @sdscat(i8* %132, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %133, i8** %6, align 8
  br label %152

134:                                              ; preds = %125
  %135 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @config, i32 0, i32 4), align 8
  %136 = load i64, i64* @OUTPUT_STANDARD, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %134
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %140 = call i8* @cliFormatReplyTTY(%struct.TYPE_10__* %139, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  store i8* %140, i8** %6, align 8
  br label %151

141:                                              ; preds = %134
  %142 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @config, i32 0, i32 4), align 8
  %143 = load i64, i64* @OUTPUT_CSV, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %141
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %147 = call i8* @cliFormatReplyCSV(%struct.TYPE_10__* %146)
  store i8* %147, i8** %6, align 8
  %148 = load i8*, i8** %6, align 8
  %149 = call i8* @sdscat(i8* %148, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %149, i8** %6, align 8
  br label %150

150:                                              ; preds = %145, %141
  br label %151

151:                                              ; preds = %150, %138
  br label %152

152:                                              ; preds = %151, %129
  br label %153

153:                                              ; preds = %152, %122
  %154 = load i8*, i8** %6, align 8
  %155 = load i8*, i8** %6, align 8
  %156 = call i32 @sdslen(i8* %155)
  %157 = load i32, i32* @stdout, align 4
  %158 = call i32 @fwrite(i8* %154, i32 %156, i32 1, i32 %157)
  %159 = load i8*, i8** %6, align 8
  %160 = call i32 @sdsfree(i8* %159)
  br label %161

161:                                              ; preds = %153, %116
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %163 = call i32 @freeReplyObject(%struct.TYPE_10__* %162)
  %164 = load i64, i64* @REDIS_OK, align 8
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %161, %48, %40, %18
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i64 @redisGetReply(%struct.TYPE_11__*, i8**) #1

declare dso_local i32 @redisFree(%struct.TYPE_11__*) #1

declare dso_local i32 @cliPrintContextError(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @sdsfree(i8*) #1

declare dso_local i8* @sdsnew(i8*) #1

declare dso_local i32 @printf(i8*, i32, i8*, i32) #1

declare dso_local i32 @cliRefreshPrompt(...) #1

declare dso_local i8* @cliFormatReplyRaw(%struct.TYPE_10__*) #1

declare dso_local i8* @sdscat(i8*, i8*) #1

declare dso_local i8* @cliFormatReplyTTY(%struct.TYPE_10__*, i8*) #1

declare dso_local i8* @cliFormatReplyCSV(%struct.TYPE_10__*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32) #1

declare dso_local i32 @sdslen(i8*) #1

declare dso_local i32 @freeReplyObject(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
