; ModuleID = '/home/carl/AnghaBench/RetroArch/runahead/extr_mylist.c_mylist_create.c'
source_filename = "/home/carl/AnghaBench/RetroArch/runahead/extr_mylist.c_mylist_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8**, i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mylist_create(%struct.TYPE_4__** %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %9, align 8
  %10 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %11 = icmp ne %struct.TYPE_4__** %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  br label %54

13:                                               ; preds = %4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %16, %13
  %18 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %9, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %24 = call i32 @mylist_destroy(%struct.TYPE_4__** %23)
  br label %25

25:                                               ; preds = %22, %17
  %26 = call i64 @malloc(i32 32)
  %27 = inttoptr i64 %26 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %9, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %29 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %29, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 4
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %25
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @calloc(i32 %41, i32 8)
  %43 = inttoptr i64 %42 to i8**
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i8** %43, i8*** %45, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  br label %54

49:                                               ; preds = %25
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i8** null, i8*** %51, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i32 0, i32* %53, align 8
  br label %54

54:                                               ; preds = %12, %49, %40
  ret void
}

declare dso_local i32 @mylist_destroy(%struct.TYPE_4__**) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
