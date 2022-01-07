; ModuleID = '/home/carl/AnghaBench/disque/src/extr_server.c_daemonize.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_server.c_daemonize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @daemonize() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 (...) @fork()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 @exit(i32 0) #3
  unreachable

6:                                                ; preds = %0
  %7 = call i32 (...) @setsid()
  %8 = load i32, i32* @O_RDWR, align 4
  %9 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %8, i32 0)
  store i32 %9, i32* %1, align 4
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %28

11:                                               ; preds = %6
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @STDIN_FILENO, align 4
  %14 = call i32 @dup2(i32 %12, i32 %13)
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @STDOUT_FILENO, align 4
  %17 = call i32 @dup2(i32 %15, i32 %16)
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @STDERR_FILENO, align 4
  %20 = call i32 @dup2(i32 %18, i32 %19)
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @STDERR_FILENO, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %11
  %25 = load i32, i32* %1, align 4
  %26 = call i32 @close(i32 %25)
  br label %27

27:                                               ; preds = %24, %11
  br label %28

28:                                               ; preds = %27, %6
  ret void
}

declare dso_local i64 @fork(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @setsid(...) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
