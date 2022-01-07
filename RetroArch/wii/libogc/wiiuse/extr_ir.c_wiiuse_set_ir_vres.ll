; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_ir.c_wiiuse_set_ir_vres.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_ir.c_wiiuse_set_ir_vres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_t = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wiiuse_set_ir_vres(%struct.wiimote_t* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wiimote_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wiimote_t* %0, %struct.wiimote_t** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %8 = icmp ne %struct.wiimote_t* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  br label %25

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = sub i32 %11, 1
  %13 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %14 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %12, i32* %17, align 4
  %18 = load i32, i32* %6, align 4
  %19 = sub i32 %18, 1
  %20 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %21 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 %19, i32* %24, align 4
  br label %25

25:                                               ; preds = %10, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
