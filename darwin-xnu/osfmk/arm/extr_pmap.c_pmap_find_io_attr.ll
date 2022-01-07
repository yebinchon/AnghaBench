; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_find_io_attr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_find_io_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@num_io_rgns = common dso_local global i32 0, align 4
@io_attr_table = common dso_local global %struct.TYPE_6__* null, align 8
@VM_WIMG_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pmap_find_io_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_find_io_attr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %10 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %12 = load i32, i32* %3, align 4
  store i32 %12, i32* %11, align 4
  store i32 0, i32* %5, align 4
  %13 = load i32, i32* @num_io_rgns, align 4
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @num_io_rgns, align 4
  %16 = icmp sgt i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  br label %19

19:                                               ; preds = %53, %1
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = add i32 %20, %21
  %23 = udiv i32 %22, 2
  store i32 %23, i32* %7, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @io_attr_table, align 8
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %26
  %28 = call i32 @cmp_io_rgns(%struct.TYPE_5__* %4, %struct.TYPE_6__* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %19
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @io_attr_table, align 8
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %2, align 4
  br label %56

38:                                               ; preds = %19
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %54

43:                                               ; preds = %38
  %44 = load i32, i32* %8, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %49, %46
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52
  br label %19

54:                                               ; preds = %42
  %55 = load i32, i32* @VM_WIMG_IO, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %31
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cmp_io_rgns(%struct.TYPE_5__*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
