; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_read_finish.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_read_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsbuf = type { i32, i32, i64, i32, i64, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.nfsmount = type { i64 }

@NB_ERROR = common dso_local global i32 0, align 4
@NFS_VER2 = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_buf_read_finish(%struct.nfsbuf* %0) #0 {
  %2 = alloca %struct.nfsbuf*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.nfsmount*, align 8
  %5 = alloca i64, align 8
  store %struct.nfsbuf* %0, %struct.nfsbuf** %2, align 8
  %6 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %7 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %6, i32 0, i32 7
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %3, align 8
  %9 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %10 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @NB_ERROR, align 4
  %13 = call i32 @ISSET(i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %133, label %15

15:                                               ; preds = %1
  %16 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %17 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %16, i32 0, i32 5
  store i64 0, i64* %17, align 8
  %18 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %19 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %22 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %24 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %27 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %71

31:                                               ; preds = %15
  %32 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %33 = call i32 @NBOFF(%struct.nfsbuf* %32)
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %5, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %40 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = icmp sge i64 %37, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %31
  %45 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %46 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %50 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %70

51:                                               ; preds = %31
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %5, align 8
  %56 = icmp sge i64 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %51
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %5, align 8
  %62 = sub nsw i64 %60, %61
  %63 = trunc i64 %62 to i32
  %64 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %65 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  br label %69

66:                                               ; preds = %51
  %67 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %68 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %67, i32 0, i32 0
  store i32 0, i32* %68, align 8
  br label %69

69:                                               ; preds = %66, %57
  br label %70

70:                                               ; preds = %69, %44
  br label %71

71:                                               ; preds = %70, %15
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %73 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_3__* %72)
  store %struct.nfsmount* %73, %struct.nfsmount** %4, align 8
  %74 = icmp ne %struct.nfsmount* %73, null
  br i1 %74, label %75, label %98

75:                                               ; preds = %71
  %76 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %77 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @NFS_VER2, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %98

81:                                               ; preds = %75
  %82 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %83 = call i32 @NBOFF(%struct.nfsbuf* %82)
  %84 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %85 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %83, %86
  %88 = sext i32 %87 to i64
  %89 = icmp sgt i64 %88, 4294967296
  br i1 %89, label %90, label %98

90:                                               ; preds = %81
  %91 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %92 = call i32 @NBOFF(%struct.nfsbuf* %91)
  %93 = sext i32 %92 to i64
  %94 = sub nsw i64 4294967296, %93
  %95 = trunc i64 %94 to i32
  %96 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %97 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  br label %98

98:                                               ; preds = %90, %81, %75, %71
  %99 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %100 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @round_page_32(i32 %101)
  %103 = load i32, i32* @PAGE_SIZE, align 4
  %104 = sdiv i32 %102, %103
  %105 = shl i32 1, %104
  %106 = sub nsw i32 %105, 1
  %107 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %108 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 8
  %109 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %110 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @PAGE_MASK, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %132

115:                                              ; preds = %98
  %116 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %117 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %120 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %118, %122
  %124 = load i32, i32* @PAGE_SIZE, align 4
  %125 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %126 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @PAGE_MASK, align 4
  %129 = and i32 %127, %128
  %130 = sub nsw i32 %124, %129
  %131 = call i32 @bzero(i64 %123, i32 %130)
  br label %132

132:                                              ; preds = %115, %98
  br label %133

133:                                              ; preds = %132, %1
  %134 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %135 = call i32 @nfs_buf_iodone(%struct.nfsbuf* %134)
  ret void
}

declare dso_local i32 @ISSET(i32, i32) #1

declare dso_local i32 @NBOFF(%struct.nfsbuf*) #1

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_3__*) #1

declare dso_local i32 @round_page_32(i32) #1

declare dso_local i32 @bzero(i64, i32) #1

declare dso_local i32 @nfs_buf_iodone(%struct.nfsbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
