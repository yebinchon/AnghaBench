; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_letterbox_image_into.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_letterbox_image_into.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @letterbox_image_into(i64 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_9__, align 4
  %6 = alloca %struct.TYPE_9__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__, align 4
  %12 = bitcast %struct.TYPE_9__* %5 to i64*
  store i64 %0, i64* %12, align 4
  %13 = bitcast %struct.TYPE_9__* %6 to i64*
  store i64 %3, i64* %13, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sitofp i32 %18 to float
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sitofp i32 %21 to float
  %23 = fdiv float %19, %22
  %24 = load i32, i32* %8, align 4
  %25 = sitofp i32 %24 to float
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sitofp i32 %27 to float
  %29 = fdiv float %25, %28
  %30 = fcmp olt float %23, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %4
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %9, align 4
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = mul nsw i32 %34, %35
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %36, %38
  store i32 %39, i32* %10, align 4
  br label %49

40:                                               ; preds = %4
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %10, align 4
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %8, align 4
  %45 = mul nsw i32 %43, %44
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sdiv i32 %45, %47
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %40, %31
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = bitcast %struct.TYPE_9__* %5 to i64*
  %53 = load i64, i64* %52, align 4
  %54 = call i64 @resize_image(i64 %53, i32 %50, i32 %51)
  %55 = bitcast %struct.TYPE_9__* %11 to i64*
  store i64 %54, i64* %55, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %9, align 4
  %58 = sub nsw i32 %56, %57
  %59 = sdiv i32 %58, 2
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %10, align 4
  %62 = sub nsw i32 %60, %61
  %63 = sdiv i32 %62, 2
  %64 = bitcast %struct.TYPE_9__* %11 to i64*
  %65 = load i64, i64* %64, align 4
  %66 = bitcast %struct.TYPE_9__* %6 to i64*
  %67 = load i64, i64* %66, align 4
  %68 = call i32 @embed_image(i64 %65, i64 %67, i32 %59, i32 %63)
  %69 = bitcast %struct.TYPE_9__* %11 to i64*
  %70 = load i64, i64* %69, align 4
  %71 = call i32 @free_image(i64 %70)
  ret void
}

declare dso_local i64 @resize_image(i64, i32, i32) #1

declare dso_local i32 @embed_image(i64, i64, i32, i32) #1

declare dso_local i32 @free_image(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
