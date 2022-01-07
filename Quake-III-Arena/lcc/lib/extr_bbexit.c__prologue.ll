; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/lib/extr_bbexit.c__prologue.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/lib/extr_bbexit.c__prologue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.caller = type { i64, i32, %struct.caller* }
%struct._bbdata = type { %struct._bbdata* }
%struct.func = type { %struct.caller* }

@_prologue.callers = internal global [4096 x %struct.caller] zeroinitializer, align 16
@_prologue.next = internal global i32 0, align 4
@_bblist = common dso_local global %struct._bbdata* null, align 8
@bbexit = common dso_local global i32 0, align 4
@_caller = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_prologue(%struct.func* %0, %struct._bbdata* %1) #0 {
  %3 = alloca %struct.func*, align 8
  %4 = alloca %struct._bbdata*, align 8
  %5 = alloca %struct.caller*, align 8
  store %struct.func* %0, %struct.func** %3, align 8
  store %struct._bbdata* %1, %struct._bbdata** %4, align 8
  %6 = load %struct._bbdata*, %struct._bbdata** %4, align 8
  %7 = getelementptr inbounds %struct._bbdata, %struct._bbdata* %6, i32 0, i32 0
  %8 = load %struct._bbdata*, %struct._bbdata** %7, align 8
  %9 = icmp ne %struct._bbdata* %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %2
  %11 = load %struct._bbdata*, %struct._bbdata** @_bblist, align 8
  %12 = load %struct._bbdata*, %struct._bbdata** %4, align 8
  %13 = getelementptr inbounds %struct._bbdata, %struct._bbdata* %12, i32 0, i32 0
  store %struct._bbdata* %11, %struct._bbdata** %13, align 8
  %14 = load %struct._bbdata*, %struct._bbdata** %4, align 8
  store %struct._bbdata* %14, %struct._bbdata** @_bblist, align 8
  %15 = load i32, i32* @_prologue.next, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load i32, i32* @bbexit, align 4
  %19 = call i32 @atexit(i32 %18)
  br label %20

20:                                               ; preds = %17, %10
  br label %21

21:                                               ; preds = %20, %2
  %22 = load %struct.func*, %struct.func** %3, align 8
  %23 = getelementptr inbounds %struct.func, %struct.func* %22, i32 0, i32 0
  %24 = load %struct.caller*, %struct.caller** %23, align 8
  store %struct.caller* %24, %struct.caller** %5, align 8
  br label %25

25:                                               ; preds = %40, %21
  %26 = load %struct.caller*, %struct.caller** %5, align 8
  %27 = icmp ne %struct.caller* %26, null
  br i1 %27, label %28, label %44

28:                                               ; preds = %25
  %29 = load %struct.caller*, %struct.caller** %5, align 8
  %30 = getelementptr inbounds %struct.caller, %struct.caller* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @_caller, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.caller*, %struct.caller** %5, align 8
  %36 = getelementptr inbounds %struct.caller, %struct.caller* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  br label %44

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.caller*, %struct.caller** %5, align 8
  %42 = getelementptr inbounds %struct.caller, %struct.caller* %41, i32 0, i32 2
  %43 = load %struct.caller*, %struct.caller** %42, align 8
  store %struct.caller* %43, %struct.caller** %5, align 8
  br label %25

44:                                               ; preds = %34, %25
  %45 = load %struct.caller*, %struct.caller** %5, align 8
  %46 = icmp ne %struct.caller* %45, null
  br i1 %46, label %69, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* @_prologue.next, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp ult i64 %49, 4096
  br i1 %50, label %51, label %69

51:                                               ; preds = %47
  %52 = load i32, i32* @_prologue.next, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* @_prologue.next, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds [4096 x %struct.caller], [4096 x %struct.caller]* @_prologue.callers, i64 0, i64 %54
  store %struct.caller* %55, %struct.caller** %5, align 8
  %56 = load i64, i64* @_caller, align 8
  %57 = load %struct.caller*, %struct.caller** %5, align 8
  %58 = getelementptr inbounds %struct.caller, %struct.caller* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.caller*, %struct.caller** %5, align 8
  %60 = getelementptr inbounds %struct.caller, %struct.caller* %59, i32 0, i32 1
  store i32 1, i32* %60, align 8
  %61 = load %struct.func*, %struct.func** %3, align 8
  %62 = getelementptr inbounds %struct.func, %struct.func* %61, i32 0, i32 0
  %63 = load %struct.caller*, %struct.caller** %62, align 8
  %64 = load %struct.caller*, %struct.caller** %5, align 8
  %65 = getelementptr inbounds %struct.caller, %struct.caller* %64, i32 0, i32 2
  store %struct.caller* %63, %struct.caller** %65, align 8
  %66 = load %struct.caller*, %struct.caller** %5, align 8
  %67 = load %struct.func*, %struct.func** %3, align 8
  %68 = getelementptr inbounds %struct.func, %struct.func* %67, i32 0, i32 0
  store %struct.caller* %66, %struct.caller** %68, align 8
  br label %69

69:                                               ; preds = %51, %47, %44
  store i64 0, i64* @_caller, align 8
  ret void
}

declare dso_local i32 @atexit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
