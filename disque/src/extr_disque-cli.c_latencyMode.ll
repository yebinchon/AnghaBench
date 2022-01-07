; ModuleID = '/home/carl/AnghaBench/disque/src/extr_disque-cli.c_latencyMode.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_disque-cli.c_latencyMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@LATENCY_HISTORY_DEFAULT_INTERVAL = common dso_local global i32 0, align 4
@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"\0AI/O error\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"\1B[0G\1B[2Kmin: %lld, max: %lld, avg: %.2f (%lld samples)\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c" -- %.2f seconds range\0A\00", align 1
@LATENCY_SAMPLE_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @latencyMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @latencyMode() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = alloca i64, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %15 = sdiv i32 %14, 1000
  br label %18

16:                                               ; preds = %0
  %17 = load i32, i32* @LATENCY_HISTORY_DEFAULT_INTERVAL, align 4
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi i32 [ %15, %13 ], [ %17, %16 ]
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %8, align 8
  %21 = call i64 (...) @mstime()
  store i64 %21, i64* %10, align 8
  %22 = load i32, i32* @context, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = call i32 @exit(i32 1) #3
  unreachable

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %97
  %28 = call i64 (...) @mstime()
  store i64 %28, i64* %2, align 8
  %29 = load i32, i32* @context, align 4
  %30 = call i32* @redisCommand(i32 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %30, i32** %1, align 8
  %31 = load i32*, i32** %1, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i32, i32* @stderr, align 4
  %35 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %36 = call i32 @exit(i32 1) #3
  unreachable

37:                                               ; preds = %27
  %38 = call i64 (...) @mstime()
  %39 = load i64, i64* %2, align 8
  %40 = sub nsw i64 %38, %39
  store i64 %40, i64* %3, align 8
  %41 = load i32*, i32** %1, align 8
  %42 = call i32 @freeReplyObject(i32* %41)
  %43 = load i64, i64* %7, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp eq i64 %45, 1
  br i1 %46, label %47, label %51

47:                                               ; preds = %37
  %48 = load i64, i64* %3, align 8
  store i64 %48, i64* %6, align 8
  store i64 %48, i64* %5, align 8
  store i64 %48, i64* %4, align 8
  %49 = load i64, i64* %3, align 8
  %50 = sitofp i64 %49 to double
  store double %50, double* %9, align 8
  br label %72

51:                                               ; preds = %37
  %52 = load i64, i64* %3, align 8
  %53 = load i64, i64* %4, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i64, i64* %3, align 8
  store i64 %56, i64* %4, align 8
  br label %57

57:                                               ; preds = %55, %51
  %58 = load i64, i64* %3, align 8
  %59 = load i64, i64* %5, align 8
  %60 = icmp sgt i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i64, i64* %3, align 8
  store i64 %62, i64* %5, align 8
  br label %63

63:                                               ; preds = %61, %57
  %64 = load i64, i64* %3, align 8
  %65 = load i64, i64* %6, align 8
  %66 = add nsw i64 %65, %64
  store i64 %66, i64* %6, align 8
  %67 = load i64, i64* %6, align 8
  %68 = sitofp i64 %67 to double
  %69 = load i64, i64* %7, align 8
  %70 = sitofp i64 %69 to double
  %71 = fdiv double %68, %70
  store double %71, double* %9, align 8
  br label %72

72:                                               ; preds = %63, %47
  %73 = load i64, i64* %4, align 8
  %74 = sitofp i64 %73 to float
  %75 = load i64, i64* %5, align 8
  %76 = load double, double* %9, align 8
  %77 = load i64, i64* %7, align 8
  %78 = call i32 (i8*, float, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), float %74, i64 %75, double %76, i64 %77)
  %79 = load i32, i32* @stdout, align 4
  %80 = call i32 @fflush(i32 %79)
  %81 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %72
  %84 = call i64 (...) @mstime()
  %85 = load i64, i64* %10, align 8
  %86 = sub nsw i64 %84, %85
  %87 = load i64, i64* %8, align 8
  %88 = icmp sgt i64 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = call i64 (...) @mstime()
  %91 = load i64, i64* %10, align 8
  %92 = sub nsw i64 %90, %91
  %93 = sitofp i64 %92 to float
  %94 = fdiv float %93, 1.000000e+03
  %95 = call i32 (i8*, float, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), float %94)
  %96 = call i64 (...) @mstime()
  store i64 %96, i64* %10, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %97

97:                                               ; preds = %89, %83, %72
  %98 = load i32, i32* @LATENCY_SAMPLE_RATE, align 4
  %99 = mul nsw i32 %98, 1000
  %100 = call i32 @usleep(i32 %99)
  br label %27
}

declare dso_local i64 @mstime(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @redisCommand(i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @freeReplyObject(i32*) #1

declare dso_local i32 @printf(i8*, float, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
