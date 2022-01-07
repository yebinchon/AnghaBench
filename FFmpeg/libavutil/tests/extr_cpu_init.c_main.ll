; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_cpu_init.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_cpu_init.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@thread_main = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"pthread_create failed: %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %7 = load i32, i32* @thread_main, align 4
  %8 = call i32 @pthread_create(i32* %5, i32* null, i32 %7, i32* %2)
  store i32 %8, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %0
  %11 = load i32, i32* @stderr, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i8* @strerror(i32 %12)
  %14 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %13)
  store i32 1, i32* %1, align 4
  br label %42

15:                                               ; preds = %0
  %16 = load i32, i32* @thread_main, align 4
  %17 = call i32 @pthread_create(i32* %6, i32* null, i32 %16, i32* %3)
  store i32 %17, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i32, i32* @stderr, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i8* @strerror(i32 %21)
  %23 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %22)
  store i32 1, i32* %1, align 4
  br label %42

24:                                               ; preds = %15
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @pthread_join(i32 %25, i32* null)
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @pthread_join(i32 %27, i32* null)
  %29 = load i32, i32* %2, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 2, i32* %1, align 4
  br label %42

32:                                               ; preds = %24
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 2, i32* %1, align 4
  br label %42

36:                                               ; preds = %32
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 3, i32* %1, align 4
  br label %42

41:                                               ; preds = %36
  store i32 0, i32* %1, align 4
  br label %42

42:                                               ; preds = %41, %40, %35, %31, %19, %10
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
