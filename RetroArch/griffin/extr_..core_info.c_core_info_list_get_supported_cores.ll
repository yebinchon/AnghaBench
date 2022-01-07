; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..core_info.c_core_info_list_get_supported_cores.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..core_info.c_core_info_list_get_supported_cores.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.TYPE_3__ = type { i64, i32* }

@core_info_tmp_path = common dso_local global i8* null, align 8
@core_info_qsort_cmp = common dso_local global i32 0, align 4
@core_info_tmp_list = common dso_local global %struct.string_list* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @core_info_list_get_supported_cores(%struct.TYPE_3__* %0, i8* %1, i32** %2, i64* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i64* %3, i64** %8, align 8
  store i64 0, i64* %10, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  br label %55

15:                                               ; preds = %4
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** @core_info_tmp_path, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @core_info_qsort_cmp, align 4
  %24 = call i32 @qsort(i32* %19, i64 %22, i32 4, i32 %23)
  store i64 0, i64* %9, align 8
  br label %25

25:                                               ; preds = %43, %15
  %26 = load i64, i64* %9, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %25
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32* %36, i32** %11, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i64 @core_info_does_support_file(i32* %37, i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  br label %43

42:                                               ; preds = %31
  br label %48

43:                                               ; preds = %41
  %44 = load i64, i64* %9, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %10, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %10, align 8
  br label %25

48:                                               ; preds = %42, %25
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32**, i32*** %7, align 8
  store i32* %51, i32** %52, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i64*, i64** %8, align 8
  store i64 %53, i64* %54, align 8
  br label %55

55:                                               ; preds = %48, %14
  ret void
}

declare dso_local i32 @qsort(i32*, i64, i32, i32) #1

declare dso_local i64 @core_info_does_support_file(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
