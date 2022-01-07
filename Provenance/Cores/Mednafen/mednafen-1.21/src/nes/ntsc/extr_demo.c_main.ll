; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/nes/ntsc/extr_demo.c_main.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/nes/ntsc/extr_demo.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { float, float, i32, float*, i64 }

@setup = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@nes_ntsc_composite = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@out_width = common dso_local global i32 0, align 4
@out_height = common dso_local global i32 0, align 4
@key_pressed = common dso_local global i32 0, align 4
@nes_ntsc_svideo = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@nes_ntsc_rgb = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@nes_ntsc_monochrome = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@mouse_moved = common dso_local global i64 0, align 8
@mouse_x = common dso_local global i32 0, align 4
@mouse_y = common dso_local global i32 0, align 4
@main.matrix = internal global [6 x float] [float 0x3FF89FBE80000000, float 0xBFE3E76C80000000, float 0xBFE245A1C0000000, float 0xBFC7AE1480000000, float 0.000000e+00, float 2.000000e+00], align 16
@ntsc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_7__* @setup to i8*), i8* align 8 bitcast (%struct.TYPE_7__* @nes_ntsc_composite to i8*), i64 32, i1 false)
  %10 = call i32 (...) @init()
  %11 = load i32, i32* @out_width, align 4
  %12 = load i32, i32* @out_height, align 4
  %13 = call i32 @sdl_init(i32 %11, i32 %12, i32 16)
  br label %14

14:                                               ; preds = %62, %2
  %15 = call i64 (...) @sdl_run()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %63

17:                                               ; preds = %14
  %18 = call i32 (...) @display()
  %19 = load i32, i32* @key_pressed, align 4
  switch i32 %19, label %34 [
    i32 133, label %20
    i32 132, label %25
    i32 128, label %26
    i32 129, label %27
    i32 130, label %28
    i32 131, label %29
  ]

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %6, align 4
  br label %34

25:                                               ; preds = %17
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_7__* @setup to i8*), i8* align 8 bitcast (%struct.TYPE_7__* @nes_ntsc_composite to i8*), i64 32, i1 false)
  br label %34

26:                                               ; preds = %17
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_7__* @setup to i8*), i8* align 8 bitcast (%struct.TYPE_7__* @nes_ntsc_svideo to i8*), i64 32, i1 false)
  br label %34

27:                                               ; preds = %17
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_7__* @setup to i8*), i8* align 8 bitcast (%struct.TYPE_7__* @nes_ntsc_rgb to i8*), i64 32, i1 false)
  br label %34

28:                                               ; preds = %17
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_7__* @setup to i8*), i8* align 8 bitcast (%struct.TYPE_7__* @nes_ntsc_monochrome to i8*), i64 32, i1 false)
  br label %34

29:                                               ; preds = %17
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %17, %29, %28, %27, %26, %25, %20
  %35 = load i32, i32* @key_pressed, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i64, i64* @mouse_moved, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %37, %34
  %41 = load i32, i32* @mouse_x, align 4
  %42 = mul nsw i32 %41, 2
  %43 = sub nsw i32 %42, 1
  %44 = sitofp i32 %43 to float
  store float %44, float* %8, align 4
  %45 = load i32, i32* @mouse_y, align 4
  %46 = mul nsw i32 %45, 2
  %47 = sub nsw i32 %46, 1
  %48 = sitofp i32 %47 to float
  store float %48, float* %9, align 4
  %49 = load float, float* %8, align 4
  store float %49, float* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @setup, i32 0, i32 0), align 8
  %50 = load float, float* %9, align 4
  store float %50, float* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @setup, i32 0, i32 1), align 4
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @setup, i32 0, i32 2), align 8
  store float* null, float** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @setup, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @setup, i32 0, i32 4), align 8
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %40
  store float* getelementptr inbounds ([6 x float], [6 x float]* @main.matrix, i64 0, i64 0), float** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @setup, i32 0, i32 3), align 8
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @setup, i32 0, i32 4), align 8
  %56 = sitofp i64 %55 to double
  %57 = fadd double %56, 0x3FC7777777777777
  %58 = fptosi double %57 to i64
  store i64 %58, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @setup, i32 0, i32 4), align 8
  br label %59

59:                                               ; preds = %54, %40
  %60 = load i32, i32* @ntsc, align 4
  %61 = call i32 @nes_ntsc_init(i32 %60, %struct.TYPE_7__* @setup)
  br label %62

62:                                               ; preds = %59, %37
  br label %14

63:                                               ; preds = %14
  %64 = load i32, i32* @ntsc, align 4
  %65 = call i32 @free(i32 %64)
  %66 = call i32 (...) @write_palette()
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @init(...) #2

declare dso_local i32 @sdl_init(i32, i32, i32) #2

declare dso_local i64 @sdl_run(...) #2

declare dso_local i32 @display(...) #2

declare dso_local i32 @nes_ntsc_init(i32, %struct.TYPE_7__*) #2

declare dso_local i32 @free(i32) #2

declare dso_local i32 @write_palette(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
