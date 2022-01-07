; ModuleID = '/home/carl/AnghaBench/RetroArch/wiiu/system/extr_missing_libc_functions.c_clock_gettime.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wiiu/system/extr_missing_libc_functions.c_clock_gettime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }
%struct.timeval = type { i32, i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clock_gettime(i32 %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca %struct.timeval, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  %9 = bitcast %struct.timeval* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 12, i1 false)
  store i32 0, i32* %7, align 4
  %10 = load %struct.timespec*, %struct.timespec** %5, align 8
  %11 = icmp eq %struct.timespec* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @EFAULT, align 4
  store i32 %13, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %34

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %31 [
    i32 128, label %16
  ]

16:                                               ; preds = %14
  %17 = call i32 @_gettimeofday_r(i32* null, %struct.timeval* %6, i32* null)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %34

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.timespec*, %struct.timespec** %5, align 8
  %25 = getelementptr inbounds %struct.timespec, %struct.timespec* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 1000
  %29 = load %struct.timespec*, %struct.timespec** %5, align 8
  %30 = getelementptr inbounds %struct.timespec, %struct.timespec* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %33

31:                                               ; preds = %14
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %34

33:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %31, %20, %12
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @_gettimeofday_r(i32*, %struct.timeval*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
