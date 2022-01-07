; ModuleID = '/home/carl/AnghaBench/dsvpn/src/extr_os.c_safe_write.c'
source_filename = "/home/carl/AnghaBench/dsvpn/src/extr_os.c_safe_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32 }

@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@POLLOUT = common dso_local global i32 0, align 4
@EINTR = common dso_local global i64 0, align 8
@exit_signal_received = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @safe_write(i32 %0, i8* %1, i64 %2, i32 %3) #0 {
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
  br label %14

14:                                               ; preds = %48, %4
  %15 = load i64, i64* %8, align 8
  %16 = icmp ugt i64 %15, 0
  br i1 %16, label %17, label %55

17:                                               ; preds = %14
  br label %18

18:                                               ; preds = %47, %17
  %19 = load i32, i32* %6, align 4
  %20 = load i8*, i8** %11, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i64 @write(i32 %19, i8* %20, i64 %21)
  store i64 %22, i64* %12, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %18
  %25 = load i64, i64* @errno, align 8
  %26 = load i64, i64* @EAGAIN, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %10, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @POLLOUT, align 4
  %32 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %10, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @poll(%struct.pollfd* %10, i32 1, i32 %33)
  %35 = icmp sle i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i64 -1, i64* %5, align 8
  br label %61

37:                                               ; preds = %28
  br label %47

38:                                               ; preds = %24
  %39 = load i64, i64* @errno, align 8
  %40 = load i64, i64* @EINTR, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* @exit_signal_received, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %38
  store i64 -1, i64* %5, align 8
  br label %61

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %46, %37
  br label %18

48:                                               ; preds = %18
  %49 = load i64, i64* %12, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 %49
  store i8* %51, i8** %11, align 8
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* %8, align 8
  %54 = sub i64 %53, %52
  store i64 %54, i64* %8, align 8
  br label %14

55:                                               ; preds = %14
  %56 = load i8*, i8** %11, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  store i64 %60, i64* %5, align 8
  br label %61

61:                                               ; preds = %55, %45, %36
  %62 = load i64, i64* %5, align 8
  ret i64 %62
}

declare dso_local i64 @write(i32, i8*, i64) #1

declare dso_local i64 @poll(%struct.pollfd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
