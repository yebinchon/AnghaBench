; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_win32_init.c_freeLibraries.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_win32_init.c_freeLibraries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_14__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_14__ = type { i64 }

@_glfw = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @freeLibraries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freeLibraries() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 5, i32 0), align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 5, i32 0), align 8
  %5 = call i32 @FreeLibrary(i64 %4)
  br label %6

6:                                                ; preds = %3, %0
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 4, i32 0), align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 4, i32 0), align 8
  %11 = call i32 @FreeLibrary(i64 %10)
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 3, i32 0), align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 3, i32 0), align 8
  %17 = call i32 @FreeLibrary(i64 %16)
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 2, i32 0), align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 2, i32 0), align 8
  %23 = call i32 @FreeLibrary(i64 %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 1, i32 0), align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 1, i32 0), align 8
  %29 = call i32 @FreeLibrary(i64 %28)
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 0, i32 0), align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 0, i32 0), align 8
  %35 = call i32 @FreeLibrary(i64 %34)
  br label %36

36:                                               ; preds = %33, %30
  ret void
}

declare dso_local i32 @FreeLibrary(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
