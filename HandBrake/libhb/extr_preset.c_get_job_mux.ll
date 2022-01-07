; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_get_job_mux.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_get_job_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"Destination\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Mux\00", align 1
@HB_VALUE_TYPE_STRING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"Invalid container (%s)\00", align 1
@HB_MUX_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @get_job_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_job_mux(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i8* @hb_dict_get(i32* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i8* @hb_dict_get(i32* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i64 @hb_value_type(i32* %15)
  %17 = load i64, i64* @HB_VALUE_TYPE_STRING, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %1
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @hb_value_get_string(i32* %20)
  %22 = call i32 @hb_container_get_from_name(i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @hb_value_get_string(i32* %26)
  %28 = call i32 @hb_container_get_from_extension(i32 %27)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %25, %19
  br label %33

30:                                               ; preds = %1
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @hb_value_get_int(i32* %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %30, %29
  %34 = load i32, i32* %4, align 4
  %35 = call i32* @hb_container_get_from_format(i32 %34)
  store i32* %35, i32** %7, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load i32*, i32** %6, align 8
  %40 = call i8* @hb_value_get_string_xform(i32* %39)
  store i8* %40, i8** %8, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @hb_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @free(i8* %43)
  %45 = load i32, i32* @HB_MUX_INVALID, align 4
  store i32 %45, i32* %2, align 4
  br label %48

46:                                               ; preds = %33
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %38
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i8* @hb_dict_get(i32*, i8*) #1

declare dso_local i64 @hb_value_type(i32*) #1

declare dso_local i32 @hb_container_get_from_name(i32) #1

declare dso_local i32 @hb_value_get_string(i32*) #1

declare dso_local i32 @hb_container_get_from_extension(i32) #1

declare dso_local i32 @hb_value_get_int(i32*) #1

declare dso_local i32* @hb_container_get_from_format(i32) #1

declare dso_local i8* @hb_value_get_string_xform(i32*) #1

declare dso_local i32 @hb_error(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
