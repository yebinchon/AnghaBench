; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/tests/extr_cabac.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/tests/extr_cabac.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"CABAC bypass failure at %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"CABAC failure at %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"where's the Terminator?\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [10 x i32], align 16
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %10 = load i32, i32* @SIZE, align 4
  %11 = mul nsw i32 9, %10
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %3, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %4, align 8
  %15 = load i32, i32* @SIZE, align 4
  %16 = mul nsw i32 9, %15
  %17 = zext i32 %16 to i64
  %18 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %5, align 8
  store i32 0, i32* %7, align 4
  %19 = bitcast [10 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 40, i1 false)
  %20 = call i32 @av_lfg_init(i32* %9, i32 1)
  %21 = load i32, i32* @SIZE, align 4
  %22 = call i32 @ff_init_cabac_encoder(i32* %2, i32* %14, i32 %21)
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %46, %0
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @SIZE, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = mul nsw i32 2, %28
  %30 = load i32, i32* @SIZE, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = call i32 @av_lfg_get(i32* %9)
  %34 = srem i32 %33, 7
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %18, i64 %36
  store i32 %34, i32* %37, align 4
  br label %45

38:                                               ; preds = %27
  %39 = load i32, i32* %6, align 4
  %40 = ashr i32 %39, 8
  %41 = and i32 %40, 1
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %18, i64 %43
  store i32 %41, i32* %44, align 4
  br label %45

45:                                               ; preds = %38, %32
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %23

49:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %61, %49
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @SIZE, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %18, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 1
  %60 = call i32 @put_cabac_bypass(i32* %2, i32 %59)
  br label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %50

64:                                               ; preds = %50
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %77, %64
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @SIZE, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 0
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %18, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 1
  %76 = call i32 @put_cabac(i32* %2, i32* %70, i32 %75)
  br label %77

77:                                               ; preds = %69
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %65

80:                                               ; preds = %65
  %81 = call i32 @put_cabac_terminate(i32* %2, i32 1)
  store i32 %81, i32* %6, align 4
  %82 = call i32 @av_lfg_get(i32* %9)
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %14, i64 %85
  store i32 %82, i32* %86, align 4
  %87 = call i32 @av_lfg_get(i32* %9)
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %14, i64 %89
  store i32 %87, i32* %90, align 4
  %91 = load i32, i32* @SIZE, align 4
  %92 = call i32 @ff_init_cabac_decoder(i32* %2, i32* %14, i32 %91)
  %93 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 0
  %94 = call i32 @memset(i32* %93, i32 0, i32 40)
  store i32 0, i32* %6, align 4
  br label %95

95:                                               ; preds = %112, %80
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @SIZE, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %115

99:                                               ; preds = %95
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %18, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 1
  %105 = call i32 @get_cabac_bypass(i32* %2)
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %99
  %108 = load i32, i32* @AV_LOG_ERROR, align 4
  %109 = load i32, i32* %6, align 4
  %110 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %108, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %109)
  store i32 1, i32* %7, align 4
  br label %111

111:                                              ; preds = %107, %99
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %6, align 4
  br label %95

115:                                              ; preds = %95
  store i32 0, i32* %6, align 4
  br label %116

116:                                              ; preds = %134, %115
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @SIZE, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %137

120:                                              ; preds = %116
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %18, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, 1
  %126 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 0
  %127 = call i32 @get_cabac_noinline(i32* %2, i32* %126)
  %128 = icmp ne i32 %125, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %120
  %130 = load i32, i32* @AV_LOG_ERROR, align 4
  %131 = load i32, i32* %6, align 4
  %132 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %130, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %131)
  store i32 1, i32* %7, align 4
  br label %133

133:                                              ; preds = %129, %120
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %6, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %6, align 4
  br label %116

137:                                              ; preds = %116
  %138 = call i32 @get_cabac_terminate(i32* %2)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = load i32, i32* @AV_LOG_ERROR, align 4
  %142 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %141, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %143

143:                                              ; preds = %140, %137
  %144 = load i32, i32* %7, align 4
  store i32 %144, i32* %1, align 4
  %145 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %145)
  %146 = load i32, i32* %1, align 4
  ret i32 %146
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @av_lfg_init(i32*, i32) #3

declare dso_local i32 @ff_init_cabac_encoder(i32*, i32*, i32) #3

declare dso_local i32 @av_lfg_get(i32*) #3

declare dso_local i32 @put_cabac_bypass(i32*, i32) #3

declare dso_local i32 @put_cabac(i32*, i32*, i32) #3

declare dso_local i32 @put_cabac_terminate(i32*, i32) #3

declare dso_local i32 @ff_init_cabac_decoder(i32*, i32*, i32) #3

declare dso_local i32 @memset(i32*, i32, i32) #3

declare dso_local i32 @get_cabac_bypass(i32*) #3

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #3

declare dso_local i32 @get_cabac_noinline(i32*, i32*) #3

declare dso_local i32 @get_cabac_terminate(i32*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
