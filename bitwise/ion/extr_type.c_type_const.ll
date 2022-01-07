; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_type.c_type_const.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_type.c_type_const.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_10__*, i32, i32 }

@TYPE_CONST = common dso_local global i64 0, align 8
@cached_const_types = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @type_const(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @TYPE_CONST, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %2, align 8
  br label %42

12:                                               ; preds = %1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = call %struct.TYPE_10__* @map_get(i32* @cached_const_types, %struct.TYPE_10__* %13)
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %4, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = icmp ne %struct.TYPE_10__* %15, null
  br i1 %16, label %40, label %17

17:                                               ; preds = %12
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = call i32 @complete_type(%struct.TYPE_10__* %18)
  %20 = load i64, i64* @TYPE_CONST, align 8
  %21 = call %struct.TYPE_10__* @type_alloc(i64 %20)
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %4, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  store i32 1, i32* %23, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %36, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = call i32 @map_put(i32* @cached_const_types, %struct.TYPE_10__* %37, %struct.TYPE_10__* %38)
  br label %40

40:                                               ; preds = %17, %12
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %2, align 8
  br label %42

42:                                               ; preds = %40, %10
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %43
}

declare dso_local %struct.TYPE_10__* @map_get(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @complete_type(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @type_alloc(i64) #1

declare dso_local i32 @map_put(i32*, %struct.TYPE_10__*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
