; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfileconfig_file_userdata.c_config_userdata_get_int.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfileconfig_file_userdata.c_config_userdata_get_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_file_userdata = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_userdata_get_int(i8* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x [256 x i8]], align 16
  %11 = alloca %struct.config_file_userdata*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.config_file_userdata*
  store %struct.config_file_userdata* %13, %struct.config_file_userdata** %11, align 8
  %14 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %10, i64 0, i64 0
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %16 = load %struct.config_file_userdata*, %struct.config_file_userdata** %11, align 8
  %17 = getelementptr inbounds %struct.config_file_userdata, %struct.config_file_userdata* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @fill_pathname_join_delim(i8* %15, i32 %20, i8* %21, i8 signext 95, i32 256)
  %23 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %10, i64 0, i64 1
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0
  %25 = load %struct.config_file_userdata*, %struct.config_file_userdata** %11, align 8
  %26 = getelementptr inbounds %struct.config_file_userdata, %struct.config_file_userdata* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @fill_pathname_join_delim(i8* %24, i32 %29, i8* %30, i8 signext 95, i32 256)
  %32 = load %struct.config_file_userdata*, %struct.config_file_userdata** %11, align 8
  %33 = getelementptr inbounds %struct.config_file_userdata, %struct.config_file_userdata* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %10, i64 0, i64 0
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %35, i64 0, i64 0
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @config_get_int(i32 %34, i8* %36, i32* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %4
  %42 = load %struct.config_file_userdata*, %struct.config_file_userdata** %11, align 8
  %43 = getelementptr inbounds %struct.config_file_userdata, %struct.config_file_userdata* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %10, i64 0, i64 1
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %45, i64 0, i64 0
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @config_get_int(i32 %44, i8* %46, i32* %47)
  %49 = icmp ne i32 %48, 0
  br label %50

50:                                               ; preds = %41, %4
  %51 = phi i1 [ true, %4 ], [ %49, %41 ]
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %8, align 4
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i32, i32* %9, align 4
  ret i32 %59
}

declare dso_local i32 @fill_pathname_join_delim(i8*, i32, i8*, i8 signext, i32) #1

declare dso_local i32 @config_get_int(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
