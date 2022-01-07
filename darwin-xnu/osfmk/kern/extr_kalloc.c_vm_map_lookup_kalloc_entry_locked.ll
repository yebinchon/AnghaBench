; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kalloc.c_vm_map_lookup_kalloc_entry_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kalloc.c_vm_map_lookup_kalloc_entry_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [113 x i8] c"Attempting to lookup/free an address not allocated via kalloc! (vm_map_lookup_entry() failed map: %p, addr: %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [93 x i8] c"Attempting to lookup/free the middle of a kalloc'ed element! (map: %p, addr: %p, entry: %p)\0A\00", align 1
@.str.2 = private unnamed_addr constant [92 x i8] c"Attempting to lookup/free an address not managed by kalloc! (map: %p, addr: %p, entry: %p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*)* @vm_map_lookup_kalloc_entry_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vm_map_lookup_kalloc_entry_locked(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %6, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = ptrtoint i8* %8 to i64
  %10 = call i32 @vm_map_lookup_entry(i32 %7, i64 %9, %struct.TYPE_3__** %6)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 (i8*, i32, i8*, ...) @panic(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str, i64 0, i64 0), i32 %14, i8* %15)
  br label %17

17:                                               ; preds = %13, %2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = ptrtoint i8* %21 to i64
  %23 = icmp ne i64 %20, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load i32, i32* %3, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = call i32 (i8*, i32, i8*, ...) @panic(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0), i32 %25, i8* %26, %struct.TYPE_3__* %27)
  br label %29

29:                                               ; preds = %24, %17
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %3, align 4
  %36 = load i8*, i8** %4, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = call i32 (i8*, i32, i8*, ...) @panic(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.2, i64 0, i64 0), i32 %35, i8* %36, %struct.TYPE_3__* %37)
  br label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %42, %45
  ret i64 %46
}

declare dso_local i32 @vm_map_lookup_entry(i32, i64, %struct.TYPE_3__**) #1

declare dso_local i32 @panic(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
