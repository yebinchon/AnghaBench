; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_gc_clear_screen.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_gc_clear_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32, i32, i32, i32)* }

@gc_buffer_size = common dso_local global i32 0, align 4
@gc_buffer_columns = common dso_local global i32 0, align 4
@gc_buffer_rows = common dso_local global i32 0, align 4
@gc_buffer_attributes = common dso_local global i32 0, align 4
@ATTR_NONE = common dso_local global i8 0, align 1
@gc_buffer_characters = common dso_local global i32 0, align 4
@gc_buffer_colorcodes = common dso_local global i32 0, align 4
@gc_color_code = common dso_local global i8 0, align 1
@gc_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32)* @gc_clear_screen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_clear_screen(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* @gc_buffer_size, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %5
  br label %93

16:                                               ; preds = %5
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @gc_buffer_columns, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %85

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @gc_buffer_rows, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %85

24:                                               ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @gc_buffer_rows, align 4
  %27 = icmp ule i32 %25, %26
  br i1 %27, label %28, label %85

28:                                               ; preds = %24
  %29 = load i32, i32* %10, align 4
  switch i32 %29, label %57 [
    i32 0, label %30
    i32 1, label %40
    i32 2, label %49
  ]

30:                                               ; preds = %28
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @gc_buffer_columns, align 4
  %33 = mul i32 %31, %32
  %34 = load i32, i32* %6, align 4
  %35 = add i32 %33, %34
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @gc_buffer_columns, align 4
  %38 = mul i32 %36, %37
  %39 = sub i32 %38, 1
  store i32 %39, i32* %12, align 4
  br label %58

40:                                               ; preds = %28
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @gc_buffer_columns, align 4
  %43 = mul i32 %41, %42
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @gc_buffer_columns, align 4
  %46 = mul i32 %44, %45
  %47 = load i32, i32* %6, align 4
  %48 = add i32 %46, %47
  store i32 %48, i32* %12, align 4
  br label %58

49:                                               ; preds = %28
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @gc_buffer_columns, align 4
  %52 = mul i32 %50, %51
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @gc_buffer_columns, align 4
  %55 = mul i32 %53, %54
  %56 = sub i32 %55, 1
  store i32 %56, i32* %12, align 4
  br label %58

57:                                               ; preds = %28
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %57, %49, %40, %30
  %59 = load i32, i32* @gc_buffer_attributes, align 4
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i8, i8* @ATTR_NONE, align 1
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %11, align 4
  %65 = sub nsw i32 %63, %64
  %66 = add nsw i32 %65, 1
  %67 = call i32 @memset(i32 %61, i8 signext %62, i32 %66)
  %68 = load i32, i32* @gc_buffer_characters, align 4
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %11, align 4
  %73 = sub nsw i32 %71, %72
  %74 = add nsw i32 %73, 1
  %75 = call i32 @memset(i32 %70, i8 signext 32, i32 %74)
  %76 = load i32, i32* @gc_buffer_colorcodes, align 4
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %76, %77
  %79 = load i8, i8* @gc_color_code, align 1
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %11, align 4
  %82 = sub nsw i32 %80, %81
  %83 = add nsw i32 %82, 1
  %84 = call i32 @memset(i32 %78, i8 signext %79, i32 %83)
  br label %85

85:                                               ; preds = %58, %24, %20, %16
  %86 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gc_ops, i32 0, i32 0), align 8
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i32 %86(i32 %87, i32 %88, i32 %89, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %85, %15
  ret void
}

declare dso_local i32 @memset(i32, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
