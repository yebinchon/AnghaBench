; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_blit_symbol_shadow.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_blit_symbol_shadow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@rgui_frame_buf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@FONT_HEIGHT = common dso_local global i32 0, align 4
@FONT_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32)* @blit_symbol_shadow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blit_symbol_shadow(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca [2 x i32], align 4
  %18 = alloca [2 x i32], align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rgui_frame_buf, i32 0, i32 0), align 8
  store i32* %21, i32** %15, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32* @rgui_get_symbol_data(i32 %22)
  store i32* %23, i32** %16, align 8
  %24 = load i32, i32* %11, align 4
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %12, align 4
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %12, align 4
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %12, align 4
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 1
  store i32 %30, i32* %31, align 4
  %32 = load i32*, i32** %16, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %6
  br label %83

35:                                               ; preds = %6
  store i32 0, i32* %14, align 4
  br label %36

36:                                               ; preds = %80, %35
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* @FONT_HEIGHT, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %83

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %14, align 4
  %43 = add i32 %41, %42
  %44 = load i32, i32* %7, align 4
  %45 = mul i32 %43, %44
  %46 = load i32, i32* %8, align 4
  %47 = add i32 %45, %46
  store i32 %47, i32* %19, align 4
  store i32 0, i32* %13, align 4
  br label %48

48:                                               ; preds = %76, %40
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @FONT_WIDTH, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %79

52:                                               ; preds = %48
  %53 = load i32*, i32** %16, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %16, align 8
  %55 = load i32, i32* %53, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %75

57:                                               ; preds = %52
  %58 = load i32*, i32** %15, align 8
  %59 = load i32, i32* %19, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %13, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32* %64, i32** %20, align 8
  %65 = load i32*, i32** %20, align 8
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %67 = call i32 @memcpy(i32* %65, i32* %66, i32 8)
  %68 = load i32, i32* %7, align 4
  %69 = load i32*, i32** %20, align 8
  %70 = zext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32* %71, i32** %20, align 8
  %72 = load i32*, i32** %20, align 8
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  %74 = call i32 @memcpy(i32* %72, i32* %73, i32 8)
  br label %75

75:                                               ; preds = %57, %52
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %13, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %13, align 4
  br label %48

79:                                               ; preds = %48
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %14, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %14, align 4
  br label %36

83:                                               ; preds = %34, %36
  ret void
}

declare dso_local i32* @rgui_get_symbol_data(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
