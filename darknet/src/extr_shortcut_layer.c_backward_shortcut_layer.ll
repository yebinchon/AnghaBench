; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_shortcut_layer.c_backward_shortcut_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_shortcut_layer.c_backward_shortcut_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backward_shortcut_layer(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = bitcast %struct.TYPE_7__* %4 to { %struct.TYPE_6__*, i32 }*
  %6 = getelementptr inbounds { %struct.TYPE_6__*, i32 }, { %struct.TYPE_6__*, i32 }* %5, i32 0, i32 0
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  %7 = getelementptr inbounds { %struct.TYPE_6__*, i32 }, { %struct.TYPE_6__*, i32 }* %5, i32 0, i32 1
  store i32 %2, i32* %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 13
  %9 = load i32, i32* %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %11, %13
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 12
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 7
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @gradient_array(i32 %9, i32 %14, i32 %16, i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %21, %23
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 11
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 7
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @axpy_cpu(i32 %24, i32 %26, i32 %28, i32 1, i32 %30, i32 1)
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 10
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 9
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 8
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 7
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @shortcut_cpu(i32 %33, i32 %35, i32 %37, i32 %39, i32 %41, i32 %43, i32 %45, i32 %47, i32 1, i32 %49, i32 %56)
  ret void
}

declare dso_local i32 @gradient_array(i32, i32, i32, i32) #1

declare dso_local i32 @axpy_cpu(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @shortcut_cpu(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
