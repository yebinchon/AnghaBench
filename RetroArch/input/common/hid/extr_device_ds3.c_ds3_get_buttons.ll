; ModuleID = '/home/carl/AnghaBench/RetroArch/input/common/hid/extr_device_ds3.c_ds3_get_buttons.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/common/hid/extr_device_ds3.c_ds3_get_buttons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@RARCH_MENU_TOGGLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @ds3_get_buttons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds3_get_buttons(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %5, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @BITS_COPY16_PTR(i32* %11, i32 %14)
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 65536
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %10
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @RARCH_MENU_TOGGLE, align 4
  %24 = call i32 @BIT256_SET_PTR(i32* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %10
  br label %29

26:                                               ; preds = %2
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @BIT256_CLEAR_ALL_PTR(i32* %27)
  br label %29

29:                                               ; preds = %26, %25
  ret void
}

declare dso_local i32 @BITS_COPY16_PTR(i32*, i32) #1

declare dso_local i32 @BIT256_SET_PTR(i32*, i32) #1

declare dso_local i32 @BIT256_CLEAR_ALL_PTR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
