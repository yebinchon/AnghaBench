; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_swapfile_pager.c_swapfile_pager_control.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_swapfile_pager.c_swapfile_pager_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@MEMORY_OBJECT_NULL = common dso_local global %struct.TYPE_10__* null, align 8
@swapfile_pager_ops = common dso_local global i32 0, align 4
@MEMORY_OBJECT_CONTROL_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swapfile_pager_control(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** @MEMORY_OBJECT_NULL, align 8
  %7 = icmp eq %struct.TYPE_10__* %5, %6
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, @swapfile_pager_ops
  br i1 %12, label %13, label %15

13:                                               ; preds = %8, %1
  %14 = load i32, i32* @MEMORY_OBJECT_CONTROL_NULL, align 4
  store i32 %14, i32* %2, align 4
  br label %22

15:                                               ; preds = %8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = call %struct.TYPE_9__* @swapfile_pager_lookup(%struct.TYPE_10__* %16)
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %4, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %15, %13
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local %struct.TYPE_9__* @swapfile_pager_lookup(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
