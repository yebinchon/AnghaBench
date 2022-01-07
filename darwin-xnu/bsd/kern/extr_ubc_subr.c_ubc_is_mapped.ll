; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_ubc_is_mapped.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_ubc_is_mapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@UI_ISMAPPED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@UI_MAPPEDWRITE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ubc_is_mapped(%struct.vnode* %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca i64*, align 8
  store %struct.vnode* %0, %struct.vnode** %4, align 8
  store i64* %1, i64** %5, align 8
  %6 = load %struct.vnode*, %struct.vnode** %4, align 8
  %7 = call i32 @UBCINFOEXISTS(%struct.vnode* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load %struct.vnode*, %struct.vnode** %4, align 8
  %11 = getelementptr inbounds %struct.vnode, %struct.vnode* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @UI_ISMAPPED, align 4
  %16 = call i64 @ISSET(i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %9, %2
  %19 = load i64, i64* @FALSE, align 8
  store i64 %19, i64* %3, align 8
  br label %34

20:                                               ; preds = %9
  %21 = load i64*, i64** %5, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load %struct.vnode*, %struct.vnode** %4, align 8
  %25 = getelementptr inbounds %struct.vnode, %struct.vnode* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @UI_MAPPEDWRITE, align 4
  %30 = call i64 @ISSET(i32 %28, i32 %29)
  %31 = load i64*, i64** %5, align 8
  store i64 %30, i64* %31, align 8
  br label %32

32:                                               ; preds = %23, %20
  %33 = load i64, i64* @TRUE, align 8
  store i64 %33, i64* %3, align 8
  br label %34

34:                                               ; preds = %32, %18
  %35 = load i64, i64* %3, align 8
  ret i64 %35
}

declare dso_local i32 @UBCINFOEXISTS(%struct.vnode*) #1

declare dso_local i64 @ISSET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
