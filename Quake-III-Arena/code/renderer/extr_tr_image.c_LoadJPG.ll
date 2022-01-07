; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_image.c_LoadJPG.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_image.c_LoadJPG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* (i32)*, i32 (i32*)*, i32 (i8*, i8**)* }
%struct.jpeg_decompress_struct = type { i32, i32, i32, i32, i32 }
%struct.jpeg_error_mgr = type { i32 }

@ri = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8**, i32*, i32*)* @LoadJPG to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LoadJPG(i8* %0, i8** %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.jpeg_decompress_struct, align 4
  %10 = alloca %struct.jpeg_error_mgr, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %19 = load i32 (i8*, i8**)*, i32 (i8*, i8**)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ri, i32 0, i32 2), align 8
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i32** %14 to i8**
  %22 = call i32 %19(i8* %20, i8** %21)
  %23 = load i32*, i32** %14, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  br label %103

26:                                               ; preds = %4
  %27 = call i32 @jpeg_std_error(%struct.jpeg_error_mgr* %10)
  %28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 4
  store i32 %27, i32* %28, align 4
  %29 = call i32 @jpeg_create_decompress(%struct.jpeg_decompress_struct* %9)
  %30 = load i32*, i32** %14, align 8
  %31 = call i32 @jpeg_stdio_src(%struct.jpeg_decompress_struct* %9, i32* %30)
  %32 = load i32, i32* @TRUE, align 4
  %33 = call i32 @jpeg_read_header(%struct.jpeg_decompress_struct* %9, i32 %32)
  %34 = call i32 @jpeg_start_decompress(%struct.jpeg_decompress_struct* %9)
  %35 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %36, %38
  store i32 %39, i32* %12, align 4
  %40 = load i8* (i32)*, i8* (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ri, i32 0, i32 0), align 8
  %41 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %42, %44
  %46 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %45, %47
  %49 = call i8* %40(i32 %48)
  store i8* %49, i8** %13, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = load i8**, i8*** %6, align 8
  store i8* %50, i8** %51, align 8
  %52 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %7, align 8
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %8, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %64, %26
  %59 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %58
  %65 = load i8*, i8** %13, align 8
  %66 = load i32, i32* %12, align 4
  %67 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %66, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %65, i64 %70
  %72 = bitcast i8* %71 to i32*
  store i32* %72, i32** %15, align 8
  store i32** %15, i32*** %11, align 8
  %73 = load i32**, i32*** %11, align 8
  %74 = call i32 @jpeg_read_scanlines(%struct.jpeg_decompress_struct* %9, i32** %73, i32 1)
  br label %58

75:                                               ; preds = %58
  %76 = load i8**, i8*** %6, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = bitcast i8* %77 to i32*
  store i32* %78, i32** %18, align 8
  %79 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %80, %82
  %84 = mul nsw i32 %83, 4
  store i32 %84, i32* %17, align 4
  store i32 3, i32* %16, align 4
  br label %85

85:                                               ; preds = %94, %75
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* %17, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load i32*, i32** %18, align 8
  %91 = load i32, i32* %16, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 255, i32* %93, align 4
  br label %94

94:                                               ; preds = %89
  %95 = load i32, i32* %16, align 4
  %96 = add nsw i32 %95, 4
  store i32 %96, i32* %16, align 4
  br label %85

97:                                               ; preds = %85
  %98 = call i32 @jpeg_finish_decompress(%struct.jpeg_decompress_struct* %9)
  %99 = call i32 @jpeg_destroy_decompress(%struct.jpeg_decompress_struct* %9)
  %100 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ri, i32 0, i32 1), align 8
  %101 = load i32*, i32** %14, align 8
  %102 = call i32 %100(i32* %101)
  br label %103

103:                                              ; preds = %97, %25
  ret void
}

declare dso_local i32 @jpeg_std_error(%struct.jpeg_error_mgr*) #1

declare dso_local i32 @jpeg_create_decompress(%struct.jpeg_decompress_struct*) #1

declare dso_local i32 @jpeg_stdio_src(%struct.jpeg_decompress_struct*, i32*) #1

declare dso_local i32 @jpeg_read_header(%struct.jpeg_decompress_struct*, i32) #1

declare dso_local i32 @jpeg_start_decompress(%struct.jpeg_decompress_struct*) #1

declare dso_local i32 @jpeg_read_scanlines(%struct.jpeg_decompress_struct*, i32**, i32) #1

declare dso_local i32 @jpeg_finish_decompress(%struct.jpeg_decompress_struct*) #1

declare dso_local i32 @jpeg_destroy_decompress(%struct.jpeg_decompress_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
