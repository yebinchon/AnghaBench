; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_w_wad.c_W_Profile.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_w_wad.c_W_Profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@numlumps = common dso_local global i32 0, align 4
@lumpcache = common dso_local global i8** null, align 8
@PU_PURGELEVEL = common dso_local global i64 0, align 8
@info = common dso_local global i32** null, align 8
@profilecount = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"waddump.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@lumpinfo = common dso_local global %struct.TYPE_4__* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"    %c\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @W_Profile() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [9 x i8], align 1
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %44, %0
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @numlumps, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %47

12:                                               ; preds = %8
  %13 = load i8**, i8*** @lumpcache, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %3, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  store i8 32, i8* %4, align 1
  br label %44

21:                                               ; preds = %12
  %22 = load i8*, i8** %3, align 8
  %23 = bitcast i8* %22 to i32*
  %24 = getelementptr inbounds i32, i32* %23, i64 -8
  %25 = bitcast i32* %24 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %2, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PU_PURGELEVEL, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i8 83, i8* %4, align 1
  br label %33

32:                                               ; preds = %21
  store i8 80, i8* %4, align 1
  br label %33

33:                                               ; preds = %32, %31
  br label %34

34:                                               ; preds = %33
  %35 = load i8, i8* %4, align 1
  %36 = sext i8 %35 to i32
  %37 = load i32**, i32*** @info, align 8
  %38 = load i32, i32* %1, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @profilecount, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32 %36, i32* %43, align 4
  br label %44

44:                                               ; preds = %34, %20
  %45 = load i32, i32* %1, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %1, align 4
  br label %8

47:                                               ; preds = %8
  %48 = load i64, i64* @profilecount, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* @profilecount, align 8
  %50 = call i32* @fopen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %50, i32** %5, align 8
  %51 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 8
  store i8 0, i8* %51, align 1
  store i32 0, i32* %1, align 4
  br label %52

52:                                               ; preds = %117, %47
  %53 = load i32, i32* %1, align 4
  %54 = load i32, i32* @numlumps, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %120

56:                                               ; preds = %52
  %57 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lumpinfo, align 8
  %59 = load i32, i32* %1, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @memcpy(i8* %57, i32 %63, i32 8)
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %76, %56
  %66 = load i32, i32* %6, align 4
  %67 = icmp slt i32 %66, 8
  br i1 %67, label %68, label %79

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = icmp ne i8 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %68
  br label %79

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %65

79:                                               ; preds = %74, %65
  br label %80

80:                                               ; preds = %87, %79
  %81 = load i32, i32* %6, align 4
  %82 = icmp slt i32 %81, 8
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 %85
  store i8 32, i8* %86, align 1
  br label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %80

90:                                               ; preds = %80
  %91 = load i32*, i32** %5, align 8
  %92 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %93 = call i32 (i32*, i8*, ...) @fprintf(i32* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %92)
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %111, %90
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* @profilecount, align 8
  %98 = icmp ult i64 %96, %97
  br i1 %98, label %99, label %114

99:                                               ; preds = %94
  %100 = load i32*, i32** %5, align 8
  %101 = load i32**, i32*** @info, align 8
  %102 = load i32, i32* %1, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32*, i32** %101, i64 %103
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (i32*, i8*, ...) @fprintf(i32* %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %99
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  br label %94

114:                                              ; preds = %94
  %115 = load i32*, i32** %5, align 8
  %116 = call i32 (i32*, i8*, ...) @fprintf(i32* %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114
  %118 = load i32, i32* %1, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %1, align 4
  br label %52

120:                                              ; preds = %52
  %121 = load i32*, i32** %5, align 8
  %122 = call i32 @fclose(i32* %121)
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
