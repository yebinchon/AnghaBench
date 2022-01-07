; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngcp.c_advance_opt.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngcp.c_advance_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display = type { i32, i32, i32, %struct.TYPE_2__*, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.display*, i64, i32)* @advance_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @advance_opt(%struct.display* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.display*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.display* %0, %struct.display** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.display*, %struct.display** %5, align 8
  %11 = getelementptr inbounds %struct.display, %struct.display* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 8
  store i32 %12, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.display*, %struct.display** %5, align 8
  %16 = getelementptr inbounds %struct.display, %struct.display* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp uge i32 %14, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.display*, %struct.display** %5, align 8
  %23 = getelementptr inbounds %struct.display, %struct.display* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp uge i32 %21, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load %struct.display*, %struct.display** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i64, i64* %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @push_opt(%struct.display* %27, i32 %28, i64 %29, i32 %30)
  store i32 1, i32* %4, align 4
  br label %130

32:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  %33 = load %struct.display*, %struct.display** %5, align 8
  %34 = getelementptr inbounds %struct.display, %struct.display* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp ugt i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.display*, %struct.display** %5, align 8
  %39 = getelementptr inbounds %struct.display, %struct.display* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MAX_SIZE, align 4
  %42 = icmp ult i32 %40, %41
  br label %43

43:                                               ; preds = %37, %32
  %44 = phi i1 [ false, %32 ], [ %42, %37 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.display*, %struct.display** %5, align 8
  %48 = getelementptr inbounds %struct.display, %struct.display* %47, i32 0, i32 3
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.display*, %struct.display** %5, align 8
  %56 = getelementptr inbounds %struct.display, %struct.display* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp ugt i32 %54, %57
  br i1 %58, label %77, label %59

59:                                               ; preds = %43
  %60 = load %struct.display*, %struct.display** %5, align 8
  %61 = getelementptr inbounds %struct.display, %struct.display* %60, i32 0, i32 3
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.display*, %struct.display** %5, align 8
  %69 = getelementptr inbounds %struct.display, %struct.display* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %67, %70
  br i1 %71, label %72, label %101

72:                                               ; preds = %59
  %73 = load %struct.display*, %struct.display** %5, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i64 @compare_option(%struct.display* %73, i32 %74)
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %101

77:                                               ; preds = %72, %43
  %78 = load %struct.display*, %struct.display** %5, align 8
  %79 = getelementptr inbounds %struct.display, %struct.display* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.display*, %struct.display** %5, align 8
  %82 = getelementptr inbounds %struct.display, %struct.display* %81, i32 0, i32 3
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i32 %80, i32* %87, align 4
  %88 = load %struct.display*, %struct.display** %5, align 8
  %89 = getelementptr inbounds %struct.display, %struct.display* %88, i32 0, i32 4
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* %6, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.display*, %struct.display** %5, align 8
  %95 = getelementptr inbounds %struct.display, %struct.display* %94, i32 0, i32 3
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  store i32 %93, i32* %100, align 4
  br label %101

101:                                              ; preds = %77, %72, %59
  %102 = load i32, i32* %8, align 4
  %103 = add i32 %102, 1
  %104 = load %struct.display*, %struct.display** %5, align 8
  %105 = getelementptr inbounds %struct.display, %struct.display* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp uge i32 %103, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %101
  %109 = load %struct.display*, %struct.display** %5, align 8
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @next_opt(%struct.display* %109, i32 %110)
  store i32 1, i32* %9, align 4
  br label %128

112:                                              ; preds = %101
  %113 = load %struct.display*, %struct.display** %5, align 8
  %114 = getelementptr inbounds %struct.display, %struct.display* %113, i32 0, i32 3
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %112
  %123 = load i32, i32* %8, align 4
  %124 = add i32 %123, 1
  %125 = load %struct.display*, %struct.display** %5, align 8
  %126 = getelementptr inbounds %struct.display, %struct.display* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  br label %127

127:                                              ; preds = %122, %112
  br label %128

128:                                              ; preds = %127, %108
  %129 = load i32, i32* %9, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %128, %26
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @push_opt(%struct.display*, i32, i64, i32) #1

declare dso_local i64 @compare_option(%struct.display*, i32) #1

declare dso_local i32 @next_opt(%struct.display*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
