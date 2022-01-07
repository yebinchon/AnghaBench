; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_save_image_options.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_save_image_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32* }

@PNG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s.png\00", align 1
@BMP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%s.bmp\00", align 1
@TGA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"%s.tga\00", align 1
@JPG = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"%s.jpg\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Failed to write image %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @save_image_options(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [256 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 %3, i32* %7, align 4
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @PNG, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @sprintf(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %18)
  br label %51

20:                                               ; preds = %4
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @BMP, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @sprintf(i8* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  br label %50

28:                                               ; preds = %20
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @TGA, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @sprintf(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  br label %49

36:                                               ; preds = %28
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @JPG, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @sprintf(i8* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %42)
  br label %48

44:                                               ; preds = %36
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @sprintf(i8* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %44, %40
  br label %49

49:                                               ; preds = %48, %32
  br label %50

50:                                               ; preds = %49, %24
  br label %51

51:                                               ; preds = %50, %16
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %53, %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = mul nsw i32 %56, %58
  %60 = call i8* @calloc(i32 %59, i32 1)
  store i8* %60, i8** %9, align 8
  store i32 0, i32* %11, align 4
  br label %61

61:                                               ; preds = %105, %51
  %62 = load i32, i32* %11, align 4
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %108

66:                                               ; preds = %61
  store i32 0, i32* %10, align 4
  br label %67

67:                                               ; preds = %101, %66
  %68 = load i32, i32* %10, align 4
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %70, %72
  %74 = icmp slt i32 %68, %73
  br i1 %74, label %75, label %104

75:                                               ; preds = %67
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %11, align 4
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = mul nsw i32 %79, %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %82, %84
  %86 = add nsw i32 %78, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %77, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = mul nsw i32 255, %89
  %91 = trunc i32 %90 to i8
  %92 = load i8*, i8** %9, align 8
  %93 = load i32, i32* %10, align 4
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = mul nsw i32 %93, %95
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %92, i64 %99
  store i8 %91, i8* %100, align 1
  br label %101

101:                                              ; preds = %75
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %67

104:                                              ; preds = %67
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %11, align 4
  br label %61

108:                                              ; preds = %61
  store i32 0, i32* %12, align 4
  %109 = load i64, i64* %6, align 8
  %110 = load i64, i64* @PNG, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %127

112:                                              ; preds = %108
  %113 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i8*, i8** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = mul nsw i32 %122, %124
  %126 = call i32 @stbi_write_png(i8* %113, i32 %115, i32 %117, i32 %119, i8* %120, i32 %125)
  store i32 %126, i32* %12, align 4
  br label %173

127:                                              ; preds = %108
  %128 = load i64, i64* %6, align 8
  %129 = load i64, i64* @BMP, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %141

131:                                              ; preds = %127
  %132 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load i8*, i8** %9, align 8
  %140 = call i32 @stbi_write_bmp(i8* %132, i32 %134, i32 %136, i32 %138, i8* %139)
  store i32 %140, i32* %12, align 4
  br label %172

141:                                              ; preds = %127
  %142 = load i64, i64* %6, align 8
  %143 = load i64, i64* @TGA, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %155

145:                                              ; preds = %141
  %146 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load i8*, i8** %9, align 8
  %154 = call i32 @stbi_write_tga(i8* %146, i32 %148, i32 %150, i32 %152, i8* %153)
  store i32 %154, i32* %12, align 4
  br label %171

155:                                              ; preds = %141
  %156 = load i64, i64* %6, align 8
  %157 = load i64, i64* @JPG, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %170

159:                                              ; preds = %155
  %160 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load i8*, i8** %9, align 8
  %168 = load i32, i32* %7, align 4
  %169 = call i32 @stbi_write_jpg(i8* %160, i32 %162, i32 %164, i32 %166, i8* %167, i32 %168)
  store i32 %169, i32* %12, align 4
  br label %170

170:                                              ; preds = %159, %155
  br label %171

171:                                              ; preds = %170, %145
  br label %172

172:                                              ; preds = %171, %131
  br label %173

173:                                              ; preds = %172, %112
  %174 = load i8*, i8** %9, align 8
  %175 = call i32 @free(i8* %174)
  %176 = load i32, i32* %12, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %182, label %178

178:                                              ; preds = %173
  %179 = load i32, i32* @stderr, align 4
  %180 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %181 = call i32 @fprintf(i32 %179, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %180)
  br label %182

182:                                              ; preds = %178, %173
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @stbi_write_png(i8*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @stbi_write_bmp(i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @stbi_write_tga(i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @stbi_write_jpg(i8*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
