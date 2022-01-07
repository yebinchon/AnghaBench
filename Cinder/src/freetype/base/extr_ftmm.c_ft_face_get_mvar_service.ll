; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/base/extr_ftmm.c_ft_face_get_mvar_service.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/base/extr_ftmm.c_ft_face_get_mvar_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Invalid_Face_Handle = common dso_local global i32 0, align 4
@Invalid_Argument = common dso_local global i32 0, align 4
@METRICS_VARIATIONS = common dso_local global i32 0, align 4
@FT_Err_Ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**)* @ft_face_get_mvar_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ft_face_get_mvar_service(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %7 = load i32**, i32*** %5, align 8
  store i32* null, i32** %7, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @Invalid_Face_Handle, align 4
  %12 = call i32 @FT_THROW(i32 %11)
  store i32 %12, i32* %3, align 4
  br label %33

13:                                               ; preds = %2
  %14 = load i32, i32* @Invalid_Argument, align 4
  %15 = call i32 @FT_ERR(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @FT_HAS_MULTIPLE_MASTERS(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  %21 = load i32**, i32*** %5, align 8
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* @METRICS_VARIATIONS, align 4
  %24 = call i32 @FT_FACE_LOOKUP_SERVICE(i32 %20, i32* %22, i32 %23)
  %25 = load i32**, i32*** %5, align 8
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* @FT_Err_Ok, align 4
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %28, %19
  br label %31

31:                                               ; preds = %30, %13
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %10
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @FT_THROW(i32) #1

declare dso_local i32 @FT_ERR(i32) #1

declare dso_local i64 @FT_HAS_MULTIPLE_MASTERS(i32) #1

declare dso_local i32 @FT_FACE_LOOKUP_SERVICE(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
