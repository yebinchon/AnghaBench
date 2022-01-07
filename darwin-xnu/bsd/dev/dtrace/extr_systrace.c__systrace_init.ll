; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_systrace.c__systrace_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_systrace.c__systrace_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysent = type { i64, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@NSYSCALL = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@dtrace_systrace_syscall = common dso_local global i64 0, align 8
@dtrace_systrace_lock = common dso_local global i32 0, align 4
@dtrace_lck_grp = common dso_local global i32 0, align 4
@dtrace_lck_attr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sysent*, %struct.TYPE_4__**)* @systrace_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @systrace_init(%struct.sysent* %0, %struct.TYPE_4__** %1) #0 {
  %3 = alloca %struct.sysent*, align 8
  %4 = alloca %struct.TYPE_4__**, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sysent*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store %struct.sysent* %0, %struct.sysent** %3, align 8
  store %struct.TYPE_4__** %1, %struct.TYPE_4__*** %4, align 8
  %9 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %5, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = icmp eq %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load i32, i32* @NSYSCALL, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 16, %15
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @KM_SLEEP, align 4
  %19 = call %struct.TYPE_4__* @kmem_zalloc(i32 %17, i32 %18)
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %5, align 8
  %20 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %20, align 8
  br label %21

21:                                               ; preds = %13, %2
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %61, %21
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @NSYSCALL, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %64

26:                                               ; preds = %22
  %27 = load %struct.sysent*, %struct.sysent** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.sysent, %struct.sysent* %27, i64 %29
  store %struct.sysent* %30, %struct.sysent** %7, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %8, align 8
  %35 = load %struct.sysent*, %struct.sysent** %7, align 8
  %36 = call i64 @LOADABLE_SYSCALL(%struct.sysent* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %26
  %39 = load %struct.sysent*, %struct.sysent** %7, align 8
  %40 = call i32 @LOADED_SYSCALL(%struct.sysent* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  br label %61

43:                                               ; preds = %38, %26
  %44 = load %struct.sysent*, %struct.sysent** %7, align 8
  %45 = getelementptr inbounds %struct.sysent, %struct.sysent* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @dtrace_systrace_syscall, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %61

50:                                               ; preds = %43
  %51 = load %struct.sysent*, %struct.sysent** %7, align 8
  %52 = getelementptr inbounds %struct.sysent, %struct.sysent* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.sysent*, %struct.sysent** %7, align 8
  %57 = getelementptr inbounds %struct.sysent, %struct.sysent* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %50, %49, %42
  %62 = load i32, i32* %6, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %22

64:                                               ; preds = %22
  %65 = load i32, i32* @dtrace_lck_grp, align 4
  %66 = load i32, i32* @dtrace_lck_attr, align 4
  %67 = call i32 @lck_mtx_init(i32* @dtrace_systrace_lock, i32 %65, i32 %66)
  ret void
}

declare dso_local %struct.TYPE_4__* @kmem_zalloc(i32, i32) #1

declare dso_local i64 @LOADABLE_SYSCALL(%struct.sysent*) #1

declare dso_local i32 @LOADED_SYSCALL(%struct.sysent*) #1

declare dso_local i32 @lck_mtx_init(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
