; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_tga.c_load_tga.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_tga.c_load_tga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tga_header = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@tga_type_true_color = common dso_local global i64 0, align 8
@SEEK_CUR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @load_tga(i8* %0, %struct.tga_header* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tga_header*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.tga_header* %1, %struct.tga_header** %4, align 8
  store i8* null, i8** %5, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32* @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %83

12:                                               ; preds = %2
  %13 = load i32*, i32** %6, align 8
  %14 = load %struct.tga_header*, %struct.tga_header** %4, align 8
  %15 = call i64 @read_header(i32* %13, %struct.tga_header* %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %80

17:                                               ; preds = %12
  %18 = load %struct.tga_header*, %struct.tga_header** %4, align 8
  %19 = getelementptr inbounds %struct.tga_header, %struct.tga_header* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @tga_type_true_color, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %79

23:                                               ; preds = %17
  %24 = load %struct.tga_header*, %struct.tga_header** %4, align 8
  %25 = getelementptr inbounds %struct.tga_header, %struct.tga_header* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 24
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.tga_header*, %struct.tga_header** %4, align 8
  %31 = getelementptr inbounds %struct.tga_header, %struct.tga_header* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 32
  br i1 %34, label %35, label %79

35:                                               ; preds = %29, %23
  %36 = load %struct.tga_header*, %struct.tga_header** %4, align 8
  %37 = getelementptr inbounds %struct.tga_header, %struct.tga_header* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.tga_header*, %struct.tga_header** %4, align 8
  %41 = getelementptr inbounds %struct.tga_header, %struct.tga_header* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = mul nsw i32 %39, %43
  %45 = load %struct.tga_header*, %struct.tga_header** %4, align 8
  %46 = getelementptr inbounds %struct.tga_header, %struct.tga_header* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sdiv i32 %48, 8
  %50 = mul nsw i32 %44, %49
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i8* @malloc(i32 %51)
  store i8* %52, i8** %5, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %78

55:                                               ; preds = %35
  %56 = load %struct.tga_header*, %struct.tga_header** %4, align 8
  %57 = getelementptr inbounds %struct.tga_header, %struct.tga_header* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* @SEEK_CUR, align 4
  %63 = load %struct.tga_header*, %struct.tga_header** %4, align 8
  %64 = getelementptr inbounds %struct.tga_header, %struct.tga_header* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @fseek(i32* %61, i32 %62, i64 %65)
  br label %67

67:                                               ; preds = %60, %55
  %68 = load i8*, i8** %5, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @fread(i8* %68, i32 1, i32 %69, i32* %70)
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load i8*, i8** %5, align 8
  %76 = call i32 @free(i8* %75)
  store i8* null, i8** %5, align 8
  br label %77

77:                                               ; preds = %74, %67
  br label %78

78:                                               ; preds = %77, %35
  br label %79

79:                                               ; preds = %78, %29, %17
  br label %80

80:                                               ; preds = %79, %12
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @fclose(i32* %81)
  br label %83

83:                                               ; preds = %80, %2
  %84 = load i8*, i8** %5, align 8
  ret i8* %84
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @read_header(i32*, %struct.tga_header*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @fseek(i32*, i32, i64) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
