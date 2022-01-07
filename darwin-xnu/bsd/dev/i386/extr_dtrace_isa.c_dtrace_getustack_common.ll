; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/i386/extr_dtrace_isa.c_dtrace_getustack_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/i386/extr_dtrace_isa.c_dtrace_getustack_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i64 }

@RETURN_OFFSET64 = common dso_local global i64 0, align 8
@RETURN_OFFSET = common dso_local global i64 0, align 8
@CPU = common dso_local global %struct.TYPE_16__* null, align 8
@CPU_DTRACE_FAULT = common dso_local global i32 0, align 4
@DATAMODEL_NATIVE = common dso_local global i64 0, align 8
@EBP = common dso_local global i64 0, align 8
@EIP = common dso_local global i64 0, align 8
@REG_FP = common dso_local global i64 0, align 8
@REG_PC = common dso_local global i64 0, align 8
@cpu_core = common dso_local global %struct.TYPE_15__* null, align 8
@lwp = common dso_local global %struct.TYPE_14__* null, align 8
@p = common dso_local global %struct.TYPE_13__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, i64, i64)* @dtrace_getustack_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_getustack_common(i64* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %11 = call i32 (...) @current_proc()
  %12 = call i64 @proc_is64bit(i32 %11)
  store i64 %12, i64* %10, align 8
  %13 = load i64*, i64** %5, align 8
  %14 = icmp eq i64* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = icmp sgt i32 %16, 0
  br label %18

18:                                               ; preds = %15, %4
  %19 = phi i1 [ true, %4 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  br label %22

22:                                               ; preds = %63, %18
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %64

25:                                               ; preds = %22
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %9, align 4
  %28 = load i64*, i64** %5, align 8
  %29 = icmp ne i64* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = load i64, i64* %7, align 8
  %32 = load i64*, i64** %5, align 8
  %33 = getelementptr inbounds i64, i64* %32, i32 1
  store i64* %33, i64** %5, align 8
  store i64 %31, i64* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp sle i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %64

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %25
  %41 = load i64, i64* %8, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %64

44:                                               ; preds = %40
  %45 = load i64, i64* %10, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* @RETURN_OFFSET64, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i64 @dtrace_fuword64(i64 %50)
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i64 @dtrace_fuword64(i64 %52)
  store i64 %53, i64* %8, align 8
  br label %63

54:                                               ; preds = %44
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* @RETURN_OFFSET, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i8* @dtrace_fuword32(i64 %57)
  %59 = ptrtoint i8* %58 to i64
  store i64 %59, i64* %7, align 8
  %60 = load i64, i64* %8, align 8
  %61 = call i8* @dtrace_fuword32(i64 %60)
  %62 = ptrtoint i8* %61 to i64
  store i64 %62, i64* %8, align 8
  br label %63

63:                                               ; preds = %54, %47
  br label %22

64:                                               ; preds = %43, %38, %22
  %65 = load i32, i32* %9, align 4
  ret i32 %65
}

declare dso_local i64 @proc_is64bit(i32) #1

declare dso_local i32 @current_proc(...) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @dtrace_fuword64(i64) #1

declare dso_local i8* @dtrace_fuword32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
