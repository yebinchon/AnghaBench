; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_retroarch.c_dynamic_verify_hw_context.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_retroarch.c_dynamic_verify_hw_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i8* }

@configuration_settings = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"vulkan\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"gl\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"glcore\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"d3d11\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @dynamic_verify_hw_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dynamic_verify_hw_context(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @configuration_settings, align 8
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %8, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %9, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %50

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %48 [
    i32 128, label %23
    i32 132, label %29
    i32 131, label %29
    i32 130, label %29
    i32 133, label %29
    i32 129, label %29
    i32 134, label %39
  ]

23:                                               ; preds = %21
  %24 = load i8*, i8** %9, align 8
  %25 = call i32 @string_is_equal(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %50

28:                                               ; preds = %23
  br label %49

29:                                               ; preds = %21, %21, %21, %21, %21
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @string_is_equal(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @string_is_equal(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %50

38:                                               ; preds = %33, %29
  br label %49

39:                                               ; preds = %21
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @string_is_equal(i8* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 11
  br i1 %45, label %47, label %46

46:                                               ; preds = %43, %39
  store i32 0, i32* %4, align 4
  br label %50

47:                                               ; preds = %43
  br label %49

48:                                               ; preds = %21
  br label %49

49:                                               ; preds = %48, %47, %38, %28
  store i32 1, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %46, %37, %27, %20
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @string_is_equal(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
