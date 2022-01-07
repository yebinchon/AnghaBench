; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_unlink_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_unlink_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq = type { i64, i64, i32 }
%struct.waitq_set = type { i64, i32, %struct.waitq }
%struct.wq_unlink_ctx = type { %struct.waitq_set*, %struct.waitq* }

@KERN_NOT_IN_SET = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@LINK_WALK_ONE_LEVEL = common dso_local global i32 0, align 4
@WQL_LINK = common dso_local global i32 0, align 4
@waitq_unlink_cb = common dso_local global i32 0, align 4
@WQ_ITERATE_UNLINKED = common dso_local global i64 0, align 8
@waitq_unlink_prepost_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.waitq*, %struct.waitq_set*)* @waitq_unlink_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @waitq_unlink_locked(%struct.waitq* %0, %struct.waitq_set* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.waitq*, align 8
  %5 = alloca %struct.waitq_set*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.wq_unlink_ctx, align 8
  store %struct.waitq* %0, %struct.waitq** %4, align 8
  store %struct.waitq_set* %1, %struct.waitq_set** %5, align 8
  %9 = load %struct.waitq*, %struct.waitq** %4, align 8
  %10 = call i32 @waitq_irq_safe(%struct.waitq* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.waitq*, %struct.waitq** %4, align 8
  %16 = getelementptr inbounds %struct.waitq, %struct.waitq* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load %struct.waitq*, %struct.waitq** %4, align 8
  %21 = getelementptr inbounds %struct.waitq, %struct.waitq* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.waitq*, %struct.waitq** %4, align 8
  %26 = call i32 @waitq_clear_prepost_locked(%struct.waitq* %25)
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i64, i64* @KERN_NOT_IN_SET, align 8
  store i64 %28, i64* %3, align 8
  br label %98

29:                                               ; preds = %2
  %30 = load %struct.waitq_set*, %struct.waitq_set** %5, align 8
  %31 = call i32 @waitqs_is_linked(%struct.waitq_set* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load i64, i64* @KERN_NOT_IN_SET, align 8
  store i64 %34, i64* %3, align 8
  br label %98

35:                                               ; preds = %29
  %36 = load %struct.waitq_set*, %struct.waitq_set** %5, align 8
  %37 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %6, align 8
  %39 = load %struct.waitq*, %struct.waitq** %4, align 8
  %40 = getelementptr inbounds %struct.waitq, %struct.waitq* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = load %struct.waitq*, %struct.waitq** %4, align 8
  %46 = getelementptr inbounds %struct.waitq, %struct.waitq* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load %struct.waitq*, %struct.waitq** %4, align 8
  %48 = call i32 @waitq_clear_prepost_locked(%struct.waitq* %47)
  %49 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %49, i64* %3, align 8
  br label %98

50:                                               ; preds = %35
  %51 = load i32, i32* @LINK_WALK_ONE_LEVEL, align 4
  %52 = load %struct.waitq*, %struct.waitq** %4, align 8
  %53 = load %struct.waitq*, %struct.waitq** %4, align 8
  %54 = getelementptr inbounds %struct.waitq, %struct.waitq* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @WQL_LINK, align 4
  %57 = bitcast i64* %6 to i8*
  %58 = load i32, i32* @waitq_unlink_cb, align 4
  %59 = call i64 @walk_waitq_links(i32 %51, %struct.waitq* %52, i64 %55, i32 %56, i8* %57, i32 %58)
  store i64 %59, i64* %7, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* @WQ_ITERATE_UNLINKED, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %93

63:                                               ; preds = %50
  %64 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %64, i64* %7, align 8
  %65 = load %struct.waitq_set*, %struct.waitq_set** %5, align 8
  %66 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.waitq, %struct.waitq* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %63
  br label %96

71:                                               ; preds = %63
  %72 = load %struct.waitq_set*, %struct.waitq_set** %5, align 8
  %73 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %72, i32 0, i32 2
  %74 = call i32 @waitq_irq_safe(%struct.waitq* %73)
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = load %struct.waitq_set*, %struct.waitq_set** %5, align 8
  %80 = call i32 @waitq_set_lock(%struct.waitq_set* %79)
  %81 = load %struct.waitq*, %struct.waitq** %4, align 8
  %82 = getelementptr inbounds %struct.wq_unlink_ctx, %struct.wq_unlink_ctx* %8, i32 0, i32 1
  store %struct.waitq* %81, %struct.waitq** %82, align 8
  %83 = load %struct.waitq_set*, %struct.waitq_set** %5, align 8
  %84 = getelementptr inbounds %struct.wq_unlink_ctx, %struct.wq_unlink_ctx* %8, i32 0, i32 0
  store %struct.waitq_set* %83, %struct.waitq_set** %84, align 8
  %85 = load %struct.waitq_set*, %struct.waitq_set** %5, align 8
  %86 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = bitcast %struct.wq_unlink_ctx* %8 to i8*
  %89 = load i32, i32* @waitq_unlink_prepost_cb, align 4
  %90 = call i32 @wq_prepost_iterate(i32 %87, i8* %88, i32 %89)
  %91 = load %struct.waitq_set*, %struct.waitq_set** %5, align 8
  %92 = call i32 @waitq_set_unlock(%struct.waitq_set* %91)
  br label %95

93:                                               ; preds = %50
  %94 = load i64, i64* @KERN_NOT_IN_SET, align 8
  store i64 %94, i64* %7, align 8
  br label %95

95:                                               ; preds = %93, %71
  br label %96

96:                                               ; preds = %95, %70
  %97 = load i64, i64* %7, align 8
  store i64 %97, i64* %3, align 8
  br label %98

98:                                               ; preds = %96, %44, %33, %27
  %99 = load i64, i64* %3, align 8
  ret i64 %99
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @waitq_irq_safe(%struct.waitq*) #1

declare dso_local i32 @waitq_clear_prepost_locked(%struct.waitq*) #1

declare dso_local i32 @waitqs_is_linked(%struct.waitq_set*) #1

declare dso_local i64 @walk_waitq_links(i32, %struct.waitq*, i64, i32, i8*, i32) #1

declare dso_local i32 @waitq_set_lock(%struct.waitq_set*) #1

declare dso_local i32 @wq_prepost_iterate(i32, i8*, i32) #1

declare dso_local i32 @waitq_set_unlock(%struct.waitq_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
