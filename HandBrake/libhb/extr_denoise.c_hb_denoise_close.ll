; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_denoise.c_hb_denoise_close.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_denoise.c_hb_denoise_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_5__**, %struct.TYPE_5__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @hb_denoise_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hb_denoise_close(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = icmp ne %struct.TYPE_5__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %81

10:                                               ; preds = %1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = call i32 @free(%struct.TYPE_5__* %18)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %21, align 8
  br label %22

22:                                               ; preds = %15, %10
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %25, i64 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = icmp ne %struct.TYPE_5__* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %22
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %32, i64 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = call i32 @free(%struct.TYPE_5__* %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %38, i64 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %39, align 8
  br label %40

40:                                               ; preds = %29, %22
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %43, i64 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = icmp ne %struct.TYPE_5__* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %40
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %50, i64 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = call i32 @free(%struct.TYPE_5__* %52)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %56, i64 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %57, align 8
  br label %58

58:                                               ; preds = %47, %40
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %61, i64 2
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = icmp ne %struct.TYPE_5__* %63, null
  br i1 %64, label %65, label %76

65:                                               ; preds = %58
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %68, i64 2
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = call i32 @free(%struct.TYPE_5__* %70)
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %74, i64 2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %75, align 8
  br label %76

76:                                               ; preds = %65, %58
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %78 = call i32 @free(%struct.TYPE_5__* %77)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %80, align 8
  br label %81

81:                                               ; preds = %76, %9
  ret void
}

declare dso_local i32 @free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
