; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngwutil.c_png_write_sCAL_s.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngwutil.c_png_write_sCAL_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"in png_write_sCAL_s\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Can't write sCAL (buffer too small)\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"sCAL total length = %u\00", align 1
@png_sCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_write_sCAL_s(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [64 x i64], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @strlen(i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @strlen(i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = add nsw i32 %18, %19
  %21 = add nsw i32 %20, 2
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp sgt i32 %22, 64
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @png_warning(i32 %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %52

27:                                               ; preds = %4
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [64 x i64], [64 x i64]* %9, i64 0, i64 0
  store i64 %29, i64* %30, align 16
  %31 = getelementptr inbounds [64 x i64], [64 x i64]* %9, i64 0, i64 0
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, 1
  %36 = call i32 @memcpy(i64* %32, i32 %33, i32 %35)
  %37 = getelementptr inbounds [64 x i64], [64 x i64]* %9, i64 0, i64 0
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = getelementptr inbounds i64, i64* %40, i64 2
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @memcpy(i64* %41, i32 %42, i32 %43)
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @png_debug1(i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @png_sCAL, align 4
  %49 = getelementptr inbounds [64 x i64], [64 x i64]* %9, i64 0, i64 0
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @png_write_complete_chunk(i32 %47, i32 %48, i64* %49, i32 %50)
  br label %52

52:                                               ; preds = %27, %24
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @png_warning(i32, i8*) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i32 @png_debug1(i32, i8*, i32) #1

declare dso_local i32 @png_write_complete_chunk(i32, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
