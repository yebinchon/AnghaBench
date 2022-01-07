; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_sym_decl.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_sym_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@SYM_NONE = common dso_local global i32 0, align 4
@SYM_TYPE = common dso_local global i32 0, align 4
@SYM_VAR = common dso_local global i32 0, align 4
@SYM_CONST = common dso_local global i32 0, align 4
@SYM_FUNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @sym_decl(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %5 = load i32, i32* @SYM_NONE, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %17 [
    i32 131, label %9
    i32 129, label %9
    i32 130, label %9
    i32 133, label %9
    i32 128, label %11
    i32 134, label %13
    i32 132, label %15
  ]

9:                                                ; preds = %1, %1, %1, %1
  %10 = load i32, i32* @SYM_TYPE, align 4
  store i32 %10, i32* %3, align 4
  br label %19

11:                                               ; preds = %1
  %12 = load i32, i32* @SYM_VAR, align 4
  store i32 %12, i32* %3, align 4
  br label %19

13:                                               ; preds = %1
  %14 = load i32, i32* @SYM_CONST, align 4
  store i32 %14, i32* %3, align 4
  br label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @SYM_FUNC, align 4
  store i32 %16, i32* %3, align 4
  br label %19

17:                                               ; preds = %1
  %18 = call i32 @assert(i32 0)
  br label %19

19:                                               ; preds = %17, %15, %13, %11, %9
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %25 = call i32* @sym_new(i32 %20, i32 %23, %struct.TYPE_6__* %24)
  store i32* %25, i32** %4, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @set_resolved_sym(%struct.TYPE_6__* %26, i32* %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @process_decl_notes(%struct.TYPE_6__* %29, i32* %30)
  %32 = load i32*, i32** %4, align 8
  ret i32* %32
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @sym_new(i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @set_resolved_sym(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @process_decl_notes(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
