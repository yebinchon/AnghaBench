; ModuleID = '/home/carl/AnghaBench/disque/src/extr_debug.c_sigsegvHandler.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_debug.c_sigsegvHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32, i32, i32 }
%struct.sigaction = type { i32, i32, i32 }

@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"    Disque %s crashed by signal: %d\00", align 1
@DISQUE_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"    Failed assertion: %s (%s:%d)\00", align 1
@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"--- STACK TRACE\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"--- INFO OUTPUT\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"hash_init_value: %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"--- CLIENT LIST OUTPUT\00", align 1
@.str.7 = private unnamed_addr constant [257 x i8] c"\0A=== DISQUE BUG REPORT END. Make sure to include from START to END. ===\0A\0A       Please report the crash by opening an issue on github:\0A\0A           http://github.com/antirez/disque/issues\0A\0A  Suspect RAM error? Use disque-server --test-memory to verify it.\0A\0A\00", align 1
@SA_NODEFER = common dso_local global i32 0, align 4
@SA_ONSTACK = common dso_local global i32 0, align 4
@SA_RESETHAND = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sigsegvHandler(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sigaction, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @UNUSED(i32* %13)
  %15 = call i32 (...) @bugReportStart()
  %16 = load i32, i32* @LL_WARNING, align 4
  %17 = load i32, i32* @DISQUE_VERSION, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 (i32, i8*, ...) @serverLog(i32 %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load i32, i32* @LL_WARNING, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 4), align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %24 = call i32 (i32, i8*, ...) @serverLog(i32 %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* @LL_WARNING, align 4
  %26 = call i32 (i32, i8*, ...) @serverLog(i32 %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @logStackTrace(i32* %27)
  %29 = load i32, i32* @LL_WARNING, align 4
  %30 = call i32 (i32, i8*, ...) @serverLog(i32 %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %31 = call i32 @genDisqueInfoString(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 (...) @dictGetHashFunctionSeed()
  %34 = call i32 @sdscatprintf(i32 %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @LL_WARNING, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @serverLogRaw(i32 %35, i32 %36)
  %38 = load i32, i32* @LL_WARNING, align 4
  %39 = call i32 (i32, i8*, ...) @serverLog(i32 %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %40 = call i32 (...) @getAllClientsInfoString()
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* @LL_WARNING, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @serverLogRaw(i32 %41, i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @sdsfree(i32 %44)
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @sdsfree(i32 %46)
  %48 = call i32 (...) @logCurrentClient()
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @logRegisters(i32* %49)
  %51 = load i32, i32* @LL_WARNING, align 4
  %52 = call i32 (i32, i8*, ...) @serverLog(i32 %51, i8* getelementptr inbounds ([257 x i8], [257 x i8]* @.str.7, i64 0, i64 0))
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %3
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %57 = call i32 @unlink(i32 %56)
  br label %58

58:                                               ; preds = %55, %3
  %59 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %10, i32 0, i32 2
  %60 = call i32 @sigemptyset(i32* %59)
  %61 = load i32, i32* @SA_NODEFER, align 4
  %62 = load i32, i32* @SA_ONSTACK, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @SA_RESETHAND, align 4
  %65 = or i32 %63, %64
  %66 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %10, i32 0, i32 0
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* @SIG_DFL, align 4
  %68 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %10, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @sigaction(i32 %69, %struct.sigaction* %10, i32* null)
  %71 = call i32 (...) @getpid()
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @kill(i32 %71, i32 %72)
  ret void
}

declare dso_local i32 @UNUSED(i32*) #1

declare dso_local i32 @bugReportStart(...) #1

declare dso_local i32 @serverLog(i32, i8*, ...) #1

declare dso_local i32 @logStackTrace(i32*) #1

declare dso_local i32 @genDisqueInfoString(i8*) #1

declare dso_local i32 @sdscatprintf(i32, i8*, i32) #1

declare dso_local i32 @dictGetHashFunctionSeed(...) #1

declare dso_local i32 @serverLogRaw(i32, i32) #1

declare dso_local i32 @getAllClientsInfoString(...) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i32 @logCurrentClient(...) #1

declare dso_local i32 @logRegisters(i32*) #1

declare dso_local i32 @unlink(i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @getpid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
