; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_proc_fileport_fdtype.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_proc_fileport_fdtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileglob = type { i32 }
%struct.fileport_fdtype_args = type { %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@DTYPE_ATALK = common dso_local global i64 0, align 8
@PROX_FDTYPE_ATALK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fileglob*, i8*)* @proc_fileport_fdtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_fileport_fdtype(i32 %0, %struct.fileglob* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.fileglob*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.fileport_fdtype_args*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.fileglob* %1, %struct.fileglob** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.fileport_fdtype_args*
  store %struct.fileport_fdtype_args* %11, %struct.fileport_fdtype_args** %8, align 8
  %12 = load %struct.fileport_fdtype_args*, %struct.fileport_fdtype_args** %8, align 8
  %13 = getelementptr inbounds %struct.fileport_fdtype_args, %struct.fileport_fdtype_args* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load %struct.fileport_fdtype_args*, %struct.fileport_fdtype_args** %8, align 8
  %16 = getelementptr inbounds %struct.fileport_fdtype_args, %struct.fileport_fdtype_args* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %14, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %3
  %20 = load %struct.fileglob*, %struct.fileglob** %6, align 8
  %21 = call i64 @FILEGLOB_DTYPE(%struct.fileglob* %20)
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @DTYPE_ATALK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i64, i64* %9, align 8
  br label %29

27:                                               ; preds = %19
  %28 = load i64, i64* @PROX_FDTYPE_ATALK, align 8
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i64 [ %26, %25 ], [ %28, %27 ]
  %31 = load %struct.fileport_fdtype_args*, %struct.fileport_fdtype_args** %8, align 8
  %32 = getelementptr inbounds %struct.fileport_fdtype_args, %struct.fileport_fdtype_args* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i64 %30, i64* %34, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.fileport_fdtype_args*, %struct.fileport_fdtype_args** %8, align 8
  %37 = getelementptr inbounds %struct.fileport_fdtype_args, %struct.fileport_fdtype_args* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 8
  %40 = load %struct.fileport_fdtype_args*, %struct.fileport_fdtype_args** %8, align 8
  %41 = getelementptr inbounds %struct.fileport_fdtype_args, %struct.fileport_fdtype_args* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 1
  store %struct.TYPE_2__* %43, %struct.TYPE_2__** %41, align 8
  store i32 0, i32* %4, align 4
  br label %45

44:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %29
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i64 @FILEGLOB_DTYPE(%struct.fileglob*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
