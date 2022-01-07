; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_normalize_valid_range.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_normalize_valid_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.nfsbuf = type { i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_buf_normalize_valid_range(%struct.TYPE_3__* %0, %struct.nfsbuf* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.nfsbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.nfsbuf* %1, %struct.nfsbuf** %4, align 8
  %7 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %8 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @PAGE_SIZE, align 4
  %11 = sdiv i32 %9, %10
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %22, %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @NBPGVALID(%struct.nfsbuf* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %15, %12
  %21 = phi i1 [ false, %12 ], [ %19, %15 ]
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %5, align 4
  br label %12

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = mul nsw i32 %27, %28
  %30 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %31 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %33 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = sdiv i32 %34, %35
  store i32 %36, i32* %6, align 4
  %37 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %38 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = sdiv i32 %39, %40
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %53, %25
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i64 @NBPGVALID(%struct.nfsbuf* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br label %51

51:                                               ; preds = %46, %42
  %52 = phi i1 [ false, %42 ], [ %50, %46 ]
  br i1 %52, label %53, label %56

53:                                               ; preds = %51
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %42

56:                                               ; preds = %51
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @PAGE_SIZE, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %61 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %63 = call i64 @NBOFF(%struct.nfsbuf* %62)
  %64 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %65 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %63, %67
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = icmp sgt i64 %68, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %56
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %79 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = srem i32 %77, %80
  %82 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %83 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %74, %56
  ret void
}

declare dso_local i64 @NBPGVALID(%struct.nfsbuf*, i32) #1

declare dso_local i64 @NBOFF(%struct.nfsbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
