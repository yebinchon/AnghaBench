; ModuleID = '/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_wii.c_wiimote_read_data.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_wii.c_wiimote_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connect_wii_wiimote_t = type { i32 }

@WM_CMD_READ_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connect_wii_wiimote_t*, i32, i32)* @wiimote_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wiimote_read_data(%struct.connect_wii_wiimote_t* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connect_wii_wiimote_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [6 x i32], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.connect_wii_wiimote_t* %0, %struct.connect_wii_wiimote_t** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = bitcast [6 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 24, i1 false)
  %12 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  store i32* %12, i32** %9, align 8
  %13 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %14 = getelementptr inbounds i32, i32* %13, i64 4
  store i32* %14, i32** %10, align 8
  %15 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %5, align 8
  %16 = icmp ne %struct.connect_wii_wiimote_t* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %5, align 8
  %19 = call i32 @wiimote_is_connected(%struct.connect_wii_wiimote_t* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %17, %3
  store i32 0, i32* %4, align 4
  br label %36

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @swap_if_little32(i32 %26)
  %28 = load i32*, i32** %9, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @swap_if_little16(i32 %29)
  %31 = load i32*, i32** %10, align 8
  store i32 %30, i32* %31, align 4
  %32 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %5, align 8
  %33 = load i32, i32* @WM_CMD_READ_DATA, align 4
  %34 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %35 = call i32 @wiimote_send(%struct.connect_wii_wiimote_t* %32, i32 %33, i32* %34, i32 6)
  store i32 1, i32* %4, align 4
  br label %36

36:                                               ; preds = %25, %24
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @wiimote_is_connected(%struct.connect_wii_wiimote_t*) #2

declare dso_local i32 @swap_if_little32(i32) #2

declare dso_local i32 @swap_if_little16(i32) #2

declare dso_local i32 @wiimote_send(%struct.connect_wii_wiimote_t*, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
