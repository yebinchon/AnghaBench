; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_bits_get.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_bits_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32* }

@bitmask = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @bits_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bits_get(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 31
  %12 = sub nsw i32 32, %11
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %4, align 4
  %22 = sub nsw i32 %20, %21
  %23 = ashr i32 %19, %22
  %24 = load i32*, i32** @bitmask, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %23, %28
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, %30
  store i32 %34, i32* %32, align 8
  br label %123

35:                                               ; preds = %2
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** @bitmask, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %38, %43
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %6, align 4
  %47 = sub nsw i32 %45, %46
  %48 = shl i32 %44, %47
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %4, align 4
  %56 = sub nsw i32 %55, %54
  store i32 %56, i32* %4, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = ashr i32 %59, 3
  store i32 %60, i32* %7, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %67, 24
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 16
  %78 = or i32 %68, %77
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 2
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 %86, 8
  %88 = or i32 %78, %87
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 3
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %88, %96
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %4, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %122

102:                                              ; preds = %35
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %4, align 4
  %107 = sub nsw i32 32, %106
  %108 = ashr i32 %105, %107
  %109 = load i32*, i32** @bitmask, align 8
  %110 = load i32, i32* %4, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %108, %113
  %115 = load i32, i32* %5, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %4, align 4
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, %117
  store i32 %121, i32* %119, align 8
  br label %122

122:                                              ; preds = %102, %35
  br label %123

123:                                              ; preds = %122, %16
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
