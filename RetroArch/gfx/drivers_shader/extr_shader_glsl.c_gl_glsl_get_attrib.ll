; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_shader_glsl.c_gl_glsl_get_attrib.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_shader_glsl.c_gl_glsl_get_attrib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@glsl_prefixes = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i32, i8*)* @gl_glsl_get_attrib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gl_glsl_get_attrib(%struct.TYPE_5__* %0, i32 %1, i8* %2) #0 {
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
  br label %58

29:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %54, %29
  %31 = load i32, i32* %8, align 4
  %32 = load i32*, i32** @glsl_prefixes, align 8
  %33 = call i32 @ARRAY_SIZE(i32* %32)
  %34 = icmp ult i32 %31, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %30
  %36 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %37 = load i32*, i32** @glsl_prefixes, align 8
  %38 = load i32, i32* %8, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @strlcpy(i8* %36, i32 %41, i32 80)
  %43 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @strlcat(i8* %43, i8* %44, i32 80)
  %46 = load i32, i32* %6, align 4
  %47 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %48 = call i64 @glGetAttribLocation(i32 %46, i8* %47)
  store i64 %48, i64* %9, align 8
  %49 = load i64, i64* %9, align 8
  %50 = icmp sge i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %35
  %52 = load i64, i64* %9, align 8
  store i64 %52, i64* %4, align 8
  br label %58

53:                                               ; preds = %35
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %8, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %30

57:                                               ; preds = %30
  store i64 -1, i64* %4, align 8
  br label %58

58:                                               ; preds = %57, %51, %27
  %59 = load i64, i64* %4, align 8
  ret i64 %59
}

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i64 @glGetUniformLocation(i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @glGetAttribLocation(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
