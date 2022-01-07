; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/gp2x/extr_in_gp2x.c_in_gp2x_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/gp2x/extr_in_gp2x.c_in_gp2x_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_default_bind = type { i32 }

@gp2x_dev_id = common dso_local global i64 0, align 8
@GP2X_DEV_WIZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"MENU\00", align 1
@in_gp2x_keys = common dso_local global i8** null, align 8
@GP2X_BTN_START = common dso_local global i64 0, align 8
@in_gp2x_combo_acts = common dso_local global i64 0, align 8
@in_gp2x_combo_keys = common dso_local global i64 0, align 8
@in_gp2x_drv = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in_gp2x_init(%struct.in_default_bind* %0) #0 {
  %2 = alloca %struct.in_default_bind*, align 8
  store %struct.in_default_bind* %0, %struct.in_default_bind** %2, align 8
  %3 = load i64, i64* @gp2x_dev_id, align 8
  %4 = load i64, i64* @GP2X_DEV_WIZ, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i8**, i8*** @in_gp2x_keys, align 8
  %8 = load i64, i64* @GP2X_BTN_START, align 8
  %9 = getelementptr inbounds i8*, i8** %7, i64 %8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %10

10:                                               ; preds = %6, %1
  store i64 0, i64* @in_gp2x_combo_acts, align 8
  store i64 0, i64* @in_gp2x_combo_keys, align 8
  %11 = load %struct.in_default_bind*, %struct.in_default_bind** %2, align 8
  %12 = call i32 @in_register_driver(i32* @in_gp2x_drv, %struct.in_default_bind* %11, i32* null)
  ret void
}

declare dso_local i32 @in_register_driver(i32*, %struct.in_default_bind*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
