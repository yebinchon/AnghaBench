; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d8.c_d3d8_init_base.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d8.c_d3d8_init_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@g_pD3D8 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"[D3D8]: Failed to create D3D interface.\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"[D3D8]: Failed to initialize device.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @d3d8_init_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3d8_init_base(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %7, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %8, align 8
  %11 = call i32* (...) @win32_get_window()
  store i32* %11, i32** %7, align 8
  %12 = call i32 @memset(i32* %6, i32 0, i32 4)
  %13 = call i64 (...) @d3d8_create()
  store i64 %13, i64* @g_pD3D8, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @d3d8_make_d3dpp(%struct.TYPE_3__* %14, i32* %15, i32* %6)
  %17 = load i64, i64* @g_pD3D8, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %34

21:                                               ; preds = %2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* @g_pD3D8, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @d3d8_create_device(i32* %23, i32* %6, i64 %24, i32* %25, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %21
  %32 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %34

33:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %31, %19
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32* @win32_get_window(...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @d3d8_create(...) #1

declare dso_local i32 @d3d8_make_d3dpp(%struct.TYPE_3__*, i32*, i32*) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

declare dso_local i32 @d3d8_create_device(i32*, i32*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
