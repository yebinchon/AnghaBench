; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_pipe.c_expand_pipespace.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_pipe.c_expand_pipespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe*, i32)* @expand_pipespace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_pipespace(%struct.pipe* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pipe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pipe, align 8
  %7 = alloca %struct.pipe, align 8
  %8 = alloca i32, align 4
  store %struct.pipe* %0, %struct.pipe** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = getelementptr inbounds %struct.pipe, %struct.pipe* %6, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 4
  store i32* null, i32** %10, align 8
  %11 = load %struct.pipe*, %struct.pipe** %4, align 8
  %12 = getelementptr inbounds %struct.pipe, %struct.pipe* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp uge i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %108

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @pipespace(%struct.pipe* %6, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %108

25:                                               ; preds = %18
  %26 = load %struct.pipe*, %struct.pipe** %4, align 8
  %27 = getelementptr inbounds %struct.pipe, %struct.pipe* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds %struct.pipe, %struct.pipe* %7, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 4
  store i32* %29, i32** %31, align 8
  %32 = load %struct.pipe*, %struct.pipe** %4, align 8
  %33 = getelementptr inbounds %struct.pipe, %struct.pipe* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.pipe, %struct.pipe* %7, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = getelementptr inbounds %struct.pipe, %struct.pipe* %6, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.pipe*, %struct.pipe** %4, align 8
  %42 = getelementptr inbounds %struct.pipe, %struct.pipe* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.pipe*, %struct.pipe** %4, align 8
  %46 = getelementptr inbounds %struct.pipe, %struct.pipe* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @memcpy(i32* %40, i32* %44, i32 %48)
  %50 = load %struct.pipe*, %struct.pipe** %4, align 8
  %51 = getelementptr inbounds %struct.pipe, %struct.pipe* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %94

55:                                               ; preds = %25
  %56 = load %struct.pipe*, %struct.pipe** %4, align 8
  %57 = getelementptr inbounds %struct.pipe, %struct.pipe* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.pipe*, %struct.pipe** %4, align 8
  %61 = getelementptr inbounds %struct.pipe, %struct.pipe* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp sle i64 %59, %63
  br i1 %64, label %65, label %94

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.pipe, %struct.pipe* %6, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 4
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.pipe*, %struct.pipe** %4, align 8
  %70 = getelementptr inbounds %struct.pipe, %struct.pipe* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %68, i64 %73
  %75 = load %struct.pipe*, %struct.pipe** %4, align 8
  %76 = getelementptr inbounds %struct.pipe, %struct.pipe* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.pipe*, %struct.pipe** %4, align 8
  %80 = getelementptr inbounds %struct.pipe, %struct.pipe* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @memcpy(i32* %74, i32* %78, i32 %82)
  %84 = load %struct.pipe*, %struct.pipe** %4, align 8
  %85 = getelementptr inbounds %struct.pipe, %struct.pipe* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = zext i32 %87 to i64
  %89 = load %struct.pipe*, %struct.pipe** %4, align 8
  %90 = getelementptr inbounds %struct.pipe, %struct.pipe* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, %88
  store i64 %93, i64* %91, align 8
  br label %94

94:                                               ; preds = %65, %55, %25
  %95 = getelementptr inbounds %struct.pipe, %struct.pipe* %6, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 4
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.pipe*, %struct.pipe** %4, align 8
  %99 = getelementptr inbounds %struct.pipe, %struct.pipe* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 4
  store i32* %97, i32** %100, align 8
  %101 = getelementptr inbounds %struct.pipe, %struct.pipe* %6, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.pipe*, %struct.pipe** %4, align 8
  %105 = getelementptr inbounds %struct.pipe, %struct.pipe* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 8
  %107 = call i32 @pipe_free_kmem(%struct.pipe* %7)
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %94, %23, %17
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @pipespace(%struct.pipe*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @pipe_free_kmem(%struct.pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
