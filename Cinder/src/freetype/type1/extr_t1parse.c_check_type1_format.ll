; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/type1/extr_t1parse.c_check_type1_format.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/type1/extr_t1parse.c_check_type1_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@FT_Err_Ok = common dso_local global i64 0, align 8
@Unknown_File_Format = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i8*, i64)* @check_type1_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @check_type1_format(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = call i64 @FT_STREAM_SEEK(i32 0)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %45

13:                                               ; preds = %3
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = call i64 @read_pfb_tag(%struct.TYPE_4__* %14, i32* %8, i32* %9)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %45

19:                                               ; preds = %13
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 32769
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = call i64 @FT_STREAM_SEEK(i32 0)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %45

26:                                               ; preds = %22, %19
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @FT_FRAME_ENTER(i64 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* @FT_Err_Ok, align 8
  store i64 %31, i64* %7, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i64 @ft_memcmp(i32 %34, i8* %35, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @Unknown_File_Format, align 4
  %41 = call i64 @FT_THROW(i32 %40)
  store i64 %41, i64* %7, align 8
  br label %42

42:                                               ; preds = %39, %30
  %43 = call i32 (...) @FT_FRAME_EXIT()
  br label %44

44:                                               ; preds = %42, %26
  br label %45

45:                                               ; preds = %44, %25, %18, %12
  %46 = load i64, i64* %7, align 8
  ret i64 %46
}

declare dso_local i64 @FT_STREAM_SEEK(i32) #1

declare dso_local i64 @read_pfb_tag(%struct.TYPE_4__*, i32*, i32*) #1

declare dso_local i32 @FT_FRAME_ENTER(i64) #1

declare dso_local i64 @ft_memcmp(i32, i8*, i64) #1

declare dso_local i64 @FT_THROW(i32) #1

declare dso_local i32 @FT_FRAME_EXIT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
