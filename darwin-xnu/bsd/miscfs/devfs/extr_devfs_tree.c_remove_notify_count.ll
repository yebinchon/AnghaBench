; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_tree.c_remove_notify_count.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_tree.c_remove_notify_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, %struct.TYPE_3__* }

@devfs_nmountplanes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @remove_notify_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_notify_count(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* @devfs_nmountplanes, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = add nsw i64 %10, %8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %3, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %4, align 8
  br label %16

16:                                               ; preds = %28, %1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = icmp ne %struct.TYPE_3__* %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %20
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  store %struct.TYPE_3__* %31, %struct.TYPE_3__** %4, align 8
  br label %16

32:                                               ; preds = %16
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
