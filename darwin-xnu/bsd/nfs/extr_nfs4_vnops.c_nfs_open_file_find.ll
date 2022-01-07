; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs_open_file_find.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs_open_file_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_open_owner = type { i32 }
%struct.nfs_open_file = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_open_file_find(i32 %0, %struct.nfs_open_owner* %1, %struct.nfs_open_file** %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfs_open_owner*, align 8
  %9 = alloca %struct.nfs_open_file**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.nfs_open_owner* %1, %struct.nfs_open_owner** %8, align 8
  store %struct.nfs_open_file** %2, %struct.nfs_open_file*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load %struct.nfs_open_file**, %struct.nfs_open_file*** %9, align 8
  store %struct.nfs_open_file* null, %struct.nfs_open_file** %13, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %8, align 8
  %16 = load %struct.nfs_open_file**, %struct.nfs_open_file*** %9, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %12, align 4
  %20 = call i32 @nfs_open_file_find_internal(i32 %14, %struct.nfs_open_owner* %15, %struct.nfs_open_file** %16, i32 %17, i32 %18, i32 %19)
  ret i32 %20
}

declare dso_local i32 @nfs_open_file_find_internal(i32, %struct.nfs_open_owner*, %struct.nfs_open_file**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
