; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rv9/extr_rv9_reader.c_rv9_get_frame_data.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rv9/extr_rv9_reader.c_rv9_get_frame_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, i64, i32*)* @rv9_get_frame_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rv9_get_frame_data(%struct.TYPE_8__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %7, align 8
  store i64 0, i64* %8, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %55

22:                                               ; preds = %3
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  %31 = call i64 @MIN(i64 %23, i64 %30)
  store i64 %31, i64* %9, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %48

34:                                               ; preds = %22
  %35 = load i32*, i32** %6, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @memcpy(i32* %35, i64 %42, i64 %43)
  %45 = load i64, i64* %9, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 %45
  store i32* %47, i32** %6, align 8
  br label %48

48:                                               ; preds = %34, %22
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %8, align 8
  %51 = add nsw i64 %50, %49
  store i64 %51, i64* %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %5, align 8
  %54 = sub nsw i64 %53, %52
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %48, %3
  %56 = load i64, i64* %5, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %55
  %59 = load i32*, i32** %6, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load i64, i64* %5, align 8
  %65 = call i64 @READ_BYTES(%struct.TYPE_8__* %62, i32* %63, i64 %64)
  %66 = load i64, i64* %8, align 8
  %67 = add nsw i64 %66, %65
  store i64 %67, i64* %8, align 8
  br label %74

68:                                               ; preds = %58
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %70 = load i64, i64* %5, align 8
  %71 = call i64 @SKIP_BYTES(%struct.TYPE_8__* %69, i64 %70)
  %72 = load i64, i64* %8, align 8
  %73 = add nsw i64 %72, %71
  store i64 %73, i64* %8, align 8
  br label %74

74:                                               ; preds = %68, %61
  br label %75

75:                                               ; preds = %74, %55
  %76 = load i64, i64* %8, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, %76
  store i64 %80, i64* %78, align 8
  %81 = load i64, i64* %8, align 8
  ret i64 %81
}

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @memcpy(i32*, i64, i64) #1

declare dso_local i64 @READ_BYTES(%struct.TYPE_8__*, i32*, i64) #1

declare dso_local i64 @SKIP_BYTES(%struct.TYPE_8__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
