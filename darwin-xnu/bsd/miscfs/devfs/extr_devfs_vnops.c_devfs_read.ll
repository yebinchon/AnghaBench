; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_vnops.c_devfs_read.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_vnops.c_devfs_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_read_args = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"devfs_read(): bad file type %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnop_read_args*)* @devfs_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfs_read(%struct.vnop_read_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_read_args*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store %struct.vnop_read_args* %0, %struct.vnop_read_args** %3, align 8
  %5 = load %struct.vnop_read_args*, %struct.vnop_read_args** %3, align 8
  %6 = getelementptr inbounds %struct.vnop_read_args, %struct.vnop_read_args* %5, i32 0, i32 0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = call %struct.TYPE_5__* @VTODN(%struct.TYPE_6__* %7)
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %4, align 8
  %9 = load %struct.vnop_read_args*, %struct.vnop_read_args** %3, align 8
  %10 = getelementptr inbounds %struct.vnop_read_args, %struct.vnop_read_args* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %27 [
    i32 128, label %14
  ]

14:                                               ; preds = %1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load %struct.vnop_read_args*, %struct.vnop_read_args** %3, align 8
  %18 = getelementptr inbounds %struct.vnop_read_args, %struct.vnop_read_args* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = load %struct.vnop_read_args*, %struct.vnop_read_args** %3, align 8
  %21 = getelementptr inbounds %struct.vnop_read_args, %struct.vnop_read_args* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.vnop_read_args*, %struct.vnop_read_args** %3, align 8
  %24 = getelementptr inbounds %struct.vnop_read_args, %struct.vnop_read_args* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @VNOP_READDIR(%struct.TYPE_6__* %19, i32 %22, i32 0, i32* null, i32* null, i32 %25)
  store i32 %26, i32* %2, align 4
  br label %35

27:                                               ; preds = %1
  %28 = load %struct.vnop_read_args*, %struct.vnop_read_args** %3, align 8
  %29 = getelementptr inbounds %struct.vnop_read_args, %struct.vnop_read_args* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %27, %14
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.TYPE_5__* @VTODN(%struct.TYPE_6__*) #1

declare dso_local i32 @VNOP_READDIR(%struct.TYPE_6__*, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
