; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/extr_tiny_psnr.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/extr_tiny_psnr.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"u8\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"s16\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"f32\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"f64\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [60 x i8] c"Unsupported sample format: %s\0ASupported: u8, s16, f32, f64\0A\00", align 1
@.str.5 = private unnamed_addr constant [104 x i8] c"tiny_psnr <file1> <file2> [<elem size>|u8|s16|f32|f64 [<shift> [<skip bytes> [<shift search range>]]]]\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"WAV headers are skipped automatically.\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Could not open input files.\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Best PSNR is %3d.%02d for shift %i\0A\00", align 1
@F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [2 x i32*], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %7, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 5
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %24

19:                                               ; preds = %2
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 4
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @atoi(i8* %22)
  br label %24

24:                                               ; preds = %19, %18
  %25 = phi i32 [ 0, %18 ], [ %23, %19 ]
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 6
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %34

29:                                               ; preds = %24
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 5
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @atoi(i8* %32)
  br label %34

34:                                               ; preds = %29, %28
  %35 = phi i32 [ 0, %28 ], [ %33, %29 ]
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 7
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %45

40:                                               ; preds = %34
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 6
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @atoi(i8* %43)
  br label %45

45:                                               ; preds = %40, %39
  %46 = phi i32 [ 0, %39 ], [ %44, %40 ]
  %47 = add nsw i32 %36, %46
  store i32 %47, i32* %10, align 4
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %8, align 4
  %54 = sub nsw i32 %52, %53
  %55 = load i32, i32* %8, align 4
  %56 = sub nsw i32 %55, %54
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %51, %45
  %58 = load i32, i32* %4, align 4
  %59 = icmp sgt i32 %58, 3
  br i1 %59, label %60, label %114

60:                                               ; preds = %57
  %61 = load i8**, i8*** %5, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 3
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  store i32 1, i32* %7, align 4
  br label %113

67:                                               ; preds = %60
  %68 = load i8**, i8*** %5, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 3
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @strcmp(i8* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %67
  store i32 2, i32* %7, align 4
  br label %112

74:                                               ; preds = %67
  %75 = load i8**, i8*** %5, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 3
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %74
  store i32 4, i32* %7, align 4
  br label %111

81:                                               ; preds = %74
  %82 = load i8**, i8*** %5, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 3
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @strcmp(i8* %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %81
  store i32 8, i32* %7, align 4
  br label %110

88:                                               ; preds = %81
  %89 = load i8**, i8*** %5, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 3
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @strtol(i8* %91, i8** %14, i32 0)
  store i32 %92, i32* %7, align 4
  %93 = load i8*, i8** %14, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %88
  %98 = load i32, i32* %7, align 4
  %99 = icmp slt i32 %98, 1
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %7, align 4
  %102 = icmp sgt i32 %101, 2
  br i1 %102, label %103, label %109

103:                                              ; preds = %100, %97, %88
  %104 = load i32, i32* @stderr, align 4
  %105 = load i8**, i8*** %5, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 3
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 (i32, i8*, ...) @fprintf(i32 %104, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i8* %107)
  store i32 1, i32* %3, align 4
  br label %188

109:                                              ; preds = %100
  br label %110

110:                                              ; preds = %109, %87
  br label %111

111:                                              ; preds = %110, %80
  br label %112

112:                                              ; preds = %111, %73
  br label %113

113:                                              ; preds = %112, %66
  br label %114

114:                                              ; preds = %113, %57
  %115 = load i32, i32* %4, align 4
  %116 = icmp slt i32 %115, 3
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.5, i64 0, i64 0))
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %188

120:                                              ; preds = %114
  %121 = load i8**, i8*** %5, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 1
  %123 = load i8*, i8** %122, align 8
  %124 = call i32* @fopen(i8* %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %125 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 0
  store i32* %124, i32** %125, align 16
  %126 = load i8**, i8*** %5, align 8
  %127 = getelementptr inbounds i8*, i8** %126, i64 2
  %128 = load i8*, i8** %127, align 8
  %129 = call i32* @fopen(i8* %128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %130 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 1
  store i32* %129, i32** %130, align 8
  %131 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 0
  %132 = load i32*, i32** %131, align 16
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %138

134:                                              ; preds = %120
  %135 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 1
  %136 = load i32*, i32** %135, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %141, label %138

138:                                              ; preds = %134, %120
  %139 = load i32, i32* @stderr, align 4
  %140 = call i32 (i32, i8*, ...) @fprintf(i32 %139, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %188

141:                                              ; preds = %134
  %142 = load i32, i32* %8, align 4
  store i32 %142, i32* %11, align 4
  br label %143

143:                                              ; preds = %167, %141
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* %10, align 4
  %146 = icmp sle i32 %144, %145
  br i1 %146, label %147, label %170

147:                                              ; preds = %143
  %148 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 0
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %9, align 4
  %152 = call i32 @run_psnr(i32** %148, i32 %149, i32 %150, i32 %151)
  store i32 %152, i32* %15, align 4
  %153 = load i32, i32* %15, align 4
  %154 = load i32, i32* %12, align 4
  %155 = icmp sgt i32 %153, %154
  br i1 %155, label %163, label %156

156:                                              ; preds = %147
  %157 = load i32, i32* %11, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %156
  %160 = load i32, i32* %15, align 4
  %161 = load i32, i32* %12, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %159, %147
  %164 = load i32, i32* %15, align 4
  store i32 %164, i32* %12, align 4
  %165 = load i32, i32* %11, align 4
  store i32 %165, i32* %13, align 4
  br label %166

166:                                              ; preds = %163, %159, %156
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %11, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %11, align 4
  br label %143

170:                                              ; preds = %143
  %171 = load i32, i32* %12, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  store i32 2, i32* %3, align 4
  br label %188

174:                                              ; preds = %170
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* %8, align 4
  %177 = icmp sgt i32 %175, %176
  br i1 %177, label %178, label %187

178:                                              ; preds = %174
  %179 = load i32, i32* %12, align 4
  %180 = load i32, i32* @F, align 4
  %181 = sdiv i32 %179, %180
  %182 = load i32, i32* %12, align 4
  %183 = load i32, i32* @F, align 4
  %184 = srem i32 %182, %183
  %185 = load i32, i32* %13, align 4
  %186 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i32 %181, i32 %184, i32 %185)
  br label %187

187:                                              ; preds = %178, %174
  store i32 0, i32* %3, align 4
  br label %188

188:                                              ; preds = %187, %173, %138, %117, %103
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @run_psnr(i32**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
