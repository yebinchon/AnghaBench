; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_standard_row_validate.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_standard_row_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@STANDARD_ROWMAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"PNG image row[%lu][%d] changed from %.2x to %.2x\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"display row[%lu][%d] changed from %.2x to %.2x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i32, i64)* @standard_row_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @standard_row_validate(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca [64 x i8], align 16
  %15 = alloca [64 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %16 = load i32, i32* @STANDARD_ROWMAX, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = mul nuw i64 4, %17
  %21 = trunc i64 %20 to i32
  %22 = call i32 @memset(i32* %19, i32 178, i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @standard_row(i32 %23, i32* %19, i32 %26, i64 %27)
  %29 = load i32, i32* %8, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %70

31:                                               ; preds = %5
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i64, i64* %10, align 8
  %38 = call i32* @store_image_row(i32 %34, i32 %35, i32 %36, i64 %37)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pixel_cmp(i32* %19, i32* %38, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %70

44:                                               ; preds = %31
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %46 = load i64, i64* %10, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sub nsw i32 %47, 1
  %49 = load i32, i32* %11, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %19, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i64, i64* %10, align 8
  %60 = call i32* @store_image_row(i32 %56, i32 %57, i32 %58, i64 %59)
  %61 = load i32, i32* %11, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @sprintf(i8* %45, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %46, i32 %48, i32 %53, i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %69 = call i32 @png_error(i32 %67, i8* %68)
  br label %70

70:                                               ; preds = %44, %31, %5
  %71 = load i32, i32* %9, align 4
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %73, label %112

73:                                               ; preds = %70
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i64, i64* %10, align 8
  %80 = call i32* @store_image_row(i32 %76, i32 %77, i32 %78, i64 %79)
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @pixel_cmp(i32* %19, i32* %80, i32 %83)
  store i32 %84, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %112

86:                                               ; preds = %73
  %87 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %88 = load i64, i64* %10, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sub nsw i32 %89, 1
  %91 = load i32, i32* %11, align 4
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %19, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load i64, i64* %10, align 8
  %102 = call i32* @store_image_row(i32 %98, i32 %99, i32 %100, i64 %101)
  %103 = load i32, i32* %11, align 4
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @sprintf(i8* %87, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %88, i32 %90, i32 %95, i32 %107)
  %109 = load i32, i32* %7, align 4
  %110 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %111 = call i32 @png_error(i32 %109, i8* %110)
  br label %112

112:                                              ; preds = %86, %73, %70
  %113 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %113)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @standard_row(i32, i32*, i32, i64) #2

declare dso_local i32 @pixel_cmp(i32*, i32*, i32) #2

declare dso_local i32* @store_image_row(i32, i32, i32, i64) #2

declare dso_local i32 @sprintf(i8*, i8*, i64, i32, i32, i32) #2

declare dso_local i32 @png_error(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
