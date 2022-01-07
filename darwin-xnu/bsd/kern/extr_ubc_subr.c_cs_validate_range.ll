; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_cs_validate_range.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_cs_validate_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.cs_blob = type { i32 }

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cs_validate_range(%struct.vnode* %0, i32 %1, i64 %2, i8* %3, i64 %4, i32* %5) #0 {
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.cs_blob*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.vnode* %0, %struct.vnode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* %5, i32** %12, align 8
  %19 = load i64, i64* @TRUE, align 8
  store i64 %19, i64* %14, align 8
  %20 = load %struct.vnode*, %struct.vnode** %7, align 8
  %21 = call %struct.cs_blob* @ubc_get_cs_blobs(%struct.vnode* %20)
  store %struct.cs_blob* %21, %struct.cs_blob** %15, align 8
  %22 = load i32*, i32** %12, align 8
  store i32 0, i32* %22, align 4
  store i64 0, i64* %13, align 8
  br label %23

23:                                               ; preds = %52, %6
  %24 = load i64, i64* %13, align 8
  %25 = load i64, i64* %11, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %56

27:                                               ; preds = %23
  store i32 0, i32* %16, align 4
  store i64 0, i64* %18, align 8
  %28 = load %struct.cs_blob*, %struct.cs_blob** %15, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %13, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i8*, i8** %10, align 8
  %34 = load i64, i64* %13, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = call i64 @cs_validate_hash(%struct.cs_blob* %28, i32 %29, i64 %32, i8* %35, i64* %18, i32* %16)
  store i64 %36, i64* %17, align 8
  %37 = load i32, i32* %16, align 4
  %38 = load i32*, i32** %12, align 8
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %37
  store i32 %40, i32* %38, align 4
  %41 = load i64, i64* %18, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %27
  %44 = load i64, i64* @FALSE, align 8
  store i64 %44, i64* %14, align 8
  br label %56

45:                                               ; preds = %27
  %46 = load i64, i64* %17, align 8
  %47 = load i64, i64* @FALSE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i64, i64* @FALSE, align 8
  store i64 %50, i64* %14, align 8
  br label %51

51:                                               ; preds = %49, %45
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %18, align 8
  %54 = load i64, i64* %13, align 8
  %55 = add nsw i64 %54, %53
  store i64 %55, i64* %13, align 8
  br label %23

56:                                               ; preds = %43, %23
  %57 = load i64, i64* %14, align 8
  ret i64 %57
}

declare dso_local %struct.cs_blob* @ubc_get_cs_blobs(%struct.vnode*) #1

declare dso_local i64 @cs_validate_hash(%struct.cs_blob*, i32, i64, i8*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
