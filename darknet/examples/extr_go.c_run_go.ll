; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_go.c_run_go.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_go.c_run_go.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"usage: %s %s [train/test/valid] [cfg] [weights (optional)]\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"-gpus\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@gpu_index = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"-clear\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"-multi\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"-anon\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"-iters\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"-resign\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"-cpuct\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"-temp\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"-time\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"train\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"valid\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"self\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"engine\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_go(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load i32, i32* @stderr, align 4
  %27 = load i8**, i8*** %4, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i8**, i8*** %4, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @fprintf(i32 %26, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %29, i8* %32)
  br label %211

34:                                               ; preds = %2
  %35 = load i32, i32* %3, align 4
  %36 = load i8**, i8*** %4, align 8
  %37 = call i8* @find_char_arg(i32 %35, i8** %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i8* %37, i8** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %85

40:                                               ; preds = %34
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @strlen(i8* %43)
  store i32 %44, i32* %9, align 4
  store i32 1, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %61, %40
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %45
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 44
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %57, %49
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %45

64:                                               ; preds = %45
  %65 = load i32, i32* %8, align 4
  %66 = call i32* @calloc(i32 %65, i32 4)
  store i32* %66, i32** %6, align 8
  store i32 0, i32* %10, align 4
  br label %67

67:                                               ; preds = %81, %64
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %67
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 @atoi(i8* %72)
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %73, i32* %77, align 4
  %78 = load i8*, i8** %5, align 8
  %79 = call i8* @strchr(i8* %78, i8 signext 44)
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  store i8* %80, i8** %5, align 8
  br label %81

81:                                               ; preds = %71
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %67

84:                                               ; preds = %67
  br label %87

85:                                               ; preds = %34
  %86 = load i32, i32* @gpu_index, align 4
  store i32 %86, i32* %7, align 4
  store i32* %7, i32** %6, align 8
  store i32 1, i32* %8, align 4
  br label %87

87:                                               ; preds = %85, %84
  %88 = load i32, i32* %3, align 4
  %89 = load i8**, i8*** %4, align 8
  %90 = call i32 @find_arg(i32 %88, i8** %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %90, i32* %11, align 4
  %91 = load i8**, i8*** %4, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 3
  %93 = load i8*, i8** %92, align 8
  store i8* %93, i8** %12, align 8
  %94 = load i32, i32* %3, align 4
  %95 = icmp sgt i32 %94, 4
  br i1 %95, label %96, label %100

96:                                               ; preds = %87
  %97 = load i8**, i8*** %4, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 4
  %99 = load i8*, i8** %98, align 8
  br label %101

100:                                              ; preds = %87
  br label %101

101:                                              ; preds = %100, %96
  %102 = phi i8* [ %99, %96 ], [ null, %100 ]
  store i8* %102, i8** %13, align 8
  %103 = load i32, i32* %3, align 4
  %104 = icmp sgt i32 %103, 5
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i8**, i8*** %4, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 5
  %108 = load i8*, i8** %107, align 8
  br label %110

109:                                              ; preds = %101
  br label %110

110:                                              ; preds = %109, %105
  %111 = phi i8* [ %108, %105 ], [ null, %109 ]
  store i8* %111, i8** %14, align 8
  %112 = load i32, i32* %3, align 4
  %113 = icmp sgt i32 %112, 6
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load i8**, i8*** %4, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 6
  %117 = load i8*, i8** %116, align 8
  br label %119

118:                                              ; preds = %110
  br label %119

119:                                              ; preds = %118, %114
  %120 = phi i8* [ %117, %114 ], [ null, %118 ]
  store i8* %120, i8** %15, align 8
  %121 = load i32, i32* %3, align 4
  %122 = load i8**, i8*** %4, align 8
  %123 = call i32 @find_arg(i32 %121, i8** %122, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32 %123, i32* %16, align 4
  %124 = load i32, i32* %3, align 4
  %125 = load i8**, i8*** %4, align 8
  %126 = call i32 @find_arg(i32 %124, i8** %125, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i32 %126, i32* %17, align 4
  %127 = load i32, i32* %3, align 4
  %128 = load i8**, i8*** %4, align 8
  %129 = call i32 @find_int_arg(i32 %127, i8** %128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 500)
  store i32 %129, i32* %18, align 4
  %130 = load i32, i32* %3, align 4
  %131 = load i8**, i8*** %4, align 8
  %132 = call i32 @find_int_arg(i32 %130, i8** %131, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 175)
  store i32 %132, i32* %19, align 4
  %133 = load i32, i32* %3, align 4
  %134 = load i8**, i8*** %4, align 8
  %135 = call float @find_float_arg(i32 %133, i8** %134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), double 5.000000e+00)
  store float %135, float* %20, align 4
  %136 = load i32, i32* %3, align 4
  %137 = load i8**, i8*** %4, align 8
  %138 = call float @find_float_arg(i32 %136, i8** %137, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), double 1.000000e-01)
  store float %138, float* %21, align 4
  %139 = load i32, i32* %3, align 4
  %140 = load i8**, i8*** %4, align 8
  %141 = call float @find_float_arg(i32 %139, i8** %140, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), double 0.000000e+00)
  store float %141, float* %22, align 4
  %142 = load i8**, i8*** %4, align 8
  %143 = getelementptr inbounds i8*, i8** %142, i64 2
  %144 = load i8*, i8** %143, align 8
  %145 = call i64 @strcmp(i8* %144, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %146 = icmp eq i64 0, %145
  br i1 %146, label %147, label %155

147:                                              ; preds = %119
  %148 = load i8*, i8** %12, align 8
  %149 = load i8*, i8** %13, align 8
  %150 = load i8*, i8** %14, align 8
  %151 = load i32*, i32** %6, align 8
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* %11, align 4
  %154 = call i32 @train_go(i8* %148, i8* %149, i8* %150, i32* %151, i32 %152, i32 %153)
  br label %211

155:                                              ; preds = %119
  %156 = load i8**, i8*** %4, align 8
  %157 = getelementptr inbounds i8*, i8** %156, i64 2
  %158 = load i8*, i8** %157, align 8
  %159 = call i64 @strcmp(i8* %158, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %160 = icmp eq i64 0, %159
  br i1 %160, label %161, label %167

161:                                              ; preds = %155
  %162 = load i8*, i8** %12, align 8
  %163 = load i8*, i8** %13, align 8
  %164 = load i32, i32* %16, align 4
  %165 = load i8*, i8** %14, align 8
  %166 = call i32 @valid_go(i8* %162, i8* %163, i32 %164, i8* %165)
  br label %210

167:                                              ; preds = %155
  %168 = load i8**, i8*** %4, align 8
  %169 = getelementptr inbounds i8*, i8** %168, i64 2
  %170 = load i8*, i8** %169, align 8
  %171 = call i64 @strcmp(i8* %170, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %172 = icmp eq i64 0, %171
  br i1 %172, label %173, label %180

173:                                              ; preds = %167
  %174 = load i8*, i8** %12, align 8
  %175 = load i8*, i8** %13, align 8
  %176 = load i8*, i8** %14, align 8
  %177 = load i8*, i8** %15, align 8
  %178 = load i32, i32* %16, align 4
  %179 = call i32 @self_go(i8* %174, i8* %175, i8* %176, i8* %177, i32 %178)
  br label %209

180:                                              ; preds = %167
  %181 = load i8**, i8*** %4, align 8
  %182 = getelementptr inbounds i8*, i8** %181, i64 2
  %183 = load i8*, i8** %182, align 8
  %184 = call i64 @strcmp(i8* %183, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %185 = icmp eq i64 0, %184
  br i1 %185, label %186, label %191

186:                                              ; preds = %180
  %187 = load i8*, i8** %12, align 8
  %188 = load i8*, i8** %13, align 8
  %189 = load i32, i32* %16, align 4
  %190 = call i32 @test_go(i8* %187, i8* %188, i32 %189)
  br label %208

191:                                              ; preds = %180
  %192 = load i8**, i8*** %4, align 8
  %193 = getelementptr inbounds i8*, i8** %192, i64 2
  %194 = load i8*, i8** %193, align 8
  %195 = call i64 @strcmp(i8* %194, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %196 = icmp eq i64 0, %195
  br i1 %196, label %197, label %207

197:                                              ; preds = %191
  %198 = load i8*, i8** %12, align 8
  %199 = load i8*, i8** %13, align 8
  %200 = load i32, i32* %18, align 4
  %201 = load float, float* %22, align 4
  %202 = load float, float* %21, align 4
  %203 = load float, float* %20, align 4
  %204 = load i32, i32* %17, align 4
  %205 = load i32, i32* %19, align 4
  %206 = call i32 @engine_go(i8* %198, i8* %199, i32 %200, float %201, float %202, float %203, i32 %204, i32 %205)
  br label %207

207:                                              ; preds = %197, %191
  br label %208

208:                                              ; preds = %207, %186
  br label %209

209:                                              ; preds = %208, %173
  br label %210

210:                                              ; preds = %209, %161
  br label %211

211:                                              ; preds = %25, %210, %147
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @find_char_arg(i32, i8**, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @find_arg(i32, i8**, i8*) #1

declare dso_local i32 @find_int_arg(i32, i8**, i8*, i32) #1

declare dso_local float @find_float_arg(i32, i8**, i8*, double) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @train_go(i8*, i8*, i8*, i32*, i32, i32) #1

declare dso_local i32 @valid_go(i8*, i8*, i32, i8*) #1

declare dso_local i32 @self_go(i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @test_go(i8*, i8*, i32) #1

declare dso_local i32 @engine_go(i8*, i8*, i32, float, float, float, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
