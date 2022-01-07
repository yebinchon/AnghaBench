; ModuleID = '/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_wii.c_wiimote_write_data.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_wii.c_wiimote_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connect_wii_wiimote_t = type { i32 }

@WM_CMD_WRITE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connect_wii_wiimote_t*, i32, i32*, i32)* @wiimote_write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wiimote_write_data(%struct.connect_wii_wiimote_t* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.connect_wii_wiimote_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [21 x i32], align 16
  %11 = alloca i32*, align 8
  store %struct.connect_wii_wiimote_t* %0, %struct.connect_wii_wiimote_t** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = bitcast [21 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 84, i1 false)
  %13 = getelementptr inbounds [21 x i32], [21 x i32]* %10, i64 0, i64 0
  store i32* %13, i32** %11, align 8
  %14 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %15 = icmp ne %struct.connect_wii_wiimote_t* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %18 = call i32 @wiimote_is_connected(%struct.connect_wii_wiimote_t* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16, %4
  store i32 0, i32* %5, align 4
  br label %44

21:                                               ; preds = %16
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %21
  store i32 0, i32* %5, align 4
  br label %44

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @swap_if_little32(i32 %29)
  %31 = load i32*, i32** %11, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %9, align 4
  %33 = getelementptr inbounds [21 x i32], [21 x i32]* %10, i64 0, i64 0
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  store i32 %32, i32* %34, align 4
  %35 = getelementptr inbounds [21 x i32], [21 x i32]* %10, i64 0, i64 0
  %36 = getelementptr inbounds i32, i32* %35, i64 5
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @memcpy(i32* %36, i32* %37, i32 %38)
  %40 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %41 = load i32, i32* @WM_CMD_WRITE_DATA, align 4
  %42 = getelementptr inbounds [21 x i32], [21 x i32]* %10, i64 0, i64 0
  %43 = call i32 @wiimote_send(%struct.connect_wii_wiimote_t* %40, i32 %41, i32* %42, i32 21)
  store i32 1, i32* %5, align 4
  br label %44

44:                                               ; preds = %28, %27, %20
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @wiimote_is_connected(%struct.connect_wii_wiimote_t*) #2

declare dso_local i32 @swap_if_little32(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @wiimote_send(%struct.connect_wii_wiimote_t*, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
