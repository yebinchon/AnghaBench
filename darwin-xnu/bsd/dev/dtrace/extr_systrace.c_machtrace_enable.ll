; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_systrace.c_machtrace_enable.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_systrace.c_machtrace_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i8* }
%struct.TYPE_4__ = type { i8* }

@machtrace_sysent = common dso_local global %struct.TYPE_3__* null, align 8
@DTRACE_IDNONE = common dso_local global i64 0, align 8
@mach_trap_table = common dso_local global %struct.TYPE_4__* null, align 8
@dtrace_machtrace_syscall = common dso_local global i64 0, align 8
@dtrace_systrace_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @machtrace_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @machtrace_enable(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = ptrtoint i8* %11 to i64
  %13 = call i32 @SYSTRACE_SYSNUM(i64 %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @machtrace_sysent, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DTRACE_IDNONE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %31, label %22

22:                                               ; preds = %3
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @machtrace_sysent, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DTRACE_IDNONE, align 8
  %30 = icmp ne i64 %28, %29
  br label %31

31:                                               ; preds = %22, %3
  %32 = phi i1 [ true, %3 ], [ %30, %22 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %9, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = ptrtoint i8* %34 to i64
  %36 = call i64 @SYSTRACE_ISENTRY(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load i8*, i8** %6, align 8
  %40 = ptrtoint i8* %39 to i64
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @machtrace_sysent, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i64 %40, i64* %45, align 8
  br label %54

46:                                               ; preds = %31
  %47 = load i8*, i8** %6, align 8
  %48 = ptrtoint i8* %47 to i64
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @machtrace_sysent, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i64 %48, i64* %53, align 8
  br label %54

54:                                               ; preds = %46, %38
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %54
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mach_trap_table, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i64, i64* @dtrace_machtrace_syscall, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = icmp eq i8* %63, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @ASSERT(i32 %67)
  store i32 0, i32* %4, align 4
  br label %95

69:                                               ; preds = %54
  %70 = call i32 @lck_mtx_lock(i32* @dtrace_systrace_lock)
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mach_trap_table, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** @machtrace_sysent, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = icmp eq i8* %76, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %69
  store i32 ptrtoint (i64* @dtrace_machtrace_syscall to i32), i32* %10, align 4
  %85 = ptrtoint i32* %10 to i32
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mach_trap_table, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = ptrtoint i8** %90 to i32
  %92 = call i32 @ml_nofault_copy(i32 %85, i32 %91, i32 4)
  br label %93

93:                                               ; preds = %84, %69
  %94 = call i32 @lck_mtx_unlock(i32* @dtrace_systrace_lock)
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %93, %57
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @SYSTRACE_SYSNUM(i64) #1

declare dso_local i64 @SYSTRACE_ISENTRY(i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @ml_nofault_copy(i32, i32, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
