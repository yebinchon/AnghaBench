; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_grey_mix_opts.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_grey_mix_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"grey_mix_opts()\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"AudioMixdown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i32)* @grey_mix_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grey_mix_opts(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = call i32 @g_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %9 = call %struct.TYPE_7__* @hb_mixdown_get_next(%struct.TYPE_7__* null)
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %7, align 8
  br label %10

10:                                               ; preds = %30, %3
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %12 = icmp ne %struct.TYPE_7__* %11, null
  br i1 %12, label %13, label %33

13:                                               ; preds = %10
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @hb_mixdown_is_supported(i32 %22, i32 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @grey_builder_combo_box_item(i32 %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %28)
  br label %30

30:                                               ; preds = %13
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %32 = call %struct.TYPE_7__* @hb_mixdown_get_next(%struct.TYPE_7__* %31)
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %7, align 8
  br label %10

33:                                               ; preds = %10
  ret void
}

declare dso_local i32 @g_debug(i8*) #1

declare dso_local %struct.TYPE_7__* @hb_mixdown_get_next(%struct.TYPE_7__*) #1

declare dso_local i32 @grey_builder_combo_box_item(i32, i8*, i32, i32) #1

declare dso_local i32 @hb_mixdown_is_supported(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
