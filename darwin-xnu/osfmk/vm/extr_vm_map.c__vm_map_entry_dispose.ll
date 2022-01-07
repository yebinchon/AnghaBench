; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c__vm_map_entry_dispose.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c__vm_map_entry_dispose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_map_header = type { i64 }
%struct.TYPE_4__ = type { i32 }

@vm_map_entry_zone = common dso_local global i64 0, align 8
@vm_map_entry_reserved_zone = common dso_local global i64 0, align 8
@nonreserved_zalloc_count = common dso_local global i32 0, align 4
@reserved_zalloc_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_map_header*, %struct.TYPE_4__*)* @_vm_map_entry_dispose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_vm_map_entry_dispose(%struct.vm_map_header* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.vm_map_header*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  store %struct.vm_map_header* %0, %struct.vm_map_header** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %6 = load %struct.vm_map_header*, %struct.vm_map_header** %3, align 8
  %7 = getelementptr inbounds %struct.vm_map_header, %struct.vm_map_header* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10, %2
  %16 = load i64, i64* @vm_map_entry_zone, align 8
  store i64 %16, i64* %5, align 8
  br label %19

17:                                               ; preds = %10
  %18 = load i64, i64* @vm_map_entry_reserved_zone, align 8
  store i64 %18, i64* %5, align 8
  br label %19

19:                                               ; preds = %17, %15
  %20 = load %struct.vm_map_header*, %struct.vm_map_header** %3, align 8
  %21 = getelementptr inbounds %struct.vm_map_header, %struct.vm_map_header* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %19
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @vm_map_entry_zone, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 @OSAddAtomic(i32 -1, i32* @nonreserved_zalloc_count)
  br label %32

30:                                               ; preds = %24
  %31 = call i32 @OSAddAtomic(i32 -1, i32* @reserved_zalloc_count)
  br label %32

32:                                               ; preds = %30, %28
  br label %33

33:                                               ; preds = %32, %19
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = call i32 @zfree(i64 %34, %struct.TYPE_4__* %35)
  ret void
}

declare dso_local i32 @OSAddAtomic(i32, i32*) #1

declare dso_local i32 @zfree(i64, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
