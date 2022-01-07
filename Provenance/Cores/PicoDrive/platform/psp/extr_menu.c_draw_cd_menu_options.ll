; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_menu.c_draw_cd_menu_options.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_menu.c_draw_cd_menu_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_names_t = type { i32, i32, i32 }

@PicoCDBuffers = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%5iK\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"     OFF\00", align 1
@cdopt_entries = common dso_local global i32 0, align 4
@CDOPT_ENTRY_COUNT = common dso_local global i32 0, align 4
@menu_cdopt_cust_draw = common dso_local global i32 0, align 4
@MA_CDOPT_TESTBIOS_USA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"NOT FOUND\00", align 1
@MA_CDOPT_TESTBIOS_EUR = common dso_local global i64 0, align 8
@MA_CDOPT_TESTBIOS_JAP = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"Press start to test selected BIOS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.bios_names_t*)* @draw_cd_menu_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_cd_menu_options(i32 %0, %struct.bios_names_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bios_names_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca [16 x i8], align 16
  store i32 %0, i32* %3, align 4
  store %struct.bios_names_t* %1, %struct.bios_names_t** %4, align 8
  store i32 105, i32* %5, align 4
  store i32 76, i32* %6, align 4
  %9 = load i32, i32* @PicoCDBuffers, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %13 = load i32, i32* @PicoCDBuffers, align 4
  %14 = mul nsw i32 %13, 2
  %15 = call i32 @sprintf(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %19

16:                                               ; preds = %2
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %18 = call i32 @strcpy(i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %11
  %20 = call i32 (...) @menu_draw_begin()
  %21 = load i32, i32* %5, align 4
  %22 = sub nsw i32 %21, 16
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %3, align 4
  %25 = mul nsw i32 %24, 10
  %26 = add nsw i32 %23, %25
  %27 = call i32 @menu_draw_selection(i32 %22, i32 %26, i32 246)
  %28 = load i32, i32* @cdopt_entries, align 4
  %29 = load i32, i32* @CDOPT_ENTRY_COUNT, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @menu_cdopt_cust_draw, align 4
  %33 = load %struct.bios_names_t*, %struct.bios_names_t** %4, align 8
  %34 = call i32 @me_draw(i32 %28, i32 %29, i32 %30, i32 %31, i32 %32, %struct.bios_names_t* %33)
  %35 = load i32, i32* @cdopt_entries, align 4
  %36 = load i32, i32* @CDOPT_ENTRY_COUNT, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i64 @me_index2id(i32 %35, i32 %36, i32 %37)
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @MA_CDOPT_TESTBIOS_USA, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %19
  %43 = load %struct.bios_names_t*, %struct.bios_names_t** %4, align 8
  %44 = getelementptr inbounds %struct.bios_names_t, %struct.bios_names_t* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @strcmp(i32 %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %68, label %48

48:                                               ; preds = %42, %19
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @MA_CDOPT_TESTBIOS_EUR, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load %struct.bios_names_t*, %struct.bios_names_t** %4, align 8
  %54 = getelementptr inbounds %struct.bios_names_t, %struct.bios_names_t* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @strcmp(i32 %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %52, %48
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* @MA_CDOPT_TESTBIOS_JAP, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = load %struct.bios_names_t*, %struct.bios_names_t** %4, align 8
  %64 = getelementptr inbounds %struct.bios_names_t, %struct.bios_names_t* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @strcmp(i32 %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62, %52, %42
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @text_out16(i32 %69, i32 250, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %62, %58
  %72 = call i32 (...) @menu_draw_end()
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @menu_draw_begin(...) #1

declare dso_local i32 @menu_draw_selection(i32, i32, i32) #1

declare dso_local i32 @me_draw(i32, i32, i32, i32, i32, %struct.bios_names_t*) #1

declare dso_local i64 @me_index2id(i32, i32, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @text_out16(i32, i32, i8*) #1

declare dso_local i32 @menu_draw_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
