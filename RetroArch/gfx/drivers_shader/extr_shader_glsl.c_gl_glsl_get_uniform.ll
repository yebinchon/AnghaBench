; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_shader_glsl.c_gl_glsl_get_uniform.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_shader_glsl.c_gl_glsl_get_uniform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@glsl_prefixes = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i32, i8*)* @gl_glsl_get_uniform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gl_glsl_get_uniform(%struct.TYPE_5__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca [80 x i8], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %11, align 16
  %12 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @strlcpy(i8* %12, i32 %17, i32 80)
  %19 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @strlcat(i8* %19, i8* %20, i32 80)
  %22 = load i32, i32* %6, align 4
  %23 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %24 = call i64 @glGetUniformLocation(i32 %22, i8* %23)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp sge i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i64, i64* %9, align 8
  store i64 %28, i64* %4, align 8
  br label %59

29:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %55, %29
  %31 = load i32, i32* %8, align 4
  %32 = load i32*, i32** @glsl_prefixes, align 8
  %33 = call i32 @ARRAY_SIZE(i32* %32)
  %34 = icmp ult i32 %31, %33
  br i1 %34, label %35, label %58

35:                                               ; preds = %30
  %36 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %36, align 16
  %37 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %38 = load i32*, i32** @glsl_prefixes, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @strlcpy(i8* %37, i32 %42, i32 80)
  %44 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @strlcat(i8* %44, i8* %45, i32 80)
  %47 = load i32, i32* %6, align 4
  %48 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %49 = call i64 @glGetUniformLocation(i32 %47, i8* %48)
  store i64 %49, i64* %9, align 8
  %50 = load i64, i64* %9, align 8
  %51 = icmp sge i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %35
  %53 = load i64, i64* %9, align 8
  store i64 %53, i64* %4, align 8
  br label %59

54:                                               ; preds = %35
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %8, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %30

58:                                               ; preds = %30
  store i64 -1, i64* %4, align 8
  br label %59

59:                                               ; preds = %58, %52, %27
  %60 = load i64, i64* %4, align 8
  ret i64 %60
}

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i64 @glGetUniformLocation(i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
