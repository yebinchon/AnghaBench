; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/nullfs/extr_null_vnops.c_store_entry_special.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/nullfs/extr_null_vnops.c_store_entry_special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uio = type { i32 }
%struct.dirent = type { i64, i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@NAME_MAX = common dso_local global i64 0, align 8
@DT_DIR = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.uio*)* @store_entry_special to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_entry_special(i32 %0, i8* %1, %struct.uio* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca %struct.dirent, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store %struct.uio* %2, %struct.uio** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @strlen(i8* %10)
  store i64 %11, i64* %8, align 8
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i64, i64* %8, align 8
  %14 = add i64 %13, 1
  %15 = load i64, i64* @NAME_MAX, align 8
  %16 = icmp ule i64 %14, %15
  br i1 %16, label %17, label %46

17:                                               ; preds = %3
  %18 = call i32 @memset(%struct.dirent* %7, i32 0, i32 32)
  %19 = load i32, i32* %4, align 4
  %20 = getelementptr inbounds %struct.dirent, %struct.dirent* %7, i32 0, i32 4
  store i32 %19, i32* %20, align 8
  %21 = load i32, i32* @DT_DIR, align 4
  %22 = getelementptr inbounds %struct.dirent, %struct.dirent* %7, i32 0, i32 3
  store i32 %21, i32* %22, align 4
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds %struct.dirent, %struct.dirent* %7, i32 0, i32 0
  store i64 %23, i64* %24, align 8
  %25 = call i64 @DIRENT_SZ(%struct.dirent* %7)
  %26 = getelementptr inbounds %struct.dirent, %struct.dirent* %7, i32 0, i32 1
  store i64 %25, i64* %26, align 8
  %27 = load %struct.uio*, %struct.uio** %6, align 8
  %28 = call i64 @uio_resid(%struct.uio* %27)
  %29 = getelementptr inbounds %struct.dirent, %struct.dirent* %7, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %28, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.dirent, %struct.dirent* %7, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* @NAME_MAX, align 8
  %37 = call i32 @strlcpy(i32 %34, i8* %35, i64 %36)
  %38 = ptrtoint %struct.dirent* %7 to i32
  %39 = getelementptr inbounds %struct.dirent, %struct.dirent* %7, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.uio*, %struct.uio** %6, align 8
  %42 = call i32 @uiomove(i32 %38, i64 %40, %struct.uio* %41)
  store i32 %42, i32* %9, align 4
  br label %45

43:                                               ; preds = %17
  %44 = load i32, i32* @EMSGSIZE, align 4
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %43, %32
  br label %46

46:                                               ; preds = %45, %3
  %47 = load i32, i32* %9, align 4
  ret i32 %47
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memset(%struct.dirent*, i32, i32) #1

declare dso_local i64 @DIRENT_SZ(%struct.dirent*) #1

declare dso_local i64 @uio_resid(%struct.uio*) #1

declare dso_local i32 @strlcpy(i32, i8*, i64) #1

declare dso_local i32 @uiomove(i32, i64, %struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
