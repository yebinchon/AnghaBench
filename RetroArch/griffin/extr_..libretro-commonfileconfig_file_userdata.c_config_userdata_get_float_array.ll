; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfileconfig_file_userdata.c_config_userdata_get_float_array.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfileconfig_file_userdata.c_config_userdata_get_float_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_file_userdata = type { i32, i32* }
%struct.string_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_userdata_get_float_array(i8* %0, i8* %1, float** %2, i32* %3, float* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca float**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [2 x [256 x i8]], align 16
  %15 = alloca %struct.config_file_userdata*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.string_list*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store float** %2, float*** %10, align 8
  store i32* %3, i32** %11, align 8
  store float* %4, float** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to %struct.config_file_userdata*
  store %struct.config_file_userdata* %20, %struct.config_file_userdata** %15, align 8
  store i8* null, i8** %16, align 8
  %21 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %14, i64 0, i64 0
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %21, i64 0, i64 0
  %23 = load %struct.config_file_userdata*, %struct.config_file_userdata** %15, align 8
  %24 = getelementptr inbounds %struct.config_file_userdata, %struct.config_file_userdata* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @fill_pathname_join_delim(i8* %22, i32 %27, i8* %28, i8 signext 95, i32 256)
  %30 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %14, i64 0, i64 1
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %30, i64 0, i64 0
  %32 = load %struct.config_file_userdata*, %struct.config_file_userdata** %15, align 8
  %33 = getelementptr inbounds %struct.config_file_userdata, %struct.config_file_userdata* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @fill_pathname_join_delim(i8* %31, i32 %36, i8* %37, i8 signext 95, i32 256)
  %39 = load %struct.config_file_userdata*, %struct.config_file_userdata** %15, align 8
  %40 = getelementptr inbounds %struct.config_file_userdata, %struct.config_file_userdata* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %14, i64 0, i64 0
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %42, i64 0, i64 0
  %44 = call i64 @config_get_string(i32 %41, i8* %43, i8** %16)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %6
  %47 = load %struct.config_file_userdata*, %struct.config_file_userdata** %15, align 8
  %48 = getelementptr inbounds %struct.config_file_userdata, %struct.config_file_userdata* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %14, i64 0, i64 1
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %50, i64 0, i64 0
  %52 = call i64 @config_get_string(i32 %49, i8* %51, i8** %16)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %97

54:                                               ; preds = %46, %6
  %55 = load i8*, i8** %16, align 8
  %56 = call %struct.string_list* @string_split(i8* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.string_list* %56, %struct.string_list** %18, align 8
  %57 = load %struct.string_list*, %struct.string_list** %18, align 8
  %58 = getelementptr inbounds %struct.string_list, %struct.string_list* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @calloc(i32 %59, i32 4)
  %61 = inttoptr i64 %60 to float*
  %62 = load float**, float*** %10, align 8
  store float* %61, float** %62, align 8
  store i32 0, i32* %17, align 4
  br label %63

63:                                               ; preds = %85, %54
  %64 = load i32, i32* %17, align 4
  %65 = load %struct.string_list*, %struct.string_list** %18, align 8
  %66 = getelementptr inbounds %struct.string_list, %struct.string_list* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ult i32 %64, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %63
  %70 = load %struct.string_list*, %struct.string_list** %18, align 8
  %71 = getelementptr inbounds %struct.string_list, %struct.string_list* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* %17, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @strtod(i32 %77, i32* null)
  %79 = sitofp i64 %78 to float
  %80 = load float**, float*** %10, align 8
  %81 = load float*, float** %80, align 8
  %82 = load i32, i32* %17, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %81, i64 %83
  store float %79, float* %84, align 4
  br label %85

85:                                               ; preds = %69
  %86 = load i32, i32* %17, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %17, align 4
  br label %63

88:                                               ; preds = %63
  %89 = load %struct.string_list*, %struct.string_list** %18, align 8
  %90 = getelementptr inbounds %struct.string_list, %struct.string_list* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32*, i32** %11, align 8
  store i32 %91, i32* %92, align 4
  %93 = load %struct.string_list*, %struct.string_list** %18, align 8
  %94 = call i32 @string_list_free(%struct.string_list* %93)
  %95 = load i8*, i8** %16, align 8
  %96 = call i32 @free(i8* %95)
  store i32 1, i32* %7, align 4
  br label %112

97:                                               ; preds = %46
  %98 = load i32, i32* %13, align 4
  %99 = call i64 @calloc(i32 %98, i32 4)
  %100 = inttoptr i64 %99 to float*
  %101 = load float**, float*** %10, align 8
  store float* %100, float** %101, align 8
  %102 = load float**, float*** %10, align 8
  %103 = load float*, float** %102, align 8
  %104 = load float*, float** %12, align 8
  %105 = load i32, i32* %13, align 4
  %106 = zext i32 %105 to i64
  %107 = mul i64 4, %106
  %108 = trunc i64 %107 to i32
  %109 = call i32 @memcpy(float* %103, float* %104, i32 %108)
  %110 = load i32, i32* %13, align 4
  %111 = load i32*, i32** %11, align 8
  store i32 %110, i32* %111, align 4
  store i32 0, i32* %7, align 4
  br label %112

112:                                              ; preds = %97, %88
  %113 = load i32, i32* %7, align 4
  ret i32 %113
}

declare dso_local i32 @fill_pathname_join_delim(i8*, i32, i8*, i8 signext, i32) #1

declare dso_local i64 @config_get_string(i32, i8*, i8**) #1

declare dso_local %struct.string_list* @string_split(i8*, i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i64 @strtod(i32, i32*) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memcpy(float*, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
