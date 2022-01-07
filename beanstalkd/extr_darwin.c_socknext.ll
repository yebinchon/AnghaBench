; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_darwin.c_socknext.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_darwin.c_socknext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }
%struct.kevent = type { i32, i32, i32* }

@socknext.ts = internal global %struct.timespec zeroinitializer, align 4
@kq = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"kevent\00", align 1
@EV_EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @socknext(i32** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.kevent, align 8
  store i32** %0, i32*** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = sdiv i32 %8, 1000000000
  store i32 %9, i32* getelementptr inbounds (%struct.timespec, %struct.timespec* @socknext.ts, i32 0, i32 0), align 4
  %10 = load i32, i32* %5, align 4
  %11 = srem i32 %10, 1000000000
  store i32 %11, i32* getelementptr inbounds (%struct.timespec, %struct.timespec* @socknext.ts, i32 0, i32 1), align 4
  %12 = load i32, i32* @kq, align 4
  %13 = call i32 @kevent(i32 %12, i32* null, i32 0, %struct.kevent* %7, i32 1, %struct.timespec* @socknext.ts)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i64, i64* @errno, align 8
  %18 = load i64, i64* @EINTR, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 @twarn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %42

22:                                               ; preds = %16, %2
  %23 = load i32, i32* %6, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.kevent, %struct.kevent* %7, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load i32**, i32*** %4, align 8
  store i32* %27, i32** %28, align 8
  %29 = getelementptr inbounds %struct.kevent, %struct.kevent* %7, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @EV_EOF, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i32 104, i32* %3, align 4
  br label %42

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.kevent, %struct.kevent* %7, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %40 [
    i32 129, label %38
    i32 128, label %39
  ]

38:                                               ; preds = %35
  store i32 114, i32* %3, align 4
  br label %42

39:                                               ; preds = %35
  store i32 119, i32* %3, align 4
  br label %42

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %40, %22
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %39, %38, %34, %20
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @kevent(i32, i32*, i32, %struct.kevent*, i32, %struct.timespec*) #1

declare dso_local i32 @twarn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
