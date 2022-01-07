; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..configuration.c_populate_settings_size.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..configuration.c_populate_settings_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_size_setting = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"rewind_buffer_size\00", align 1
@DEFAULT_REWIND_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_size_setting* (%struct.TYPE_5__*, i32*)* @populate_settings_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_size_setting* @populate_settings_size(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.config_size_setting*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.config_size_setting*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 1
  %11 = call i64 @calloc(i32 %10, i32 4)
  %12 = inttoptr i64 %11 to %struct.config_size_setting*
  store %struct.config_size_setting* %12, %struct.config_size_setting** %7, align 8
  %13 = load %struct.config_size_setting*, %struct.config_size_setting** %7, align 8
  %14 = icmp ne %struct.config_size_setting* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.config_size_setting* null, %struct.config_size_setting** %3, align 8
  br label %25

16:                                               ; preds = %2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* @DEFAULT_REWIND_BUFFER_SIZE, align 4
  %21 = call i32 @SETTING_SIZE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %19, i32 1, i32 %20, i32 0)
  %22 = load i32, i32* %6, align 4
  %23 = load i32*, i32** %5, align 8
  store i32 %22, i32* %23, align 4
  %24 = load %struct.config_size_setting*, %struct.config_size_setting** %7, align 8
  store %struct.config_size_setting* %24, %struct.config_size_setting** %3, align 8
  br label %25

25:                                               ; preds = %16, %15
  %26 = load %struct.config_size_setting*, %struct.config_size_setting** %3, align 8
  ret %struct.config_size_setting* %26
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @SETTING_SIZE(i8*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
