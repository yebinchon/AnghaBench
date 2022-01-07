; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_spec_blktooff.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_spec_blktooff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_blktooff_args = type { i8**, %struct.vnode* }
%struct.vnode = type { i32 }

@ENOTSUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"spec_blktooff: not implemented for VBLK\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"spec_blktooff type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spec_blktooff(%struct.vnop_blktooff_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_blktooff_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  store %struct.vnop_blktooff_args* %0, %struct.vnop_blktooff_args** %3, align 8
  %5 = load %struct.vnop_blktooff_args*, %struct.vnop_blktooff_args** %3, align 8
  %6 = getelementptr inbounds %struct.vnop_blktooff_args, %struct.vnop_blktooff_args* %5, i32 0, i32 1
  %7 = load %struct.vnode*, %struct.vnode** %6, align 8
  store %struct.vnode* %7, %struct.vnode** %4, align 8
  %8 = load %struct.vnode*, %struct.vnode** %4, align 8
  %9 = getelementptr inbounds %struct.vnode, %struct.vnode* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %22 [
    i32 128, label %11
    i32 129, label %16
  ]

11:                                               ; preds = %1
  %12 = load %struct.vnop_blktooff_args*, %struct.vnop_blktooff_args** %3, align 8
  %13 = getelementptr inbounds %struct.vnop_blktooff_args, %struct.vnop_blktooff_args* %12, i32 0, i32 0
  %14 = load i8**, i8*** %13, align 8
  store i8* inttoptr (i64 -1 to i8*), i8** %14, align 8
  %15 = load i32, i32* @ENOTSUP, align 4
  store i32 %15, i32* %2, align 4
  br label %25

16:                                               ; preds = %1
  %17 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.vnop_blktooff_args*, %struct.vnop_blktooff_args** %3, align 8
  %19 = getelementptr inbounds %struct.vnop_blktooff_args, %struct.vnop_blktooff_args* %18, i32 0, i32 0
  %20 = load i8**, i8*** %19, align 8
  store i8* inttoptr (i64 -1 to i8*), i8** %20, align 8
  %21 = load i32, i32* @ENOTSUP, align 4
  store i32 %21, i32* %2, align 4
  br label %25

22:                                               ; preds = %1
  %23 = call i32 @panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %16, %11
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
