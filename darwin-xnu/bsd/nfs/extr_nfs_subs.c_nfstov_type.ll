; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_subs.c_nfstov_type.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_subs.c_nfstov_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VNON = common dso_local global i32 0, align 4
@VREG = common dso_local global i32 0, align 4
@VDIR = common dso_local global i32 0, align 4
@VBLK = common dso_local global i32 0, align 4
@VCHR = common dso_local global i32 0, align 4
@VLNK = common dso_local global i32 0, align 4
@NFS_VER2 = common dso_local global i32 0, align 4
@VSOCK = common dso_local global i32 0, align 4
@VFIFO = common dso_local global i32 0, align 4
@NFS_VER3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfstov_type(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %47 [
    i32 130, label %7
    i32 129, label %9
    i32 134, label %11
    i32 136, label %13
    i32 135, label %15
    i32 132, label %17
    i32 128, label %19
    i32 133, label %26
    i32 137, label %33
    i32 131, label %40
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @VNON, align 4
  store i32 %8, i32* %3, align 4
  br label %49

9:                                                ; preds = %2
  %10 = load i32, i32* @VREG, align 4
  store i32 %10, i32* %3, align 4
  br label %49

11:                                               ; preds = %2
  %12 = load i32, i32* @VDIR, align 4
  store i32 %12, i32* %3, align 4
  br label %49

13:                                               ; preds = %2
  %14 = load i32, i32* @VBLK, align 4
  store i32 %14, i32* %3, align 4
  br label %49

15:                                               ; preds = %2
  %16 = load i32, i32* @VCHR, align 4
  store i32 %16, i32* %3, align 4
  br label %49

17:                                               ; preds = %2
  %18 = load i32, i32* @VLNK, align 4
  store i32 %18, i32* %3, align 4
  br label %49

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @NFS_VER2, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @VSOCK, align 4
  store i32 %24, i32* %3, align 4
  br label %49

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %2, %25
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @NFS_VER2, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @VFIFO, align 4
  store i32 %31, i32* %3, align 4
  br label %49

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %2, %32
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @NFS_VER3, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @VDIR, align 4
  store i32 %38, i32* %3, align 4
  br label %49

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %2, %39
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @NFS_VER3, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @VREG, align 4
  store i32 %45, i32* %3, align 4
  br label %49

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %2, %46
  %48 = load i32, i32* @VNON, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %44, %37, %30, %23, %17, %15, %13, %11, %9, %7
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
