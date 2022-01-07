; ModuleID = '/home/carl/AnghaBench/disque/src/extr_aof.c_rewriteAppendOnlyFileBackground.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_aof.c_rewriteAppendOnlyFileBackground.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, double, i32, i32, i64 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@C_ERR = common dso_local global i32 0, align 4
@C_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"disque-aof-rewrite\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"temp-rewriteaof-bg-%d.aof\00", align 1
@LL_NOTICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"AOF rewrite: %zu MB of memory used by copy-on-write\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@LL_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [55 x i8] c"Can't rewrite append only file in background: fork: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [56 x i8] c"Background append only file rewriting started by pid %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rewriteAppendOnlyFileBackground() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca i64, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %7 = icmp ne i32 %6, -1
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i32, i32* @C_ERR, align 4
  store i32 %9, i32* %1, align 4
  br label %81

10:                                               ; preds = %0
  %11 = call i64 (...) @aofCreatePipes()
  %12 = load i64, i64* @C_OK, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* @C_ERR, align 4
  store i32 %15, i32* %1, align 4
  br label %81

16:                                               ; preds = %10
  %17 = call i64 (...) @ustime()
  store i64 %17, i64* %3, align 8
  %18 = call i32 (...) @fork()
  store i32 %18, i32* %2, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %16
  %21 = call i32 @closeListeningSockets(i32 0)
  %22 = call i32 @serverSetProcTitle(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %24 = call i64 (...) @getpid()
  %25 = trunc i64 %24 to i32
  %26 = call i32 @snprintf(i8* %23, i32 256, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %28 = call i64 @rewriteAppendOnlyFile(i8* %27, i32 1)
  %29 = load i64, i64* @C_OK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %20
  %32 = call i64 (...) @zmalloc_get_private_dirty()
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, i32* @LL_NOTICE, align 4
  %37 = load i64, i64* %5, align 8
  %38 = udiv i64 %37, 1048576
  %39 = trunc i64 %38 to i32
  %40 = call i32 @serverLog(i32 %36, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %35, %31
  %42 = call i32 @exitFromChild(i32 0)
  br label %45

43:                                               ; preds = %20
  %44 = call i32 @exitFromChild(i32 1)
  br label %45

45:                                               ; preds = %43, %41
  br label %78

46:                                               ; preds = %16
  %47 = call i64 (...) @ustime()
  %48 = load i64, i64* %3, align 8
  %49 = sub nsw i64 %47, %48
  store i64 %49, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %50 = call i64 (...) @zmalloc_used_memory()
  %51 = sitofp i64 %50 to double
  %52 = fmul double %51, 1.000000e+06
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %54 = sitofp i64 %53 to double
  %55 = fdiv double %52, %54
  %56 = fdiv double %55, 0x41D0000000000000
  store double %56, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %58 = sdiv i64 %57, 1000
  %59 = trunc i64 %58 to i32
  %60 = call i32 @latencyAddSampleIfNeeded(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %2, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %69

63:                                               ; preds = %46
  %64 = load i32, i32* @LL_WARNING, align 4
  %65 = load i32, i32* @errno, align 4
  %66 = call i32 @strerror(i32 %65)
  %67 = call i32 @serverLog(i32 %64, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @C_ERR, align 4
  store i32 %68, i32* %1, align 4
  br label %81

69:                                               ; preds = %46
  %70 = load i32, i32* @LL_NOTICE, align 4
  %71 = load i32, i32* %2, align 4
  %72 = call i32 @serverLog(i32 %70, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), i32 %71)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 5), align 8
  %73 = call i32 @time(i32* null)
  store i32 %73, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 4), align 4
  %74 = load i32, i32* %2, align 4
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %75 = call i32 (...) @updateDictResizePolicy()
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %76 = load i64, i64* @C_OK, align 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %1, align 4
  br label %81

78:                                               ; preds = %45
  %79 = load i64, i64* @C_OK, align 8
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %1, align 4
  br label %81

81:                                               ; preds = %78, %69, %63, %14, %8
  %82 = load i32, i32* %1, align 4
  ret i32 %82
}

declare dso_local i64 @aofCreatePipes(...) #1

declare dso_local i64 @ustime(...) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @closeListeningSockets(i32) #1

declare dso_local i32 @serverSetProcTitle(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i64 @rewriteAppendOnlyFile(i8*, i32) #1

declare dso_local i64 @zmalloc_get_private_dirty(...) #1

declare dso_local i32 @serverLog(i32, i8*, i32) #1

declare dso_local i32 @exitFromChild(i32) #1

declare dso_local i64 @zmalloc_used_memory(...) #1

declare dso_local i32 @latencyAddSampleIfNeeded(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @updateDictResizePolicy(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
