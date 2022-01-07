; ModuleID = '/home/carl/AnghaBench/disque/src/extr_debug.c_logStackTrace.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_debug.c_logStackTrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@STDOUT_FILENO = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @logStackTrace(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [100 x i8*], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %4, align 4
  %7 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @STDOUT_FILENO, align 4
  br label %25

17:                                               ; preds = %1
  %18 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %19 = load i32, i32* @O_APPEND, align 4
  %20 = load i32, i32* @O_CREAT, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @O_WRONLY, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @open(i8* %18, i32 %23, i32 420)
  br label %25

25:                                               ; preds = %17, %15
  %26 = phi i32 [ %16, %15 ], [ %24, %17 ]
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %51

30:                                               ; preds = %25
  %31 = getelementptr inbounds [100 x i8*], [100 x i8*]* %3, i64 0, i64 0
  %32 = call i32 @backtrace(i8** %31, i32 100)
  store i32 %32, i32* %4, align 4
  %33 = load i32*, i32** %2, align 8
  %34 = call i32* @getMcontextEip(i32* %33)
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load i32*, i32** %2, align 8
  %38 = call i32* @getMcontextEip(i32* %37)
  %39 = bitcast i32* %38 to i8*
  %40 = getelementptr inbounds [100 x i8*], [100 x i8*]* %3, i64 0, i64 1
  store i8* %39, i8** %40, align 8
  br label %41

41:                                               ; preds = %36, %30
  %42 = getelementptr inbounds [100 x i8*], [100 x i8*]* %3, i64 0, i64 0
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @backtrace_symbols_fd(i8** %42, i32 %43, i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @close(i32 %49)
  br label %51

51:                                               ; preds = %29, %48, %41
  ret void
}

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @backtrace(i8**, i32) #1

declare dso_local i32* @getMcontextEip(i32*) #1

declare dso_local i32 @backtrace_symbols_fd(i8**, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
