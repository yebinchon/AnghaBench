; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vga_gfx.c_vga_set_texture_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vga_gfx.c_vga_set_texture_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vga_menu_frame = common dso_local global i8* null, align 8
@vga_menu_width = common dso_local global i32 0, align 4
@vga_menu_height = common dso_local global i32 0, align 4
@vga_menu_pitch = common dso_local global i32 0, align 4
@VGA_WIDTH = common dso_local global i32 0, align 4
@VGA_HEIGHT = common dso_local global i32 0, align 4
@vga_menu_bits = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32, i32, float)* @vga_set_texture_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vga_set_texture_frame(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, float %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i16*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i16, align 2
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store float %5, float* %12, align 4
  %23 = load i32, i32* %10, align 4
  %24 = mul i32 %23, 2
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %6
  %28 = load i32, i32* %10, align 4
  %29 = mul i32 %28, 4
  store i32 %29, i32* %13, align 4
  br label %30

30:                                               ; preds = %27, %6
  %31 = load i8*, i8** @vga_menu_frame, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i8*, i8** @vga_menu_frame, align 8
  %35 = call i32 @free(i8* %34)
  store i8* null, i8** @vga_menu_frame, align 8
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i8*, i8** @vga_menu_frame, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = load i32, i32* @vga_menu_width, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %51, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @vga_menu_height, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @vga_menu_pitch, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %47, %43, %39, %36
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i32, i32* @VGA_WIDTH, align 4
  %59 = load i32, i32* @VGA_HEIGHT, align 4
  %60 = mul i32 %58, %59
  %61 = call i64 @malloc(i32 %60)
  %62 = inttoptr i64 %61 to i8*
  store i8* %62, i8** @vga_menu_frame, align 8
  br label %63

63:                                               ; preds = %57, %54, %51
  br label %64

64:                                               ; preds = %63, %47
  %65 = load i8*, i8** @vga_menu_frame, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %156

67:                                               ; preds = %64
  %68 = load i8*, i8** %8, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %156

70:                                               ; preds = %67
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %156

73:                                               ; preds = %70
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %156

76:                                               ; preds = %73
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %148

80:                                               ; preds = %76
  %81 = load i8*, i8** %8, align 8
  %82 = bitcast i8* %81 to i16*
  store i16* %82, i16** %16, align 8
  store i32 0, i32* %15, align 4
  br label %83

83:                                               ; preds = %144, %80
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* @VGA_HEIGHT, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %87, label %147

87:                                               ; preds = %83
  store i32 0, i32* %14, align 4
  br label %88

88:                                               ; preds = %140, %87
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* @VGA_WIDTH, align 4
  %91 = icmp ult i32 %89, %90
  br i1 %91, label %92, label %143

92:                                               ; preds = %88
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %14, align 4
  %95 = mul i32 %93, %94
  %96 = load i32, i32* @VGA_WIDTH, align 4
  %97 = udiv i32 %95, %96
  store i32 %97, i32* %17, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %15, align 4
  %100 = mul i32 %98, %99
  %101 = load i32, i32* @VGA_HEIGHT, align 4
  %102 = udiv i32 %100, %101
  store i32 %102, i32* %18, align 4
  %103 = load i16*, i16** %16, align 8
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %18, align 4
  %106 = mul i32 %104, %105
  %107 = load i32, i32* %17, align 4
  %108 = add i32 %106, %107
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i16, i16* %103, i64 %109
  %111 = load i16, i16* %110, align 2
  store i16 %111, i16* %19, align 2
  %112 = load i16, i16* %19, align 2
  %113 = zext i16 %112 to i32
  %114 = and i32 %113, 61440
  %115 = ashr i32 %114, 13
  store i32 %115, i32* %20, align 4
  %116 = load i16, i16* %19, align 2
  %117 = zext i16 %116 to i32
  %118 = and i32 %117, 3840
  %119 = ashr i32 %118, 9
  store i32 %119, i32* %21, align 4
  %120 = load i16, i16* %19, align 2
  %121 = zext i16 %120 to i32
  %122 = and i32 %121, 240
  %123 = ashr i32 %122, 6
  store i32 %123, i32* %22, align 4
  %124 = load i32, i32* %22, align 4
  %125 = shl i32 %124, 6
  %126 = load i32, i32* %21, align 4
  %127 = shl i32 %126, 3
  %128 = or i32 %125, %127
  %129 = load i32, i32* %20, align 4
  %130 = or i32 %128, %129
  %131 = trunc i32 %130 to i8
  %132 = load i8*, i8** @vga_menu_frame, align 8
  %133 = load i32, i32* @VGA_WIDTH, align 4
  %134 = load i32, i32* %15, align 4
  %135 = mul i32 %133, %134
  %136 = load i32, i32* %14, align 4
  %137 = add i32 %135, %136
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %132, i64 %138
  store i8 %131, i8* %139, align 1
  br label %140

140:                                              ; preds = %92
  %141 = load i32, i32* %14, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %14, align 4
  br label %88

143:                                              ; preds = %88
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %15, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %15, align 4
  br label %83

147:                                              ; preds = %83
  br label %148

148:                                              ; preds = %147, %79
  %149 = load i32, i32* %10, align 4
  store i32 %149, i32* @vga_menu_width, align 4
  %150 = load i32, i32* %11, align 4
  store i32 %150, i32* @vga_menu_height, align 4
  %151 = load i32, i32* %13, align 4
  store i32 %151, i32* @vga_menu_pitch, align 4
  %152 = load i32, i32* %9, align 4
  %153 = icmp ne i32 %152, 0
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i32 32, i32 16
  store i32 %155, i32* @vga_menu_bits, align 4
  br label %156

156:                                              ; preds = %148, %73, %70, %67, %64
  ret void
}

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
