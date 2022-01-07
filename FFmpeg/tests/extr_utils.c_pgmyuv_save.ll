; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/extr_utils.c_pgmyuv_save.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/extr_utils.c_pgmyuv_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"P5\0A%d %d\0A%d\0A\00", align 1
@stdout = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i8*)* @pgmyuv_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pgmyuv_save(i8* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = mul nsw i32 %18, %19
  %21 = call i8* @malloc(i32 %20)
  store i8* %21, i8** %15, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sdiv i32 %24, 4
  %26 = call i8* @malloc(i32 %25)
  store i8* %26, i8** %16, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = mul nsw i32 %27, %28
  %30 = sdiv i32 %29, 4
  %31 = call i8* @malloc(i32 %30)
  store i8* %31, i8** %17, align 8
  %32 = load i8*, i8** %15, align 8
  %33 = load i8*, i8** %16, align 8
  %34 = load i8*, i8** %17, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @rgb24_to_yuv420p(i8* %32, i8* %33, i8* %34, i8* %35, i32 %36, i32 %37)
  %39 = load i8*, i8** %5, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %4
  %42 = load i8*, i8** %5, align 8
  %43 = call i32* @fopen(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %43, i32** %9, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = mul nsw i32 %46, 3
  %48 = sdiv i32 %47, 2
  %49 = call i32 @fprintf(i32* %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %48, i32 255)
  br label %52

50:                                               ; preds = %4
  %51 = load i32*, i32** @stdout, align 8
  store i32* %51, i32** %9, align 8
  br label %52

52:                                               ; preds = %50, %41
  %53 = load i8*, i8** %15, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = mul nsw i32 %54, %55
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @fwrite(i8* %53, i32 1, i32 %56, i32* %57)
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = mul nsw i32 %59, %60
  %62 = icmp ne i32 %58, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @err_if(i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = sdiv i32 %65, 2
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %6, align 4
  %68 = sdiv i32 %67, 2
  store i32 %68, i32* %12, align 4
  %69 = load i8*, i8** %16, align 8
  store i8* %69, i8** %13, align 8
  %70 = load i8*, i8** %17, align 8
  store i8* %70, i8** %14, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %109

73:                                               ; preds = %52
  store i32 0, i32* %10, align 4
  br label %74

74:                                               ; preds = %103, %73
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %106

78:                                               ; preds = %74
  %79 = load i8*, i8** %13, align 8
  %80 = load i32, i32* %12, align 4
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 @fwrite(i8* %79, i32 1, i32 %80, i32* %81)
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @err_if(i32 %85)
  %87 = load i8*, i8** %14, align 8
  %88 = load i32, i32* %12, align 4
  %89 = load i32*, i32** %9, align 8
  %90 = call i32 @fwrite(i8* %87, i32 1, i32 %88, i32* %89)
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %90, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @err_if(i32 %93)
  %95 = load i32, i32* %12, align 4
  %96 = load i8*, i8** %13, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  store i8* %98, i8** %13, align 8
  %99 = load i32, i32* %12, align 4
  %100 = load i8*, i8** %14, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  store i8* %102, i8** %14, align 8
  br label %103

103:                                              ; preds = %78
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  br label %74

106:                                              ; preds = %74
  %107 = load i32*, i32** %9, align 8
  %108 = call i32 @fclose(i32* %107)
  br label %152

109:                                              ; preds = %52
  store i32 0, i32* %10, align 4
  br label %110

110:                                              ; preds = %127, %109
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %130

114:                                              ; preds = %110
  %115 = load i8*, i8** %13, align 8
  %116 = load i32, i32* %12, align 4
  %117 = load i32*, i32** %9, align 8
  %118 = call i32 @fwrite(i8* %115, i32 1, i32 %116, i32* %117)
  %119 = load i32, i32* %12, align 4
  %120 = icmp ne i32 %118, %119
  %121 = zext i1 %120 to i32
  %122 = call i32 @err_if(i32 %121)
  %123 = load i32, i32* %12, align 4
  %124 = load i8*, i8** %13, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  store i8* %126, i8** %13, align 8
  br label %127

127:                                              ; preds = %114
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %10, align 4
  br label %110

130:                                              ; preds = %110
  store i32 0, i32* %10, align 4
  br label %131

131:                                              ; preds = %148, %130
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %11, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %151

135:                                              ; preds = %131
  %136 = load i8*, i8** %14, align 8
  %137 = load i32, i32* %12, align 4
  %138 = load i32*, i32** %9, align 8
  %139 = call i32 @fwrite(i8* %136, i32 1, i32 %137, i32* %138)
  %140 = load i32, i32* %12, align 4
  %141 = icmp ne i32 %139, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 @err_if(i32 %142)
  %144 = load i32, i32* %12, align 4
  %145 = load i8*, i8** %14, align 8
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i8, i8* %145, i64 %146
  store i8* %147, i8** %14, align 8
  br label %148

148:                                              ; preds = %135
  %149 = load i32, i32* %10, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %10, align 4
  br label %131

151:                                              ; preds = %131
  br label %152

152:                                              ; preds = %151, %106
  %153 = load i8*, i8** %15, align 8
  %154 = call i32 @free(i8* %153)
  %155 = load i8*, i8** %16, align 8
  %156 = call i32 @free(i8* %155)
  %157 = load i8*, i8** %17, align 8
  %158 = call i32 @free(i8* %157)
  ret void
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @rgb24_to_yuv420p(i8*, i8*, i8*, i8*, i32, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @err_if(i32) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
