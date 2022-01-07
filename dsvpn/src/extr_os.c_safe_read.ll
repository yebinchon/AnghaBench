; ModuleID = '/home/carl/AnghaBench/dsvpn/src/extr_os.c_safe_read.c'
source_filename = "/home/carl/AnghaBench/dsvpn/src/extr_os.c_safe_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32 }

@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@POLLIN = common dso_local global i32 0, align 4
@EINTR = common dso_local global i64 0, align 8
@exit_signal_received = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @safe_read(i32 %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pollfd, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %7, align 8
  store i8* %13, i8** %11, align 8
  store i64 -1, i64* %12, align 8
  br label %14

14:                                               ; preds = %53, %4
  %15 = load i64, i64* %12, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i64, i64* %8, align 8
  %19 = icmp ugt i64 %18, 0
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi i1 [ false, %14 ], [ %19, %17 ]
  br i1 %21, label %22, label %60

22:                                               ; preds = %20
  br label %23

23:                                               ; preds = %52, %22
  %24 = load i32, i32* %6, align 4
  %25 = load i8*, i8** %11, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i64 @read(i32 %24, i8* %25, i64 %26)
  store i64 %27, i64* %12, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %23
  %30 = load i64, i64* @errno, align 8
  %31 = load i64, i64* @EAGAIN, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %10, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @POLLIN, align 4
  %37 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %10, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i64 @poll(%struct.pollfd* %10, i32 1, i32 %38)
  %40 = icmp sle i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store i64 -1, i64* %5, align 8
  br label %66

42:                                               ; preds = %33
  br label %52

43:                                               ; preds = %29
  %44 = load i64, i64* @errno, align 8
  %45 = load i64, i64* @EINTR, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load i64, i64* @exit_signal_received, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %43
  store i64 -1, i64* %5, align 8
  br label %66

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %51, %42
  br label %23

53:                                               ; preds = %23
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* %8, align 8
  %56 = sub i64 %55, %54
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 %57
  store i8* %59, i8** %11, align 8
  br label %14

60:                                               ; preds = %20
  %61 = load i8*, i8** %11, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = ptrtoint i8* %61 to i64
  %64 = ptrtoint i8* %62 to i64
  %65 = sub i64 %63, %64
  store i64 %65, i64* %5, align 8
  br label %66

66:                                               ; preds = %60, %50, %41
  %67 = load i64, i64* %5, align 8
  ret i64 %67
}

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i64 @poll(%struct.pollfd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
