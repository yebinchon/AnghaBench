; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_rgui_osk_ptr_at_pos.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_rgui_osk_ptr_at_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FONT_WIDTH = common dso_local global i32 0, align 4
@FONT_HEIGHT = common dso_local global i32 0, align 4
@OSK_CHARS_PER_LINE = common dso_local global i32 0, align 4
@FONT_HEIGHT_STRIDE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rgui_osk_ptr_at_pos(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %36 = call i32 @menu_display_get_fb_size(i32* %13, i32* %14, i64* %12)
  store i32 8, i32* %18, align 4
  store i32 6, i32* %19, align 4
  %37 = load i32, i32* @FONT_WIDTH, align 4
  %38 = load i32, i32* %18, align 4
  %39 = mul i32 %38, 2
  %40 = add i32 %37, %39
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* @FONT_HEIGHT, align 4
  %42 = load i32, i32* %19, align 4
  %43 = mul i32 %42, 2
  %44 = add i32 %41, %43
  store i32 %44, i32* %17, align 4
  store i32 2, i32* %22, align 4
  store i32 2, i32* %23, align 4
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %22, align 4
  %47 = mul i32 %46, 2
  %48 = sub i32 %45, %47
  store i32 %48, i32* %20, align 4
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* %23, align 4
  %51 = mul i32 %50, 2
  %52 = sub i32 %49, %51
  store i32 %52, i32* %21, align 4
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* @OSK_CHARS_PER_LINE, align 4
  %55 = mul i32 %53, %54
  store i32 %55, i32* %24, align 4
  %56 = load i32, i32* %17, align 4
  %57 = mul i32 %56, 4
  store i32 %57, i32* %25, align 4
  store i32 10, i32* %26, align 4
  %58 = load i32, i32* @FONT_HEIGHT_STRIDE, align 4
  %59 = mul nsw i32 2, %58
  %60 = add nsw i32 25, %59
  store i32 %60, i32* %27, align 4
  %61 = load i32, i32* %24, align 4
  %62 = add i32 %61, 20
  store i32 %62, i32* %28, align 4
  %63 = load i32, i32* %27, align 4
  %64 = load i32, i32* %25, align 4
  %65 = add i32 %63, %64
  %66 = add i32 %65, 10
  store i32 %66, i32* %29, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %28, align 4
  %69 = sub i32 %67, %68
  %70 = udiv i32 %69, 2
  store i32 %70, i32* %30, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %29, align 4
  %73 = sub i32 %71, %72
  %74 = udiv i32 %73, 2
  store i32 %74, i32* %31, align 4
  store i64 0, i64* %15, align 8
  br label %75

75:                                               ; preds = %132, %5
  %76 = load i64, i64* %15, align 8
  %77 = icmp ult i64 %76, 44
  br i1 %77, label %78, label %135

78:                                               ; preds = %75
  %79 = load i64, i64* %15, align 8
  %80 = load i32, i32* @OSK_CHARS_PER_LINE, align 4
  %81 = zext i32 %80 to i64
  %82 = udiv i64 %79, %81
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %32, align 4
  %84 = load i64, i64* %15, align 8
  %85 = load i32, i32* %32, align 4
  %86 = load i32, i32* @OSK_CHARS_PER_LINE, align 4
  %87 = mul i32 %85, %86
  %88 = zext i32 %87 to i64
  %89 = sub i64 %84, %88
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %33, align 4
  %91 = load i32, i32* %30, align 4
  %92 = load i32, i32* %26, align 4
  %93 = add i32 %91, %92
  %94 = load i32, i32* %22, align 4
  %95 = add i32 %93, %94
  %96 = load i32, i32* %33, align 4
  %97 = load i32, i32* %16, align 4
  %98 = mul i32 %96, %97
  %99 = add i32 %95, %98
  store i32 %99, i32* %34, align 4
  %100 = load i32, i32* %31, align 4
  %101 = load i32, i32* %27, align 4
  %102 = add i32 %100, %101
  %103 = load i32, i32* %23, align 4
  %104 = add i32 %102, %103
  %105 = load i32, i32* %32, align 4
  %106 = load i32, i32* %17, align 4
  %107 = mul i32 %105, %106
  %108 = add i32 %104, %107
  store i32 %108, i32* %35, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %34, align 4
  %111 = icmp ugt i32 %109, %110
  br i1 %111, label %112, label %131

112:                                              ; preds = %78
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %34, align 4
  %115 = load i32, i32* %20, align 4
  %116 = add i32 %114, %115
  %117 = icmp ult i32 %113, %116
  br i1 %117, label %118, label %131

118:                                              ; preds = %112
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %35, align 4
  %121 = icmp ugt i32 %119, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %118
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %35, align 4
  %125 = load i32, i32* %21, align 4
  %126 = add i32 %124, %125
  %127 = icmp ult i32 %123, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load i64, i64* %15, align 8
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %6, align 4
  br label %136

131:                                              ; preds = %122, %118, %112, %78
  br label %132

132:                                              ; preds = %131
  %133 = load i64, i64* %15, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %15, align 8
  br label %75

135:                                              ; preds = %75
  store i32 -1, i32* %6, align 4
  br label %136

136:                                              ; preds = %135, %128
  %137 = load i32, i32* %6, align 4
  ret i32 %137
}

declare dso_local i32 @menu_display_get_fb_size(i32*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
