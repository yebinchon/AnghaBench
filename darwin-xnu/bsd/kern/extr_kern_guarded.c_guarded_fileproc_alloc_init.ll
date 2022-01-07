; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_guarded.c_guarded_fileproc_alloc_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_guarded.c_guarded_fileproc_alloc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileproc = type { i32 }
%struct.gfp_crarg = type { i32, i32 }
%struct.guarded_fileproc = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FTYPE_GUARDED = common dso_local global i32 0, align 4
@GUARDED_FILEPROC_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fileproc* (i8*)* @guarded_fileproc_alloc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fileproc* @guarded_fileproc_alloc_init(i8* %0) #0 {
  %2 = alloca %struct.fileproc*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.gfp_crarg*, align 8
  %5 = alloca %struct.guarded_fileproc*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.gfp_crarg*
  store %struct.gfp_crarg* %7, %struct.gfp_crarg** %4, align 8
  %8 = call %struct.guarded_fileproc* @kalloc(i32 16)
  store %struct.guarded_fileproc* %8, %struct.guarded_fileproc** %5, align 8
  %9 = icmp eq %struct.guarded_fileproc* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.fileproc* null, %struct.fileproc** %2, align 8
  br label %33

11:                                               ; preds = %1
  %12 = load %struct.guarded_fileproc*, %struct.guarded_fileproc** %5, align 8
  %13 = call i32 @bzero(%struct.guarded_fileproc* %12, i32 16)
  %14 = load i32, i32* @FTYPE_GUARDED, align 4
  %15 = load %struct.guarded_fileproc*, %struct.guarded_fileproc** %5, align 8
  %16 = getelementptr inbounds %struct.guarded_fileproc, %struct.guarded_fileproc* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 4
  %18 = load i32, i32* @GUARDED_FILEPROC_MAGIC, align 4
  %19 = load %struct.guarded_fileproc*, %struct.guarded_fileproc** %5, align 8
  %20 = getelementptr inbounds %struct.guarded_fileproc, %struct.guarded_fileproc* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load %struct.gfp_crarg*, %struct.gfp_crarg** %4, align 8
  %22 = getelementptr inbounds %struct.gfp_crarg, %struct.gfp_crarg* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.guarded_fileproc*, %struct.guarded_fileproc** %5, align 8
  %25 = getelementptr inbounds %struct.guarded_fileproc, %struct.guarded_fileproc* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.gfp_crarg*, %struct.gfp_crarg** %4, align 8
  %27 = getelementptr inbounds %struct.gfp_crarg, %struct.gfp_crarg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.guarded_fileproc*, %struct.guarded_fileproc** %5, align 8
  %30 = getelementptr inbounds %struct.guarded_fileproc, %struct.guarded_fileproc* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.guarded_fileproc*, %struct.guarded_fileproc** %5, align 8
  %32 = call %struct.fileproc* @GFP_TO_FP(%struct.guarded_fileproc* %31)
  store %struct.fileproc* %32, %struct.fileproc** %2, align 8
  br label %33

33:                                               ; preds = %11, %10
  %34 = load %struct.fileproc*, %struct.fileproc** %2, align 8
  ret %struct.fileproc* %34
}

declare dso_local %struct.guarded_fileproc* @kalloc(i32) #1

declare dso_local i32 @bzero(%struct.guarded_fileproc*, i32) #1

declare dso_local %struct.fileproc* @GFP_TO_FP(%struct.guarded_fileproc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
