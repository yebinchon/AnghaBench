; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__compute_huffman_codes.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__compute_huffman_codes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@stbi__compute_huffman_codes.length_dezigzag = internal constant [19 x i32] [i32 16, i32 17, i32 18, i32 0, i32 8, i32 7, i32 9, i32 6, i32 10, i32 5, i32 11, i32 4, i32 12, i32 3, i32 13, i32 2, i32 14, i32 1, i32 15], align 16
@.str = private unnamed_addr constant [16 x i8] c"bad codelengths\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Corrupt PNG\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @stbi__compute_huffman_codes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi__compute_huffman_codes(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [455 x i32], align 16
  %6 = alloca [19 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = call i32 @stbi__zreceive(%struct.TYPE_5__* %16, i32 5)
  %18 = add nsw i32 %17, 257
  store i32 %18, i32* %9, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = call i32 @stbi__zreceive(%struct.TYPE_5__* %19, i32 5)
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %10, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = call i32 @stbi__zreceive(%struct.TYPE_5__* %22, i32 4)
  %24 = add nsw i32 %23, 4
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %12, align 4
  %28 = getelementptr inbounds [19 x i32], [19 x i32]* %6, i64 0, i64 0
  %29 = call i32 @memset(i32* %28, i32 0, i32 76)
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %44, %1
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = call i32 @stbi__zreceive(%struct.TYPE_5__* %35, i32 3)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [19 x i32], [19 x i32]* @stbi__compute_huffman_codes.length_dezigzag, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [19 x i32], [19 x i32]* %6, i64 0, i64 %42
  store i32 %37, i32* %43, align 4
  br label %44

44:                                               ; preds = %34
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %30

47:                                               ; preds = %30
  %48 = getelementptr inbounds [19 x i32], [19 x i32]* %6, i64 0, i64 0
  %49 = call i32 @stbi__zbuild_huffman(i32* %4, i32* %48, i32 19)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %155

52:                                               ; preds = %47
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %128, %52
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %129

57:                                               ; preds = %53
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %59 = call i32 @stbi__zhuffman_decode(%struct.TYPE_5__* %58, i32* %4)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %14, align 4
  %64 = icmp sge i32 %63, 19
  br i1 %64, label %65, label %67

65:                                               ; preds = %62, %57
  %66 = call i32 @stbi__err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %66, i32* %2, align 4
  br label %155

67:                                               ; preds = %62
  %68 = load i32, i32* %14, align 4
  %69 = icmp slt i32 %68, 16
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds [455 x i32], [455 x i32]* %5, i64 0, i64 %74
  store i32 %71, i32* %75, align 4
  br label %128

76:                                               ; preds = %67
  store i32 0, i32* %15, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp eq i32 %77, 16
  br i1 %78, label %79, label %93

79:                                               ; preds = %76
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %81 = call i32 @stbi__zreceive(%struct.TYPE_5__* %80, i32 2)
  %82 = add nsw i32 %81, 3
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = call i32 @stbi__err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %86, i32* %2, align 4
  br label %155

87:                                               ; preds = %79
  %88 = load i32, i32* %8, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [455 x i32], [455 x i32]* %5, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %15, align 4
  br label %109

93:                                               ; preds = %76
  %94 = load i32, i32* %14, align 4
  %95 = icmp eq i32 %94, 17
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %98 = call i32 @stbi__zreceive(%struct.TYPE_5__* %97, i32 3)
  %99 = add nsw i32 %98, 3
  store i32 %99, i32* %14, align 4
  br label %108

100:                                              ; preds = %93
  %101 = load i32, i32* %14, align 4
  %102 = icmp eq i32 %101, 18
  %103 = zext i1 %102 to i32
  %104 = call i32 @STBI_ASSERT(i32 %103)
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %106 = call i32 @stbi__zreceive(%struct.TYPE_5__* %105, i32 7)
  %107 = add nsw i32 %106, 11
  store i32 %107, i32* %14, align 4
  br label %108

108:                                              ; preds = %100, %96
  br label %109

109:                                              ; preds = %108, %87
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %8, align 4
  %112 = sub nsw i32 %110, %111
  %113 = load i32, i32* %14, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = call i32 @stbi__err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %116, i32* %2, align 4
  br label %155

117:                                              ; preds = %109
  %118 = getelementptr inbounds [455 x i32], [455 x i32]* %5, i64 0, i64 0
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* %14, align 4
  %124 = call i32 @memset(i32* %121, i32 %122, i32 %123)
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %8, align 4
  br label %128

128:                                              ; preds = %117, %70
  br label %53

129:                                              ; preds = %53
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %12, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = call i32 @stbi__err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %134, i32* %2, align 4
  br label %155

135:                                              ; preds = %129
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 1
  %138 = getelementptr inbounds [455 x i32], [455 x i32]* %5, i64 0, i64 0
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @stbi__zbuild_huffman(i32* %137, i32* %138, i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %135
  store i32 0, i32* %2, align 4
  br label %155

143:                                              ; preds = %135
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = getelementptr inbounds [455 x i32], [455 x i32]* %5, i64 0, i64 0
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %10, align 4
  %151 = call i32 @stbi__zbuild_huffman(i32* %145, i32* %149, i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %143
  store i32 0, i32* %2, align 4
  br label %155

154:                                              ; preds = %143
  store i32 1, i32* %2, align 4
  br label %155

155:                                              ; preds = %154, %153, %142, %133, %115, %85, %65, %51
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i32 @stbi__zreceive(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @stbi__zbuild_huffman(i32*, i32*, i32) #1

declare dso_local i32 @stbi__zhuffman_decode(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @stbi__err(i8*, i8*) #1

declare dso_local i32 @STBI_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
