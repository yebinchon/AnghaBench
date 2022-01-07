; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_upl_setup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_upl_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsbuf = type { i32, i32*, i32, i32 }

@NB_PAGELIST = common dso_local global i32 0, align 4
@UPL_PRECIOUS = common dso_local global i32 0, align 4
@NB_READ = common dso_local global i32 0, align 4
@UPL_WILL_MODIFY = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_FILE = common dso_local global i32 0, align 4
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"nfs_buf_upl_setup(): failed to get pagelist %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_buf_upl_setup(%struct.nfsbuf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfsbuf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.nfsbuf* %0, %struct.nfsbuf** %3, align 8
  %7 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %8 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @NB_PAGELIST, align 4
  %11 = call i64 @ISSET(i32 %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %75

14:                                               ; preds = %1
  %15 = load i32, i32* @UPL_PRECIOUS, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %17 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @NB_READ, align 4
  %20 = call i64 @ISSET(i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %14
  %23 = load i32, i32* @UPL_WILL_MODIFY, align 4
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %22, %14
  %27 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %28 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @NFSTOV(i32 %29)
  %31 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %32 = call i32 @NBOFF(%struct.nfsbuf* %31)
  %33 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %34 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @VM_KERN_MEMORY_FILE, align 4
  %38 = call i64 @ubc_create_upl_kernel(i32 %30, i32 %32, i32 %35, i32** %5, i32* null, i32 %36, i32 %37)
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %26
  %43 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %44 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %2, align 4
  br label %75

46:                                               ; preds = %26
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* @KERN_SUCCESS, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %51)
  %53 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %54 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %53, i32 0, i32 1
  store i32* null, i32** %54, align 8
  %55 = load i32, i32* @EIO, align 4
  store i32 %55, i32* %2, align 4
  br label %75

56:                                               ; preds = %46
  %57 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %58 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %59 = call i32 @NBOFF(%struct.nfsbuf* %58)
  %60 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %61 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %64 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @FSDBG(i32 538, %struct.nfsbuf* %57, i32 %59, i32 %62, i32 %65)
  %67 = load i32*, i32** %5, align 8
  %68 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %69 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %68, i32 0, i32 1
  store i32* %67, i32** %69, align 8
  %70 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %71 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @NB_PAGELIST, align 4
  %74 = call i32 @SET(i32 %72, i32 %73)
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %56, %50, %42, %13
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i64 @ubc_create_upl_kernel(i32, i32, i32, i32**, i32*, i32, i32) #1

declare dso_local i32 @NFSTOV(i32) #1

declare dso_local i32 @NBOFF(%struct.nfsbuf*) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @FSDBG(i32, %struct.nfsbuf*, i32, i32, i32) #1

declare dso_local i32 @SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
