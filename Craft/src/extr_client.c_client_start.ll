; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_client.c_client_start.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_client.c_client_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@client_enabled = common dso_local global i32 0, align 4
@running = common dso_local global i32 0, align 4
@QUEUE_SIZE = common dso_local global i32 0, align 4
@queue = common dso_local global i8* null, align 8
@qsize = common dso_local global i64 0, align 8
@mutex = common dso_local global i32 0, align 4
@mtx_plain = common dso_local global i32 0, align 4
@recv_thread = common dso_local global i32 0, align 4
@recv_worker = common dso_local global i32 0, align 4
@thrd_success = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"thrd_create\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @client_start() #0 {
  %1 = load i32, i32* @client_enabled, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %17

4:                                                ; preds = %0
  store i32 1, i32* @running, align 4
  %5 = load i32, i32* @QUEUE_SIZE, align 4
  %6 = call i64 @calloc(i32 %5, i32 1)
  %7 = inttoptr i64 %6 to i8*
  store i8* %7, i8** @queue, align 8
  store i64 0, i64* @qsize, align 8
  %8 = load i32, i32* @mtx_plain, align 4
  %9 = call i32 @mtx_init(i32* @mutex, i32 %8)
  %10 = load i32, i32* @recv_worker, align 4
  %11 = call i64 @thrd_create(i32* @recv_thread, i32 %10, i32* null)
  %12 = load i64, i64* @thrd_success, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @exit(i32 1) #3
  unreachable

17:                                               ; preds = %3, %4
  ret void
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i32) #1

declare dso_local i64 @thrd_create(i32*, i32, i32*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
