; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_dir_buf_freespace.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_dir_buf_freespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsbuf = type { i64, i64 }
%struct.nfs_dir_buf_header = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfs_dir_buf_freespace(%struct.nfsbuf* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.nfsbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfs_dir_buf_header*, align 8
  %7 = alloca i64, align 8
  store %struct.nfsbuf* %0, %struct.nfsbuf** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %9 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.nfs_dir_buf_header*
  store %struct.nfs_dir_buf_header* %11, %struct.nfs_dir_buf_header** %6, align 8
  %12 = load %struct.nfs_dir_buf_header*, %struct.nfs_dir_buf_header** %6, align 8
  %13 = icmp ne %struct.nfs_dir_buf_header* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %35

15:                                               ; preds = %2
  %16 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %17 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.nfs_dir_buf_header*, %struct.nfs_dir_buf_header** %6, align 8
  %20 = getelementptr inbounds %struct.nfs_dir_buf_header, %struct.nfs_dir_buf_header* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %18, %21
  store i64 %22, i64* %7, align 8
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %15
  %26 = load %struct.nfs_dir_buf_header*, %struct.nfs_dir_buf_header** %6, align 8
  %27 = getelementptr inbounds %struct.nfs_dir_buf_header, %struct.nfs_dir_buf_header* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = load i64, i64* %7, align 8
  %32 = sub i64 %31, %30
  store i64 %32, i64* %7, align 8
  br label %33

33:                                               ; preds = %25, %15
  %34 = load i64, i64* %7, align 8
  store i64 %34, i64* %3, align 8
  br label %35

35:                                               ; preds = %33, %14
  %36 = load i64, i64* %3, align 8
  ret i64 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
