; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_pullup_pack_frame.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_pullup_pack_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pullup_context = type { i32 }
%struct.pullup_frame = type { i32, %struct.TYPE_5__**, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pullup_pack_frame(%struct.pullup_context* %0, %struct.pullup_frame* %1) #0 {
  %3 = alloca %struct.pullup_context*, align 8
  %4 = alloca %struct.pullup_frame*, align 8
  %5 = alloca i32, align 4
  store %struct.pullup_context* %0, %struct.pullup_context** %3, align 8
  store %struct.pullup_frame* %1, %struct.pullup_frame** %4, align 8
  %6 = load %struct.pullup_frame*, %struct.pullup_frame** %4, align 8
  %7 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %6, i32 0, i32 2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = icmp ne %struct.TYPE_5__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %95

11:                                               ; preds = %2
  %12 = load %struct.pullup_frame*, %struct.pullup_frame** %4, align 8
  %13 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %95

17:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %67, %17
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %21, label %70

21:                                               ; preds = %18
  %22 = load %struct.pullup_frame*, %struct.pullup_frame** %4, align 8
  %23 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %24, i64 %26
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = xor i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %30, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %21
  br label %67

38:                                               ; preds = %21
  %39 = load %struct.pullup_frame*, %struct.pullup_frame** %4, align 8
  %40 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %41, i64 %43
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load %struct.pullup_frame*, %struct.pullup_frame** %4, align 8
  %47 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %46, i32 0, i32 2
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %47, align 8
  %48 = load %struct.pullup_frame*, %struct.pullup_frame** %4, align 8
  %49 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %48, i32 0, i32 2
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = call i32 @pullup_lock_buffer(%struct.TYPE_5__* %50, i32 2)
  %52 = load %struct.pullup_context*, %struct.pullup_context** %3, align 8
  %53 = load %struct.pullup_frame*, %struct.pullup_frame** %4, align 8
  %54 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %53, i32 0, i32 2
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load %struct.pullup_frame*, %struct.pullup_frame** %4, align 8
  %57 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %56, i32 0, i32 1
  %58 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = xor i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %58, i64 %61
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = xor i32 %64, 1
  %66 = call i32 @pullup_copy_field(%struct.pullup_context* %52, %struct.TYPE_5__* %55, %struct.TYPE_5__* %63, i32 %65)
  br label %95

67:                                               ; preds = %37
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %18

70:                                               ; preds = %18
  %71 = load %struct.pullup_context*, %struct.pullup_context** %3, align 8
  %72 = call %struct.TYPE_5__* @pullup_get_buffer(%struct.pullup_context* %71, i32 2)
  %73 = load %struct.pullup_frame*, %struct.pullup_frame** %4, align 8
  %74 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %73, i32 0, i32 2
  store %struct.TYPE_5__* %72, %struct.TYPE_5__** %74, align 8
  %75 = load %struct.pullup_context*, %struct.pullup_context** %3, align 8
  %76 = load %struct.pullup_frame*, %struct.pullup_frame** %4, align 8
  %77 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %76, i32 0, i32 2
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = load %struct.pullup_frame*, %struct.pullup_frame** %4, align 8
  %80 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %79, i32 0, i32 1
  %81 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %81, i64 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = call i32 @pullup_copy_field(%struct.pullup_context* %75, %struct.TYPE_5__* %78, %struct.TYPE_5__* %83, i32 0)
  %85 = load %struct.pullup_context*, %struct.pullup_context** %3, align 8
  %86 = load %struct.pullup_frame*, %struct.pullup_frame** %4, align 8
  %87 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %86, i32 0, i32 2
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = load %struct.pullup_frame*, %struct.pullup_frame** %4, align 8
  %90 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %89, i32 0, i32 1
  %91 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %91, i64 1
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = call i32 @pullup_copy_field(%struct.pullup_context* %85, %struct.TYPE_5__* %88, %struct.TYPE_5__* %93, i32 1)
  br label %95

95:                                               ; preds = %70, %38, %16, %10
  ret void
}

declare dso_local i32 @pullup_lock_buffer(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @pullup_copy_field(%struct.pullup_context*, %struct.TYPE_5__*, %struct.TYPE_5__*, i32) #1

declare dso_local %struct.TYPE_5__* @pullup_get_buffer(%struct.pullup_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
