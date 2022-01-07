; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_rgui_color_rect.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_rgui_color_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32, i32, i32, i32)* @rgui_color_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rgui_color_rect(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ule i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %8
  %28 = load i32, i32* %12, align 4
  br label %31

29:                                               ; preds = %8
  %30 = load i32, i32* %10, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  store i32 %32, i32* %19, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ule i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %13, align 4
  br label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %11, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %20, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %14, align 4
  %44 = add i32 %42, %43
  store i32 %44, i32* %21, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %15, align 4
  %47 = add i32 %45, %46
  store i32 %47, i32* %22, align 4
  %48 = load i32, i32* %21, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ule i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = load i32, i32* %21, align 4
  br label %55

53:                                               ; preds = %40
  %54 = load i32, i32* %10, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  store i32 %56, i32* %21, align 4
  %57 = load i32, i32* %22, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ule i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* %22, align 4
  br label %64

62:                                               ; preds = %55
  %63 = load i32, i32* %11, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  store i32 %65, i32* %22, align 4
  %66 = load i32, i32* %20, align 4
  store i32 %66, i32* %18, align 4
  br label %67

67:                                               ; preds = %93, %64
  %68 = load i32, i32* %18, align 4
  %69 = load i32, i32* %22, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %96

71:                                               ; preds = %67
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %18, align 4
  %74 = load i32, i32* %10, align 4
  %75 = mul i32 %73, %74
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %72, i64 %76
  store i32* %77, i32** %23, align 8
  %78 = load i32, i32* %19, align 4
  store i32 %78, i32* %17, align 4
  br label %79

79:                                               ; preds = %89, %71
  %80 = load i32, i32* %17, align 4
  %81 = load i32, i32* %21, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %79
  %84 = load i32, i32* %16, align 4
  %85 = load i32*, i32** %23, align 8
  %86 = load i32, i32* %17, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %84, i32* %88, align 4
  br label %89

89:                                               ; preds = %83
  %90 = load i32, i32* %17, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %17, align 4
  br label %79

92:                                               ; preds = %79
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %18, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %18, align 4
  br label %67

96:                                               ; preds = %67
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
