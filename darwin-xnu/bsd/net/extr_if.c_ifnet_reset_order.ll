; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_ifnet_reset_order.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_ifnet_reset_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }

@IFSCOPE_NONE = common dso_local global i64 0, align 8
@if_index = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ifnet_ordered_head = common dso_local global i32 0, align 4
@if_ordered_count = common dso_local global i64 0, align 8
@ifindex2ifnet = common dso_local global %struct.ifnet** null, align 8
@if_ordered_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64)* @ifnet_reset_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifnet_reset_order(i64* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.ifnet* null, %struct.ifnet** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = call i32 (...) @ifnet_head_lock_exclusive()
  store i64 0, i64* %8, align 8
  br label %12

12:                                               ; preds = %35, %2
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %12
  %17 = load i64*, i64** %4, align 8
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IFSCOPE_NONE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %30, label %23

23:                                               ; preds = %16
  %24 = load i64*, i64** %4, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @if_index, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %23, %16
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %7, align 4
  %32 = call i32 (...) @ifnet_head_done()
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %90

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %8, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %8, align 8
  br label %12

38:                                               ; preds = %12
  %39 = call %struct.ifnet* @TAILQ_FIRST(i32* @ifnet_ordered_head)
  store %struct.ifnet* %39, %struct.ifnet** %6, align 8
  br label %40

40:                                               ; preds = %50, %38
  %41 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %42 = icmp ne %struct.ifnet* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %45 = call i32 @ifnet_lock_exclusive(%struct.ifnet* %44)
  %46 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %47 = call i32 @ifnet_remove_from_ordered_list(%struct.ifnet* %46)
  %48 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %49 = call i32 @ifnet_lock_done(%struct.ifnet* %48)
  br label %50

50:                                               ; preds = %43
  %51 = call %struct.ifnet* @TAILQ_FIRST(i32* @ifnet_ordered_head)
  store %struct.ifnet* %51, %struct.ifnet** %6, align 8
  br label %40

52:                                               ; preds = %40
  %53 = load i64, i64* @if_ordered_count, align 8
  %54 = icmp eq i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @VERIFY(i32 %55)
  store i64 0, i64* %9, align 8
  br label %57

57:                                               ; preds = %83, %52
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %5, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %86

61:                                               ; preds = %57
  %62 = load i64*, i64** %4, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %10, align 8
  %66 = load %struct.ifnet**, %struct.ifnet*** @ifindex2ifnet, align 8
  %67 = load i64, i64* %10, align 8
  %68 = getelementptr inbounds %struct.ifnet*, %struct.ifnet** %66, i64 %67
  %69 = load %struct.ifnet*, %struct.ifnet** %68, align 8
  store %struct.ifnet* %69, %struct.ifnet** %6, align 8
  %70 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %71 = icmp eq %struct.ifnet* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %61
  br label %83

73:                                               ; preds = %61
  %74 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %75 = call i32 @ifnet_lock_exclusive(%struct.ifnet* %74)
  %76 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %77 = load i32, i32* @if_ordered_link, align 4
  %78 = call i32 @TAILQ_INSERT_TAIL(i32* @ifnet_ordered_head, %struct.ifnet* %76, i32 %77)
  %79 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %80 = call i32 @ifnet_lock_done(%struct.ifnet* %79)
  %81 = load i64, i64* @if_ordered_count, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* @if_ordered_count, align 8
  br label %83

83:                                               ; preds = %73, %72
  %84 = load i64, i64* %9, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %9, align 8
  br label %57

86:                                               ; preds = %57
  %87 = call i32 (...) @ifnet_head_done()
  %88 = call i32 (...) @necp_update_all_clients()
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %86, %30
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @ifnet_head_lock_exclusive(...) #1

declare dso_local i32 @ifnet_head_done(...) #1

declare dso_local %struct.ifnet* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @ifnet_lock_exclusive(%struct.ifnet*) #1

declare dso_local i32 @ifnet_remove_from_ordered_list(%struct.ifnet*) #1

declare dso_local i32 @ifnet_lock_done(%struct.ifnet*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.ifnet*, i32) #1

declare dso_local i32 @necp_update_all_clients(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
