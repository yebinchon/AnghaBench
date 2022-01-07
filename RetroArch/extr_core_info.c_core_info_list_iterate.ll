; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_core_info.c_core_info_list_iterate.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_core_info.c_core_info_list_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c".info\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*)* @core_info_list_iterate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @core_info_list_iterate(i8* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 1
  store i64 %12, i64* %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i32* null, i32** %9, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %49

16:                                               ; preds = %2
  %17 = load i64, i64* %6, align 8
  %18 = call i64 @malloc(i64 %17)
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 0, i8* %21, align 1
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @fill_pathname_base_noext(i8* %22, i8* %23, i64 %24)
  %26 = load i8*, i8** %7, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @strlcat(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @malloc(i64 %29)
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %8, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @fill_pathname_join(i8* %32, i8* %33, i8* %34, i64 %35)
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @free(i8* %37)
  store i8* null, i8** %7, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i64 @path_is_valid(i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %16
  %43 = load i8*, i8** %8, align 8
  %44 = call i32* @config_file_new_from_path_to_string(i8* %43)
  store i32* %44, i32** %9, align 8
  br label %45

45:                                               ; preds = %42, %16
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @free(i8* %46)
  %48 = load i32*, i32** %9, align 8
  store i32* %48, i32** %3, align 8
  br label %49

49:                                               ; preds = %45, %15
  %50 = load i32*, i32** %3, align 8
  ret i32* %50
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @fill_pathname_base_noext(i8*, i8*, i64) #1

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

declare dso_local i32 @fill_pathname_join(i8*, i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @path_is_valid(i8*) #1

declare dso_local i32* @config_file_new_from_path_to_string(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
