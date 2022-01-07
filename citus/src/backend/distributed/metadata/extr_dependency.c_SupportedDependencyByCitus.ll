; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/metadata/extr_dependency.c_SupportedDependencyByCitus.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/metadata/extr_dependency.c_SupportedDependencyByCitus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@EnableDependencyCreation = common dso_local global i32 0, align 4
@RELKIND_COMPOSITE_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SupportedDependencyByCitus(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %4 = load i32, i32* @EnableDependencyCreation, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = call i32 @getObjectClass(%struct.TYPE_4__* %7)
  switch i32 %8, label %10 [
    i32 132, label %9
  ]

9:                                                ; preds = %6
  store i32 1, i32* %2, align 4
  br label %38

10:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %38

11:                                               ; preds = %1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = call i32 @getObjectClass(%struct.TYPE_4__* %12)
  switch i32 %13, label %37 [
    i32 132, label %14
    i32 133, label %15
    i32 131, label %16
    i32 134, label %28
  ]

14:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %38

15:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %38

16:                                               ; preds = %11
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @get_typtype(i32 %19)
  switch i32 %20, label %27 [
    i32 128, label %21
    i32 129, label %21
    i32 130, label %22
  ]

21:                                               ; preds = %16, %16
  store i32 1, i32* %2, align 4
  br label %38

22:                                               ; preds = %16
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @type_is_array(i32 %25)
  store i32 %26, i32* %2, align 4
  br label %38

27:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %38

28:                                               ; preds = %11
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @get_rel_relkind(i32 %31)
  %33 = load i32, i32* @RELKIND_COMPOSITE_TYPE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %38

36:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %38

37:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %36, %35, %27, %22, %21, %15, %14, %10, %9
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @getObjectClass(%struct.TYPE_4__*) #1

declare dso_local i32 @get_typtype(i32) #1

declare dso_local i32 @type_is_array(i32) #1

declare dso_local i32 @get_rel_relkind(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
