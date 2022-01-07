; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_operate.c_create_transfer.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_operate.c_create_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GlobalConfig = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.TYPE_2__* }

@CURLE_OK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.GlobalConfig*, i32*, i32*)* @create_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_transfer(%struct.GlobalConfig* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.GlobalConfig*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.GlobalConfig* %0, %struct.GlobalConfig** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* @CURLE_OK, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* @FALSE, align 4
  %10 = load i32*, i32** %6, align 8
  store i32 %9, i32* %10, align 4
  br label %11

11:                                               ; preds = %30, %3
  %12 = load %struct.GlobalConfig*, %struct.GlobalConfig** %4, align 8
  %13 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %39

16:                                               ; preds = %11
  %17 = load %struct.GlobalConfig*, %struct.GlobalConfig** %4, align 8
  %18 = load %struct.GlobalConfig*, %struct.GlobalConfig** %4, align 8
  %19 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @transfer_per_config(%struct.GlobalConfig* %17, %struct.TYPE_2__* %20, i32* %21, i32* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %16
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = load %struct.GlobalConfig*, %struct.GlobalConfig** %4, align 8
  %32 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load %struct.GlobalConfig*, %struct.GlobalConfig** %4, align 8
  %37 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %36, i32 0, i32 0
  store %struct.TYPE_2__* %35, %struct.TYPE_2__** %37, align 8
  br label %11

38:                                               ; preds = %26, %16
  br label %39

39:                                               ; preds = %38, %11
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

declare dso_local i32 @transfer_per_config(%struct.GlobalConfig*, %struct.TYPE_2__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
