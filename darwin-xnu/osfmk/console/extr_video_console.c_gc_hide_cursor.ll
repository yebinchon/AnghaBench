; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_gc_hide_cursor.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_gc_hide_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32)*, i32 (i32, i32, i8, i8, i32, i32)* }

@gc_buffer_columns = common dso_local global i32 0, align 4
@gc_buffer_rows = common dso_local global i32 0, align 4
@gc_buffer_attributes = common dso_local global i8* null, align 8
@gc_buffer_characters = common dso_local global i8* null, align 8
@gc_buffer_colorcodes = common dso_local global i8* null, align 8
@gc_color_code = common dso_local global i8 0, align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@gc_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @gc_hide_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_hide_cursor(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @gc_buffer_columns, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %63

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @gc_buffer_rows, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %63

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @gc_buffer_columns, align 4
  %20 = mul i32 %18, %19
  %21 = load i32, i32* %3, align 4
  %22 = add i32 %20, %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %5, align 8
  %24 = load i8*, i8** @gc_buffer_attributes, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = load i8, i8* %26, align 1
  store i8 %27, i8* %6, align 1
  %28 = load i8*, i8** @gc_buffer_characters, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load i8, i8* %30, align 1
  store i8 %31, i8* %7, align 1
  %32 = load i8*, i8** @gc_buffer_colorcodes, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load i8, i8* %34, align 1
  store i8 %35, i8* %8, align 1
  %36 = load i8, i8* @gc_color_code, align 1
  store i8 %36, i8* %9, align 1
  %37 = load i8, i8* %8, align 1
  %38 = load i32, i32* @TRUE, align 4
  %39 = call i32 @COLOR_CODE_GET(i8 zeroext %37, i32 %38)
  %40 = load i32, i32* @TRUE, align 4
  %41 = call i32 @gc_update_color(i32 %39, i32 %40)
  %42 = load i8, i8* %8, align 1
  %43 = load i32, i32* @FALSE, align 4
  %44 = call i32 @COLOR_CODE_GET(i8 zeroext %42, i32 %43)
  %45 = load i32, i32* @FALSE, align 4
  %46 = call i32 @gc_update_color(i32 %44, i32 %45)
  %47 = load i32 (i32, i32, i8, i8, i32, i32)*, i32 (i32, i32, i8, i8, i32, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gc_ops, i32 0, i32 1), align 8
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i8, i8* %7, align 1
  %51 = load i8, i8* %6, align 1
  %52 = call i32 %47(i32 %48, i32 %49, i8 zeroext %50, i8 zeroext %51, i32 0, i32 0)
  %53 = load i8, i8* %9, align 1
  %54 = load i32, i32* @TRUE, align 4
  %55 = call i32 @COLOR_CODE_GET(i8 zeroext %53, i32 %54)
  %56 = load i32, i32* @TRUE, align 4
  %57 = call i32 @gc_update_color(i32 %55, i32 %56)
  %58 = load i8, i8* %9, align 1
  %59 = load i32, i32* @FALSE, align 4
  %60 = call i32 @COLOR_CODE_GET(i8 zeroext %58, i32 %59)
  %61 = load i32, i32* @FALSE, align 4
  %62 = call i32 @gc_update_color(i32 %60, i32 %61)
  br label %68

63:                                               ; preds = %13, %2
  %64 = load i32 (i32, i32)*, i32 (i32, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gc_ops, i32 0, i32 0), align 8
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 %64(i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %63, %17
  ret void
}

declare dso_local i32 @gc_update_color(i32, i32) #1

declare dso_local i32 @COLOR_CODE_GET(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
