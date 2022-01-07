; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/src/security/extr_security1.c_sec1_session_setup.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/src/security/extr_security1.c_sec1_session_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Empty session data\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Invalid security message type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_9__*, %struct.TYPE_9__*, i32*)* @sec1_session_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sec1_session_setup(i32* %0, i32 %1, %struct.TYPE_9__* %2, %struct.TYPE_9__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %12, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %19 = icmp ne %struct.TYPE_10__* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @TAG, align 4
  %22 = call i32 @ESP_LOGE(i32 %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %23, i32* %6, align 4
  br label %47

24:                                               ; preds = %5
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %41 [
    i32 129, label %28
    i32 128, label %35
  ]

28:                                               ; preds = %24
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 @handle_session_command0(i32* %29, i32 %30, %struct.TYPE_9__* %31, %struct.TYPE_9__* %32, i32* %33)
  store i32 %34, i32* %13, align 4
  br label %45

35:                                               ; preds = %24
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %40 = call i32 @handle_session_command1(i32* %36, i32 %37, %struct.TYPE_9__* %38, %struct.TYPE_9__* %39)
  store i32 %40, i32* %13, align 4
  br label %45

41:                                               ; preds = %24
  %42 = load i32, i32* @TAG, align 4
  %43 = call i32 @ESP_LOGE(i32 %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %44, i32* %13, align 4
  br label %45

45:                                               ; preds = %41, %35, %28
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %45, %20
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @handle_session_command0(i32*, i32, %struct.TYPE_9__*, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @handle_session_command1(i32*, i32, %struct.TYPE_9__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
