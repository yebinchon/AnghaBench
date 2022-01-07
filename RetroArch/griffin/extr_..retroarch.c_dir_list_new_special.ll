; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_dir_list_new_special.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_dir_list_new_special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.string_list = type { i32 }
%struct.TYPE_8__ = type { i8* }

@configuration_settings = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"lpl\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"rdb\00", align 1
@RARCH_SHADER_CG = common dso_local global i32 0, align 4
@RARCH_SHADER_GLSL = common dso_local global i32 0, align 4
@RARCH_SHADER_SLANG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.string_list* @dir_list_new_special(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.string_list*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [255 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @configuration_settings, align 8
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %11, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %41 [
    i32 136, label %15
    i32 134, label %17
    i32 129, label %25
    i32 133, label %26
    i32 128, label %35
    i32 135, label %36
    i32 132, label %37
    i32 130, label %38
    i32 131, label %40
  ]

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8
  store i8* %16, i8** %9, align 8
  br label %42

17:                                               ; preds = %3
  %18 = getelementptr inbounds [255 x i8], [255 x i8]* %8, i64 0, i64 0
  store i8 0, i8* %18, align 16
  %19 = getelementptr inbounds [255 x i8], [255 x i8]* %8, i64 0, i64 0
  %20 = call i32 @frontend_driver_get_core_extension(i8* %19, i32 255)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store %struct.string_list* null, %struct.string_list** %4, align 8
  br label %54

23:                                               ; preds = %17
  %24 = getelementptr inbounds [255 x i8], [255 x i8]* %8, i64 0, i64 0
  store i8* %24, i8** %9, align 8
  br label %42

25:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  br label %26

26:                                               ; preds = %3, %25
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %12, align 8
  %27 = call i32 @core_info_get_list(%struct.TYPE_8__** %12)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %29 = icmp ne %struct.TYPE_8__* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %9, align 8
  br label %34

34:                                               ; preds = %30, %26
  br label %42

35:                                               ; preds = %3
  br label %42

36:                                               ; preds = %3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %42

37:                                               ; preds = %3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %42

38:                                               ; preds = %3
  %39 = load i8*, i8** %7, align 8
  store i8* %39, i8** %9, align 8
  br label %42

40:                                               ; preds = %3
  br label %41

41:                                               ; preds = %3, %40
  store %struct.string_list* null, %struct.string_list** %4, align 8
  br label %54

42:                                               ; preds = %38, %37, %36, %35, %34, %23, %15
  %43 = load i8*, i8** %5, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 133
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %10, align 4
  %53 = call %struct.string_list* @dir_list_new(i8* %43, i8* %44, i32 0, i32 %48, i32 %51, i32 %52)
  store %struct.string_list* %53, %struct.string_list** %4, align 8
  br label %54

54:                                               ; preds = %42, %41, %22
  %55 = load %struct.string_list*, %struct.string_list** %4, align 8
  ret %struct.string_list* %55
}

declare dso_local i32 @frontend_driver_get_core_extension(i8*, i32) #1

declare dso_local i32 @core_info_get_list(%struct.TYPE_8__**) #1

declare dso_local %struct.string_list* @dir_list_new(i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
