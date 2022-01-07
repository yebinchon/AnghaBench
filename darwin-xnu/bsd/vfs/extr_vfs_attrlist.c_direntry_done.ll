; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_attrlist.c_direntry_done.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_attrlist.c_direntry_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd_vn_data = type { i64, i64, i64 }
%struct.direntry = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fd_vn_data*)* @direntry_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @direntry_done(%struct.fd_vn_data* %0) #0 {
  %2 = alloca %struct.fd_vn_data*, align 8
  %3 = alloca %struct.direntry*, align 8
  store %struct.fd_vn_data* %0, %struct.fd_vn_data** %2, align 8
  %4 = load %struct.fd_vn_data*, %struct.fd_vn_data** %2, align 8
  %5 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.fd_vn_data*, %struct.fd_vn_data** %2, align 8
  %8 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %6, %9
  %11 = inttoptr i64 %10 to %struct.direntry*
  store %struct.direntry* %11, %struct.direntry** %3, align 8
  %12 = load %struct.direntry*, %struct.direntry** %3, align 8
  %13 = getelementptr inbounds %struct.direntry, %struct.direntry* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %1
  %17 = load %struct.direntry*, %struct.direntry** %3, align 8
  %18 = getelementptr inbounds %struct.direntry, %struct.direntry* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.fd_vn_data*, %struct.fd_vn_data** %2, align 8
  %21 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, %19
  store i64 %23, i64* %21, align 8
  %24 = load %struct.fd_vn_data*, %struct.fd_vn_data** %2, align 8
  %25 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.fd_vn_data*, %struct.fd_vn_data** %2, align 8
  %28 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %26, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %16
  %32 = load %struct.fd_vn_data*, %struct.fd_vn_data** %2, align 8
  %33 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.fd_vn_data*, %struct.fd_vn_data** %2, align 8
  %36 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %31, %16
  br label %44

38:                                               ; preds = %1
  %39 = load %struct.fd_vn_data*, %struct.fd_vn_data** %2, align 8
  %40 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.fd_vn_data*, %struct.fd_vn_data** %2, align 8
  %43 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %38, %37
  %45 = load %struct.fd_vn_data*, %struct.fd_vn_data** %2, align 8
  %46 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.fd_vn_data*, %struct.fd_vn_data** %2, align 8
  %49 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load %struct.fd_vn_data*, %struct.fd_vn_data** %2, align 8
  %54 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load %struct.fd_vn_data*, %struct.fd_vn_data** %2, align 8
  %56 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %52, %44
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
