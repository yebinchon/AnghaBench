; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_tld.c_ccv_tld_free.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_tld.c_ccv_tld_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__*, %struct.TYPE_7__**, %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccv_tld_free(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = call i32 @ccfree(%struct.TYPE_6__* %6)
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = call i32 @ccfree(%struct.TYPE_6__* %10)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %33, %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %16, i64 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %13, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %12
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %25, i64 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @ccv_array_get(%struct.TYPE_7__* %27, i32 %28)
  %30 = inttoptr i64 %29 to i32**
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @ccv_matrix_free(i32* %31)
  br label %33

33:                                               ; preds = %22
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %12

36:                                               ; preds = %12
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %39, i64 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = call i32 @ccv_array_free(%struct.TYPE_7__* %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %64, %36
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %47, i64 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %44, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %43
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %56, i64 1
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = call i64 @ccv_array_get(%struct.TYPE_7__* %58, i32 %59)
  %61 = inttoptr i64 %60 to i32**
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @ccv_matrix_free(i32* %62)
  br label %64

64:                                               ; preds = %53
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %43

67:                                               ; preds = %43
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %70, i64 1
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = call i32 @ccv_array_free(%struct.TYPE_7__* %72)
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = call i32 @ccv_array_free(%struct.TYPE_7__* %76)
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @ccv_ferns_free(i32 %80)
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %83 = call i32 @ccfree(%struct.TYPE_6__* %82)
  ret void
}

declare dso_local i32 @ccfree(%struct.TYPE_6__*) #1

declare dso_local i32 @ccv_matrix_free(i32*) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ccv_array_free(%struct.TYPE_7__*) #1

declare dso_local i32 @ccv_ferns_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
