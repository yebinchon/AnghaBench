; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_dataframe_core.c__ccv_cnnp_reducer_enum.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_dataframe_core.c__ccv_cnnp_reducer_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64, i32 (i64, i32, i8**, i32, i32*)*, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32, i8**, i8*, i32*)* @_ccv_cnnp_reducer_enum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_cnnp_reducer_enum(i32 %0, i32* %1, i32 %2, i8** %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_2__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %18, %struct.TYPE_2__** %13, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 5
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %6
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 6
  %29 = call i32* @ccv_cnnp_dataframe_iter_new(i32 %26, i32* %28, i32 1)
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 5
  store i32* %29, i32** %31, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 -1, i32* %33, align 8
  br label %34

34:                                               ; preds = %23, %6
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 5
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %14, align 8
  store i32 0, i32* %15, align 4
  br label %38

38:                                               ; preds = %118, %34
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %121

42:                                               ; preds = %38
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %15, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %46, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %42
  %54 = load i32*, i32** %14, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %59, %62
  %64 = call i32 @ccv_cnnp_dataframe_iter_set_cursor(i32* %54, i32 %63)
  br label %65

65:                                               ; preds = %53, %42
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %15, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i32*, i32** %14, align 8
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %12, align 8
  %78 = call i32 @ccv_cnnp_dataframe_iter_prefetch(i32* %73, i32 %76, i32* %77)
  store i32 0, i32* %16, align 4
  br label %79

79:                                               ; preds = %98, %65
  %80 = load i32, i32* %16, align 4
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %79
  %86 = load i32*, i32** %14, align 8
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* %16, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %89, %91
  %93 = load i32*, i32** %12, align 8
  %94 = call i64 @ccv_cnnp_dataframe_iter_next(i32* %86, i64 %92, i32 1, i32* %93)
  %95 = icmp ne i64 0, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %85
  br label %101

97:                                               ; preds = %85
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %16, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %16, align 4
  br label %79

101:                                              ; preds = %96, %79
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 4
  %104 = load i32 (i64, i32, i8**, i32, i32*)*, i32 (i64, i32, i8**, i32, i32*)** %103, align 8
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* %16, align 4
  %109 = load i8**, i8*** %10, align 8
  %110 = load i32, i32* %15, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i32*, i32** %12, align 8
  %117 = call i32 %104(i64 %107, i32 %108, i8** %112, i32 %115, i32* %116)
  br label %118

118:                                              ; preds = %101
  %119 = load i32, i32* %15, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %15, align 4
  br label %38

121:                                              ; preds = %38
  ret void
}

declare dso_local i32* @ccv_cnnp_dataframe_iter_new(i32, i32*, i32) #1

declare dso_local i32 @ccv_cnnp_dataframe_iter_set_cursor(i32*, i32) #1

declare dso_local i32 @ccv_cnnp_dataframe_iter_prefetch(i32*, i32, i32*) #1

declare dso_local i64 @ccv_cnnp_dataframe_iter_next(i32*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
