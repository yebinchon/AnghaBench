; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/extr_video_shader_parse.c_shader_write_scale_dim.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/extr_video_shader_parse.c_shader_write_scale_dim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"scale_type_%s%u\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"scale_%s%u\00", align 1
@RARCH_SCALE_ABSOLUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32, float, i32, i32)* @shader_write_scale_dim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_write_scale_dim(i32* %0, i8* %1, i32 %2, float %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [64 x i8], align 16
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store float %3, float* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  store i8 0, i8* %14, align 16
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %16 = load i8*, i8** %8, align 8
  %17 = load i32, i32* %12, align 4
  %18 = call i32 @snprintf(i8* %15, i32 64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %17)
  %19 = load i32*, i32** %7, align 8
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @scale_type_to_str(i32 %21)
  %23 = call i32 @config_set_string(i32* %19, i8* %20, i32 %22)
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @snprintf(i8* %24, i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %25, i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @RARCH_SCALE_ABSOLUTE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %6
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @config_set_int(i32* %32, i8* %33, i32 %34)
  br label %41

36:                                               ; preds = %6
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %39 = load float, float* %10, align 4
  %40 = call i32 @config_set_float(i32* %37, i8* %38, float %39)
  br label %41

41:                                               ; preds = %36, %31
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @config_set_string(i32*, i8*, i32) #1

declare dso_local i32 @scale_type_to_str(i32) #1

declare dso_local i32 @config_set_int(i32*, i8*, i32) #1

declare dso_local i32 @config_set_float(i32*, i8*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
