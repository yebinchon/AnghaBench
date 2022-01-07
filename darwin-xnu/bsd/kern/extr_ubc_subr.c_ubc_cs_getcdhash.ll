; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_ubc_cs_getcdhash.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_ubc_cs_getcdhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_blob = type { i64, i64, i64, i32, %struct.cs_blob* }

@EBADEXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubc_cs_getcdhash(i32 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cs_blob*, align 8
  %8 = alloca %struct.cs_blob*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @vnode_lock(i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.cs_blob* @ubc_get_cs_blobs(i32 %13)
  store %struct.cs_blob* %14, %struct.cs_blob** %7, align 8
  %15 = load %struct.cs_blob*, %struct.cs_blob** %7, align 8
  store %struct.cs_blob* %15, %struct.cs_blob** %8, align 8
  br label %16

16:                                               ; preds = %38, %3
  %17 = load %struct.cs_blob*, %struct.cs_blob** %8, align 8
  %18 = icmp ne %struct.cs_blob* %17, null
  br i1 %18, label %19, label %42

19:                                               ; preds = %16
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.cs_blob*, %struct.cs_blob** %8, align 8
  %22 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.cs_blob*, %struct.cs_blob** %8, align 8
  %27 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp sge i64 %25, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %19
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.cs_blob*, %struct.cs_blob** %8, align 8
  %33 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %42

37:                                               ; preds = %30, %19
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.cs_blob*, %struct.cs_blob** %8, align 8
  %40 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %39, i32 0, i32 4
  %41 = load %struct.cs_blob*, %struct.cs_blob** %40, align 8
  store %struct.cs_blob* %41, %struct.cs_blob** %8, align 8
  br label %16

42:                                               ; preds = %36, %16
  %43 = load %struct.cs_blob*, %struct.cs_blob** %8, align 8
  %44 = icmp eq %struct.cs_blob* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @EBADEXEC, align 4
  store i32 %46, i32* %10, align 4
  br label %53

47:                                               ; preds = %42
  %48 = load %struct.cs_blob*, %struct.cs_blob** %8, align 8
  %49 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @bcopy(i32 %50, i8* %51, i32 4)
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %47, %45
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @vnode_unlock(i32 %54)
  %56 = load i32, i32* %10, align 4
  ret i32 %56
}

declare dso_local i32 @vnode_lock(i32) #1

declare dso_local %struct.cs_blob* @ubc_get_cs_blobs(i32) #1

declare dso_local i32 @bcopy(i32, i8*, i32) #1

declare dso_local i32 @vnode_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
