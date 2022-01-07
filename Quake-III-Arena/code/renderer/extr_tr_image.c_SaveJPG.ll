; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_image.c_SaveJPG.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_image.c_SaveJPG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* (i32)*, i32 (i8*)*, i32 (i8*, i8*, i32)* }
%struct.jpeg_compress_struct = type { i32, i32, i32, i32, i32, i32 }
%struct.jpeg_error_mgr = type { i32 }

@ri = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@JCS_RGB = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@hackSize = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SaveJPG(i8* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.jpeg_compress_struct, align 4
  %12 = alloca %struct.jpeg_error_mgr, align 4
  %13 = alloca [1 x i8*], align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %16 = call i32 @jpeg_std_error(%struct.jpeg_error_mgr* %12)
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 5
  store i32 %16, i32* %17, align 4
  %18 = call i32 @jpeg_create_compress(%struct.jpeg_compress_struct* %11)
  %19 = load i8* (i32)*, i8* (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ri, i32 0, i32 0), align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = mul nsw i32 %20, %21
  %23 = mul nsw i32 %22, 4
  %24 = call i8* %19(i32 %23)
  store i8* %24, i8** %15, align 8
  %25 = load i8*, i8** %15, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = mul nsw i32 %26, %27
  %29 = mul nsw i32 %28, 4
  %30 = call i32 @jpegDest(%struct.jpeg_compress_struct* %11, i8* %25, i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %9, align 4
  %34 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 2
  store i32 4, i32* %35, align 4
  %36 = load i32, i32* @JCS_RGB, align 4
  %37 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 4
  store i32 %36, i32* %37, align 4
  %38 = call i32 @jpeg_set_defaults(%struct.jpeg_compress_struct* %11)
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @TRUE, align 4
  %41 = call i32 @jpeg_set_quality(%struct.jpeg_compress_struct* %11, i32 %39, i32 %40)
  %42 = load i32, i32* @TRUE, align 4
  %43 = call i32 @jpeg_start_compress(%struct.jpeg_compress_struct* %11, i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = mul nsw i32 %44, 4
  store i32 %45, i32* %14, align 4
  br label %46

46:                                               ; preds = %52, %5
  %47 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %46
  %53 = load i8*, i8** %10, align 8
  %54 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, 1
  %57 = load i32, i32* %14, align 4
  %58 = mul nsw i32 %56, %57
  %59 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %14, align 4
  %62 = mul nsw i32 %60, %61
  %63 = sub nsw i32 %58, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %53, i64 %64
  %66 = getelementptr inbounds [1 x i8*], [1 x i8*]* %13, i64 0, i64 0
  store i8* %65, i8** %66, align 8
  %67 = getelementptr inbounds [1 x i8*], [1 x i8*]* %13, i64 0, i64 0
  %68 = call i32 @jpeg_write_scanlines(%struct.jpeg_compress_struct* %11, i8** %67, i32 1)
  br label %46

69:                                               ; preds = %46
  %70 = call i32 @jpeg_finish_compress(%struct.jpeg_compress_struct* %11)
  %71 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ri, i32 0, i32 2), align 8
  %72 = load i8*, i8** %6, align 8
  %73 = load i8*, i8** %15, align 8
  %74 = load i32, i32* @hackSize, align 4
  %75 = call i32 %71(i8* %72, i8* %73, i32 %74)
  %76 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ri, i32 0, i32 1), align 8
  %77 = load i8*, i8** %15, align 8
  %78 = call i32 %76(i8* %77)
  %79 = call i32 @jpeg_destroy_compress(%struct.jpeg_compress_struct* %11)
  ret void
}

declare dso_local i32 @jpeg_std_error(%struct.jpeg_error_mgr*) #1

declare dso_local i32 @jpeg_create_compress(%struct.jpeg_compress_struct*) #1

declare dso_local i32 @jpegDest(%struct.jpeg_compress_struct*, i8*, i32) #1

declare dso_local i32 @jpeg_set_defaults(%struct.jpeg_compress_struct*) #1

declare dso_local i32 @jpeg_set_quality(%struct.jpeg_compress_struct*, i32, i32) #1

declare dso_local i32 @jpeg_start_compress(%struct.jpeg_compress_struct*, i32) #1

declare dso_local i32 @jpeg_write_scanlines(%struct.jpeg_compress_struct*, i8**, i32) #1

declare dso_local i32 @jpeg_finish_compress(%struct.jpeg_compress_struct*) #1

declare dso_local i32 @jpeg_destroy_compress(%struct.jpeg_compress_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
