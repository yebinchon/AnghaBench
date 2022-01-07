; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_knote_register.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_knote_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32 }

@EVFILT_MEMORYSTATUS_ALL_MASK = common dso_local global i32 0, align 4
@NOTE_MEMORYSTATUS_PROC_LIMIT_WARN = common dso_local global i32 0, align 4
@NOTE_MEMORYSTATUS_PROC_LIMIT_WARN_ACTIVE = common dso_local global i32 0, align 4
@NOTE_MEMORYSTATUS_PROC_LIMIT_WARN_INACTIVE = common dso_local global i32 0, align 4
@NOTE_MEMORYSTATUS_PROC_LIMIT_CRITICAL = common dso_local global i32 0, align 4
@NOTE_MEMORYSTATUS_PROC_LIMIT_CRITICAL_ACTIVE = common dso_local global i32 0, align 4
@NOTE_MEMORYSTATUS_PROC_LIMIT_CRITICAL_INACTIVE = common dso_local global i32 0, align 4
@memorystatus_klist = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memorystatus_knote_register(%struct.knote* %0) #0 {
  %2 = alloca %struct.knote*, align 8
  %3 = alloca i32, align 4
  store %struct.knote* %0, %struct.knote** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = call i32 (...) @memorystatus_klist_lock()
  %5 = load %struct.knote*, %struct.knote** %2, align 8
  %6 = getelementptr inbounds %struct.knote, %struct.knote* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @EVFILT_MEMORYSTATUS_ALL_MASK, align 4
  %9 = and i32 %7, %8
  %10 = load %struct.knote*, %struct.knote** %2, align 8
  %11 = getelementptr inbounds %struct.knote, %struct.knote* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %9, %12
  br i1 %13, label %14, label %53

14:                                               ; preds = %1
  %15 = load %struct.knote*, %struct.knote** %2, align 8
  %16 = getelementptr inbounds %struct.knote, %struct.knote* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @NOTE_MEMORYSTATUS_PROC_LIMIT_WARN, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %14
  %22 = load i32, i32* @NOTE_MEMORYSTATUS_PROC_LIMIT_WARN_ACTIVE, align 4
  %23 = load %struct.knote*, %struct.knote** %2, align 8
  %24 = getelementptr inbounds %struct.knote, %struct.knote* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @NOTE_MEMORYSTATUS_PROC_LIMIT_WARN_INACTIVE, align 4
  %28 = load %struct.knote*, %struct.knote** %2, align 8
  %29 = getelementptr inbounds %struct.knote, %struct.knote* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %21, %14
  %33 = load %struct.knote*, %struct.knote** %2, align 8
  %34 = getelementptr inbounds %struct.knote, %struct.knote* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @NOTE_MEMORYSTATUS_PROC_LIMIT_CRITICAL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %32
  %40 = load i32, i32* @NOTE_MEMORYSTATUS_PROC_LIMIT_CRITICAL_ACTIVE, align 4
  %41 = load %struct.knote*, %struct.knote** %2, align 8
  %42 = getelementptr inbounds %struct.knote, %struct.knote* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* @NOTE_MEMORYSTATUS_PROC_LIMIT_CRITICAL_INACTIVE, align 4
  %46 = load %struct.knote*, %struct.knote** %2, align 8
  %47 = getelementptr inbounds %struct.knote, %struct.knote* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %39, %32
  %51 = load %struct.knote*, %struct.knote** %2, align 8
  %52 = call i32 @KNOTE_ATTACH(i32* @memorystatus_klist, %struct.knote* %51)
  br label %55

53:                                               ; preds = %1
  %54 = load i32, i32* @ENOTSUP, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %50
  %56 = call i32 (...) @memorystatus_klist_unlock()
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @memorystatus_klist_lock(...) #1

declare dso_local i32 @KNOTE_ATTACH(i32*, %struct.knote*) #1

declare dso_local i32 @memorystatus_klist_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
