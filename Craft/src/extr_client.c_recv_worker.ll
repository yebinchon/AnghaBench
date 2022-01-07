; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_client.c_recv_worker.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_client.c_recv_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RECV_SIZE = common dso_local global i32 0, align 4
@sd = common dso_local global i32 0, align 4
@running = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"recv\00", align 1
@mutex = common dso_local global i32 0, align 4
@qsize = common dso_local global i64 0, align 8
@QUEUE_SIZE = common dso_local global i64 0, align 8
@queue = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @recv_worker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @RECV_SIZE, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 1, %7
  %9 = trunc i64 %8 to i32
  %10 = call i8* @malloc(i32 %9)
  store i8* %10, i8** %3, align 8
  br label %11

11:                                               ; preds = %1, %60
  %12 = load i32, i32* @sd, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* @RECV_SIZE, align 4
  %15 = sub nsw i32 %14, 1
  %16 = call i32 @recv(i32 %12, i8* %13, i32 %15, i32 0)
  store i32 %16, i32* %4, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %11
  %19 = load i64, i64* @running, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @exit(i32 1) #3
  unreachable

24:                                               ; preds = %18
  br label %61

25:                                               ; preds = %11
  %26 = load i8*, i8** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  store i8 0, i8* %29, align 1
  br label %30

30:                                               ; preds = %25, %58
  store i32 0, i32* %5, align 4
  %31 = call i32 @mtx_lock(i32* @mutex)
  %32 = load i64, i64* @qsize, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = load i64, i64* @QUEUE_SIZE, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %30
  %39 = load i64, i64* @queue, align 8
  %40 = load i64, i64* @qsize, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i8*, i8** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = mul i64 1, %45
  %47 = trunc i64 %46 to i32
  %48 = call i32 @memcpy(i64 %41, i8* %42, i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* @qsize, align 8
  %52 = add nsw i64 %51, %50
  store i64 %52, i64* @qsize, align 8
  store i32 1, i32* %5, align 4
  br label %53

53:                                               ; preds = %38, %30
  %54 = call i32 @mtx_unlock(i32* @mutex)
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %60

58:                                               ; preds = %53
  %59 = call i32 @sleep(i32 0)
  br label %30

60:                                               ; preds = %57
  br label %11

61:                                               ; preds = %24
  %62 = load i8*, i8** %3, align 8
  %63 = call i32 @free(i8* %62)
  ret i32 0
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
