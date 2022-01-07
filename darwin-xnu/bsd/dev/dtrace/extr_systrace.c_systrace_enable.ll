; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_systrace.c_systrace_enable.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_systrace.c_systrace_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i64 }

@systrace_sysent = common dso_local global %struct.TYPE_3__* null, align 8
@DTRACE_IDNONE = common dso_local global i64 0, align 8
@sysent = common dso_local global %struct.TYPE_4__* null, align 8
@dtrace_systrace_syscall = common dso_local global i64 0, align 8
@dtrace_systrace_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @systrace_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @systrace_enable(i8* %0, i8* %1, i8* %2) #0 {
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
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @systrace_sysent, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DTRACE_IDNONE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %31, label %22

22:                                               ; preds = %3
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @systrace_sysent, align 8
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
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @systrace_sysent, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i64 %40, i64* %45, align 8
  br label %54

46:                                               ; preds = %31
  %47 = load i8*, i8** %6, align 8
  %48 = ptrtoint i8* %47 to i64
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @systrace_sysent, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i64 %48, i64* %53, align 8
  br label %54

54:                                               ; preds = %46, %38
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sysent, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @dtrace_systrace_syscall, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @ASSERT(i32 %66)
  store i32 0, i32* %4, align 4
  br label %94

68:                                               ; preds = %54
  %69 = call i32 @lck_mtx_lock(i32* @dtrace_systrace_lock)
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sysent, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** @systrace_sysent, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %75, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %68
  store i32 ptrtoint (i64* @dtrace_systrace_syscall to i32), i32* %10, align 4
  %84 = ptrtoint i32* %10 to i32
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sysent, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = ptrtoint i64* %89 to i32
  %91 = call i32 @ml_nofault_copy(i32 %84, i32 %90, i32 4)
  br label %92

92:                                               ; preds = %83, %68
  %93 = call i32 @lck_mtx_unlock(i32* @dtrace_systrace_lock)
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %92, %57
  %95 = load i32, i32* %4, align 4
  ret i32 %95
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
