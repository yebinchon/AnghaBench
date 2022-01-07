; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_pager.c_vm_compressor_pager_transfer.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_pager.c_vm_compressor_pager_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@compressor_pager_stats = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_compressor_pager_transfer(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @compressor_pager_stats, i32 0, i32 0), align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @compressor_pager_stats, i32 0, i32 0), align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %22 = call i32 @compressor_pager_lookup(i32 %20, %struct.TYPE_5__* %21)
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = sdiv i32 %23, %24
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %33 = load i32, i32* @TRUE, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @compressor_pager_slot_lookup(%struct.TYPE_5__* %32, i32 %33, i32 %34, i64** %12)
  %36 = load i64*, i64** %12, align 8
  %37 = icmp ne i64* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i64*, i64** %12, align 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %52 = call i32 @compressor_pager_lookup(i32 %50, %struct.TYPE_5__* %51)
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = sdiv i32 %53, %54
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %63 = load i32, i32* @FALSE, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @compressor_pager_slot_lookup(%struct.TYPE_5__* %62, i32 %63, i32 %64, i64** %11)
  %66 = load i64*, i64** %11, align 8
  %67 = icmp ne i64* %66, null
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load i64*, i64** %11, align 8
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load i64*, i64** %12, align 8
  %76 = load i64*, i64** %11, align 8
  %77 = call i32 @vm_compressor_transfer(i64* %75, i64* %76)
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = call i32 @OSAddAtomic(i32 -1, i32* %79)
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = call i32 @OSAddAtomic(i32 1, i32* %82)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @compressor_pager_lookup(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @compressor_pager_slot_lookup(%struct.TYPE_5__*, i32, i32, i64**) #1

declare dso_local i32 @vm_compressor_transfer(i64*, i64*) #1

declare dso_local i32 @OSAddAtomic(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
