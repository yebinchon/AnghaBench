; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_setting_add_special_callbacks.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_setting_add_special_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32, i8*, i8* }
%struct.TYPE_6__ = type { i32 }

@SD_FLAG_ALLOW_INPUT = common dso_local global i32 0, align 4
@setting_generic_action_ok_linefeed = common dso_local global i8* null, align 8
@setting_string_action_start_generic = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__**, %struct.TYPE_6__*, i32)* @setting_add_special_callbacks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setting_add_special_callbacks(%struct.TYPE_5__** %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__**, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @SD_FLAG_ALLOW_INPUT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %68

16:                                               ; preds = %3
  %17 = load i8*, i8** @setting_generic_action_ok_linefeed, align 8
  %18 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 4
  store i8* %17, i8** %23, align 8
  %24 = load i8*, i8** @setting_generic_action_ok_linefeed, align 8
  %25 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  store i8* %24, i8** %30, align 8
  %31 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %66 [
    i32 130, label %38
    i32 128, label %38
    i32 131, label %45
    i32 129, label %52
  ]

38:                                               ; preds = %16, %16
  %39 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  br label %67

45:                                               ; preds = %16
  %46 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  br label %67

52:                                               ; preds = %16
  %53 = load i32, i32* @setting_string_action_start_generic, align 4
  %54 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  store i32 %53, i32* %59, align 8
  %60 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store i32* null, i32** %65, align 8
  br label %67

66:                                               ; preds = %16
  br label %67

67:                                               ; preds = %66, %52, %45, %38
  br label %68

68:                                               ; preds = %67, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
