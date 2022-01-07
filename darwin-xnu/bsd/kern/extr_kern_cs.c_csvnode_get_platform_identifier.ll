; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_cs.c_csvnode_get_platform_identifier.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_cs.c_csvnode_get_platform_identifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.cs_blob = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @csvnode_get_platform_identifier(%struct.vnode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cs_blob*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  store %struct.vnode* %0, %struct.vnode** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.vnode*, %struct.vnode** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.cs_blob* @ubc_cs_blob_get(%struct.vnode* %8, i32 -1, i32 %9)
  store %struct.cs_blob* %10, %struct.cs_blob** %6, align 8
  %11 = load %struct.cs_blob*, %struct.cs_blob** %6, align 8
  %12 = icmp eq %struct.cs_blob* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

14:                                               ; preds = %2
  %15 = load %struct.cs_blob*, %struct.cs_blob** %6, align 8
  %16 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %7, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %19 = icmp eq %struct.TYPE_2__* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ntohl(i32 %23)
  %25 = icmp slt i32 %24, 8
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %14
  store i32 0, i32* %3, align 4
  br label %31

27:                                               ; preds = %20
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %27, %26, %13
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.cs_blob* @ubc_cs_blob_get(%struct.vnode*, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
