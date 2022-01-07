; ModuleID = '/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_wii.c_wiimote_send.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_wii.c_wiimote_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connect_wii_wiimote_t = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32*, i32)* }

@WM_SET_REPORT = common dso_local global i32 0, align 4
@WM_BT_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connect_wii_wiimote_t*, i32, i32*, i32)* @wiimote_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wiimote_send(%struct.connect_wii_wiimote_t* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.connect_wii_wiimote_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [32 x i32], align 16
  store %struct.connect_wii_wiimote_t* %0, %struct.connect_wii_wiimote_t** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = bitcast [32 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 128, i1 false)
  %11 = load i32, i32* @WM_SET_REPORT, align 4
  %12 = load i32, i32* @WM_BT_OUTPUT, align 4
  %13 = or i32 %11, %12
  %14 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 0
  store i32 %13, i32* %14, align 16
  %15 = load i32, i32* %6, align 4
  %16 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 1
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 0
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @memcpy(i32* %18, i32* %19, i32 %20)
  %22 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %5, align 8
  %23 = getelementptr inbounds %struct.connect_wii_wiimote_t, %struct.connect_wii_wiimote_t* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %25, align 8
  %27 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %5, align 8
  %28 = getelementptr inbounds %struct.connect_wii_wiimote_t, %struct.connect_wii_wiimote_t* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 0
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 2
  %33 = call i32 %26(i32 %29, i32* %30, i32 %32)
  ret i32 1
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
