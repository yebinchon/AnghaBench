; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_probe_lookup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_probe_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i8*, i32*, i8*, i32*, i8*, i32*, i8* }
%struct.TYPE_5__ = type { i8* }

@dtrace_lock = common dso_local global i32 0, align 4
@dtrace_match_string = common dso_local global i32 0, align 4
@dtrace_match_nul = common dso_local global i32 0, align 4
@DTRACE_IDNONE = common dso_local global i32 0, align 4
@DTRACE_PRIV_ALL = common dso_local global i32 0, align 4
@dtrace_probe_lookup_match = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_probe_lookup(i64 %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = call i32 @lck_mtx_lock(i32* @dtrace_lock)
  %13 = load i64, i64* %5, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_5__*
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i8* @dtrace_strref(i8* %16)
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 8
  store i8* %17, i8** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 7
  store i32* @dtrace_match_string, i32** %19, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i8* @dtrace_strref(i8* %20)
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 6
  store i8* %21, i8** %22, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32* @dtrace_match_string, i32* @dtrace_match_nul
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 5
  store i32* %26, i32** %27, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i8* @dtrace_strref(i8* %28)
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 4
  store i8* %29, i8** %30, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32* @dtrace_match_string, i32* @dtrace_match_nul
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  store i32* %34, i32** %35, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = call i8* @dtrace_strref(i8* %36)
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  store i8* %37, i8** %38, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = icmp ne i8* %39, null
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32* @dtrace_match_string, i32* @dtrace_match_nul
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  store i32* %42, i32** %43, align 8
  %44 = load i32, i32* @DTRACE_IDNONE, align 4
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i32 %44, i32* %45, align 8
  %46 = load i32, i32* @DTRACE_PRIV_ALL, align 4
  %47 = load i32, i32* @dtrace_probe_lookup_match, align 4
  %48 = call i32 @dtrace_match(%struct.TYPE_6__* %9, i32 %46, i32 0, i32 0, i32 %47, i32* %10, i32* null)
  store i32 %48, i32* %11, align 4
  %49 = call i32 @dtrace_probekey_release(%struct.TYPE_6__* %9)
  %50 = call i32 @lck_mtx_unlock(i32* @dtrace_lock)
  %51 = load i32, i32* %11, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %56, label %53

53:                                               ; preds = %4
  %54 = load i32, i32* %11, align 4
  %55 = icmp eq i32 %54, 0
  br label %56

56:                                               ; preds = %53, %4
  %57 = phi i1 [ true, %4 ], [ %55, %53 ]
  %58 = zext i1 %57 to i32
  %59 = call i32 @ASSERT(i32 %58)
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %10, align 4
  br label %65

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi i32 [ %63, %62 ], [ 0, %64 ]
  ret i32 %66
}

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i8* @dtrace_strref(i8*) #1

declare dso_local i32 @dtrace_match(%struct.TYPE_6__*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @dtrace_probekey_release(%struct.TYPE_6__*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
