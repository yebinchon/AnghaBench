; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/zero-to-n/extr_zero-to-n.c_create_churn_threads.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/zero-to-n/extr_zero-to-n.c_create_churn_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_param = type { i32 }

@g_churn_count = common dso_local global i32 0, align 4
@g_numcpus = common dso_local global i32 0, align 4
@g_churn_pri = common dso_local global i64 0, align 8
@g_churn_threads = common dso_local global i32* null, align 8
@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"pthread_attr_init\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"pthread_attr_setschedparam\00", align 1
@SCHED_RR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"pthread_attr_setschedpolicy\00", align 1
@churn_thread = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"pthread_create\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"pthread_attr_destroy\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @create_churn_threads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_churn_threads() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sched_param, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @g_churn_count, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, i32* @g_numcpus, align 4
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* @g_churn_count, align 4
  br label %11

11:                                               ; preds = %8, %0
  %12 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %2, i32 0, i32 0
  %13 = load i64, i64* @g_churn_pri, align 8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* @g_churn_count, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 4, %16
  %18 = trunc i64 %17 to i32
  %19 = call i64 @valloc(i32 %18)
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** @g_churn_threads, align 8
  %21 = load i32*, i32** @g_churn_threads, align 8
  %22 = call i32 @assert(i32* %21)
  %23 = call i32 @pthread_attr_init(i32* %3)
  store i32 %23, i32* %1, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %11
  %26 = load i32, i32* @EX_OSERR, align 4
  %27 = load i32, i32* %1, align 4
  %28 = call i32 @errc(i32 %26, i32 %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %25, %11
  %30 = call i32 @pthread_attr_setschedparam(i32* %3, %struct.sched_param* %2)
  store i32 %30, i32* %1, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* @EX_OSERR, align 4
  %34 = load i32, i32* %1, align 4
  %35 = call i32 @errc(i32 %33, i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %32, %29
  %37 = load i32, i32* @SCHED_RR, align 4
  %38 = call i32 @pthread_attr_setschedpolicy(i32* %3, i32 %37)
  store i32 %38, i32* %1, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* @EX_OSERR, align 4
  %42 = load i32, i32* %1, align 4
  %43 = call i32 @errc(i32 %41, i32 %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %40, %36
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %63, %44
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @g_churn_count, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %45
  %50 = load i32, i32* @churn_thread, align 4
  %51 = call i32 @pthread_create(i32* %5, i32* %3, i32 %50, i32* null)
  store i32 %51, i32* %1, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* @EX_OSERR, align 4
  %55 = load i32, i32* %1, align 4
  %56 = call i32 @errc(i32 %54, i32 %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %57

57:                                               ; preds = %53, %49
  %58 = load i32, i32* %5, align 4
  %59 = load i32*, i32** @g_churn_threads, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %58, i32* %62, align 4
  br label %63

63:                                               ; preds = %57
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %45

66:                                               ; preds = %45
  %67 = call i32 @pthread_attr_destroy(i32* %3)
  store i32 %67, i32* %1, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* @EX_OSERR, align 4
  %71 = load i32, i32* %1, align 4
  %72 = call i32 @errc(i32 %70, i32 %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %73

73:                                               ; preds = %69, %66
  ret void
}

declare dso_local i64 @valloc(i32) #1

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @pthread_attr_init(i32*) #1

declare dso_local i32 @errc(i32, i32, i8*) #1

declare dso_local i32 @pthread_attr_setschedparam(i32*, %struct.sched_param*) #1

declare dso_local i32 @pthread_attr_setschedpolicy(i32*, i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @pthread_attr_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
