; ModuleID = '/home/carl/AnghaBench/TDengine/src/kit/shell/src/extr_shellWindows.c_printHelp.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/kit/shell/src/extr_shellWindows.c_printHelp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.printHelp.indent = private unnamed_addr constant [10 x i8] c"        \00\00", align 1
@.str = private unnamed_addr constant [50 x i8] c"taos shell is used to test the TDEngine database\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s%s%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"TDEngine server IP address to connect. The default host is localhost.\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"The password to use when connecting to the server.\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-P\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"The TCP/IP port number to use for the connection\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"-u\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"The TDEngine user name to use when connecting to the server.\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Configuration directory.\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"Commands to run without enter the shell.\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"-r\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"Output time as unsigned long..\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"Script to run without enter the shell.\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.20 = private unnamed_addr constant [47 x i8] c"Database to use when connecting to the server.\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"Time zone of the shell, default is local.\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHelp() #0 {
  %1 = alloca [10 x i8], align 1
  %2 = bitcast [10 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.printHelp.indent, i32 0, i32 0), i64 10, i1 false)
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %4 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %6 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %7 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %6, i8* %7, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i64 0, i64 0))
  %9 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %11 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %12 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %11, i8* %12, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0))
  %14 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %16 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %17 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %16, i8* %17, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0))
  %19 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %21 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %22 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %21, i8* %22, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i64 0, i64 0))
  %24 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %26 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %27 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %26, i8* %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  %29 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %31 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %32 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %31, i8* %32, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0))
  %34 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %36 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %37 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %36, i8* %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0))
  %39 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  %41 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %42 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %41, i8* %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i64 0, i64 0))
  %44 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  %46 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %46, i8* %47, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.20, i64 0, i64 0))
  %49 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0))
  %51 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %52 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %51, i8* %52, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i64 0, i64 0))
  %54 = load i32, i32* @EXIT_SUCCESS, align 4
  %55 = call i32 @exit(i32 %54) #4
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
