; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_pmap.c_hv_ept_pmap_create.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_pmap.c_hv_ept_pmap_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@PMAP_CREATE_64BIT = common dso_local global i32 0, align 4
@PMAP_CREATE_EPT = common dso_local global i32 0, align 4
@PMAP_NULL = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hv_ept_pmap_create(i8** %0, i8** %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store i8** %0, i8*** %3, align 8
  store i8** %1, i8*** %4, align 8
  %6 = load i8**, i8*** %3, align 8
  %7 = icmp eq i8** %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i8**, i8*** %4, align 8
  %10 = icmp eq i8** %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  br label %37

12:                                               ; preds = %8
  %13 = call i32 (...) @current_task()
  %14 = call i32 @get_task_ledger(i32 %13)
  %15 = load i32, i32* @PMAP_CREATE_64BIT, align 4
  %16 = load i32, i32* @PMAP_CREATE_EPT, align 4
  %17 = or i32 %15, %16
  %18 = call %struct.TYPE_5__* @pmap_create_options(i32 %14, i32 0, i32 %17)
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %5, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @PMAP_NULL, align 8
  %21 = icmp eq %struct.TYPE_5__* %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %12
  %23 = load i8**, i8*** %3, align 8
  store i8* null, i8** %23, align 8
  %24 = load i8**, i8*** %4, align 8
  store i8* null, i8** %24, align 8
  br label %37

25:                                               ; preds = %12
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = call i32 @is_ept_pmap(%struct.TYPE_5__* %26)
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = bitcast %struct.TYPE_5__* %29 to i8*
  %31 = load i8**, i8*** %3, align 8
  store i8* %30, i8** %31, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = load i8**, i8*** %4, align 8
  store i8* %35, i8** %36, align 8
  br label %37

37:                                               ; preds = %25, %22, %11
  ret void
}

declare dso_local %struct.TYPE_5__* @pmap_create_options(i32, i32, i32) #1

declare dso_local i32 @get_task_ledger(i32) #1

declare dso_local i32 @current_task(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @is_ept_pmap(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
