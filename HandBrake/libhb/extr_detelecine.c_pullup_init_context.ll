; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_pullup_init_context.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_pullup_init_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pullup_context = type { i32, i32, i32, i32*, i32, i32, i32, i32*, i32, i32, i32, i32*, i32*, i32, i64, i32, i32, i32, %struct.TYPE_2__*, i32, i8* }
%struct.TYPE_2__ = type { i8* }

@PULLUP_FMT_Y = common dso_local global i64 0, align 8
@pullup_diff_y = common dso_local global i32 0, align 4
@pullup_licomb_y = common dso_local global i32 0, align 4
@pullup_var_y = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pullup_init_context(%struct.pullup_context* %0) #0 {
  %2 = alloca %struct.pullup_context*, align 8
  %3 = alloca i32, align 4
  store %struct.pullup_context* %0, %struct.pullup_context** %2, align 8
  %4 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %5 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  %7 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %8 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %9, 10
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %13 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %12, i32 0, i32 1
  store i32 10, i32* %13, align 4
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %16 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @calloc(i32 %17, i32 4)
  %19 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %20 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %19, i32 0, i32 20
  store i8* %18, i8** %20, align 8
  %21 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %22 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %29 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %32 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %30, %33
  %35 = shl i32 %34, 3
  %36 = sub nsw i32 %27, %35
  %37 = ashr i32 %36, 3
  %38 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %39 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %41 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %40, i32 0, i32 7
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %48 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %51 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %50, i32 0, i32 9
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %49, %52
  %54 = shl i32 %53, 1
  %55 = sub nsw i32 %46, %54
  %56 = ashr i32 %55, 3
  %57 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %58 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %57, i32 0, i32 6
  store i32 %56, i32* %58, align 8
  %59 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %60 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %63 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %62, i32 0, i32 11
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %61, %68
  %70 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %71 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 8
  %73 = shl i32 %72, 1
  %74 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %75 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %74, i32 0, i32 12
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %73, %80
  %82 = add nsw i32 %69, %81
  %83 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %84 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %83, i32 0, i32 10
  store i32 %82, i32* %84, align 8
  %85 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %86 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %89 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  %91 = mul nsw i32 %87, %90
  %92 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %93 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %92, i32 0, i32 13
  store i32 %91, i32* %93, align 8
  %94 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %95 = call i32 @pullup_make_field_queue(%struct.pullup_context* %94, i32 8)
  %96 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %97 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %96, i32 0, i32 19
  store i32 %95, i32* %97, align 8
  %98 = call i8* @calloc(i32 1, i32 4)
  %99 = bitcast i8* %98 to %struct.TYPE_2__*
  %100 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %101 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %100, i32 0, i32 18
  store %struct.TYPE_2__* %99, %struct.TYPE_2__** %101, align 8
  %102 = call i8* @calloc(i32 3, i32 8)
  %103 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %104 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %103, i32 0, i32 18
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  store i8* %102, i8** %106, align 8
  %107 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %108 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %107, i32 0, i32 14
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @PULLUP_FMT_Y, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %14
  %113 = load i32, i32* @pullup_diff_y, align 4
  %114 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %115 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %114, i32 0, i32 17
  store i32 %113, i32* %115, align 8
  %116 = load i32, i32* @pullup_licomb_y, align 4
  %117 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %118 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %117, i32 0, i32 16
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* @pullup_var_y, align 4
  %120 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %121 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %120, i32 0, i32 15
  store i32 %119, i32* %121, align 8
  br label %122

122:                                              ; preds = %112, %14
  ret void
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @pullup_make_field_queue(%struct.pullup_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
