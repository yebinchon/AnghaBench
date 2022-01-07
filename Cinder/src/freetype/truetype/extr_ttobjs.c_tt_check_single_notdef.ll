; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/truetype/extr_ttobjs.c_tt_check_single_notdef.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/truetype/extr_ttobjs.c_tt_check_single_notdef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c".notdef\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tt_check_single_notdef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tt_check_single_notdef(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [8 x i8], align 1
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %4, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %6, align 8
  br label %15

15:                                               ; preds = %36, %1
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %15
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @tt_face_get_location(%struct.TYPE_3__* %22, i64 %23, i64* %5)
  %25 = load i64, i64* %5, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load i64, i64* %8, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp sgt i64 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %39

33:                                               ; preds = %27
  %34 = load i64, i64* %6, align 8
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %33, %21
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %6, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %6, align 8
  br label %15

39:                                               ; preds = %32, %15
  %40 = load i64, i64* %8, align 8
  %41 = icmp eq i64 %40, 1
  br i1 %41, label %42, label %67

42:                                               ; preds = %39
  %43 = load i64, i64* %7, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @TRUE, align 4
  store i32 %46, i32* %3, align 4
  br label %66

47:                                               ; preds = %42
  %48 = load i32, i32* %2, align 4
  %49 = load i64, i64* %7, align 8
  %50 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %51 = call i32 @FT_Get_Glyph_Name(i32 %48, i64 %49, i8* %50, i32 8)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %47
  %55 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 46
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %61 = call i32 @ft_strncmp(i8* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 8)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* @TRUE, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %59, %54, %47
  br label %66

66:                                               ; preds = %65, %45
  br label %67

67:                                               ; preds = %66, %39
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @tt_face_get_location(%struct.TYPE_3__*, i64, i64*) #1

declare dso_local i32 @FT_Get_Glyph_Name(i32, i64, i8*, i32) #1

declare dso_local i32 @ft_strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
