; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gdi_gfx.c_gdi_set_texture_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gdi_gfx.c_gdi_set_texture_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gdi_menu_frame = common dso_local global i8* null, align 8
@gdi_menu_width = common dso_local global i32 0, align 4
@gdi_menu_height = common dso_local global i32 0, align 4
@gdi_menu_pitch = common dso_local global i32 0, align 4
@gdi_menu_bits = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32, i32, float)* @gdi_set_texture_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdi_set_texture_frame(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, float %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store float %5, float* %12, align 4
  %15 = load i32, i32* %10, align 4
  %16 = mul i32 %15, 2
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load i32, i32* %10, align 4
  %21 = mul i32 %20, 4
  store i32 %21, i32* %13, align 4
  br label %22

22:                                               ; preds = %19, %6
  %23 = load i8*, i8** @gdi_menu_frame, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i8*, i8** @gdi_menu_frame, align 8
  %27 = call i32 @free(i8* %26)
  store i8* null, i8** @gdi_menu_frame, align 8
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i8*, i8** @gdi_menu_frame, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load i32, i32* @gdi_menu_width, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @gdi_menu_height, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @gdi_menu_pitch, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %39, %35, %31, %28
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %43
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %11, align 4
  %52 = mul i32 %50, %51
  %53 = call i64 @malloc(i32 %52)
  %54 = inttoptr i64 %53 to i8*
  store i8* %54, i8** %14, align 8
  %55 = load i8*, i8** %14, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i8*, i8** %14, align 8
  store i8* %58, i8** @gdi_menu_frame, align 8
  br label %59

59:                                               ; preds = %57, %49
  br label %60

60:                                               ; preds = %59, %46, %43
  br label %61

61:                                               ; preds = %60, %39
  %62 = load i8*, i8** @gdi_menu_frame, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %87

64:                                               ; preds = %61
  %65 = load i8*, i8** %8, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %87

67:                                               ; preds = %64
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %67
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %70
  %74 = load i8*, i8** @gdi_menu_frame, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %11, align 4
  %78 = mul i32 %76, %77
  %79 = call i32 @memcpy(i8* %74, i8* %75, i32 %78)
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* @gdi_menu_width, align 4
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* @gdi_menu_height, align 4
  %82 = load i32, i32* %13, align 4
  store i32 %82, i32* @gdi_menu_pitch, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 32, i32 16
  store i32 %86, i32* @gdi_menu_bits, align 4
  br label %87

87:                                               ; preds = %73, %70, %67, %64, %61
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
