; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_pullup_copy_field.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_pullup_copy_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pullup_context = type { i32, i32*, i32* }
%struct.pullup_buffer = type { i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pullup_context*, %struct.pullup_buffer*, %struct.pullup_buffer*, i32)* @pullup_copy_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pullup_copy_field(%struct.pullup_context* %0, %struct.pullup_buffer* %1, %struct.pullup_buffer* %2, i32 %3) #0 {
  %5 = alloca %struct.pullup_context*, align 8
  %6 = alloca %struct.pullup_buffer*, align 8
  %7 = alloca %struct.pullup_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.pullup_context* %0, %struct.pullup_context** %5, align 8
  store %struct.pullup_buffer* %1, %struct.pullup_buffer** %6, align 8
  store %struct.pullup_buffer* %2, %struct.pullup_buffer** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %104, %4
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.pullup_context*, %struct.pullup_context** %5, align 8
  %16 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %107

19:                                               ; preds = %13
  %20 = load %struct.pullup_buffer*, %struct.pullup_buffer** %7, align 8
  %21 = getelementptr inbounds %struct.pullup_buffer, %struct.pullup_buffer* %20, i32 0, i32 0
  %22 = load i8**, i8*** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.pullup_context*, %struct.pullup_context** %5, align 8
  %29 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %27, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %26, i64 %36
  store i8* %37, i8** %12, align 8
  %38 = load %struct.pullup_buffer*, %struct.pullup_buffer** %6, align 8
  %39 = getelementptr inbounds %struct.pullup_buffer, %struct.pullup_buffer* %38, i32 0, i32 0
  %40 = load i8**, i8*** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.pullup_context*, %struct.pullup_context** %5, align 8
  %47 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %45, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %44, i64 %54
  store i8* %55, i8** %11, align 8
  %56 = load %struct.pullup_context*, %struct.pullup_context** %5, align 8
  %57 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %100, %19
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %103

67:                                               ; preds = %64
  %68 = load i8*, i8** %11, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = load %struct.pullup_context*, %struct.pullup_context** %5, align 8
  %71 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @memcpy(i8* %68, i8* %69, i32 %76)
  %78 = load %struct.pullup_context*, %struct.pullup_context** %5, align 8
  %79 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 1
  %86 = load i8*, i8** %12, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8* %88, i8** %12, align 8
  %89 = load %struct.pullup_context*, %struct.pullup_context** %5, align 8
  %90 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 1
  %97 = load i8*, i8** %11, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %11, align 8
  br label %100

100:                                              ; preds = %67
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %10, align 4
  br label %64

103:                                              ; preds = %64
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %9, align 4
  br label %13

107:                                              ; preds = %13
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
