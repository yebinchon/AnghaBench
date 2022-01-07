; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/SPIRV-Cross/tests-other/extr_c_api_test.c_dump_resource_list.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/SPIRV-Cross/tests-other/extr_c_api_test.c_dump_resource_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i8* }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"ID: %u, BaseTypeID: %u, TypeID: %u, Name: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"  Set: %u, Binding: %u\0A\00", align 1
@SpvDecorationDescriptorSet = common dso_local global i32 0, align 4
@SpvDecorationBinding = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i8*)* @dump_resource_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_resource_list(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %9, align 8
  store i64 0, i64* %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @spvc_resources_get_resource_list_for_type(i32 %12, i32 %13, %struct.TYPE_3__** %9, i64* %10)
  %15 = call i32 @SPVC_CHECKED_CALL(i32 %14)
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %16)
  store i64 0, i64* %11, align 8
  br label %18

18:                                               ; preds = %61, %4
  %19 = load i64, i64* %11, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %64

22:                                               ; preds = %18
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %24 = load i64, i64* %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %29 = load i64, i64* %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %34 = load i64, i64* %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %39 = load i64, i64* %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %32, i32 %37, i8* %42)
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %46 = load i64, i64* %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @SpvDecorationDescriptorSet, align 4
  %51 = call i32 @spvc_compiler_get_decoration(i32 %44, i32 %49, i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %54 = load i64, i64* %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @SpvDecorationBinding, align 4
  %59 = call i32 @spvc_compiler_get_decoration(i32 %52, i32 %57, i32 %58)
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %59)
  br label %61

61:                                               ; preds = %22
  %62 = load i64, i64* %11, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %11, align 8
  br label %18

64:                                               ; preds = %18
  ret void
}

declare dso_local i32 @SPVC_CHECKED_CALL(i32) #1

declare dso_local i32 @spvc_resources_get_resource_list_for_type(i32, i32, %struct.TYPE_3__**, i64*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @spvc_compiler_get_decoration(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
