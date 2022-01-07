; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d9.c_renderchain_d3d_init_first.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d9.c_renderchain_d3d_init_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8* (...)* }

@renderchain_d3d_init_first.renderchain_d3d_drivers = internal global [1 x %struct.TYPE_5__*] zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i8] c"cg_d3d9\00", align 1
@RARCH_SHADER_CG = common dso_local global i32 0, align 4
@supported_shader_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"hlsl_d3d9\00", align 1
@RARCH_SHADER_HLSL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_5__**, i8**)* @renderchain_d3d_init_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @renderchain_d3d_init_first(i32 %0, %struct.TYPE_5__** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %65 [
    i32 131, label %11
    i32 130, label %64
  ]

11:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %60, %11
  %13 = load i32, i32* %8, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [1 x %struct.TYPE_5__*], [1 x %struct.TYPE_5__*]* @renderchain_d3d_init_first.renderchain_d3d_drivers, i64 0, i64 %14
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %18, label %63

18:                                               ; preds = %12
  %19 = load i32, i32* %8, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [1 x %struct.TYPE_5__*], [1 x %struct.TYPE_5__*]* @renderchain_d3d_init_first.renderchain_d3d_drivers, i64 0, i64 %20
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i8* (...)*, i8* (...)** %23, align 8
  %25 = call i8* (...) %24()
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  br label %60

29:                                               ; preds = %18
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [1 x %struct.TYPE_5__*], [1 x %struct.TYPE_5__*]* @renderchain_d3d_init_first.renderchain_d3d_drivers, i64 0, i64 %31
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %34, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i8**, i8*** %7, align 8
  store i8* %35, i8** %36, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds [1 x %struct.TYPE_5__*], [1 x %struct.TYPE_5__*]* @renderchain_d3d_init_first.renderchain_d3d_drivers, i64 0, i64 %38
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @string_is_equal(i32 %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %29
  %46 = load i32, i32* @RARCH_SHADER_CG, align 4
  store i32 %46, i32* @supported_shader_type, align 4
  br label %59

47:                                               ; preds = %29
  %48 = load i32, i32* %8, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds [1 x %struct.TYPE_5__*], [1 x %struct.TYPE_5__*]* @renderchain_d3d_init_first.renderchain_d3d_drivers, i64 0, i64 %49
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @string_is_equal(i32 %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i32, i32* @RARCH_SHADER_HLSL, align 4
  store i32 %57, i32* @supported_shader_type, align 4
  br label %58

58:                                               ; preds = %56, %47
  br label %59

59:                                               ; preds = %58, %45
  store i32 1, i32* %4, align 4
  br label %67

60:                                               ; preds = %28
  %61 = load i32, i32* %8, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %12

63:                                               ; preds = %12
  br label %66

64:                                               ; preds = %3
  br label %65

65:                                               ; preds = %3, %64
  br label %66

66:                                               ; preds = %65, %63
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %59
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @string_is_equal(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
