; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmap_common.c_pmap_has_managed_page.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmap_common.c_pmap_has_managed_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i64 }

@PE_state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@last_managed_page = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@pmap_phys_attributes = common dso_local global i32* null, align 8
@PHYS_MANAGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_has_managed_page(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @PE_state, i32 0, i32 0), align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %9, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @atop_32(i64 %14)
  store i64 %15, i64* %6, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  %23 = call i64 @atop_32(i64 %22)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* @last_managed_page, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp ule i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %8, align 4
  %33 = load i64, i64* %3, align 8
  store i64 %33, i64* %5, align 8
  br label %34

34:                                               ; preds = %65, %2
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %34
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %4, align 8
  %40 = icmp ule i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* @last_managed_page, align 8
  %44 = icmp ule i64 %42, %43
  br label %45

45:                                               ; preds = %41, %37, %34
  %46 = phi i1 [ false, %37 ], [ false, %34 ], [ %44, %41 ]
  br i1 %46, label %47, label %68

47:                                               ; preds = %45
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = icmp uge i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* %7, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %65

56:                                               ; preds = %51, %47
  %57 = load i32*, i32** @pmap_phys_attributes, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @PHYS_MANAGED, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 0, %62
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %56, %55
  %66 = load i64, i64* %5, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %5, align 8
  br label %34

68:                                               ; preds = %45
  %69 = load i32, i32* %8, align 4
  ret i32 %69
}

declare dso_local i64 @atop_32(i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
