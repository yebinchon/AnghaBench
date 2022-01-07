; ModuleID = '/home/carl/AnghaBench/disque/src/extr_ae_kqueue.c_aeApiPoll.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_ae_kqueue.c_aeApiPoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.kevent*, i32 }
%struct.kevent = type { i64, i32 }
%struct.timeval = type { i32, i32 }
%struct.timespec = type { i32, i32 }

@EVFILT_READ = common dso_local global i64 0, align 8
@AE_READABLE = common dso_local global i32 0, align 4
@EVFILT_WRITE = common dso_local global i64 0, align 8
@AE_WRITABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.timeval*)* @aeApiPoll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aeApiPoll(%struct.TYPE_6__* %0, %struct.timeval* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.timeval*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.timespec, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.kevent*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.timeval* %1, %struct.timeval** %4, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %5, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.timeval*, %struct.timeval** %4, align 8
  %16 = icmp ne %struct.timeval* %15, null
  br i1 %16, label %17, label %37

17:                                               ; preds = %2
  %18 = load %struct.timeval*, %struct.timeval** %4, align 8
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load %struct.timeval*, %struct.timeval** %4, align 8
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 1000
  %26 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.kevent*, %struct.kevent** %31, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @kevent(i32 %29, i32* null, i32 0, %struct.kevent* %32, i32 %35, %struct.timespec* %8)
  store i32 %36, i32* %6, align 4
  br label %48

37:                                               ; preds = %2
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.kevent*, %struct.kevent** %42, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @kevent(i32 %40, i32* null, i32 0, %struct.kevent* %43, i32 %46, %struct.timespec* null)
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %37, %17
  %49 = load i32, i32* %6, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %106

51:                                               ; preds = %48
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %102, %51
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %105

57:                                               ; preds = %53
  store i32 0, i32* %10, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load %struct.kevent*, %struct.kevent** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.kevent, %struct.kevent* %60, i64 %62
  store %struct.kevent* %63, %struct.kevent** %11, align 8
  %64 = load %struct.kevent*, %struct.kevent** %11, align 8
  %65 = getelementptr inbounds %struct.kevent, %struct.kevent* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @EVFILT_READ, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %57
  %70 = load i32, i32* @AE_READABLE, align 4
  %71 = load i32, i32* %10, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %69, %57
  %74 = load %struct.kevent*, %struct.kevent** %11, align 8
  %75 = getelementptr inbounds %struct.kevent, %struct.kevent* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @EVFILT_WRITE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load i32, i32* @AE_WRITABLE, align 4
  %81 = load i32, i32* %10, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %79, %73
  %84 = load %struct.kevent*, %struct.kevent** %11, align 8
  %85 = getelementptr inbounds %struct.kevent, %struct.kevent* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  store i32 %86, i32* %93, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  store i32 %94, i32* %101, align 4
  br label %102

102:                                              ; preds = %83
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %53

105:                                              ; preds = %53
  br label %106

106:                                              ; preds = %105, %48
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local i32 @kevent(i32, i32*, i32, %struct.kevent*, i32, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
