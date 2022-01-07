; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_purgeable.c_vm_purgeable_token_remove_first.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_purgeable.c_vm_purgeable_token_remove_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }

@vm_page_queue_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@tokens = common dso_local global %struct.TYPE_6__* null, align 8
@available_for_purge = common dso_local global i64 0, align 8
@DBG_MACH_VM = common dso_local global i32 0, align 4
@TOKEN_DELETE = common dso_local global i32 0, align 4
@token_new_pagecount = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @vm_purgeable_token_remove_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_purgeable_token_remove_first(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %5 = call i32 @LCK_MTX_ASSERT(i32* @vm_page_queue_lock, i32 %4)
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @assert(i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %111

13:                                               ; preds = %1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %13
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tokens, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  br label %42

35:                                               ; preds = %13
  %36 = load i64, i64* @available_for_purge, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, i64* @available_for_purge, align 8
  %38 = load i64, i64* @available_for_purge, align 8
  %39 = icmp sge i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  br label %42

42:                                               ; preds = %35, %25
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %42
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tokens, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  br label %60

60:                                               ; preds = %50, %42
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tokens, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %97

74:                                               ; preds = %60
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tokens, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tokens, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, %80
  store i32 %89, i32* %87, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tokens, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  store i64 0, i64* %96, align 8
  br label %110

97:                                               ; preds = %60
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tokens, align 8
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, %103
  store i32 %107, i32* %105, align 4
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  store i32 0, i32* %109, align 4
  br label %110

110:                                              ; preds = %97, %74
  br label %111

111:                                              ; preds = %110, %1
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
