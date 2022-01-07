; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/common/extr_l3dslib.c_ParseFaceL1.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/common/extr_l3dslib.c_ParseFaceL1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@trisfound = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Error: Multiple face chunks\00", align 1
@bytesread = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Error: unexpected end of file\00", align 1
@numtris = common dso_local global i32 0, align 4
@MAXTRIANGLES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Error: Too many triangles\00", align 1
@tris = common dso_local global %struct.TYPE_2__* null, align 8
@vertsfound = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ParseFaceL1(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  store i32* %0, i32** %2, align 8
  %7 = load i32, i32* @trisfound, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @Error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %1
  store i32 1, i32* @trisfound, align 4
  %12 = load i32, i32* @bytesread, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i32*, i32** %2, align 8
  %14 = call i64 @feof(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = call i32 @Error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %11
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @fread(i16* %6, i32 2, i32 1, i32* %19)
  %21 = load i32, i32* @bytesread, align 4
  %22 = sext i32 %21 to i64
  %23 = add i64 %22, 2
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* @bytesread, align 4
  %25 = load i16, i16* %6, align 2
  %26 = zext i16 %25 to i32
  store i32 %26, i32* @numtris, align 4
  %27 = load i32, i32* @numtris, align 4
  %28 = load i32, i32* @MAXTRIANGLES, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = call i32 @Error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %18
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %69, %32
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @numtris, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %72

37:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %65, %37
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 4
  br i1 %40, label %41, label %68

41:                                               ; preds = %38
  %42 = load i32*, i32** %2, align 8
  %43 = call i64 @feof(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 @Error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %41
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 @fread(i16* %6, i32 2, i32 1, i32* %48)
  %50 = load i32, i32* @bytesread, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 %51, 2
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* @bytesread, align 4
  %54 = load i16, i16* %6, align 2
  %55 = zext i16 %54 to i32
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tris, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %55, i32* %64, align 4
  br label %65

65:                                               ; preds = %47
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %38

68:                                               ; preds = %38
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %33

72:                                               ; preds = %33
  %73 = load i64, i64* @vertsfound, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load i32, i32* @trisfound, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = call i32 (...) @StoreAliasTriangles()
  br label %80

80:                                               ; preds = %78, %75, %72
  %81 = load i32, i32* @bytesread, align 4
  %82 = load i32, i32* %5, align 4
  %83 = sub nsw i32 %81, %82
  ret i32 %83
}

declare dso_local i32 @Error(i8*) #1

declare dso_local i64 @feof(i32*) #1

declare dso_local i32 @fread(i16*, i32, i32, i32*) #1

declare dso_local i32 @StoreAliasTriangles(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
