; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image_write.h_stbiw__write_pixel.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image_write.h_stbiw__write_pixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 (i32, i8*, i32)* }

@__const.stbiw__write_pixel.bg = private unnamed_addr constant [3 x i8] c"\FF\00\FF", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i32, i32, i32, i8*)* @stbiw__write_pixel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stbiw__write_pixel(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca [3 x i8], align 1
  %14 = alloca [3 x i8], align 1
  %15 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %16 = bitcast [3 x i8]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.stbiw__write_pixel.bg, i32 0, i32 0), i64 3, i1 false)
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %6
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %21, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  %31 = call i32 %22(i32 %25, i8* %30, i32 1)
  br label %32

32:                                               ; preds = %19, %6
  %33 = load i32, i32* %9, align 4
  switch i32 %33, label %132 [
    i32 2, label %34
    i32 1, label %34
    i32 4, label %59
    i32 3, label %114
  ]

34:                                               ; preds = %32, %32
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = load i8*, i8** %12, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = load i8*, i8** %12, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = call i32 @stbiw__write3(%struct.TYPE_4__* %38, i8 zeroext %41, i8 zeroext %44, i8 zeroext %47)
  br label %58

49:                                               ; preds = %34
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %51, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = call i32 %52(i32 %55, i8* %56, i32 1)
  br label %58

58:                                               ; preds = %49, %37
  br label %132

59:                                               ; preds = %32
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %113, label %62

62:                                               ; preds = %59
  store i32 0, i32* %15, align 4
  br label %63

63:                                               ; preds = %95, %62
  %64 = load i32, i32* %15, align 4
  %65 = icmp slt i32 %64, 3
  br i1 %65, label %66, label %98

66:                                               ; preds = %63
  %67 = load i32, i32* %15, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = load i8*, i8** %12, align 8
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = sub nsw i32 %77, %82
  %84 = load i8*, i8** %12, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 3
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = mul nsw i32 %83, %87
  %89 = sdiv i32 %88, 255
  %90 = add nsw i32 %71, %89
  %91 = trunc i32 %90 to i8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 %93
  store i8 %91, i8* %94, align 1
  br label %95

95:                                               ; preds = %66
  %96 = load i32, i32* %15, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %15, align 4
  br label %63

98:                                               ; preds = %63
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sub nsw i32 1, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 1
  %106 = load i8, i8* %105, align 1
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 1, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = call i32 @stbiw__write3(%struct.TYPE_4__* %99, i8 zeroext %104, i8 zeroext %106, i8 zeroext %111)
  br label %132

113:                                              ; preds = %59
  br label %114

114:                                              ; preds = %32, %113
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %116 = load i8*, i8** %12, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sub nsw i32 1, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %116, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = load i8*, i8** %12, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 1
  %124 = load i8, i8* %123, align 1
  %125 = load i8*, i8** %12, align 8
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 1, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %125, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = call i32 @stbiw__write3(%struct.TYPE_4__* %115, i8 zeroext %121, i8 zeroext %124, i8 zeroext %130)
  br label %132

132:                                              ; preds = %32, %114, %98, %58
  %133 = load i32, i32* %10, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %148

135:                                              ; preds = %132
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %137, align 8
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i8*, i8** %12, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sub nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %142, i64 %145
  %147 = call i32 %138(i32 %141, i8* %146, i32 1)
  br label %148

148:                                              ; preds = %135, %132
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @stbiw__write3(%struct.TYPE_4__*, i8 zeroext, i8 zeroext, i8 zeroext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
