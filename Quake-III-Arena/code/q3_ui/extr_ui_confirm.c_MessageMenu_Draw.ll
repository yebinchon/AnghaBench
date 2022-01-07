; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_confirm.c_MessageMenu_Draw.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_confirm.c_MessageMenu_Draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)*, i32, i32, i64* }

@ART_CONFIRM_FRAME = common dso_local global i32 0, align 4
@s_confirm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@color_red = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @MessageMenu_Draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MessageMenu_Draw() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @ART_CONFIRM_FRAME, align 4
  %4 = call i32 @UI_DrawNamedPic(i32 142, i32 118, i32 359, i32 256, i32 %3)
  store i32 188, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %24, %0
  %6 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_confirm, i32 0, i32 3), align 8
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i64, i64* %6, i64 %8
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %5
  %13 = load i32, i32* %2, align 4
  %14 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_confirm, i32 0, i32 3), align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_confirm, i32 0, i32 2), align 4
  %20 = load i32, i32* @color_red, align 4
  %21 = call i32 @UI_DrawProportionalString(i32 320, i32 %13, i64 %18, i32 %19, i32 %20)
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %22, 18
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %12
  %25 = load i32, i32* %1, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %1, align 4
  br label %5

27:                                               ; preds = %5
  %28 = call i32 @Menu_Draw(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_confirm, i32 0, i32 1))
  %29 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_confirm, i32 0, i32 0), align 8
  %30 = icmp ne i32 (...)* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_confirm, i32 0, i32 0), align 8
  %33 = call i32 (...) %32()
  br label %34

34:                                               ; preds = %31, %27
  ret void
}

declare dso_local i32 @UI_DrawNamedPic(i32, i32, i32, i32, i32) #1

declare dso_local i32 @UI_DrawProportionalString(i32, i32, i64, i32, i32) #1

declare dso_local i32 @Menu_Draw(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
