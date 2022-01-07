; ModuleID = '/home/carl/AnghaBench/disque/src/extr_server.c_loadDataFromDisk.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_server.c_loadDataFromDisk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i32 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@AOF_ON = common dso_local global i64 0, align 8
@C_OK = common dso_local global i64 0, align 8
@LL_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"DB loaded from append only file: %.3f seconds\00", align 1
@LL_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"CONFIG REWRITE failed (executed to turn off aof-enqueue-jobs-once): %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @loadDataFromDisk() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 (...) @ustime()
  store i64 %2, i64* %1, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %4 = load i64, i64* @AOF_ON, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %39

9:                                                ; preds = %6, %0
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %11 = call i64 @loadAppendOnlyFile(i32 %10)
  %12 = load i64, i64* @C_OK, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = load i32, i32* @LL_NOTICE, align 4
  %16 = call i64 (...) @ustime()
  %17 = load i64, i64* %1, align 8
  %18 = sub nsw i64 %16, %17
  %19 = sitofp i64 %18 to float
  %20 = fdiv float %19, 1.000000e+06
  %21 = call i32 @serverLog(i32 %15, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), float %20)
  br label %22

22:                                               ; preds = %14, %9
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %30 = call i32 @rewriteConfig(i64 %29)
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32, i32* @LL_WARNING, align 4
  %34 = load i32, i32* @errno, align 4
  %35 = call float @strerror(i32 %34)
  %36 = call i32 @serverLog(i32 %33, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), float %35)
  br label %37

37:                                               ; preds = %32, %28
  br label %38

38:                                               ; preds = %37, %25, %22
  br label %39

39:                                               ; preds = %38, %6
  ret void
}

declare dso_local i64 @ustime(...) #1

declare dso_local i64 @loadAppendOnlyFile(i32) #1

declare dso_local i32 @serverLog(i32, i8*, float) #1

declare dso_local i32 @rewriteConfig(i64) #1

declare dso_local float @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
