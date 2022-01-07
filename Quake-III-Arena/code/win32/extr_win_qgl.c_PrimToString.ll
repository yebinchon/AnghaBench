; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_qgl.c_PrimToString.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_qgl.c_PrimToString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PrimToString.prim = internal global [1024 x i8] zeroinitializer, align 16
@GL_TRIANGLES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"GL_TRIANGLES\00", align 1
@GL_TRIANGLE_STRIP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"GL_TRIANGLE_STRIP\00", align 1
@GL_TRIANGLE_FAN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"GL_TRIANGLE_FAN\00", align 1
@GL_QUADS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"GL_QUADS\00", align 1
@GL_QUAD_STRIP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"GL_QUAD_STRIP\00", align 1
@GL_POLYGON = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"GL_POLYGON\00", align 1
@GL_POINTS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"GL_POINTS\00", align 1
@GL_LINES = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"GL_LINES\00", align 1
@GL_LINE_STRIP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"GL_LINE_STRIP\00", align 1
@GL_LINE_LOOP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"GL_LINE_LOOP\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @PrimToString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @PrimToString(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @GL_TRIANGLES, align 4
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 @strcpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @PrimToString.prim, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %74

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @GL_TRIANGLE_STRIP, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = call i32 @strcpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @PrimToString.prim, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %73

14:                                               ; preds = %8
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @GL_TRIANGLE_FAN, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 @strcpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @PrimToString.prim, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %72

20:                                               ; preds = %14
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @GL_QUADS, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 @strcpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @PrimToString.prim, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %71

26:                                               ; preds = %20
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @GL_QUAD_STRIP, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 @strcpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @PrimToString.prim, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %70

32:                                               ; preds = %26
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @GL_POLYGON, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call i32 @strcpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @PrimToString.prim, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %69

38:                                               ; preds = %32
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @GL_POINTS, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 @strcpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @PrimToString.prim, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %68

44:                                               ; preds = %38
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @GL_LINES, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = call i32 @strcpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @PrimToString.prim, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %67

50:                                               ; preds = %44
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* @GL_LINE_STRIP, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = call i32 @strcpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @PrimToString.prim, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  br label %66

56:                                               ; preds = %50
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* @GL_LINE_LOOP, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = call i32 @strcpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @PrimToString.prim, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %65

62:                                               ; preds = %56
  %63 = load i32, i32* %2, align 4
  %64 = call i32 @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @PrimToString.prim, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %62, %60
  br label %66

66:                                               ; preds = %65, %54
  br label %67

67:                                               ; preds = %66, %48
  br label %68

68:                                               ; preds = %67, %42
  br label %69

69:                                               ; preds = %68, %36
  br label %70

70:                                               ; preds = %69, %30
  br label %71

71:                                               ; preds = %70, %24
  br label %72

72:                                               ; preds = %71, %18
  br label %73

73:                                               ; preds = %72, %12
  br label %74

74:                                               ; preds = %73, %6
  ret i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @PrimToString.prim, i64 0, i64 0)
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
