; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_setting_get_string_representation_uint_menu_xmb_animation_move_up_down.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_setting_get_string_representation_uint_menu_xmb_animation_move_up_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@.str = private unnamed_addr constant [16 x i8] c"Easing Out Quad\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Easing Out Expo\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i8*, i64)* @setting_get_string_representation_uint_menu_xmb_animation_move_up_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setting_get_string_representation_uint_menu_xmb_animation_move_up_down(%struct.TYPE_7__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = icmp ne %struct.TYPE_7__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  br label %25

10:                                               ; preds = %3
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %25 [
    i32 0, label %17
    i32 1, label %21
  ]

17:                                               ; preds = %10
  %18 = load i8*, i8** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @strlcpy(i8* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %19)
  br label %25

21:                                               ; preds = %10
  %22 = load i8*, i8** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @strlcpy(i8* %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %23)
  br label %25

25:                                               ; preds = %9, %10, %21, %17
  ret void
}

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
