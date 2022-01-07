; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_quota.c_qf_ref.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_quota.c_qf_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quotafile = type { i32, i64, i32 }

@QTF_OPENING = common dso_local global i32 0, align 4
@QTF_CLOSING = common dso_local global i32 0, align 4
@NULLVP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.quotafile*)* @qf_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qf_ref(%struct.quotafile* %0) #0 {
  %2 = alloca %struct.quotafile*, align 8
  %3 = alloca i32, align 4
  store %struct.quotafile* %0, %struct.quotafile** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.quotafile*, %struct.quotafile** %2, align 8
  %5 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @QTF_OPENING, align 4
  %8 = load i32, i32* @QTF_CLOSING, align 4
  %9 = or i32 %7, %8
  %10 = and i32 %6, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.quotafile*, %struct.quotafile** %2, align 8
  %14 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NULLVP, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12, %1
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %25

20:                                               ; preds = %12
  %21 = load %struct.quotafile*, %struct.quotafile** %2, align 8
  %22 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  br label %25

25:                                               ; preds = %20, %18
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
