; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_state_option.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_state_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@dtrace_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@DTRACE_ACTIVITY_INACTIVE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@DTRACEOPT_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DTRACEOPT_CPU = common dso_local global i32 0, align 4
@dtrace_destructive_disallow = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@LONG_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i64)* @dtrace_state_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_state_option(%struct.TYPE_5__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %8 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %9 = call i32 @LCK_MTX_ASSERT(i32* @dtrace_lock, i32 %8)
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DTRACE_ACTIVITY_INACTIVE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @EBUSY, align 4
  store i32 %16, i32* %4, align 4
  br label %68

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @DTRACEOPT_MAX, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %68

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @DTRACEOPT_CPU, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i64, i64* %7, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %4, align 4
  br label %68

32:                                               ; preds = %27, %23
  %33 = load i32, i32* %6, align 4
  switch i32 %33, label %60 [
    i32 131, label %34
    i32 132, label %46
    i32 130, label %46
    i32 133, label %46
    i32 129, label %46
    i32 128, label %46
  ]

34:                                               ; preds = %32
  %35 = call i32 (...) @dtrace_is_restricted()
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @dtrace_destructive_disallow, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37, %34
  %41 = load i32, i32* @EACCES, align 4
  store i32 %41, i32* %4, align 4
  br label %68

42:                                               ; preds = %37
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  br label %60

46:                                               ; preds = %32, %32, %32, %32, %32
  %47 = load i64, i64* %7, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %4, align 4
  br label %68

51:                                               ; preds = %46
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* @LONG_MAX, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i64, i64* @LONG_MAX, align 8
  %57 = sub nsw i64 %56, 134217728
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %7, align 8
  br label %59

59:                                               ; preds = %55, %51
  br label %60

60:                                               ; preds = %59, %32, %42
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  store i64 %61, i64* %67, align 8
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %60, %49, %40, %30, %21, %15
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @dtrace_is_restricted(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
