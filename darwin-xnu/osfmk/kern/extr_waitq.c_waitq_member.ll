; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_member.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq = type { i64 }
%struct.waitq_set = type { i64 }

@WQ_ITERATE_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Invalid waitq: %p\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@LINK_WALK_ONE_LEVEL = common dso_local global i32 0, align 4
@WQL_ALL = common dso_local global i32 0, align 4
@waitq_inset_cb = common dso_local global i32 0, align 4
@WQ_ITERATE_FOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @waitq_member(%struct.waitq* %0, %struct.waitq_set* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.waitq*, align 8
  %5 = alloca %struct.waitq_set*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.waitq* %0, %struct.waitq** %4, align 8
  store %struct.waitq_set* %1, %struct.waitq_set** %5, align 8
  %8 = load i64, i64* @WQ_ITERATE_SUCCESS, align 8
  store i64 %8, i64* %6, align 8
  %9 = load %struct.waitq*, %struct.waitq** %4, align 8
  %10 = call i32 @waitq_valid(%struct.waitq* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load %struct.waitq*, %struct.waitq** %4, align 8
  %14 = call i32 @panic(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.waitq* %13)
  br label %15

15:                                               ; preds = %12, %2
  %16 = load %struct.waitq*, %struct.waitq** %4, align 8
  %17 = call i32 @waitq_irq_safe(%struct.waitq* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.waitq_set*, %struct.waitq_set** %5, align 8
  %23 = call i32 @waitqs_is_set(%struct.waitq_set* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %15
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %3, align 4
  br label %64

27:                                               ; preds = %15
  %28 = load %struct.waitq*, %struct.waitq** %4, align 8
  %29 = call i32 @waitq_lock(%struct.waitq* %28)
  %30 = load %struct.waitq_set*, %struct.waitq_set** %5, align 8
  %31 = call i32 @waitqs_is_linked(%struct.waitq_set* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %57

34:                                               ; preds = %27
  %35 = load %struct.waitq_set*, %struct.waitq_set** %5, align 8
  %36 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %7, align 8
  %38 = load %struct.waitq*, %struct.waitq** %4, align 8
  %39 = getelementptr inbounds %struct.waitq, %struct.waitq* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load %struct.waitq*, %struct.waitq** %4, align 8
  %45 = call i32 @waitq_unlock(%struct.waitq* %44)
  %46 = load i32, i32* @TRUE, align 4
  store i32 %46, i32* %3, align 4
  br label %64

47:                                               ; preds = %34
  %48 = load i32, i32* @LINK_WALK_ONE_LEVEL, align 4
  %49 = load %struct.waitq*, %struct.waitq** %4, align 8
  %50 = load %struct.waitq*, %struct.waitq** %4, align 8
  %51 = getelementptr inbounds %struct.waitq, %struct.waitq* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* @WQL_ALL, align 4
  %54 = bitcast i64* %7 to i8*
  %55 = load i32, i32* @waitq_inset_cb, align 4
  %56 = call i64 @walk_waitq_links(i32 %48, %struct.waitq* %49, i64 %52, i32 %53, i8* %54, i32 %55)
  store i64 %56, i64* %6, align 8
  br label %57

57:                                               ; preds = %47, %33
  %58 = load %struct.waitq*, %struct.waitq** %4, align 8
  %59 = call i32 @waitq_unlock(%struct.waitq* %58)
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* @WQ_ITERATE_FOUND, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %57, %43, %25
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @waitq_valid(%struct.waitq*) #1

declare dso_local i32 @panic(i8*, %struct.waitq*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @waitq_irq_safe(%struct.waitq*) #1

declare dso_local i32 @waitqs_is_set(%struct.waitq_set*) #1

declare dso_local i32 @waitq_lock(%struct.waitq*) #1

declare dso_local i32 @waitqs_is_linked(%struct.waitq_set*) #1

declare dso_local i32 @waitq_unlock(%struct.waitq*) #1

declare dso_local i64 @walk_waitq_links(i32, %struct.waitq*, i64, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
