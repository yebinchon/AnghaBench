; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_fork_copy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_fork_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32, %struct.TYPE_7__* }

@VM_MAP_COPYIN_USE_MAXPROT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_NONE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_7__**, i32, i32)* @vm_map_fork_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_map_fork_copy(i32 %0, %struct.TYPE_7__** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_7__** %1, %struct.TYPE_7__*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %10, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %19, %22
  store i64 %23, i64* %11, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %12, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call %struct.TYPE_7__* @vm_map_last_entry(i32 %27)
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %14, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @vm_map_unlock(i32 %29)
  %31 = load i32, i32* @VM_MAP_COPYIN_USE_MAXPROT, align 4
  %32 = load i32, i32* %9, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i64 @vm_map_copyin_internal(i32 %34, i64 %35, i64 %36, i32 %37, i32* %13)
  %39 = load i64, i64* @KERN_SUCCESS, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %64

41:                                               ; preds = %4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @vm_map_lock(i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = load i64, i64* %12, align 8
  %46 = call i32 @vm_map_lookup_entry(i32 %44, i64 %45, %struct.TYPE_7__** %14)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %41
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @VM_PROT_READ, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @VM_PROT_NONE, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %48, %41
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  store %struct.TYPE_7__* %59, %struct.TYPE_7__** %14, align 8
  br label %60

60:                                               ; preds = %56, %48
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %62 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  store %struct.TYPE_7__* %61, %struct.TYPE_7__** %62, align 8
  %63 = load i32, i32* @FALSE, align 4
  store i32 %63, i32* %5, align 4
  br label %99

64:                                               ; preds = %4
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @vm_map_copy_insert(i32 %65, %struct.TYPE_7__* %66, i32 %67)
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @vm_map_lock(i32 %69)
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* %12, align 8
  %73 = add nsw i64 %72, %71
  store i64 %73, i64* %12, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load i64, i64* %12, align 8
  %76 = call i32 @vm_map_lookup_entry(i32 %74, i64 %75, %struct.TYPE_7__** %14)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %64
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  store %struct.TYPE_7__* %81, %struct.TYPE_7__** %14, align 8
  br label %95

82:                                               ; preds = %64
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %12, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %94

89:                                               ; preds = %82
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %92 = load i64, i64* %12, align 8
  %93 = call i32 @vm_map_clip_start(i32 %90, %struct.TYPE_7__* %91, i64 %92)
  br label %94

94:                                               ; preds = %89, %88
  br label %95

95:                                               ; preds = %94, %78
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %97 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  store %struct.TYPE_7__* %96, %struct.TYPE_7__** %97, align 8
  %98 = load i32, i32* @TRUE, align 4
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %95, %60
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local %struct.TYPE_7__* @vm_map_last_entry(i32) #1

declare dso_local i32 @vm_map_unlock(i32) #1

declare dso_local i64 @vm_map_copyin_internal(i32, i64, i64, i32, i32*) #1

declare dso_local i32 @vm_map_lock(i32) #1

declare dso_local i32 @vm_map_lookup_entry(i32, i64, %struct.TYPE_7__**) #1

declare dso_local i32 @vm_map_copy_insert(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @vm_map_clip_start(i32, %struct.TYPE_7__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
