; ModuleID = '/home/carl/AnghaBench/esp-idf/components/sdmmc/extr_sdmmc_io.c_sdmmc_io_print_cis_info.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/sdmmc/extr_sdmmc_io.c_sdmmc_io_print_cis_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 (%struct.TYPE_4__*, i32*, i32*)*, i64 }

@.str = private unnamed_addr constant [4 x i8] c"CIS\00", align 1
@ESP_LOG_DEBUG = common dso_local global i32 0, align 4
@stdout = common dso_local global i32* null, align 8
@ESP_OK = common dso_local global i64 0, align 8
@CISTPL_CODE_END = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sdmmc_io_print_cis_info(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i32, i32* @ESP_LOG_DEBUG, align 4
  %15 = call i32 @ESP_LOG_BUFFER_HEXDUMP(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %12, i64 %13, i32 %14)
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i32*, i32** @stdout, align 8
  store i32* %19, i32** %7, align 8
  br label %20

20:                                               ; preds = %18, %3
  %21 = load i32*, i32** %5, align 8
  store i32* %21, i32** %8, align 8
  br label %22

22:                                               ; preds = %67, %20
  %23 = load i32*, i32** %8, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_4__* @get_tuple(i32 %25)
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %9, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %10, align 4
  %30 = load i64, i64* @ESP_OK, align 8
  store i64 %30, i64* %11, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %22
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64 (%struct.TYPE_4__*, i32*, i32*)*, i64 (%struct.TYPE_4__*, i32*, i32*)** %35, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i64 %36(%struct.TYPE_4__* %37, i32* %38, i32* %39)
  store i64 %40, i64* %11, align 8
  br label %45

41:                                               ; preds = %22
  %42 = load i32*, i32** %8, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call i64 @cis_tuple_func_default(i32* null, i32* %42, i32* %43)
  store i64 %44, i64* %11, align 8
  br label %45

45:                                               ; preds = %41, %33
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* @ESP_OK, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i64, i64* %11, align 8
  store i64 %50, i64* %4, align 8
  br label %75

51:                                               ; preds = %45
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 2, %52
  %54 = load i32*, i32** %8, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32* %56, i32** %8, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %58 = icmp ne %struct.TYPE_4__* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %51
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @CISTPL_CODE_END, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %73

66:                                               ; preds = %59, %51
  br label %67

67:                                               ; preds = %66
  %68 = load i32*, i32** %8, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = load i64, i64* %6, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = icmp ult i32* %68, %71
  br i1 %72, label %22, label %73

73:                                               ; preds = %67, %65
  %74 = load i64, i64* @ESP_OK, align 8
  store i64 %74, i64* %4, align 8
  br label %75

75:                                               ; preds = %73, %49
  %76 = load i64, i64* %4, align 8
  ret i64 %76
}

declare dso_local i32 @ESP_LOG_BUFFER_HEXDUMP(i8*, i32*, i64, i32) #1

declare dso_local %struct.TYPE_4__* @get_tuple(i32) #1

declare dso_local i64 @cis_tuple_func_default(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
