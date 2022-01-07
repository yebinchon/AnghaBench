; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_pullup_alloc_buffer.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_pullup_alloc_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pullup_context = type { i32, i32*, i32*, i32* }
%struct.pullup_buffer = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pullup_context*, %struct.pullup_buffer*)* @pullup_alloc_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pullup_alloc_buffer(%struct.pullup_context* %0, %struct.pullup_buffer* %1) #0 {
  %3 = alloca %struct.pullup_context*, align 8
  %4 = alloca %struct.pullup_buffer*, align 8
  %5 = alloca i32, align 4
  store %struct.pullup_context* %0, %struct.pullup_context** %3, align 8
  store %struct.pullup_buffer* %1, %struct.pullup_buffer** %4, align 8
  %6 = load %struct.pullup_buffer*, %struct.pullup_buffer** %4, align 8
  %7 = getelementptr inbounds %struct.pullup_buffer, %struct.pullup_buffer* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %93

11:                                               ; preds = %2
  %12 = load %struct.pullup_context*, %struct.pullup_context** %3, align 8
  %13 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i8* @calloc(i32 %14, i32 8)
  %16 = bitcast i8* %15 to i32*
  %17 = load %struct.pullup_buffer*, %struct.pullup_buffer** %4, align 8
  %18 = getelementptr inbounds %struct.pullup_buffer, %struct.pullup_buffer* %17, i32 0, i32 1
  store i32* %16, i32** %18, align 8
  %19 = load %struct.pullup_context*, %struct.pullup_context** %3, align 8
  %20 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i8* @calloc(i32 %21, i32 4)
  %23 = bitcast i8* %22 to i32*
  %24 = load %struct.pullup_buffer*, %struct.pullup_buffer** %4, align 8
  %25 = getelementptr inbounds %struct.pullup_buffer, %struct.pullup_buffer* %24, i32 0, i32 0
  store i32* %23, i32** %25, align 8
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %90, %11
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.pullup_context*, %struct.pullup_context** %3, align 8
  %29 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %93

32:                                               ; preds = %26
  %33 = load %struct.pullup_context*, %struct.pullup_context** %3, align 8
  %34 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.pullup_context*, %struct.pullup_context** %3, align 8
  %41 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %39, %46
  %48 = load %struct.pullup_buffer*, %struct.pullup_buffer** %4, align 8
  %49 = getelementptr inbounds %struct.pullup_buffer, %struct.pullup_buffer* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %47, i32* %53, align 4
  %54 = load %struct.pullup_buffer*, %struct.pullup_buffer** %4, align 8
  %55 = getelementptr inbounds %struct.pullup_buffer, %struct.pullup_buffer* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @malloc(i32 %60)
  %62 = load %struct.pullup_buffer*, %struct.pullup_buffer** %4, align 8
  %63 = getelementptr inbounds %struct.pullup_buffer, %struct.pullup_buffer* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %61, i32* %67, align 4
  %68 = load %struct.pullup_buffer*, %struct.pullup_buffer** %4, align 8
  %69 = getelementptr inbounds %struct.pullup_buffer, %struct.pullup_buffer* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.pullup_context*, %struct.pullup_context** %3, align 8
  %76 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.pullup_buffer*, %struct.pullup_buffer** %4, align 8
  %83 = getelementptr inbounds %struct.pullup_buffer, %struct.pullup_buffer* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @memset(i32 %74, i32 %81, i32 %88)
  br label %90

90:                                               ; preds = %32
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %5, align 4
  br label %26

93:                                               ; preds = %10, %26
  ret void
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
