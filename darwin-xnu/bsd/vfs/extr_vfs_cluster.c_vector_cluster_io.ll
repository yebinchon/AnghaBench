; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_vector_cluster_io.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_vector_cluster_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clios = type { i32 }

@CL_READ = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@CL_PRESERVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32, i32, %struct.clios*, i32 (i32, i8*)*, i8*)* @vector_cluster_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vector_cluster_io(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.clios* %7, i32 (i32, i8*)* %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.clios*, align 8
  %19 = alloca i32 (i32, i8*)*, align 8
  %20 = alloca i8*, align 8
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store %struct.clios* %7, %struct.clios** %18, align 8
  store i32 (i32, i8*)* %8, i32 (i32, i8*)** %19, align 8
  store i8* %9, i8** %20, align 8
  %21 = load i32, i32* %12, align 4
  %22 = call i32 @vector_upl_set_pagelist(i32 %21)
  %23 = load i32, i32* %16, align 4
  %24 = load i32, i32* @CL_READ, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %10
  %28 = load i32, i32* %13, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* @PAGE_MASK, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i32, i32* @CL_PRESERVE, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %16, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %16, align 4
  br label %44

40:                                               ; preds = %30, %27
  %41 = load i32, i32* @CL_PRESERVE, align 4
  %42 = load i32, i32* %16, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %16, align 4
  br label %44

44:                                               ; preds = %40, %35
  br label %45

45:                                               ; preds = %44, %10
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %17, align 4
  %53 = load %struct.clios*, %struct.clios** %18, align 8
  %54 = load i32 (i32, i8*)*, i32 (i32, i8*)** %19, align 8
  %55 = load i8*, i8** %20, align 8
  %56 = call i32 @cluster_io(i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52, %struct.clios* %53, i32 (i32, i8*)* %54, i8* %55)
  ret i32 %56
}

declare dso_local i32 @vector_upl_set_pagelist(i32) #1

declare dso_local i32 @cluster_io(i32, i32, i32, i32, i32, i32, i32, %struct.clios*, i32 (i32, i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
