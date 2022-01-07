; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/examples/extr_simpleover.c_add_sprite.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/examples/extr_simpleover.c_add_sprite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.sprite = type { i32, i32, i8*, i32 }
%struct.TYPE_7__ = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"%d,%d%c\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"simpleover: sprite %s @ (%d,%d) outside image\0A\00", align 1
@PNG_IMAGE_VERSION = common dso_local global i32 0, align 4
@PNG_FORMAT_RGB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"simpleover: add sprite %s: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"simpleover: --add='%s': invalid position %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64, %struct.sprite*, i32*, i8***)* @add_sprite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_sprite(%struct.TYPE_6__* %0, i64 %1, %struct.sprite* %2, i32* %3, i8*** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sprite*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8***, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.sprite* %2, %struct.sprite** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8*** %4, i8**** %11, align 8
  br label %16

16:                                               ; preds = %124, %5
  %17 = load i32*, i32** %10, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %150

20:                                               ; preds = %16
  %21 = load i8***, i8**** %11, align 8
  %22 = load i8**, i8*** %21, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 45
  br i1 %28, label %29, label %39

29:                                               ; preds = %20
  %30 = load i8***, i8**** %11, align 8
  %31 = load i8**, i8*** %30, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 45
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store i32 1, i32* %6, align 4
  br label %151

39:                                               ; preds = %29, %20
  %40 = load i8***, i8**** %11, align 8
  %41 = load i8**, i8*** %40, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @sscanf(i8* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %13, i32* %14, i8* %12)
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %140

46:                                               ; preds = %39
  %47 = load i32, i32* %13, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %84, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %14, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %84, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp uge i32 %53, %56
  br i1 %57, label %84, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* %14, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp uge i32 %59, %62
  br i1 %63, label %84, label %64

64:                                               ; preds = %58
  %65 = load %struct.sprite*, %struct.sprite** %9, align 8
  %66 = getelementptr inbounds %struct.sprite, %struct.sprite* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %13, align 4
  %72 = sub i32 %70, %71
  %73 = icmp ugt i32 %67, %72
  br i1 %73, label %84, label %74

74:                                               ; preds = %64
  %75 = load %struct.sprite*, %struct.sprite** %9, align 8
  %76 = getelementptr inbounds %struct.sprite, %struct.sprite* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %14, align 4
  %82 = sub i32 %80, %81
  %83 = icmp ugt i32 %77, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %74, %64, %58, %52, %49, %46
  %85 = load i32, i32* @stderr, align 4
  %86 = load %struct.sprite*, %struct.sprite** %9, align 8
  %87 = getelementptr inbounds %struct.sprite, %struct.sprite* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %14, align 4
  %91 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %88, i32 %89, i32 %90)
  store i32 0, i32* %6, align 4
  br label %151

92:                                               ; preds = %74
  %93 = load i32, i32* @PNG_IMAGE_VERSION, align 4
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  store i32 %93, i32* %94, align 4
  %95 = load %struct.sprite*, %struct.sprite** %9, align 8
  %96 = getelementptr inbounds %struct.sprite, %struct.sprite* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @rewind(i32 %97)
  %99 = load %struct.sprite*, %struct.sprite** %9, align 8
  %100 = getelementptr inbounds %struct.sprite, %struct.sprite* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @png_image_begin_read_from_stdio(%struct.TYPE_7__* %15, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %132

104:                                              ; preds = %92
  %105 = load i32, i32* @PNG_FORMAT_RGB, align 4
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  store i32 %105, i32* %106, align 8
  %107 = load i64, i64* %8, align 8
  %108 = load i32, i32* %14, align 4
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = mul i32 %108, %111
  %113 = load i32, i32* %13, align 4
  %114 = add i32 %112, %113
  %115 = mul i32 %114, 3
  %116 = zext i32 %115 to i64
  %117 = add nsw i64 %107, %116
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = mul i32 %120, 3
  %122 = call i64 @png_image_finish_read(%struct.TYPE_7__* %15, i32* null, i64 %117, i32 %121, i32* null)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %104
  %125 = load i8***, i8**** %11, align 8
  %126 = load i8**, i8*** %125, align 8
  %127 = getelementptr inbounds i8*, i8** %126, i32 1
  store i8** %127, i8*** %125, align 8
  %128 = load i32*, i32** %10, align 8
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %128, align 4
  br label %16

131:                                              ; preds = %104
  br label %132

132:                                              ; preds = %131, %92
  %133 = load i32, i32* @stderr, align 4
  %134 = load %struct.sprite*, %struct.sprite** %9, align 8
  %135 = getelementptr inbounds %struct.sprite, %struct.sprite* %134, i32 0, i32 2
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %133, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %136, i8* %138)
  store i32 0, i32* %6, align 4
  br label %151

140:                                              ; preds = %39
  %141 = load i32, i32* @stderr, align 4
  %142 = load %struct.sprite*, %struct.sprite** %9, align 8
  %143 = getelementptr inbounds %struct.sprite, %struct.sprite* %142, i32 0, i32 2
  %144 = load i8*, i8** %143, align 8
  %145 = load i8***, i8**** %11, align 8
  %146 = load i8**, i8*** %145, align 8
  %147 = getelementptr inbounds i8*, i8** %146, i64 0
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %141, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* %144, i8* %148)
  store i32 0, i32* %6, align 4
  br label %151

150:                                              ; preds = %16
  store i32 1, i32* %6, align 4
  br label %151

151:                                              ; preds = %150, %140, %132, %84, %38
  %152 = load i32, i32* %6, align 4
  ret i32 %152
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @rewind(i32) #1

declare dso_local i64 @png_image_begin_read_from_stdio(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @png_image_finish_read(%struct.TYPE_7__*, i32*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
