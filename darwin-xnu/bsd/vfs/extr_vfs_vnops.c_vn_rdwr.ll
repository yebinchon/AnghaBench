; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_vnops.c_vn_rdwr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_vnops.c_vn_rdwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_rdwr(i32 %0, %struct.vnode* %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.vnode*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store %struct.vnode* %1, %struct.vnode** %12, align 8
  store i64 %2, i64* %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32* %8, i32** %19, align 8
  store i32 %9, i32* %20, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.vnode*, %struct.vnode** %12, align 8
  %25 = load i64, i64* %13, align 8
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* %17, align 4
  %31 = load i32, i32* %18, align 4
  %32 = load i32, i32* %20, align 4
  %33 = call i32 @vn_rdwr_64(i32 %23, %struct.vnode* %24, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31, i32* %21, i32 %32)
  store i32 %33, i32* %22, align 4
  %34 = load i32*, i32** %19, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %10
  %37 = load i32, i32* %21, align 4
  %38 = load i32*, i32** %19, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %10
  %40 = load i32, i32* %22, align 4
  ret i32 %40
}

declare dso_local i32 @vn_rdwr_64(i32, %struct.vnode*, i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
