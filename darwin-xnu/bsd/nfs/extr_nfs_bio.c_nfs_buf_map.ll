; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_map.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsbuf = type { i64, i32, i32 }

@NB_PAGELIST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"nfs_buf_map: ubc_upl_map() failed with (%d)\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"ubc_upl_map mapped 0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_buf_map(%struct.nfsbuf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfsbuf*, align 8
  %4 = alloca i64, align 8
  store %struct.nfsbuf* %0, %struct.nfsbuf** %3, align 8
  %5 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %6 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

10:                                               ; preds = %1
  %11 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %12 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @NB_PAGELIST, align 4
  %15 = call i32 @ISSET(i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %10
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %2, align 4
  br label %51

19:                                               ; preds = %10
  %20 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %21 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %24 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %23, i32 0, i32 0
  %25 = bitcast i64* %24 to i32*
  %26 = call i64 @ubc_upl_map(i32 %22, i32* %25)
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @KERN_SUCCESS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %19
  %31 = load i64, i64* %4, align 8
  %32 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %31)
  br label %33

33:                                               ; preds = %30, %19
  %34 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %35 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %33
  %41 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %42 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %43 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %46 = call i32 @NBOFF(%struct.nfsbuf* %45)
  %47 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %48 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @FSDBG(i32 540, %struct.nfsbuf* %41, i32 %44, i32 %46, i64 %49)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %40, %17, %9
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @ISSET(i32, i32) #1

declare dso_local i64 @ubc_upl_map(i32, i32*) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @FSDBG(i32, %struct.nfsbuf*, i32, i32, i64) #1

declare dso_local i32 @NBOFF(%struct.nfsbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
