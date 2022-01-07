; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_resident.c_vm_page_alloc_list.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_resident.c_vm_page_alloc_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__* }

@VM_PAGE_NULL = common dso_local global %struct.TYPE_6__* null, align 8
@KMA_LOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"vm_page_alloc_list: called w/o KMA_LOMEM\00", align 1
@FALSE = common dso_local global i32 0, align 4
@KERN_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_page_alloc_list(i32 %0, i32 %1, %struct.TYPE_6__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__**, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_6__** %2, %struct.TYPE_6__*** %7, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @VM_PAGE_NULL, align 8
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @KMA_LOMEM, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %3
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %44, %18
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %19
  %24 = call %struct.TYPE_6__* (...) @vm_page_grablo()
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %9, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @VM_PAGE_NULL, align 8
  %27 = icmp eq %struct.TYPE_6__* %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %33 = load i32, i32* @FALSE, align 4
  %34 = call i32 @vm_page_free_list(%struct.TYPE_6__* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %28
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @VM_PAGE_NULL, align 8
  %37 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %37, align 8
  %38 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %38, i32* %4, align 4
  br label %51

39:                                               ; preds = %23
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %42, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %8, align 8
  br label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %19

47:                                               ; preds = %19
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %49 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  store %struct.TYPE_6__* %48, %struct.TYPE_6__** %49, align 8
  %50 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %47, %35
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @panic(i8*) #1

declare dso_local %struct.TYPE_6__* @vm_page_grablo(...) #1

declare dso_local i32 @vm_page_free_list(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
