; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_user.c_mach_memory_entry_page_op.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_user.c_mach_memory_entry_page_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i64, i64 }
%struct.TYPE_9__ = type { i64 }

@IKOT_NAMED_ENTRY = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@VM_OBJECT_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mach_memory_entry_page_op(%struct.TYPE_11__* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %16 = call i32 @IP_VALID(%struct.TYPE_11__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %5
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %20 = call i64 @ip_kotype(%struct.TYPE_11__* %19)
  %21 = load i64, i64* @IKOT_NAMED_ENTRY, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %18, %5
  %24 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %24, i32* %6, align 4
  br label %71

25:                                               ; preds = %18
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %12, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %31 = call i32 @named_entry_lock(%struct.TYPE_10__* %30)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %25
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36, %25
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %43 = call i32 @named_entry_unlock(%struct.TYPE_10__* %42)
  %44 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %44, i32* %6, align 4
  br label %71

45:                                               ; preds = %36
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %13, align 8
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* @VM_OBJECT_NULL, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %55 = call i32 @named_entry_unlock(%struct.TYPE_10__* %54)
  %56 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %56, i32* %6, align 4
  br label %71

57:                                               ; preds = %45
  %58 = load i64, i64* %13, align 8
  %59 = call i32 @vm_object_reference(i64 %58)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %61 = call i32 @named_entry_unlock(%struct.TYPE_10__* %60)
  %62 = load i64, i64* %13, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32*, i32** %10, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @vm_object_page_op(i64 %62, i32 %63, i32 %64, i32* %65, i32* %66)
  store i32 %67, i32* %14, align 4
  %68 = load i64, i64* %13, align 8
  %69 = call i32 @vm_object_deallocate(i64 %68)
  %70 = load i32, i32* %14, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %57, %53, %41, %23
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i32 @IP_VALID(%struct.TYPE_11__*) #1

declare dso_local i64 @ip_kotype(%struct.TYPE_11__*) #1

declare dso_local i32 @named_entry_lock(%struct.TYPE_10__*) #1

declare dso_local i32 @named_entry_unlock(%struct.TYPE_10__*) #1

declare dso_local i32 @vm_object_reference(i64) #1

declare dso_local i32 @vm_object_page_op(i64, i32, i32, i32*, i32*) #1

declare dso_local i32 @vm_object_deallocate(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
