; ModuleID = '/home/carl/AnghaBench/disque/src/extr_disque-cli.c_usage.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_disque-cli.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2614 x i8] c"disque %s\0A\0AUsage: disque [OPTIONS] [cmd [arg [arg ...]]]\0A  -h <hostname>      Server hostname (default: 127.0.0.1).\0A  -p <port>          Server port (default: 7711).\0A  -s <socket>        Server socket (overrides hostname and port).\0A  -a <password>      Password to use when connecting to the server.\0A  -r <repeat>        Execute specified command N times.\0A  -i <interval>      When -r is used, waits <interval> seconds per command.\0A                     It is possible to specify sub-second times like -i 0.1.\0A  -n <db>            Database number.\0A  -x                 Read last argument from STDIN.\0A  -d <delimiter>     Multi-bulk delimiter in for raw formatting (default: \\n).\0A  -c                 Enable cluster mode (follow -ASK and -MOVED redirections).\0A  --raw              Use raw formatting for replies (default when STDOUT is\0A                     not a tty).\0A  --no-raw           Force formatted output even when STDOUT is not a tty.\0A  --csv              Output in CSV format.\0A  --latency          Enter a special mode continuously sampling latency.\0A  --latency-history  Like --latency but tracking latency changes over time.\0A                     Default time interval is 15 sec. Change it using -i.\0A  --slave            Simulate a slave showing commands received from the master.\0A  --rdb <filename>   Transfer an RDB dump from remote server to local file.\0A  --pipe             Transfer raw Disque protocol from stdin to server.\0A  --pipe-timeout <n> In --pipe mode, abort with error if after sending all data.\0A                     no reply is received within <n> seconds.\0A                     Default timeout: %d. Use 0 to wait forever.\0A  --bigkeys          Sample Disque keys looking for big keys.\0A  --scan             List all keys using the SCAN command.\0A  --pattern <pat>    Useful with --scan to specify a SCAN pattern.\0A  --intrinsic-latency <sec> Run a test to measure intrinsic system latency.\0A                     The test will run for the specified amount of seconds.\0A  --eval <file>      Send an EVAL command using the Lua script at <file>.\0A  --help             Output this help and exit.\0A  --version          Output version and exit.\0A\0AExamples:\0A  cat /etc/passwd | disque -x set mypasswd\0A  disque get mypasswd\0A  disque -r 100 lpush mylist x\0A  disque -r 100 -i 1 info | grep used_memory_human:\0A  disque --eval myscript.lua key1 key2 , arg1 arg2 arg3\0A  disque --scan --pattern '*:12345*'\0A\0A  (Note: when using --eval the comma separates KEYS[] from ARGV[] items)\0A\0AWhen no command is given, disque starts in interactive mode.\0AType \22help\22 in interactive mode for information on available commands.\0A\0A\00", align 1
@DISQUE_CLI_DEFAULT_PIPE_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = alloca i8*, align 8
  %2 = call i8* (...) @cliVersion()
  store i8* %2, i8** %1, align 8
  %3 = load i32, i32* @stderr, align 4
  %4 = load i8*, i8** %1, align 8
  %5 = load i32, i32* @DISQUE_CLI_DEFAULT_PIPE_TIMEOUT, align 4
  %6 = call i32 @fprintf(i32 %3, i8* getelementptr inbounds ([2614 x i8], [2614 x i8]* @.str, i64 0, i64 0), i8* %4, i32 %5)
  %7 = load i8*, i8** %1, align 8
  %8 = call i32 @sdsfree(i8* %7)
  %9 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i8* @cliVersion(...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @sdsfree(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
