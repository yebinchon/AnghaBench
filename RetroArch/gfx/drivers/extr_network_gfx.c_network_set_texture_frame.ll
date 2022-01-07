; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_network_gfx.c_network_set_texture_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_network_gfx.c_network_set_texture_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@network_menu_frame = common dso_local global i8* null, align 8
@network_menu_width = common dso_local global i32 0, align 4
@network_menu_height = common dso_local global i32 0, align 4
@network_menu_pitch = common dso_local global i32 0, align 4
@network_menu_bits = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32, i32, float)* @network_set_texture_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @network_set_texture_frame(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, float %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store float %5, float* %12, align 4
  %14 = load i32, i32* %10, align 4
  %15 = mul i32 %14, 2
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %6
  %19 = load i32, i32* %10, align 4
  %20 = mul i32 %19, 4
  store i32 %20, i32* %13, align 4
  br label %21

21:                                               ; preds = %18, %6
  %22 = load i8*, i8** @network_menu_frame, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i8*, i8** @network_menu_frame, align 8
  %26 = call i32 @free(i8* %25)
  store i8* null, i8** @network_menu_frame, align 8
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i8*, i8** @network_menu_frame, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load i32, i32* @network_menu_width, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @network_menu_height, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @network_menu_pitch, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %38, %34, %30, %27
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %11, align 4
  %51 = mul i32 %49, %50
  %52 = call i64 @malloc(i32 %51)
  %53 = inttoptr i64 %52 to i8*
  store i8* %53, i8** @network_menu_frame, align 8
  br label %54

54:                                               ; preds = %48, %45, %42
  br label %55

55:                                               ; preds = %54, %38
  %56 = load i8*, i8** @network_menu_frame, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %81

58:                                               ; preds = %55
  %59 = load i8*, i8** %8, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %81

61:                                               ; preds = %58
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %61
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %64
  %68 = load i8*, i8** @network_menu_frame, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %11, align 4
  %72 = mul i32 %70, %71
  %73 = call i32 @memcpy(i8* %68, i8* %69, i32 %72)
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* @network_menu_width, align 4
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* @network_menu_height, align 4
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* @network_menu_pitch, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 32, i32 16
  store i32 %80, i32* @network_menu_bits, align 4
  br label %81

81:                                               ; preds = %67, %64, %61, %58, %55
  ret void
}

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
