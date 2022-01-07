; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ltable.c_lt_elem_idx.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ltable.c_lt_elem_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lt_elem = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.link_table = type { i64, i64, i64, i32, %struct.lt_elem** }

@.str = private unnamed_addr constant [46 x i8] c"Invalid index:%d slab:%d (NULL) for table:%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lt_elem* (%struct.link_table*, i64)* @lt_elem_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lt_elem* @lt_elem_idx(%struct.link_table* %0, i64 %1) #0 {
  %3 = alloca %struct.link_table*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.lt_elem*, align 8
  store %struct.link_table* %0, %struct.link_table** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load %struct.link_table*, %struct.link_table** %3, align 8
  %9 = getelementptr inbounds %struct.link_table, %struct.link_table* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = mul i64 %7, %10
  store i64 %11, i64* %5, align 8
  %12 = load %struct.link_table*, %struct.link_table** %3, align 8
  %13 = getelementptr inbounds %struct.link_table, %struct.link_table* %12, i32 0, i32 4
  %14 = load %struct.lt_elem**, %struct.lt_elem*** %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.link_table*, %struct.link_table** %3, align 8
  %17 = getelementptr inbounds %struct.link_table, %struct.link_table* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = lshr i64 %15, %18
  %20 = getelementptr inbounds %struct.lt_elem*, %struct.lt_elem** %14, i64 %19
  %21 = load %struct.lt_elem*, %struct.lt_elem** %20, align 8
  store %struct.lt_elem* %21, %struct.lt_elem** %6, align 8
  %22 = load %struct.lt_elem*, %struct.lt_elem** %6, align 8
  %23 = icmp ne %struct.lt_elem* %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %2
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.link_table*, %struct.link_table** %3, align 8
  %28 = getelementptr inbounds %struct.link_table, %struct.link_table* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = lshr i64 %26, %29
  %31 = load %struct.link_table*, %struct.link_table** %3, align 8
  %32 = call i32 @panic(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %25, i64 %30, %struct.link_table* %31)
  br label %33

33:                                               ; preds = %24, %2
  %34 = load %struct.lt_elem*, %struct.lt_elem** %6, align 8
  %35 = getelementptr inbounds %struct.lt_elem, %struct.lt_elem* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %4, align 8
  %39 = icmp ule i64 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %33
  %41 = load %struct.lt_elem*, %struct.lt_elem** %6, align 8
  %42 = getelementptr inbounds %struct.lt_elem, %struct.lt_elem* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.link_table*, %struct.link_table** %3, align 8
  %46 = getelementptr inbounds %struct.link_table, %struct.link_table* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %44, %47
  %49 = load i64, i64* %4, align 8
  %50 = icmp ugt i64 %48, %49
  br label %51

51:                                               ; preds = %40, %33
  %52 = phi i1 [ false, %33 ], [ %50, %40 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load %struct.lt_elem*, %struct.lt_elem** %6, align 8
  %56 = load %struct.link_table*, %struct.link_table** %3, align 8
  %57 = getelementptr inbounds %struct.link_table, %struct.link_table* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load i64, i64* %5, align 8
  %60 = call %struct.lt_elem* @lt_elem_ofst_slab(%struct.lt_elem* %55, i32 %58, i64 %59)
  ret %struct.lt_elem* %60
}

declare dso_local i32 @panic(i8*, i64, i64, %struct.link_table*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.lt_elem* @lt_elem_ofst_slab(%struct.lt_elem*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
