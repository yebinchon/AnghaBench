; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jload.c_LoadJPG.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jload.c_LoadJPG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { i32, i32, i32, i32, i32 }
%struct.jpeg_error_mgr = type { i32 }

@qfalse = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LoadJPG(i8* %0, i8** %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.jpeg_decompress_struct, align 4
  %11 = alloca %struct.jpeg_error_mgr, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* @qfalse, align 4
  %18 = call i32 @FS_FOpenFileRead(i8* %16, i64* %12, i32 %17)
  %19 = load i64, i64* %12, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %75

22:                                               ; preds = %4
  %23 = call i32 @jpeg_std_error(%struct.jpeg_error_mgr* %11)
  %24 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 4
  store i32 %23, i32* %24, align 4
  %25 = call i32 @jpeg_create_decompress(%struct.jpeg_decompress_struct* %10)
  %26 = load i64, i64* %12, align 8
  %27 = call i32 @jpeg_stdio_src(%struct.jpeg_decompress_struct* %10, i64 %26)
  %28 = load i32, i32* @TRUE, align 4
  %29 = call i32 @jpeg_read_header(%struct.jpeg_decompress_struct* %10, i32 %28)
  %30 = call i32 @jpeg_start_decompress(%struct.jpeg_decompress_struct* %10)
  %31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %32, %34
  store i32 %35, i32* %14, align 4
  %36 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %37, %39
  %41 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %40, %42
  %44 = call i8* @Z_Malloc(i32 %43)
  store i8* %44, i8** %15, align 8
  %45 = load i8*, i8** %15, align 8
  %46 = load i8**, i8*** %7, align 8
  store i8* %45, i8** %46, align 8
  %47 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %8, align 8
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %9, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %59, %22
  %54 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %53
  %60 = load i8*, i8** %15, align 8
  %61 = ptrtoint i8* %60 to i64
  %62 = load i32, i32* %14, align 4
  %63 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %62, %64
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %61, %66
  store i64 %67, i64* %13, align 8
  %68 = load i64, i64* %13, align 8
  %69 = call i32 @jpeg_read_scanlines(%struct.jpeg_decompress_struct* %10, i64 %68, i32 1)
  br label %53

70:                                               ; preds = %53
  %71 = call i32 @jpeg_finish_decompress(%struct.jpeg_decompress_struct* %10)
  %72 = call i32 @jpeg_destroy_decompress(%struct.jpeg_decompress_struct* %10)
  %73 = load i64, i64* %12, align 8
  %74 = call i32 @FS_FCloseFile(i64 %73)
  store i32 1, i32* %5, align 4
  br label %75

75:                                               ; preds = %70, %21
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @FS_FOpenFileRead(i8*, i64*, i32) #1

declare dso_local i32 @jpeg_std_error(%struct.jpeg_error_mgr*) #1

declare dso_local i32 @jpeg_create_decompress(%struct.jpeg_decompress_struct*) #1

declare dso_local i32 @jpeg_stdio_src(%struct.jpeg_decompress_struct*, i64) #1

declare dso_local i32 @jpeg_read_header(%struct.jpeg_decompress_struct*, i32) #1

declare dso_local i32 @jpeg_start_decompress(%struct.jpeg_decompress_struct*) #1

declare dso_local i8* @Z_Malloc(i32) #1

declare dso_local i32 @jpeg_read_scanlines(%struct.jpeg_decompress_struct*, i64, i32) #1

declare dso_local i32 @jpeg_finish_decompress(%struct.jpeg_decompress_struct*) #1

declare dso_local i32 @jpeg_destroy_decompress(%struct.jpeg_decompress_struct*) #1

declare dso_local i32 @FS_FCloseFile(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
