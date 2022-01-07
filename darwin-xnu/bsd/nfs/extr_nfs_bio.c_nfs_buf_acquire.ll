; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_acquire.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsbuf = type { i32 }
%struct.timespec = type { i32, i32 }

@NBL_BUSY = common dso_local global i32 0, align 4
@NBAC_NOWAIT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i64 0, align 8
@NBL_WANTED = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@nfs_buf_mutex = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"nfs_buf_acquire\00", align 1
@EAGAIN = common dso_local global i64 0, align 8
@NBAC_REMOVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfs_buf_acquire(%struct.nfsbuf* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.nfsbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.timespec, align 4
  store %struct.nfsbuf* %0, %struct.nfsbuf** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %13 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @NBL_BUSY, align 4
  %16 = call i64 @ISSET(i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %54

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @NBAC_NOWAIT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i64, i64* @EBUSY, align 8
  store i64 %24, i64* %5, align 8
  br label %68

25:                                               ; preds = %18
  %26 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %27 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @NBL_WANTED, align 4
  %30 = call i32 @SET(i32 %28, i32 %29)
  %31 = load i32, i32* %9, align 4
  %32 = sdiv i32 %31, 100
  %33 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %9, align 4
  %35 = srem i32 %34, 100
  %36 = mul nsw i32 %35, 10
  %37 = load i32, i32* @NSEC_PER_USEC, align 4
  %38 = mul nsw i32 %36, %37
  %39 = mul nsw i32 %38, 1000
  %40 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  %41 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %42 = load i32, i32* @nfs_buf_mutex, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @PRIBIO, align 4
  %45 = add nsw i32 %44, 1
  %46 = or i32 %43, %45
  %47 = call i64 @msleep(%struct.nfsbuf* %41, i32 %42, i32 %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.timespec* %11)
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %10, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %25
  %51 = load i64, i64* %10, align 8
  store i64 %51, i64* %5, align 8
  br label %68

52:                                               ; preds = %25
  %53 = load i64, i64* @EAGAIN, align 8
  store i64 %53, i64* %5, align 8
  br label %68

54:                                               ; preds = %4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @NBAC_REMOVE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %61 = call i32 @nfs_buf_remfree(%struct.nfsbuf* %60)
  br label %62

62:                                               ; preds = %59, %54
  %63 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %64 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @NBL_BUSY, align 4
  %67 = call i32 @SET(i32 %65, i32 %66)
  store i64 0, i64* %5, align 8
  br label %68

68:                                               ; preds = %62, %52, %50, %23
  %69 = load i64, i64* %5, align 8
  ret i64 %69
}

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i32 @SET(i32, i32) #1

declare dso_local i64 @msleep(%struct.nfsbuf*, i32, i32, i8*, %struct.timespec*) #1

declare dso_local i32 @nfs_buf_remfree(%struct.nfsbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
