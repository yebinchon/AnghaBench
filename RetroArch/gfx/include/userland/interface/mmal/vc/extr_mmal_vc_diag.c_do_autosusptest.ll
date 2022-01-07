; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/vc/extr_mmal_vc_diag.c_do_autosusptest.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/vc/extr_mmal_vc_diag.c_do_autosusptest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.sigaction = type { i32, i32, i32 }
%struct.itimerval = type { %struct.timeval, i32 }

@.str = private unnamed_addr constant [42 x i8] c"usage: %s autosusp <timeout-ms> <signal>\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"   e.g. 650 9\0A\00", align 1
@autosusp_signal = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"mmal_vc_use failed: %d\0A\00", align 1
@autosusp_timeout_handler = common dso_local global i32 0, align 4
@SA_SIGINFO = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"sigaction\00", align 1
@ITIMER_REAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"setitimer failed\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"%s: not killed by timer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @do_autosusptest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_autosusptest(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.timeval, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sigaction, align 4
  %9 = alloca %struct.itimerval, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 4
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i8**, i8*** %4, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @exit(i32 1) #4
  unreachable

20:                                               ; preds = %2
  %21 = load i8**, i8*** %4, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 2
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @atoi(i8* %23)
  %25 = mul nsw i32 1000, %24
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %5, align 8
  %27 = load i8**, i8*** %4, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 3
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @atoi(i8* %29)
  store i32 %30, i32* @autosusp_signal, align 4
  %31 = call i32 (...) @mmal_vc_use()
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @MMAL_SUCCESS, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %20
  %35 = load i32, i32* @stderr, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @fprintf(i32 %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = call i32 @exit(i32 1) #4
  unreachable

39:                                               ; preds = %20
  %40 = call i32 @memset(%struct.sigaction* %8, i32 0, i32 12)
  %41 = load i32, i32* @autosusp_timeout_handler, align 4
  %42 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %8, i32 0, i32 2
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %8, i32 0, i32 1
  %44 = call i32 @sigemptyset(i32* %43)
  %45 = load i32, i32* @SA_SIGINFO, align 4
  %46 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %8, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @SIGALRM, align 4
  %48 = call i64 @sigaction(i32 %47, %struct.sigaction* %8, i32 0)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  %51 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %52 = call i32 @exit(i32 1) #4
  unreachable

53:                                               ; preds = %39
  %54 = load i64, i64* %5, align 8
  %55 = sdiv i64 %54, 1000000
  %56 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  store i64 %55, i64* %56, align 8
  %57 = load i64, i64* %5, align 8
  %58 = srem i64 %57, 1000000
  %59 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  store i64 %58, i64* %59, align 8
  %60 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %9, i32 0, i32 0
  %61 = bitcast %struct.timeval* %60 to i8*
  %62 = bitcast %struct.timeval* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 %62, i64 16, i1 false)
  %63 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %9, i32 0, i32 1
  store i32 0, i32* %63, align 8
  %64 = load i32, i32* @ITIMER_REAL, align 4
  %65 = call i32 @setitimer(i32 %64, %struct.itimerval* %9, i32* null)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %53
  %69 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %70 = call i32 @exit(i32 1) #4
  unreachable

71:                                               ; preds = %53
  %72 = load i64, i64* %5, align 8
  %73 = add nsw i64 %72, 1000000
  %74 = call i32 @usleep(i64 %73)
  %75 = load i8**, i8*** %4, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %77)
  %79 = call i32 (...) @mmal_vc_release()
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @mmal_vc_use(...) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.sigaction*, i32, i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i64 @sigaction(i32, %struct.sigaction*, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @setitimer(i32, %struct.itimerval*, i32*) #1

declare dso_local i32 @usleep(i64) #1

declare dso_local i32 @mmal_vc_release(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
