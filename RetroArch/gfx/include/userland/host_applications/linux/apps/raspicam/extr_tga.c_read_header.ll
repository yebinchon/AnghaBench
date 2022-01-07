; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_tga.c_read_header.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_tga.c_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tga_header = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.tga_header*)* @read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_header(i32* %0, %struct.tga_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tga_header*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.tga_header* %1, %struct.tga_header** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load %struct.tga_header*, %struct.tga_header** %5, align 8
  %8 = getelementptr inbounds %struct.tga_header, %struct.tga_header* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @TGA_READ(i32* %6, i32 %9)
  %11 = load i32*, i32** %4, align 8
  %12 = load %struct.tga_header*, %struct.tga_header** %5, align 8
  %13 = getelementptr inbounds %struct.tga_header, %struct.tga_header* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @TGA_READ(i32* %11, i32 %14)
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.tga_header*, %struct.tga_header** %5, align 8
  %18 = getelementptr inbounds %struct.tga_header, %struct.tga_header* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @TGA_READ(i32* %16, i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.tga_header*, %struct.tga_header** %5, align 8
  %23 = getelementptr inbounds %struct.tga_header, %struct.tga_header* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @TGA_READ(i32* %21, i32 %25)
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.tga_header*, %struct.tga_header** %5, align 8
  %29 = getelementptr inbounds %struct.tga_header, %struct.tga_header* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @TGA_READ(i32* %27, i32 %31)
  %33 = load i32*, i32** %4, align 8
  %34 = load %struct.tga_header*, %struct.tga_header** %5, align 8
  %35 = getelementptr inbounds %struct.tga_header, %struct.tga_header* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @TGA_READ(i32* %33, i32 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.tga_header*, %struct.tga_header** %5, align 8
  %41 = getelementptr inbounds %struct.tga_header, %struct.tga_header* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @TGA_READ(i32* %39, i32 %43)
  %45 = load i32*, i32** %4, align 8
  %46 = load %struct.tga_header*, %struct.tga_header** %5, align 8
  %47 = getelementptr inbounds %struct.tga_header, %struct.tga_header* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @TGA_READ(i32* %45, i32 %49)
  %51 = load i32*, i32** %4, align 8
  %52 = load %struct.tga_header*, %struct.tga_header** %5, align 8
  %53 = getelementptr inbounds %struct.tga_header, %struct.tga_header* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @TGA_READ(i32* %51, i32 %55)
  %57 = load i32*, i32** %4, align 8
  %58 = load %struct.tga_header*, %struct.tga_header** %5, align 8
  %59 = getelementptr inbounds %struct.tga_header, %struct.tga_header* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @TGA_READ(i32* %57, i32 %61)
  %63 = load i32*, i32** %4, align 8
  %64 = load %struct.tga_header*, %struct.tga_header** %5, align 8
  %65 = getelementptr inbounds %struct.tga_header, %struct.tga_header* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @TGA_READ(i32* %63, i32 %67)
  %69 = load i32*, i32** %4, align 8
  %70 = load %struct.tga_header*, %struct.tga_header** %5, align 8
  %71 = getelementptr inbounds %struct.tga_header, %struct.tga_header* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @TGA_READ(i32* %69, i32 %73)
  store i32 0, i32* %3, align 4
  br label %76

75:                                               ; No predecessors!
  store i32 -1, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %2
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @TGA_READ(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
