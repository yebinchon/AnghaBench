; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/fifofs/extr_fifo_vnops.c_fifo_pathconf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/fifofs/extr_fifo_vnops.c_fifo_pathconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_pathconf_args = type { i32, i32* }

@LINK_MAX = common dso_local global i32 0, align 4
@PIPE_BUF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fifo_pathconf(%struct.vnop_pathconf_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_pathconf_args*, align 8
  store %struct.vnop_pathconf_args* %0, %struct.vnop_pathconf_args** %3, align 8
  %4 = load %struct.vnop_pathconf_args*, %struct.vnop_pathconf_args** %3, align 8
  %5 = getelementptr inbounds %struct.vnop_pathconf_args, %struct.vnop_pathconf_args* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %21 [
    i32 129, label %7
    i32 128, label %12
    i32 130, label %17
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @LINK_MAX, align 4
  %9 = load %struct.vnop_pathconf_args*, %struct.vnop_pathconf_args** %3, align 8
  %10 = getelementptr inbounds %struct.vnop_pathconf_args, %struct.vnop_pathconf_args* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  store i32 %8, i32* %11, align 4
  store i32 0, i32* %2, align 4
  br label %23

12:                                               ; preds = %1
  %13 = load i32, i32* @PIPE_BUF, align 4
  %14 = load %struct.vnop_pathconf_args*, %struct.vnop_pathconf_args** %3, align 8
  %15 = getelementptr inbounds %struct.vnop_pathconf_args, %struct.vnop_pathconf_args* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32 %13, i32* %16, align 4
  store i32 0, i32* %2, align 4
  br label %23

17:                                               ; preds = %1
  %18 = load %struct.vnop_pathconf_args*, %struct.vnop_pathconf_args** %3, align 8
  %19 = getelementptr inbounds %struct.vnop_pathconf_args, %struct.vnop_pathconf_args* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32 200112, i32* %20, align 4
  store i32 0, i32* %2, align 4
  br label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %21, %17, %12, %7
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
