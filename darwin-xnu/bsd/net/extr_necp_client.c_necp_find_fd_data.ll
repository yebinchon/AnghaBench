; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_find_fd_data.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_find_fd_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_fd_data = type { i64 }
%struct.fileproc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@DTYPE_NETPOLICY = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@necp_fd_type_client = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.necp_fd_data**)* @necp_find_fd_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_find_fd_data(i32 %0, %struct.necp_fd_data** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.necp_fd_data**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fileproc*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.necp_fd_data** %1, %struct.necp_fd_data*** %4, align 8
  %8 = call i32 (...) @current_proc()
  store i32 %8, i32* %5, align 4
  store %struct.fileproc* null, %struct.fileproc** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @proc_fdlock_spin(i32 %9)
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @fp_lookup(i32 %11, i32 %12, %struct.fileproc** %6, i32 1)
  store i32 %13, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %49

16:                                               ; preds = %2
  %17 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %18 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DTYPE_NETPOLICY, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %16
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %30 = call i32 @fp_drop(i32 %27, i32 %28, %struct.fileproc* %29, i32 1)
  %31 = load i32, i32* @ENODEV, align 4
  store i32 %31, i32* %7, align 4
  br label %49

32:                                               ; preds = %16
  %33 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %34 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.necp_fd_data*
  %39 = load %struct.necp_fd_data**, %struct.necp_fd_data*** %4, align 8
  store %struct.necp_fd_data* %38, %struct.necp_fd_data** %39, align 8
  %40 = load %struct.necp_fd_data**, %struct.necp_fd_data*** %4, align 8
  %41 = load %struct.necp_fd_data*, %struct.necp_fd_data** %40, align 8
  %42 = getelementptr inbounds %struct.necp_fd_data, %struct.necp_fd_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @necp_fd_type_client, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %32
  %47 = load i32, i32* @EINVAL, align 4
  store i32 %47, i32* %7, align 4
  br label %49

48:                                               ; preds = %32
  br label %49

49:                                               ; preds = %48, %46, %26, %15
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @proc_fdunlock(i32 %50)
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i32 @current_proc(...) #1

declare dso_local i32 @proc_fdlock_spin(i32) #1

declare dso_local i32 @fp_lookup(i32, i32, %struct.fileproc**, i32) #1

declare dso_local i32 @fp_drop(i32, i32, %struct.fileproc*, i32) #1

declare dso_local i32 @proc_fdunlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
