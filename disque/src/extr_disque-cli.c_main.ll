; ModuleID = '/home/carl/AnghaBench/disque/src/extr_disque-cli.c_main.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_disque-cli.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32*, i64, i64, i64, i64, i64, i64, i64, i64, i8*, i32, i32*, i64, i32, i32*, i32*, i64, i64, i64, i64, i64, i64, i64, i32*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DISQUE_CLI_DEFAULT_PIPE_TIMEOUT = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"FAKETTY\00", align 1
@OUTPUT_RAW = common dso_local global i32 0, align 4
@OUTPUT_STANDARD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@REDIS_ERR = common dso_local global i64 0, align 8
@REDIS_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = call i8* @sdsnew(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %7, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 28), align 8
  store i32 7711, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 27), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 26), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 25), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 24), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 23), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 22), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 12), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 21), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 20), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 11), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 10), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 7), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 6), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 5), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 19), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 18), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 9), align 8
  %8 = load i32, i32* @DISQUE_CLI_DEFAULT_PIPE_TIMEOUT, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 17), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 8), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 16), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 15), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 4), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 3), align 4
  %9 = load i32, i32* @stdout, align 4
  %10 = call i32 @fileno(i32 %9)
  %11 = call i32 @isatty(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = call i32* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* @OUTPUT_RAW, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 14), align 8
  br label %20

18:                                               ; preds = %13, %2
  %19 = load i32, i32* @OUTPUT_STANDARD, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 14), align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = call i8* @sdsnew(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %21, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 13), align 8
  %22 = call i32 (...) @cliInitHelp()
  %23 = load i32, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = call i32 @parseOptions(i32 %23, i8** %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i8**, i8*** %5, align 8
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i8*, i8** %30, i64 %31
  store i8** %32, i8*** %5, align 8
  %33 = load i32, i32* @SIGPIPE, align 4
  %34 = load i32, i32* @SIG_IGN, align 4
  %35 = call i32 @signal(i32 %33, i32 %34)
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 12), align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %20
  %39 = call i64 @cliConnect(i32 0)
  %40 = load i64, i64* @REDIS_ERR, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 @exit(i32 1) #3
  unreachable

44:                                               ; preds = %38
  %45 = call i32 (...) @latencyMode()
  br label %46

46:                                               ; preds = %44, %20
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 11), align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = call i64 @cliConnect(i32 0)
  %51 = load i64, i64* @REDIS_ERR, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = call i32 @exit(i32 1) #3
  unreachable

55:                                               ; preds = %49
  %56 = call i32 (...) @slaveMode()
  br label %57

57:                                               ; preds = %55, %46
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 10), align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = call i64 @cliConnect(i32 0)
  %62 = load i64, i64* @REDIS_ERR, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = call i32 @exit(i32 1) #3
  unreachable

66:                                               ; preds = %60
  %67 = call i32 (...) @getRDB()
  br label %68

68:                                               ; preds = %66, %57
  %69 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 9), align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = call i64 @cliConnect(i32 0)
  %73 = load i64, i64* @REDIS_ERR, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = call i32 @exit(i32 1) #3
  unreachable

77:                                               ; preds = %71
  %78 = call i32 (...) @pipeMode()
  br label %79

79:                                               ; preds = %77, %68
  %80 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 8), align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = call i64 @cliConnect(i32 0)
  %84 = load i64, i64* @REDIS_ERR, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = call i32 @exit(i32 1) #3
  unreachable

88:                                               ; preds = %82
  %89 = call i32 (...) @findBigKeys()
  br label %90

90:                                               ; preds = %88, %79
  %91 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 7), align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %90
  %94 = call i64 @cliConnect(i32 0)
  %95 = load i64, i64* @REDIS_ERR, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = call i32 @exit(i32 1) #3
  unreachable

99:                                               ; preds = %93
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 2), align 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  store i32 1000000, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 2), align 8
  br label %103

103:                                              ; preds = %102, %99
  %104 = call i32 (...) @statMode()
  br label %105

105:                                              ; preds = %103, %90
  %106 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 6), align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %105
  %109 = call i64 @cliConnect(i32 0)
  %110 = load i64, i64* @REDIS_ERR, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = call i32 @exit(i32 1) #3
  unreachable

114:                                              ; preds = %108
  %115 = call i32 (...) @scanMode()
  br label %116

116:                                              ; preds = %114, %105
  %117 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 5), align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = call i32 (...) @intrinsicLatencyMode()
  br label %121

121:                                              ; preds = %119, %116
  %122 = load i32, i32* %4, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %121
  %125 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 4), align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %124
  %128 = call i64 @cliConnect(i32 0)
  %129 = call i32 (...) @repl()
  br label %130

130:                                              ; preds = %127, %124, %121
  %131 = call i64 @cliConnect(i32 0)
  %132 = load i64, i64* @REDIS_OK, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = call i32 @exit(i32 1) #3
  unreachable

136:                                              ; preds = %130
  %137 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 4), align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load i32, i32* %4, align 4
  %141 = load i8**, i8*** %5, align 8
  %142 = call i32 @evalMode(i32 %140, i8** %141)
  store i32 %142, i32* %3, align 4
  br label %149

143:                                              ; preds = %136
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* %4, align 4
  %146 = load i8**, i8*** %5, align 8
  %147 = call i32 @convertToSds(i32 %145, i8** %146)
  %148 = call i32 @noninteractive(i32 %144, i32 %147)
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %143, %139
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i8* @sdsnew(i8*) #1

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i32* @getenv(i8*) #1

declare dso_local i32 @cliInitHelp(...) #1

declare dso_local i32 @parseOptions(i32, i8**) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i64 @cliConnect(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @latencyMode(...) #1

declare dso_local i32 @slaveMode(...) #1

declare dso_local i32 @getRDB(...) #1

declare dso_local i32 @pipeMode(...) #1

declare dso_local i32 @findBigKeys(...) #1

declare dso_local i32 @statMode(...) #1

declare dso_local i32 @scanMode(...) #1

declare dso_local i32 @intrinsicLatencyMode(...) #1

declare dso_local i32 @repl(...) #1

declare dso_local i32 @evalMode(i32, i8**) #1

declare dso_local i32 @noninteractive(i32, i32) #1

declare dso_local i32 @convertToSds(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
