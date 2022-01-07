; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_image.c_R_CreateBuiltinImages.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_image.c_R_CreateBuiltinImages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8**, i8*, i8* }

@DEFAULT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"*white\00", align 1
@qfalse = common dso_local global i32 0, align 4
@GL_REPEAT = common dso_local global i32 0, align 4
@tr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"*identityLight\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"*scratch\00", align 1
@qtrue = common dso_local global i32 0, align 4
@GL_CLAMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_CreateBuiltinImages() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = load i32, i32* @DEFAULT_SIZE, align 4
  %7 = zext i32 %6 to i64
  %8 = load i32, i32* @DEFAULT_SIZE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = mul nuw i64 %7, %9
  %12 = alloca [4 x i32], i64 %11, align 16
  store i64 %7, i64* %4, align 8
  store i64 %9, i64* %5, align 8
  %13 = call i32 (...) @R_CreateDefaultImage()
  %14 = bitcast [4 x i32]* %12 to i32***
  %15 = mul nuw i64 %7, %9
  %16 = mul nuw i64 16, %15
  %17 = trunc i64 %16 to i32
  %18 = call i32 @Com_Memset(i32*** %14, i32 255, i32 %17)
  %19 = bitcast [4 x i32]* %12 to i32*
  %20 = load i32, i32* @qfalse, align 4
  %21 = load i32, i32* @qfalse, align 4
  %22 = load i32, i32* @GL_REPEAT, align 4
  %23 = call i8* @R_CreateImage(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %19, i32 8, i32 8, i32 %20, i32 %21, i32 %22)
  store i8* %23, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tr, i32 0, i32 3), align 8
  store i32 0, i32* %1, align 4
  br label %24

24:                                               ; preds = %71, %0
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @DEFAULT_SIZE, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %74

28:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %67, %28
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @DEFAULT_SIZE, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %70

33:                                               ; preds = %29
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tr, i32 0, i32 0), align 8
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = mul nsw i64 %36, %9
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 %37
  %39 = load i32, i32* %1, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %38, i64 %40
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i64 0, i64 2
  store i32 %34, i32* %42, align 8
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = mul nsw i64 %44, %9
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 %45
  %47 = load i32, i32* %1, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %46, i64 %48
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i64 0, i64 1
  store i32 %34, i32* %50, align 4
  %51 = load i32, i32* %2, align 4
  %52 = sext i32 %51 to i64
  %53 = mul nsw i64 %52, %9
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 %53
  %55 = load i32, i32* %1, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i64 %56
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %57, i64 0, i64 0
  store i32 %34, i32* %58, align 16
  %59 = load i32, i32* %2, align 4
  %60 = sext i32 %59 to i64
  %61 = mul nsw i64 %60, %9
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 %61
  %63 = load i32, i32* %1, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %62, i64 %64
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %65, i64 0, i64 3
  store i32 255, i32* %66, align 4
  br label %67

67:                                               ; preds = %33
  %68 = load i32, i32* %2, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %2, align 4
  br label %29

70:                                               ; preds = %29
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %1, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %1, align 4
  br label %24

74:                                               ; preds = %24
  %75 = bitcast [4 x i32]* %12 to i32*
  %76 = load i32, i32* @qfalse, align 4
  %77 = load i32, i32* @qfalse, align 4
  %78 = load i32, i32* @GL_REPEAT, align 4
  %79 = call i8* @R_CreateImage(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %75, i32 8, i32 8, i32 %76, i32 %77, i32 %78)
  store i8* %79, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tr, i32 0, i32 2), align 8
  store i32 0, i32* %1, align 4
  br label %80

80:                                               ; preds = %95, %74
  %81 = load i32, i32* %1, align 4
  %82 = icmp slt i32 %81, 32
  br i1 %82, label %83, label %98

83:                                               ; preds = %80
  %84 = bitcast [4 x i32]* %12 to i32*
  %85 = load i32, i32* @DEFAULT_SIZE, align 4
  %86 = load i32, i32* @DEFAULT_SIZE, align 4
  %87 = load i32, i32* @qfalse, align 4
  %88 = load i32, i32* @qtrue, align 4
  %89 = load i32, i32* @GL_CLAMP, align 4
  %90 = call i8* @R_CreateImage(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89)
  %91 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tr, i32 0, i32 1), align 8
  %92 = load i32, i32* %1, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  store i8* %90, i8** %94, align 8
  br label %95

95:                                               ; preds = %83
  %96 = load i32, i32* %1, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %1, align 4
  br label %80

98:                                               ; preds = %80
  %99 = call i32 (...) @R_CreateDlightImage()
  %100 = call i32 (...) @R_CreateFogImage()
  %101 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %101)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @R_CreateDefaultImage(...) #2

declare dso_local i32 @Com_Memset(i32***, i32, i32) #2

declare dso_local i8* @R_CreateImage(i8*, i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @R_CreateDlightImage(...) #2

declare dso_local i32 @R_CreateFogImage(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
