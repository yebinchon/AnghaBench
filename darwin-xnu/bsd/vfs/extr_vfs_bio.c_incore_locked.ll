; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_incore_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_incore_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.buf* }
%struct.bufhashhdr = type { %struct.buf* }

@B_INVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buf* (i64, i64, %struct.bufhashhdr*)* @incore_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buf* @incore_locked(i64 %0, i64 %1, %struct.bufhashhdr* %2) #0 {
  %4 = alloca %struct.buf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bufhashhdr*, align 8
  %8 = alloca %struct.buf*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.bufhashhdr* %2, %struct.bufhashhdr** %7, align 8
  %9 = load %struct.bufhashhdr*, %struct.bufhashhdr** %7, align 8
  %10 = getelementptr inbounds %struct.bufhashhdr, %struct.bufhashhdr* %9, i32 0, i32 0
  %11 = load %struct.buf*, %struct.buf** %10, align 8
  store %struct.buf* %11, %struct.buf** %8, align 8
  br label %12

12:                                               ; preds = %37, %3
  %13 = load %struct.buf*, %struct.buf** %8, align 8
  %14 = icmp ne %struct.buf* %13, null
  br i1 %14, label %15, label %42

15:                                               ; preds = %12
  %16 = load %struct.buf*, %struct.buf** %8, align 8
  %17 = getelementptr inbounds %struct.buf, %struct.buf* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %15
  %22 = load %struct.buf*, %struct.buf** %8, align 8
  %23 = getelementptr inbounds %struct.buf, %struct.buf* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load %struct.buf*, %struct.buf** %8, align 8
  %29 = getelementptr inbounds %struct.buf, %struct.buf* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @B_INVAL, align 4
  %32 = call i32 @ISSET(i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %27
  %35 = load %struct.buf*, %struct.buf** %8, align 8
  store %struct.buf* %35, %struct.buf** %4, align 8
  br label %43

36:                                               ; preds = %27, %21, %15
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.buf*, %struct.buf** %8, align 8
  %39 = getelementptr inbounds %struct.buf, %struct.buf* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.buf*, %struct.buf** %40, align 8
  store %struct.buf* %41, %struct.buf** %8, align 8
  br label %12

42:                                               ; preds = %12
  store %struct.buf* null, %struct.buf** %4, align 8
  br label %43

43:                                               ; preds = %42, %34
  %44 = load %struct.buf*, %struct.buf** %4, align 8
  ret %struct.buf* %44
}

declare dso_local i32 @ISSET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
