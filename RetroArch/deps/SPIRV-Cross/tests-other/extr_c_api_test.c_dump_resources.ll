; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/SPIRV-Cross/tests-other/extr_c_api_test.c_dump_resources.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/SPIRV-Cross/tests-other/extr_c_api_test.c_dump_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPVC_RESOURCE_TYPE_UNIFORM_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"UBO\00", align 1
@SPVC_RESOURCE_TYPE_STORAGE_BUFFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"SSBO\00", align 1
@SPVC_RESOURCE_TYPE_PUSH_CONSTANT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"Push\00", align 1
@SPVC_RESOURCE_TYPE_SEPARATE_SAMPLERS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"Samplers\00", align 1
@SPVC_RESOURCE_TYPE_SEPARATE_IMAGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@SPVC_RESOURCE_TYPE_SAMPLED_IMAGE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Combined image samplers\00", align 1
@SPVC_RESOURCE_TYPE_STAGE_INPUT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"Stage input\00", align 1
@SPVC_RESOURCE_TYPE_STAGE_OUTPUT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"Stage output\00", align 1
@SPVC_RESOURCE_TYPE_STORAGE_IMAGE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"Storage image\00", align 1
@SPVC_RESOURCE_TYPE_SUBPASS_INPUT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"Subpass input\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @dump_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_resources(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @SPVC_RESOURCE_TYPE_UNIFORM_BUFFER, align 4
  %8 = call i32 @dump_resource_list(i32 %5, i32 %6, i32 %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @SPVC_RESOURCE_TYPE_STORAGE_BUFFER, align 4
  %12 = call i32 @dump_resource_list(i32 %9, i32 %10, i32 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @SPVC_RESOURCE_TYPE_PUSH_CONSTANT, align 4
  %16 = call i32 @dump_resource_list(i32 %13, i32 %14, i32 %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @SPVC_RESOURCE_TYPE_SEPARATE_SAMPLERS, align 4
  %20 = call i32 @dump_resource_list(i32 %17, i32 %18, i32 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @SPVC_RESOURCE_TYPE_SEPARATE_IMAGE, align 4
  %24 = call i32 @dump_resource_list(i32 %21, i32 %22, i32 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @SPVC_RESOURCE_TYPE_SAMPLED_IMAGE, align 4
  %28 = call i32 @dump_resource_list(i32 %25, i32 %26, i32 %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @SPVC_RESOURCE_TYPE_STAGE_INPUT, align 4
  %32 = call i32 @dump_resource_list(i32 %29, i32 %30, i32 %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @SPVC_RESOURCE_TYPE_STAGE_OUTPUT, align 4
  %36 = call i32 @dump_resource_list(i32 %33, i32 %34, i32 %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @SPVC_RESOURCE_TYPE_STORAGE_IMAGE, align 4
  %40 = call i32 @dump_resource_list(i32 %37, i32 %38, i32 %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @SPVC_RESOURCE_TYPE_SUBPASS_INPUT, align 4
  %44 = call i32 @dump_resource_list(i32 %41, i32 %42, i32 %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

declare dso_local i32 @dump_resource_list(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
