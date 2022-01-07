; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_device_vm.c_device_pager_populate_object.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_device_vm.c_device_pager_populate_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@DEVICE_PAGER_NULL = common dso_local global %struct.TYPE_10__* null, align 8
@KERN_FAILURE = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@UPL_NO_SYNC = common dso_local global i32 0, align 4
@UPL_CLEAN_IN_PLACE = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"device_pager_populate_object: list_req failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @device_pager_populate_object(i32 %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.TYPE_10__* @device_pager_lookup(i32 %15)
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %10, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DEVICE_PAGER_NULL, align 8
  %19 = icmp eq %struct.TYPE_10__* %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i64, i64* @KERN_FAILURE, align 8
  store i64 %21, i64* %5, align 8
  br label %76

22:                                               ; preds = %4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @memory_object_control_to_vm_object(i32 %26)
  %28 = inttoptr i64 %27 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %11, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %30 = icmp eq %struct.TYPE_9__* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i64, i64* @KERN_FAILURE, align 8
  store i64 %32, i64* %5, align 8
  br label %76

33:                                               ; preds = %22
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i64, i64* %9, align 8
  %38 = call i64 @vm_object_populate_with_private(%struct.TYPE_9__* %34, i64 %35, i32 %36, i64 %37)
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* @KERN_SUCCESS, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i64, i64* %12, align 8
  store i64 %43, i64* %5, align 8
  br label %76

44:                                               ; preds = %33
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %74, label %49

49:                                               ; preds = %44
  store i32 0, i32* %14, align 4
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %9, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %56 = load i64, i64* %7, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i64, i64* %9, align 8
  %59 = load i32, i32* @UPL_NO_SYNC, align 4
  %60 = load i32, i32* @UPL_CLEAN_IN_PLACE, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @VM_KERN_MEMORY_NONE, align 4
  %63 = call i64 @vm_object_upl_request(%struct.TYPE_9__* %55, i32 %57, i64 %58, i32* %13, i32* null, i32* %14, i32 %61, i32 %62)
  store i64 %63, i64* %12, align 8
  %64 = load i64, i64* %12, align 8
  %65 = load i64, i64* @KERN_SUCCESS, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %49
  %68 = call i32 @panic(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %49
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @upl_commit(i32 %70, i32* null, i32 0)
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @upl_deallocate(i32 %72)
  br label %74

74:                                               ; preds = %69, %44
  %75 = load i64, i64* %12, align 8
  store i64 %75, i64* %5, align 8
  br label %76

76:                                               ; preds = %74, %42, %31, %20
  %77 = load i64, i64* %5, align 8
  ret i64 %77
}

declare dso_local %struct.TYPE_10__* @device_pager_lookup(i32) #1

declare dso_local i64 @memory_object_control_to_vm_object(i32) #1

declare dso_local i64 @vm_object_populate_with_private(%struct.TYPE_9__*, i64, i32, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @vm_object_upl_request(%struct.TYPE_9__*, i32, i64, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @upl_commit(i32, i32*, i32) #1

declare dso_local i32 @upl_deallocate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
