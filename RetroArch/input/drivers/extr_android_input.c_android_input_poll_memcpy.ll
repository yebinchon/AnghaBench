; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_android_input.c_android_input_poll_memcpy.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_android_input.c_android_input_poll_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32**, i32** }
%struct.android_app = type { i32**, i32** }

@g_android = common dso_local global i64 0, align 8
@DEFAULT_MAX_PADS = common dso_local global i32 0, align 4
@MAX_AXIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @android_input_poll_memcpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @android_input_poll_memcpy(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.android_app*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = load i64, i64* @g_android, align 8
  %7 = inttoptr i64 %6 to %struct.android_app*
  store %struct.android_app* %7, %struct.android_app** %5, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %72, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @DEFAULT_MAX_PADS, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %75

12:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %38, %12
  %14 = load i32, i32* %4, align 4
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %16, label %41

16:                                               ; preds = %13
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32**, i32*** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.android_app*, %struct.android_app** %5, align 8
  %29 = getelementptr inbounds %struct.android_app, %struct.android_app* %28, i32 0, i32 1
  %30 = load i32**, i32*** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %27, i32* %37, align 4
  br label %38

38:                                               ; preds = %16
  %39 = load i32, i32* %4, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %13

41:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %68, %41
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @MAX_AXIS, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %71

46:                                               ; preds = %42
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32**, i32*** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.android_app*, %struct.android_app** %5, align 8
  %59 = getelementptr inbounds %struct.android_app, %struct.android_app* %58, i32 0, i32 0
  %60 = load i32**, i32*** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %60, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %57, i32* %67, align 4
  br label %68

68:                                               ; preds = %46
  %69 = load i32, i32* %4, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %42

71:                                               ; preds = %42
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %3, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %8

75:                                               ; preds = %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
