; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_buf_acquire_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_buf_acquire_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.timespec = type { i32, i32 }

@B_LOCKED = common dso_local global i32 0, align 4
@BAC_SKIP_LOCKED = common dso_local global i32 0, align 4
@EDEADLK = common dso_local global i64 0, align 8
@BAC_SKIP_NONLOCKED = common dso_local global i32 0, align 4
@BL_BUSY = common dso_local global i32 0, align 4
@BAC_NOWAIT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i64 0, align 8
@BL_WANTED = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@buf_mtxp = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"buf_acquire\00", align 1
@EAGAIN = common dso_local global i64 0, align 8
@BAC_REMOVE = common dso_local global i32 0, align 4
@buf_busycount = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i32, i32, i32)* @buf_acquire_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @buf_acquire_locked(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.timespec, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @B_LOCKED, align 4
  %16 = call i64 @ISSET(i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @BAC_SKIP_LOCKED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i64, i64* @EDEADLK, align 8
  store i64 %24, i64* %5, align 8
  br label %94

25:                                               ; preds = %18
  br label %34

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @BAC_SKIP_NONLOCKED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i64, i64* @EDEADLK, align 8
  store i64 %32, i64* %5, align 8
  br label %94

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %25
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @BL_BUSY, align 4
  %39 = call i64 @ISSET(i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %78

41:                                               ; preds = %34
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @BAC_NOWAIT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i64, i64* @EBUSY, align 8
  store i64 %47, i64* %5, align 8
  br label %94

48:                                               ; preds = %41
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @BL_WANTED, align 4
  %53 = call i32 @SET(i32 %51, i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = sdiv i32 %54, 100
  %56 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %9, align 4
  %58 = srem i32 %57, 100
  %59 = mul nsw i32 %58, 10
  %60 = load i32, i32* @NSEC_PER_USEC, align 4
  %61 = mul nsw i32 %59, %60
  %62 = mul nsw i32 %61, 1000
  %63 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 1
  store i32 %62, i32* %63, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %65 = ptrtoint %struct.TYPE_4__* %64 to i32
  %66 = load i32, i32* @buf_mtxp, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @PRIBIO, align 4
  %69 = add nsw i32 %68, 1
  %70 = or i32 %67, %69
  %71 = call i64 @msleep(i32 %65, i32 %66, i32 %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.timespec* %11)
  store i64 %71, i64* %10, align 8
  %72 = load i64, i64* %10, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %48
  %75 = load i64, i64* %10, align 8
  store i64 %75, i64* %5, align 8
  br label %94

76:                                               ; preds = %48
  %77 = load i64, i64* @EAGAIN, align 8
  store i64 %77, i64* %5, align 8
  br label %94

78:                                               ; preds = %34
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @BAC_REMOVE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %85 = call i32 @bremfree_locked(%struct.TYPE_4__* %84)
  br label %86

86:                                               ; preds = %83, %78
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @BL_BUSY, align 4
  %91 = call i32 @SET(i32 %89, i32 %90)
  %92 = load i32, i32* @buf_busycount, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* @buf_busycount, align 4
  store i64 0, i64* %5, align 8
  br label %94

94:                                               ; preds = %86, %76, %74, %46, %31, %23
  %95 = load i64, i64* %5, align 8
  ret i64 %95
}

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i32 @SET(i32, i32) #1

declare dso_local i64 @msleep(i32, i32, i32, i8*, %struct.timespec*) #1

declare dso_local i32 @bremfree_locked(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
