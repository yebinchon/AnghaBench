; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__load_gif_main.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__load_gif_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"not GIF\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Image was not as a gif type.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32**, i32*, i32*, i32*, i32*, i32)* @stbi__load_gif_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @stbi__load_gif_main(i32* %0, i32** %1, i32* %2, i32* %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_4__, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32** %1, i32*** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = call i64 @stbi__gif_test(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %167

25:                                               ; preds = %7
  store i32 0, i32* %16, align 4
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  %26 = call i32 @memset(%struct.TYPE_4__* %20, i32 0, i32 24)
  %27 = load i32**, i32*** %10, align 8
  %28 = icmp ne i32** %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32**, i32*** %10, align 8
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %29, %25
  br label %32

32:                                               ; preds = %135, %31
  %33 = load i32*, i32** %9, align 8
  %34 = load i32*, i32** %14, align 8
  %35 = load i32, i32* %15, align 4
  %36 = load i8*, i8** %19, align 8
  %37 = call i8* @stbi__gif_load_next(i32* %33, %struct.TYPE_4__* %20, i32* %34, i32 %35, i8* %36)
  store i8* %37, i8** %17, align 8
  %38 = load i8*, i8** %17, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = bitcast i32* %39 to i8*
  %41 = icmp eq i8* %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  store i8* null, i8** %17, align 8
  br label %43

43:                                               ; preds = %42, %32
  %44 = load i8*, i8** %17, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %134

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %11, align 8
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %12, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %16, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %16, align 4
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %56, %58
  %60 = mul nsw i32 %59, 4
  store i32 %60, i32* %21, align 4
  %61 = load i8*, i8** %18, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %84

63:                                               ; preds = %46
  %64 = load i8*, i8** %18, align 8
  %65 = bitcast i8* %64 to i32*
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* %21, align 4
  %68 = mul nsw i32 %66, %67
  %69 = call i64 @STBI_REALLOC(i32* %65, i32 %68)
  %70 = inttoptr i64 %69 to i8*
  store i8* %70, i8** %18, align 8
  %71 = load i32**, i32*** %10, align 8
  %72 = icmp ne i32** %71, null
  br i1 %72, label %73, label %83

73:                                               ; preds = %63
  %74 = load i32**, i32*** %10, align 8
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %16, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 4, %77
  %79 = trunc i64 %78 to i32
  %80 = call i64 @STBI_REALLOC(i32* %75, i32 %79)
  %81 = inttoptr i64 %80 to i32*
  %82 = load i32**, i32*** %10, align 8
  store i32* %81, i32** %82, align 8
  br label %83

83:                                               ; preds = %73, %63
  br label %101

84:                                               ; preds = %46
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* %21, align 4
  %87 = mul nsw i32 %85, %86
  %88 = call i64 @stbi__malloc(i32 %87)
  %89 = inttoptr i64 %88 to i8*
  store i8* %89, i8** %18, align 8
  %90 = load i32**, i32*** %10, align 8
  %91 = icmp ne i32** %90, null
  br i1 %91, label %92, label %100

92:                                               ; preds = %84
  %93 = load i32, i32* %16, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 4
  %96 = trunc i64 %95 to i32
  %97 = call i64 @stbi__malloc(i32 %96)
  %98 = inttoptr i64 %97 to i32*
  %99 = load i32**, i32*** %10, align 8
  store i32* %98, i32** %99, align 8
  br label %100

100:                                              ; preds = %92, %84
  br label %101

101:                                              ; preds = %100, %83
  %102 = load i8*, i8** %18, align 8
  %103 = load i32, i32* %16, align 4
  %104 = sub nsw i32 %103, 1
  %105 = load i32, i32* %21, align 4
  %106 = mul nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr i8, i8* %102, i64 %107
  %109 = load i8*, i8** %17, align 8
  %110 = load i32, i32* %21, align 4
  %111 = call i32 @memcpy(i8* %108, i8* %109, i32 %110)
  %112 = load i32, i32* %16, align 4
  %113 = icmp sge i32 %112, 2
  br i1 %113, label %114, label %121

114:                                              ; preds = %101
  %115 = load i8*, i8** %18, align 8
  %116 = load i32, i32* %21, align 4
  %117 = mul nsw i32 2, %116
  %118 = sext i32 %117 to i64
  %119 = sub i64 0, %118
  %120 = getelementptr i8, i8* %115, i64 %119
  store i8* %120, i8** %19, align 8
  br label %121

121:                                              ; preds = %114, %101
  %122 = load i32**, i32*** %10, align 8
  %123 = icmp ne i32** %122, null
  br i1 %123, label %124, label %133

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32**, i32*** %10, align 8
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %16, align 4
  %130 = sub i32 %129, 1
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  store i32 %126, i32* %132, align 4
  br label %133

133:                                              ; preds = %124, %121
  br label %134

134:                                              ; preds = %133, %43
  br label %135

135:                                              ; preds = %134
  %136 = load i8*, i8** %17, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %32, label %138

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @STBI_FREE(i32 %140)
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @STBI_FREE(i32 %143)
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @STBI_FREE(i32 %146)
  %148 = load i32, i32* %15, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %138
  %151 = load i32, i32* %15, align 4
  %152 = icmp ne i32 %151, 4
  br i1 %152, label %153, label %163

153:                                              ; preds = %150
  %154 = load i8*, i8** %18, align 8
  %155 = load i32, i32* %15, align 4
  %156 = load i32, i32* %16, align 4
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = mul nsw i32 %156, %158
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i8* @stbi__convert_format(i8* %154, i32 4, i32 %155, i32 %159, i32 %161)
  store i8* %162, i8** %18, align 8
  br label %163

163:                                              ; preds = %153, %150, %138
  %164 = load i32, i32* %16, align 4
  %165 = load i32*, i32** %13, align 8
  store i32 %164, i32* %165, align 4
  %166 = load i8*, i8** %18, align 8
  store i8* %166, i8** %8, align 8
  br label %169

167:                                              ; preds = %7
  %168 = call i8* @stbi__errpuc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i8* %168, i8** %8, align 8
  br label %169

169:                                              ; preds = %167, %163
  %170 = load i8*, i8** %8, align 8
  ret i8* %170
}

declare dso_local i64 @stbi__gif_test(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i8* @stbi__gif_load_next(i32*, %struct.TYPE_4__*, i32*, i32, i8*) #1

declare dso_local i64 @STBI_REALLOC(i32*, i32) #1

declare dso_local i64 @stbi__malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @STBI_FREE(i32) #1

declare dso_local i8* @stbi__convert_format(i8*, i32, i32, i32, i32) #1

declare dso_local i8* @stbi__errpuc(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
