; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_shared_region.c_vm_shared_region_slide_page.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_shared_region.c_vm_shared_region_slide_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@KERN_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_shared_region_slide_page(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @vm_shared_region_slide_page_v1(%struct.TYPE_9__* %17, i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  br label %60

21:                                               ; preds = %4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @vm_shared_region_slide_page_v2(%struct.TYPE_9__* %29, i32 %30, i32 %31)
  store i32 %32, i32* %5, align 4
  br label %60

33:                                               ; preds = %21
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @vm_shared_region_slide_page_v3(%struct.TYPE_9__* %41, i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %5, align 4
  br label %60

46:                                               ; preds = %33
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 4
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @vm_shared_region_slide_page_v4(%struct.TYPE_9__* %54, i32 %55, i32 %56)
  store i32 %57, i32* %5, align 4
  br label %60

58:                                               ; preds = %46
  %59 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %58, %53, %40, %28, %16
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @vm_shared_region_slide_page_v1(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @vm_shared_region_slide_page_v2(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @vm_shared_region_slide_page_v3(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @vm_shared_region_slide_page_v4(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
