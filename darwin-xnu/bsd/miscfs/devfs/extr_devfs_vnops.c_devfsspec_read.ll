; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_vnops.c_devfsspec_read.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_vnops.c_devfsspec_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_read_args = type { i32 }

@DEVFS_UPDATE_ACCESS = common dso_local global i32 0, align 4
@spec_vnodeop_p = common dso_local global i32 0, align 4
@vnop_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnop_read_args*)* @devfsspec_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfsspec_read(%struct.vnop_read_args* %0) #0 {
  %2 = alloca %struct.vnop_read_args*, align 8
  %3 = alloca i32*, align 8
  store %struct.vnop_read_args* %0, %struct.vnop_read_args** %2, align 8
  %4 = load %struct.vnop_read_args*, %struct.vnop_read_args** %2, align 8
  %5 = getelementptr inbounds %struct.vnop_read_args, %struct.vnop_read_args* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32* @VTODN(i32 %6)
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* @DEVFS_UPDATE_ACCESS, align 4
  %10 = call i32 @devfs_consider_time_update(i32* %8, i32 %9)
  %11 = load i32, i32* @spec_vnodeop_p, align 4
  %12 = load i32, i32* @vnop_read, align 4
  %13 = call i32 @VOFFSET(i32 %12)
  %14 = load %struct.vnop_read_args*, %struct.vnop_read_args** %2, align 8
  %15 = call i32 @VOCALL(i32 %11, i32 %13, %struct.vnop_read_args* %14)
  ret i32 %15
}

declare dso_local i32* @VTODN(i32) #1

declare dso_local i32 @devfs_consider_time_update(i32*, i32) #1

declare dso_local i32 @VOCALL(i32, i32, %struct.vnop_read_args*) #1

declare dso_local i32 @VOFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
