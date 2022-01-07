; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__pic_info.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__pic_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i8* }

@.str = private unnamed_addr constant [5 x i8] c"S\80\F64\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*)* @stbi__pic_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi__pic_info(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [10 x %struct.TYPE_2__], align 16
  %15 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32* %13, i32** %7, align 8
  br label %19

19:                                               ; preds = %18, %4
  %20 = load i32*, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store i32* %13, i32** %8, align 8
  br label %23

23:                                               ; preds = %22, %19
  %24 = load i32*, i32** %9, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  store i32* %13, i32** %9, align 8
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @stbi__pic_is4(i32* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @stbi__rewind(i32* %32)
  store i32 0, i32* %5, align 4
  br label %123

34:                                               ; preds = %27
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @stbi__skip(i32* %35, i32 88)
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @stbi__get16be(i32* %37)
  %39 = load i32*, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @stbi__get16be(i32* %40)
  %42 = load i32*, i32** %8, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = call i64 @stbi__at_eof(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %34
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @stbi__rewind(i32* %47)
  store i32 0, i32* %5, align 4
  br label %123

49:                                               ; preds = %34
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %54, align 4
  %56 = sdiv i32 268435456, %55
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @stbi__rewind(i32* %61)
  store i32 0, i32* %5, align 4
  br label %123

63:                                               ; preds = %53, %49
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @stbi__skip(i32* %64, i32 8)
  br label %66

66:                                               ; preds = %113, %63
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = icmp eq i64 %68, 10
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 0, i32* %5, align 4
  br label %123

71:                                               ; preds = %66
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds [10 x %struct.TYPE_2__], [10 x %struct.TYPE_2__]* %14, i64 0, i64 %74
  store %struct.TYPE_2__* %75, %struct.TYPE_2__** %15, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = call i8* @stbi__get8(i32* %76)
  %78 = ptrtoint i8* %77 to i32
  store i32 %78, i32* %12, align 4
  %79 = load i32*, i32** %6, align 8
  %80 = call i8* @stbi__get8(i32* %79)
  %81 = ptrtoint i8* %80 to i32
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = call i8* @stbi__get8(i32* %84)
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  store i8* %85, i8** %87, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = call i8* @stbi__get8(i32* %88)
  %90 = ptrtoint i8* %89 to i32
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %10, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %10, align 4
  %98 = load i32*, i32** %6, align 8
  %99 = call i64 @stbi__at_eof(i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %71
  %102 = load i32*, i32** %6, align 8
  %103 = call i32 @stbi__rewind(i32* %102)
  store i32 0, i32* %5, align 4
  br label %123

104:                                              ; preds = %71
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 8
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i32*, i32** %6, align 8
  %111 = call i32 @stbi__rewind(i32* %110)
  store i32 0, i32* %5, align 4
  br label %123

112:                                              ; preds = %104
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %66, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %10, align 4
  %118 = and i32 %117, 16
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 4, i32 3
  %122 = load i32*, i32** %9, align 8
  store i32 %121, i32* %122, align 4
  store i32 1, i32* %5, align 4
  br label %123

123:                                              ; preds = %116, %109, %101, %70, %60, %46, %31
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32 @stbi__pic_is4(i32*, i8*) #1

declare dso_local i32 @stbi__rewind(i32*) #1

declare dso_local i32 @stbi__skip(i32*, i32) #1

declare dso_local i32 @stbi__get16be(i32*) #1

declare dso_local i64 @stbi__at_eof(i32*) #1

declare dso_local i8* @stbi__get8(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
