; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfileconfig_file_userdata.c_config_userdata_get_string.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfileconfig_file_userdata.c_config_userdata_get_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_file_userdata = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_userdata_get_string(i8* %0, i8* %1, i8** %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [2 x [256 x i8]], align 16
  %11 = alloca %struct.config_file_userdata*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.config_file_userdata*
  store %struct.config_file_userdata* %14, %struct.config_file_userdata** %11, align 8
  store i8* null, i8** %12, align 8
  %15 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %10, i64 0, i64 0
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %17 = load %struct.config_file_userdata*, %struct.config_file_userdata** %11, align 8
  %18 = getelementptr inbounds %struct.config_file_userdata, %struct.config_file_userdata* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @fill_pathname_join_delim(i8* %16, i32 %21, i8* %22, i8 signext 95, i32 256)
  %24 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %10, i64 0, i64 1
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 0
  %26 = load %struct.config_file_userdata*, %struct.config_file_userdata** %11, align 8
  %27 = getelementptr inbounds %struct.config_file_userdata, %struct.config_file_userdata* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @fill_pathname_join_delim(i8* %25, i32 %30, i8* %31, i8 signext 95, i32 256)
  %33 = load %struct.config_file_userdata*, %struct.config_file_userdata** %11, align 8
  %34 = getelementptr inbounds %struct.config_file_userdata, %struct.config_file_userdata* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %10, i64 0, i64 0
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %36, i64 0, i64 0
  %38 = call i64 @config_get_string(i32 %35, i8* %37, i8** %12)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %4
  %41 = load %struct.config_file_userdata*, %struct.config_file_userdata** %11, align 8
  %42 = getelementptr inbounds %struct.config_file_userdata, %struct.config_file_userdata* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %10, i64 0, i64 1
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %44, i64 0, i64 0
  %46 = call i64 @config_get_string(i32 %43, i8* %45, i8** %12)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40, %4
  %49 = load i8*, i8** %12, align 8
  %50 = load i8**, i8*** %8, align 8
  store i8* %49, i8** %50, align 8
  store i32 1, i32* %5, align 4
  br label %55

51:                                               ; preds = %40
  %52 = load i8*, i8** %9, align 8
  %53 = call i8* @strdup(i8* %52)
  %54 = load i8**, i8*** %8, align 8
  store i8* %53, i8** %54, align 8
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %51, %48
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @fill_pathname_join_delim(i8*, i32, i8*, i8 signext, i32) #1

declare dso_local i64 @config_get_string(i32, i8*, i8**) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
