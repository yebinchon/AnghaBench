; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_vnops.c_devs_vnop_pathconf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_vnops.c_devs_vnop_pathconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_pathconf_args = type { i32, i32* }

@DEVMAXNAMESIZE = common dso_local global i32 0, align 4
@DEVMAXPATHSIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnop_pathconf_args*)* @devs_vnop_pathconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devs_vnop_pathconf(%struct.vnop_pathconf_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_pathconf_args*, align 8
  store %struct.vnop_pathconf_args* %0, %struct.vnop_pathconf_args** %3, align 8
  %4 = load %struct.vnop_pathconf_args*, %struct.vnop_pathconf_args** %3, align 8
  %5 = getelementptr inbounds %struct.vnop_pathconf_args, %struct.vnop_pathconf_args* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %39 [
    i32 131, label %7
    i32 130, label %11
    i32 128, label %17
    i32 132, label %23
    i32 129, label %27
    i32 133, label %31
    i32 134, label %35
  ]

7:                                                ; preds = %1
  %8 = load %struct.vnop_pathconf_args*, %struct.vnop_pathconf_args** %3, align 8
  %9 = getelementptr inbounds %struct.vnop_pathconf_args, %struct.vnop_pathconf_args* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  store i32 32767, i32* %10, align 4
  br label %41

11:                                               ; preds = %1
  %12 = load i32, i32* @DEVMAXNAMESIZE, align 4
  %13 = sub nsw i32 %12, 1
  %14 = load %struct.vnop_pathconf_args*, %struct.vnop_pathconf_args** %3, align 8
  %15 = getelementptr inbounds %struct.vnop_pathconf_args, %struct.vnop_pathconf_args* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32 %13, i32* %16, align 4
  br label %41

17:                                               ; preds = %1
  %18 = load i32, i32* @DEVMAXPATHSIZE, align 4
  %19 = sub nsw i32 %18, 1
  %20 = load %struct.vnop_pathconf_args*, %struct.vnop_pathconf_args** %3, align 8
  %21 = getelementptr inbounds %struct.vnop_pathconf_args, %struct.vnop_pathconf_args* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32 %19, i32* %22, align 4
  br label %41

23:                                               ; preds = %1
  %24 = load %struct.vnop_pathconf_args*, %struct.vnop_pathconf_args** %3, align 8
  %25 = getelementptr inbounds %struct.vnop_pathconf_args, %struct.vnop_pathconf_args* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  store i32 200112, i32* %26, align 4
  br label %41

27:                                               ; preds = %1
  %28 = load %struct.vnop_pathconf_args*, %struct.vnop_pathconf_args** %3, align 8
  %29 = getelementptr inbounds %struct.vnop_pathconf_args, %struct.vnop_pathconf_args* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  store i32 0, i32* %30, align 4
  br label %41

31:                                               ; preds = %1
  %32 = load %struct.vnop_pathconf_args*, %struct.vnop_pathconf_args** %3, align 8
  %33 = getelementptr inbounds %struct.vnop_pathconf_args, %struct.vnop_pathconf_args* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  store i32 1, i32* %34, align 4
  br label %41

35:                                               ; preds = %1
  %36 = load %struct.vnop_pathconf_args*, %struct.vnop_pathconf_args** %3, align 8
  %37 = getelementptr inbounds %struct.vnop_pathconf_args, %struct.vnop_pathconf_args* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  store i32 1, i32* %38, align 4
  br label %41

39:                                               ; preds = %1
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %2, align 4
  br label %42

41:                                               ; preds = %35, %31, %27, %23, %17, %11, %7
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %39
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
