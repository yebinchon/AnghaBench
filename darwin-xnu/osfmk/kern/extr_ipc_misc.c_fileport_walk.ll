; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_misc.c_fileport_walk.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_misc.c_fileport_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.fileglob = type opaque
%struct.fileglob.0 = type opaque

@KERN_SUCCESS = common dso_local global i64 0, align 8
@ipc_kernel_map = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fileport_walk(%struct.TYPE_4__* %0, i32 (i32, %struct.fileglob*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32 (i32, %struct.fileglob*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 (i32, %struct.fileglob*, i8*)* %1, i32 (i32, %struct.fileglob*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = bitcast i32* %11 to i32**
  %21 = bitcast i32* %12 to i32**
  %22 = call i64 @mach_port_names(i32 %19, i32** %20, i64* %9, i32** %21, i64* %10)
  store i64 %22, i64* %14, align 8
  %23 = load i64, i64* %14, align 8
  %24 = load i64, i64* @KERN_SUCCESS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i64, i64* %14, align 8
  store i64 %27, i64* %4, align 8
  br label %76

28:                                               ; preds = %3
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @vm_map_copy_discard(i32 %29)
  %31 = load i32, i32* @ipc_kernel_map, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i64 @vm_map_copyout(i32 %31, i64* %13, i32 %32)
  store i64 %33, i64* %14, align 8
  %34 = load i64, i64* %14, align 8
  %35 = load i64, i64* @KERN_SUCCESS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @vm_map_copy_discard(i32 %38)
  %40 = load i64, i64* %14, align 8
  store i64 %40, i64* %4, align 8
  br label %76

41:                                               ; preds = %28
  %42 = load i64, i64* %13, align 8
  %43 = inttoptr i64 %42 to i32*
  store i32* %43, i32** %8, align 8
  store i32 0, i32* %16, align 4
  store i64 0, i64* %15, align 8
  br label %44

44:                                               ; preds = %65, %41
  %45 = load i64, i64* %15, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %44
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load i64, i64* %15, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32 (i32, %struct.fileglob*, i8*)*, i32 (i32, %struct.fileglob*, i8*)** %6, align 8
  %55 = bitcast i32 (i32, %struct.fileglob*, i8*)* %54 to i32 (i32, %struct.fileglob.0*, i8*)*
  %56 = load i8*, i8** %7, align 8
  %57 = call i64 @fileport_invoke(%struct.TYPE_4__* %49, i32 %53, i32 (i32, %struct.fileglob.0*, i8*)* %55, i8* %56, i32* %16)
  %58 = load i64, i64* @KERN_SUCCESS, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %48
  %61 = load i32, i32* %16, align 4
  %62 = icmp eq i32 -1, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %68

64:                                               ; preds = %60, %48
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %15, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %15, align 8
  br label %44

68:                                               ; preds = %63, %44
  %69 = load i32, i32* @ipc_kernel_map, align 4
  %70 = load i32*, i32** %8, align 8
  %71 = ptrtoint i32* %70 to i32
  %72 = load i64, i64* %9, align 8
  %73 = mul i64 %72, 4
  %74 = call i32 @vm_deallocate(i32 %69, i32 %71, i64 %73)
  %75 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %75, i64* %4, align 8
  br label %76

76:                                               ; preds = %68, %37, %26
  %77 = load i64, i64* %4, align 8
  ret i64 %77
}

declare dso_local i64 @mach_port_names(i32, i32**, i64*, i32**, i64*) #1

declare dso_local i32 @vm_map_copy_discard(i32) #1

declare dso_local i64 @vm_map_copyout(i32, i64*, i32) #1

declare dso_local i64 @fileport_invoke(%struct.TYPE_4__*, i32, i32 (i32, %struct.fileglob.0*, i8*)*, i8*, i32*) #1

declare dso_local i32 @vm_deallocate(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
