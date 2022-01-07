; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_attrlist.c_get_direntry.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_attrlist.c_get_direntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd_vn_data = type { i64, i64, i32 }
%struct.direntry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.fd_vn_data*, i32*, %struct.direntry**)* @get_direntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_direntry(i32 %0, i32 %1, %struct.fd_vn_data* %2, i32* %3, %struct.direntry** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fd_vn_data*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.direntry**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.fd_vn_data* %2, %struct.fd_vn_data** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.direntry** %4, %struct.direntry*** %11, align 8
  %14 = load i32*, i32** %10, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.direntry**, %struct.direntry*** %11, align 8
  store %struct.direntry* null, %struct.direntry** %15, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.fd_vn_data*, %struct.fd_vn_data** %9, align 8
  %17 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %37, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.fd_vn_data*, %struct.fd_vn_data** %9, align 8
  %24 = call i32 @refill_fd_direntries(i32 %21, i32 %22, %struct.fd_vn_data* %23, i32* %12)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %6, align 4
  br label %48

29:                                               ; preds = %20
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %12, align 4
  %34 = load i32*, i32** %10, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %6, align 4
  br label %48

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %5
  %38 = load %struct.fd_vn_data*, %struct.fd_vn_data** %9, align 8
  %39 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.fd_vn_data*, %struct.fd_vn_data** %9, align 8
  %42 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = inttoptr i64 %44 to %struct.direntry*
  %46 = load %struct.direntry**, %struct.direntry*** %11, align 8
  store %struct.direntry* %45, %struct.direntry** %46, align 8
  %47 = load i32, i32* %13, align 4
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %37, %32, %27
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @refill_fd_direntries(i32, i32, %struct.fd_vn_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
