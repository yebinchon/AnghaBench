; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/mach/extr_mach_error_string.c_err_sparse_mapit.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/mach/extr_mach_error_string.c_err_sparse_mapit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.error_sparse_map = type { i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.error_sparse_map*, i32)* @err_sparse_mapit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @err_sparse_mapit(i32 %0, %struct.error_sparse_map* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.error_sparse_map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.error_sparse_map, align 4
  store i32 %0, i32* %4, align 4
  store %struct.error_sparse_map* %1, %struct.error_sparse_map** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i64, i64* @FALSE, align 8
  store i64 %11, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %49, %3
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %52

16:                                               ; preds = %12
  %17 = load %struct.error_sparse_map*, %struct.error_sparse_map** %5, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.error_sparse_map, %struct.error_sparse_map* %17, i64 %19
  %21 = bitcast %struct.error_sparse_map* %10 to i8*
  %22 = bitcast %struct.error_sparse_map* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 8, i1 false)
  %23 = getelementptr inbounds %struct.error_sparse_map, %struct.error_sparse_map* %10, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %16
  %28 = load i32, i32* %4, align 4
  %29 = getelementptr inbounds %struct.error_sparse_map, %struct.error_sparse_map* %10, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp sle i32 %28, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  %34 = getelementptr inbounds %struct.error_sparse_map, %struct.error_sparse_map* %10, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %33, %35
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = load i64, i64* @TRUE, align 8
  store i64 %39, i64* %7, align 8
  br label %52

40:                                               ; preds = %27, %16
  %41 = getelementptr inbounds %struct.error_sparse_map, %struct.error_sparse_map* %10, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.error_sparse_map, %struct.error_sparse_map* %10, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %42, %44
  %46 = add nsw i32 %45, 1
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %12

52:                                               ; preds = %32, %12
  %53 = load i64, i64* %7, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* %8, align 4
  br label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @INT_MAX, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  ret i32 %60
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
