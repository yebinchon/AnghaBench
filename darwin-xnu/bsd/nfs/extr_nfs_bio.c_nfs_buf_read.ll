; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_read.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.nfsbuf = type { i32, i32, i32 }

@NB_ASYNC = common dso_local global i32 0, align 4
@NB_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"nfs_buf_read: !NB_READ\00", align 1
@NB_DONE = common dso_local global i32 0, align 4
@nfsstats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_buf_read(%struct.nfsbuf* %0) #0 {
  %2 = alloca %struct.nfsbuf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.nfsbuf* %0, %struct.nfsbuf** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %8 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %11 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @IS_VALID_CRED(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @kauth_cred_ref(i32 %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %21 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @NB_ASYNC, align 4
  %24 = call i64 @ISSET(i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %29

27:                                               ; preds = %19
  %28 = call i32* (...) @current_thread()
  br label %29

29:                                               ; preds = %27, %26
  %30 = phi i32* [ null, %26 ], [ %28, %27 ]
  store i32* %30, i32** %5, align 8
  %31 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %32 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @NB_READ, align 4
  %35 = call i64 @ISSET(i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %29
  %38 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %29
  %40 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %41 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @NB_DONE, align 4
  %44 = call i64 @ISSET(i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %48 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @NB_DONE, align 4
  %51 = call i32 @CLR(i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %46, %39
  %53 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %54 = call i32 @NFS_BUF_MAP(%struct.nfsbuf* %53)
  %55 = call i32 @OSAddAtomic64(i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsstats, i32 0, i32 0))
  %56 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @nfs_buf_read_rpc(%struct.nfsbuf* %56, i32* %57, i32 %58)
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i64 @IS_VALID_CRED(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %52
  %64 = call i32 @kauth_cred_unref(i32* %6)
  br label %65

65:                                               ; preds = %63, %52
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @IS_VALID_CRED(i32) #1

declare dso_local i32 @kauth_cred_ref(i32) #1

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i32* @current_thread(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @CLR(i32, i32) #1

declare dso_local i32 @NFS_BUF_MAP(%struct.nfsbuf*) #1

declare dso_local i32 @OSAddAtomic64(i32, i32*) #1

declare dso_local i32 @nfs_buf_read_rpc(%struct.nfsbuf*, i32*, i32) #1

declare dso_local i32 @kauth_cred_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
