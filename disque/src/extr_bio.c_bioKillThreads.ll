; ModuleID = '/home/carl/AnghaBench/disque/src/extr_bio.c_bioKillThreads.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_bio.c_bioKillThreads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIO_NUM_OPS = common dso_local global i32 0, align 4
@bio_threads = common dso_local global i32* null, align 8
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Bio thread for job type #%d can be joined: %s\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Bio thread for job type #%d terminated\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bioKillThreads() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %35, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @BIO_NUM_OPS, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %38

7:                                                ; preds = %3
  %8 = load i32*, i32** @bio_threads, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @pthread_cancel(i32 %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %7
  %16 = load i32*, i32** @bio_threads, align 8
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pthread_join(i32 %20, i32* null)
  store i32 %21, i32* %1, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %15
  %24 = load i32, i32* @LL_WARNING, align 4
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* %1, align 4
  %27 = call i32 @strerror(i32 %26)
  %28 = call i32 (i32, i8*, i32, ...) @serverLog(i32 %24, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %27)
  br label %33

29:                                               ; preds = %15
  %30 = load i32, i32* @LL_WARNING, align 4
  %31 = load i32, i32* %2, align 4
  %32 = call i32 (i32, i8*, i32, ...) @serverLog(i32 %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %29, %23
  br label %34

34:                                               ; preds = %33, %7
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %2, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %2, align 4
  br label %3

38:                                               ; preds = %3
  ret void
}

declare dso_local i64 @pthread_cancel(i32) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @serverLog(i32, i8*, i32, ...) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
