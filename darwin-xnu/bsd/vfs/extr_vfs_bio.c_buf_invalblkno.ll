; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_buf_invalblkno.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_buf_invalblkno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32, i32, i32 }
%struct.bufhashhdr = type { i32 }

@buf_mtxp = common dso_local global i32 0, align 4
@BL_BUSY = common dso_local global i32 0, align 4
@BUF_WAIT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i64 0, align 8
@BL_WANTED = common dso_local global i32 0, align 4
@PDROP = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"buf_invalblkno\00", align 1
@B_INVAL = common dso_local global i32 0, align 4
@buf_busycount = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @buf_invalblkno(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.buf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.bufhashhdr*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.bufhashhdr* @BUFHASH(i32 %11, i32 %12)
  store %struct.bufhashhdr* %13, %struct.bufhashhdr** %10, align 8
  br label %14

14:                                               ; preds = %59, %3
  %15 = load i32, i32* @buf_mtxp, align 4
  %16 = call i32 @lck_mtx_lock_spin(i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.bufhashhdr*, %struct.bufhashhdr** %10, align 8
  %20 = call %struct.buf* @incore_locked(i32 %17, i32 %18, %struct.bufhashhdr* %19)
  store %struct.buf* %20, %struct.buf** %8, align 8
  %21 = icmp eq %struct.buf* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load i32, i32* @buf_mtxp, align 4
  %24 = call i32 @lck_mtx_unlock(i32 %23)
  store i64 0, i64* %4, align 8
  br label %79

25:                                               ; preds = %14
  %26 = load %struct.buf*, %struct.buf** %8, align 8
  %27 = getelementptr inbounds %struct.buf, %struct.buf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @BL_BUSY, align 4
  %30 = call i64 @ISSET(i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %60

32:                                               ; preds = %25
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @BUF_WAIT, align 4
  %35 = call i64 @ISSET(i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @buf_mtxp, align 4
  %39 = call i32 @lck_mtx_unlock(i32 %38)
  %40 = load i64, i64* @EBUSY, align 8
  store i64 %40, i64* %4, align 8
  br label %79

41:                                               ; preds = %32
  %42 = load %struct.buf*, %struct.buf** %8, align 8
  %43 = getelementptr inbounds %struct.buf, %struct.buf* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @BL_WANTED, align 4
  %46 = call i32 @SET(i32 %44, i32 %45)
  %47 = load %struct.buf*, %struct.buf** %8, align 8
  %48 = ptrtoint %struct.buf* %47 to i32
  %49 = load i32, i32* @buf_mtxp, align 4
  %50 = load i32, i32* @PDROP, align 4
  %51 = load i32, i32* @PRIBIO, align 4
  %52 = add nsw i32 %51, 1
  %53 = or i32 %50, %52
  %54 = call i64 @msleep(i32 %48, i32 %49, i32 %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* null)
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %9, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %41
  %58 = load i64, i64* %9, align 8
  store i64 %58, i64* %4, align 8
  br label %79

59:                                               ; preds = %41
  br label %14

60:                                               ; preds = %25
  %61 = load %struct.buf*, %struct.buf** %8, align 8
  %62 = call i32 @bremfree_locked(%struct.buf* %61)
  %63 = load %struct.buf*, %struct.buf** %8, align 8
  %64 = getelementptr inbounds %struct.buf, %struct.buf* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @BL_BUSY, align 4
  %67 = call i32 @SET(i32 %65, i32 %66)
  %68 = load %struct.buf*, %struct.buf** %8, align 8
  %69 = getelementptr inbounds %struct.buf, %struct.buf* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @B_INVAL, align 4
  %72 = call i32 @SET(i32 %70, i32 %71)
  %73 = load i32, i32* @buf_busycount, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* @buf_busycount, align 4
  %75 = load i32, i32* @buf_mtxp, align 4
  %76 = call i32 @lck_mtx_unlock(i32 %75)
  %77 = load %struct.buf*, %struct.buf** %8, align 8
  %78 = call i32 @buf_brelse(%struct.buf* %77)
  store i64 0, i64* %4, align 8
  br label %79

79:                                               ; preds = %60, %57, %37, %22
  %80 = load i64, i64* %4, align 8
  ret i64 %80
}

declare dso_local %struct.bufhashhdr* @BUFHASH(i32, i32) #1

declare dso_local i32 @lck_mtx_lock_spin(i32) #1

declare dso_local %struct.buf* @incore_locked(i32, i32, %struct.bufhashhdr*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i32 @SET(i32, i32) #1

declare dso_local i64 @msleep(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @bremfree_locked(%struct.buf*) #1

declare dso_local i32 @buf_brelse(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
