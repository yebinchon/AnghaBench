; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_tga.c_write_tga.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_tga.c_write_tga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tga_header = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@tga_type_true_color = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_tga(i32* %0, i32 %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.tga_header, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = call i32 @memset(%struct.tga_header* %12, i32 0, i32 48)
  %14 = load i32, i32* @tga_type_true_color, align 4
  %15 = getelementptr inbounds %struct.tga_header, %struct.tga_header* %12, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %8, align 4
  %17 = getelementptr inbounds %struct.tga_header, %struct.tga_header* %12, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %9, align 4
  %20 = getelementptr inbounds %struct.tga_header, %struct.tga_header* %12, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %9, align 4
  %23 = getelementptr inbounds %struct.tga_header, %struct.tga_header* %12, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = getelementptr inbounds %struct.tga_header, %struct.tga_header* %12, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  store i32 32, i32* %26, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds %struct.tga_header, %struct.tga_header* %12, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @TGA_WRITE(i32* %27, i32 %29)
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds %struct.tga_header, %struct.tga_header* %12, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @TGA_WRITE(i32* %31, i32 %33)
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds %struct.tga_header, %struct.tga_header* %12, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @TGA_WRITE(i32* %35, i32 %37)
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds %struct.tga_header, %struct.tga_header* %12, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @TGA_WRITE(i32* %39, i32 %42)
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds %struct.tga_header, %struct.tga_header* %12, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @TGA_WRITE(i32* %44, i32 %47)
  %49 = load i32*, i32** %7, align 8
  %50 = getelementptr inbounds %struct.tga_header, %struct.tga_header* %12, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @TGA_WRITE(i32* %49, i32 %52)
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds %struct.tga_header, %struct.tga_header* %12, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @TGA_WRITE(i32* %54, i32 %57)
  %59 = load i32*, i32** %7, align 8
  %60 = getelementptr inbounds %struct.tga_header, %struct.tga_header* %12, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @TGA_WRITE(i32* %59, i32 %62)
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds %struct.tga_header, %struct.tga_header* %12, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @TGA_WRITE(i32* %64, i32 %67)
  %69 = load i32*, i32** %7, align 8
  %70 = getelementptr inbounds %struct.tga_header, %struct.tga_header* %12, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @TGA_WRITE(i32* %69, i32 %72)
  %74 = load i32*, i32** %7, align 8
  %75 = getelementptr inbounds %struct.tga_header, %struct.tga_header* %12, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @TGA_WRITE(i32* %74, i32 %77)
  %79 = load i32*, i32** %7, align 8
  %80 = getelementptr inbounds %struct.tga_header, %struct.tga_header* %12, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @TGA_WRITE(i32* %79, i32 %82)
  %84 = load i32*, i32** %10, align 8
  %85 = load i64, i64* %11, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = call i64 @fwrite(i32* %84, i32 1, i64 %85, i32* %86)
  %88 = load i64, i64* %11, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %5
  br label %92

91:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %93

92:                                               ; preds = %90
  store i32 -1, i32* %6, align 4
  br label %93

93:                                               ; preds = %92, %91
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i32 @memset(%struct.tga_header*, i32, i32) #1

declare dso_local i32 @TGA_WRITE(i32*, i32) #1

declare dso_local i64 @fwrite(i32*, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
