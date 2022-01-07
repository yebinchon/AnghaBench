; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d_texture.c_vita2d_texture_get_stride.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d_texture.c_vita2d_texture_get_stride.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vita2d_texture_get_stride(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @vita2d_texture_get_width(i32* %3)
  %5 = add nsw i32 %4, 7
  %6 = and i32 %5, -8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @vita2d_texture_get_format(i32* %7)
  %9 = call i32 @tex_format_to_bytespp(i32 %8)
  %10 = mul nsw i32 %6, %9
  ret i32 %10
}

declare dso_local i32 @vita2d_texture_get_width(i32*) #1

declare dso_local i32 @tex_format_to_bytespp(i32) #1

declare dso_local i32 @vita2d_texture_get_format(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
