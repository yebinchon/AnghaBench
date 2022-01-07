; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_android_input.c_android_input_set_rumble.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_android_input.c_android_input_set_rumble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@g_android = common dso_local global %struct.TYPE_11__* null, align 8
@android_input_set_rumble.last_strength_strong = internal global i32 0, align 4
@android_input_set_rumble.last_strength_weak = internal global i32 0, align 4
@android_input_set_rumble.last_strength = internal global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @android_input_set_rumble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @android_input_set_rumble(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = call %struct.TYPE_9__* (...) @config_get_ptr()
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %10, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** @g_android, align 8
  %15 = icmp ne %struct.TYPE_11__* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** @g_android, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %4
  store i32 0, i32* %5, align 4
  br label %68

22:                                               ; preds = %16
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %68

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @android_input_set_rumble_internal(i32 %33, i32* @android_input_set_rumble.last_strength_strong, i32* @android_input_set_rumble.last_strength_weak, i32* @android_input_set_rumble.last_strength, i32 -1, i32 %34)
  store i32 1, i32* %5, align 4
  br label %68

36:                                               ; preds = %22
  %37 = load i8*, i8** %6, align 8
  %38 = bitcast i8* %37 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %11, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %40 = icmp ne %struct.TYPE_10__* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i64 %46
  br label %49

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48, %41
  %50 = phi %struct.TYPE_8__* [ %47, %41 ], [ null, %48 ]
  store %struct.TYPE_8__* %50, %struct.TYPE_8__** %12, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %52 = icmp ne %struct.TYPE_8__* %51, null
  br i1 %52, label %53, label %66

53:                                               ; preds = %49
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @android_input_set_rumble_internal(i32 %54, i32* %56, i32* %58, i32* %60, i32 %63, i32 %64)
  store i32 1, i32* %5, align 4
  br label %68

66:                                               ; preds = %49
  br label %67

67:                                               ; preds = %66
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %67, %53, %32, %31, %21
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local %struct.TYPE_9__* @config_get_ptr(...) #1

declare dso_local i32 @android_input_set_rumble_internal(i32, i32*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
