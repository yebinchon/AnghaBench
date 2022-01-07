; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_incore.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_incore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsbuf = type { i64, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nfsbuf* }
%struct.TYPE_4__ = type { %struct.nfsbuf* }

@NB_INVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfsbuf* @nfs_buf_incore(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.nfsbuf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfsbuf*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.TYPE_4__* @NFSBUFHASH(i64 %7, i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.nfsbuf*, %struct.nfsbuf** %10, align 8
  store %struct.nfsbuf* %11, %struct.nfsbuf** %6, align 8
  br label %12

12:                                               ; preds = %47, %2
  %13 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %14 = icmp ne %struct.nfsbuf* %13, null
  br i1 %14, label %15, label %52

15:                                               ; preds = %12
  %16 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %17 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %15
  %22 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %23 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %21
  %28 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %29 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @NB_INVAL, align 4
  %32 = call i32 @ISSET(i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %27
  %35 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %38 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %41 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @FSDBG(i32 547, %struct.nfsbuf* %35, i32 %36, i32 %39, i64 %42)
  %44 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  store %struct.nfsbuf* %44, %struct.nfsbuf** %3, align 8
  br label %53

45:                                               ; preds = %27
  br label %46

46:                                               ; preds = %45, %21, %15
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %49 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load %struct.nfsbuf*, %struct.nfsbuf** %50, align 8
  store %struct.nfsbuf* %51, %struct.nfsbuf** %6, align 8
  br label %12

52:                                               ; preds = %12
  store %struct.nfsbuf* null, %struct.nfsbuf** %3, align 8
  br label %53

53:                                               ; preds = %52, %34
  %54 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  ret %struct.nfsbuf* %54
}

declare dso_local %struct.TYPE_4__* @NFSBUFHASH(i64, i32) #1

declare dso_local i32 @ISSET(i32, i32) #1

declare dso_local i32 @FSDBG(i32, %struct.nfsbuf*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
