; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/rthreads/extr_rthreads.c_scond_wait_timeout.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/rthreads/extr_rthreads.c_scond_wait_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.timespec = type { i32, i32, i32 }

@CLOCK_REALTIME = common dso_local global i32 0, align 4
@CALENDAR_CLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scond_wait_timeout(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.timespec, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = bitcast %struct.timespec* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 12, i1 false)
  %12 = load i32, i32* @CLOCK_REALTIME, align 4
  %13 = call i32 @clock_gettime(i32 %12, %struct.timespec* %10)
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @INT64_C(i32 1000000)
  %16 = sdiv i32 %14, %15
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @INT64_C(i32 1000000)
  %19 = srem i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, %20
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @INT64_C(i32 1000)
  %26 = mul nsw i32 %24, %25
  %27 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, %26
  store i32 %29, i32* %27, align 4
  %30 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %31, 1000000000
  br i1 %32, label %33, label %40

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 1000000000
  store i32 %36, i32* %34, align 4
  %37 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %33, %3
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = call i32 @pthread_cond_timedwait(i32* %42, i32* %44, %struct.timespec* %10)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 0
  %48 = zext i1 %47 to i32
  ret i32 %48
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #2

declare dso_local i32 @INT64_C(i32) #2

declare dso_local i32 @pthread_cond_timedwait(i32*, i32*, %struct.timespec*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
