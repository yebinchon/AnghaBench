; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_proc_pidthreadpathinfo.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_proc_pidthreadpathinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.proc_threadwithpathinfo = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.proc_threadinfo_internal = type { i32 }

@NULLVP = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_pidthreadpathinfo(%struct.TYPE_5__* %0, i32 %1, %struct.proc_threadwithpathinfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.proc_threadwithpathinfo*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.proc_threadwithpathinfo* %2, %struct.proc_threadwithpathinfo** %7, align 8
  %13 = load i64, i64* @NULLVP, align 8
  store i64 %13, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %11, align 4
  %15 = load %struct.proc_threadwithpathinfo*, %struct.proc_threadwithpathinfo** %7, align 8
  %16 = call i32 @bzero(%struct.proc_threadwithpathinfo* %15, i32 24)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load %struct.proc_threadwithpathinfo*, %struct.proc_threadwithpathinfo** %7, align 8
  %22 = getelementptr inbounds %struct.proc_threadwithpathinfo, %struct.proc_threadwithpathinfo* %21, i32 0, i32 1
  %23 = bitcast i32* %22 to %struct.proc_threadinfo_internal*
  %24 = bitcast i64* %8 to i8*
  %25 = call i32 @fill_taskthreadinfo(i32 %19, i32 %20, i32 0, %struct.proc_threadinfo_internal* %23, i8* %24, i32* %9)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @ESRCH, align 4
  store i32 %29, i32* %4, align 4
  br label %69

30:                                               ; preds = %3
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @NULLVP, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %67

34:                                               ; preds = %30
  %35 = load i64, i64* %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i64 @vnode_getwithvid(i64 %35, i32 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %34
  %40 = load i64, i64* %8, align 8
  %41 = load %struct.proc_threadwithpathinfo*, %struct.proc_threadwithpathinfo** %7, align 8
  %42 = getelementptr inbounds %struct.proc_threadwithpathinfo, %struct.proc_threadwithpathinfo* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = call i32 @fill_vnodeinfo(i64 %40, i32* %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %39
  %48 = load i32, i32* @MAXPATHLEN, align 4
  store i32 %48, i32* %12, align 4
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.proc_threadwithpathinfo*, %struct.proc_threadwithpathinfo** %7, align 8
  %51 = getelementptr inbounds %struct.proc_threadwithpathinfo, %struct.proc_threadwithpathinfo* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = call i32 @vn_getpath(i64 %49, i32* %54, i32* %12)
  %56 = load %struct.proc_threadwithpathinfo*, %struct.proc_threadwithpathinfo** %7, align 8
  %57 = getelementptr inbounds %struct.proc_threadwithpathinfo, %struct.proc_threadwithpathinfo* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* @MAXPATHLEN, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  store i32 0, i32* %63, align 4
  br label %64

64:                                               ; preds = %47, %39
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @vnode_put(i64 %65)
  br label %67

67:                                               ; preds = %64, %34, %30
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %28
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @bzero(%struct.proc_threadwithpathinfo*, i32) #1

declare dso_local i32 @fill_taskthreadinfo(i32, i32, i32, %struct.proc_threadinfo_internal*, i8*, i32*) #1

declare dso_local i64 @vnode_getwithvid(i64, i32) #1

declare dso_local i32 @fill_vnodeinfo(i64, i32*) #1

declare dso_local i32 @vn_getpath(i64, i32*, i32*) #1

declare dso_local i32 @vnode_put(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
