; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_teamorders.c_UI_TeamOrdersMenu_SetList.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_teamorders.c_UI_TeamOrdersMenu_SetList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, i8**, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64 }

@teamOrdersMenuInfo = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@NUM_CTF_ORDERS = common dso_local global i32 0, align 4
@ctfOrders = common dso_local global i8** null, align 8
@NUM_TEAM_ORDERS = common dso_local global i32 0, align 4
@teamOrders = common dso_local global i8** null, align 8
@PROP_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @UI_TeamOrdersMenu_SetList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_TeamOrdersMenu_SetList(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %4 [
    i32 130, label %5
    i32 129, label %10
    i32 128, label %14
  ]

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %4
  %6 = load i32, i32* %2, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @teamOrdersMenuInfo, i32 0, i32 1, i32 2, i32 0), align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @teamOrdersMenuInfo, i32 0, i32 0), align 8
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @teamOrdersMenuInfo, i32 0, i32 1, i32 0), align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @teamOrdersMenuInfo, i32 0, i32 2), align 8
  %9 = inttoptr i64 %8 to i8**
  store i8** %9, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @teamOrdersMenuInfo, i32 0, i32 1, i32 1), align 8
  br label %18

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @teamOrdersMenuInfo, i32 0, i32 1, i32 2, i32 0), align 8
  %12 = load i32, i32* @NUM_CTF_ORDERS, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @teamOrdersMenuInfo, i32 0, i32 1, i32 0), align 8
  %13 = load i8**, i8*** @ctfOrders, align 8
  store i8** %13, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @teamOrdersMenuInfo, i32 0, i32 1, i32 1), align 8
  br label %18

14:                                               ; preds = %1
  %15 = load i32, i32* %2, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @teamOrdersMenuInfo, i32 0, i32 1, i32 2, i32 0), align 8
  %16 = load i32, i32* @NUM_TEAM_ORDERS, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @teamOrdersMenuInfo, i32 0, i32 1, i32 0), align 8
  %17 = load i8**, i8*** @teamOrders, align 8
  store i8** %17, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @teamOrdersMenuInfo, i32 0, i32 1, i32 1), align 8
  br label %18

18:                                               ; preds = %14, %10, %5
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @teamOrdersMenuInfo, i32 0, i32 1, i32 2, i32 1), align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @teamOrdersMenuInfo, i32 0, i32 1, i32 0), align 8
  %21 = load i32, i32* @PROP_HEIGHT, align 4
  %22 = mul nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %19, %23
  store i64 %24, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @teamOrdersMenuInfo, i32 0, i32 1, i32 2, i32 2), align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
