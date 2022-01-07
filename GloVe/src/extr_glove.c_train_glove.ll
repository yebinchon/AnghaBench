; ModuleID = '/home/carl/AnghaBench/GloVe/src/extr_glove.c_train_glove.c'
source_filename = "/home/carl/AnghaBench/GloVe/src/extr_glove.c_train_glove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"TRAINING MODEL\0A\00", align 1
@input_file = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Unable to open cooccurrence file %s.\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@num_lines = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Read %lld lines.\0A\00", align 1
@verbose = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Initializing parameters...\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"done.\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"vector size: %d\0A\00", align 1
@vector_size = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"vocab size: %lld\0A\00", align 1
@vocab_size = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"x_max: %lf\0A\00", align 1
@x_max = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"alpha: %lf\0A\00", align 1
@alpha = common dso_local global i32 0, align 4
@num_threads = common dso_local global i32 0, align 4
@lines_per_thread = common dso_local global i64* null, align 8
@num_iter = common dso_local global i32 0, align 4
@glove_thread = common dso_local global i32 0, align 4
@cost = common dso_local global i64* null, align 8
@.str.10 = private unnamed_addr constant [16 x i8] c"%x - %I:%M.%S%p\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"%s, iter: %03d, cost: %lf\0A\00", align 1
@checkpoint_every = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [51 x i8] c"    saving itermediate parameters for iter %03d...\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @train_glove() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tm*, align 8
  %11 = alloca [80 x i8], align 16
  %12 = alloca i64*, align 8
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %15 = load i8*, i8** @input_file, align 8
  %16 = call i32* @fopen(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %0
  %20 = load i32, i32* @stderr, align 4
  %21 = load i8*, i8** @input_file, align 8
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  store i32 1, i32* %1, align 4
  br label %244

23:                                               ; preds = %0
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* @SEEK_END, align 4
  %26 = call i32 @fseeko(i32* %24, i32 0, i32 %25)
  %27 = load i32*, i32** %6, align 8
  %28 = call i64 @ftello(i32* %27)
  store i64 %28, i64* %3, align 8
  %29 = load i64, i64* %3, align 8
  %30 = udiv i64 %29, 4
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* @num_lines, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @fclose(i32* %32)
  %34 = load i32, i32* @stderr, align 4
  %35 = load i32, i32* @num_lines, align 4
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @verbose, align 4
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %39, label %42

39:                                               ; preds = %23
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %23
  %43 = call i32 (...) @initialize_parameters()
  %44 = load i32, i32* @verbose, align 4
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @stderr, align 4
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %42
  %50 = load i32, i32* @verbose, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i32, i32* @stderr, align 4
  %54 = load i32, i32* @vector_size, align 4
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %52, %49
  %57 = load i32, i32* @verbose, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32, i32* @stderr, align 4
  %61 = load i32, i32* @vocab_size, align 4
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %59, %56
  %64 = load i32, i32* @verbose, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i32, i32* @stderr, align 4
  %68 = load i32, i32* @x_max, align 4
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %66, %63
  %71 = load i32, i32* @verbose, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, i32* @stderr, align 4
  %75 = load i32, i32* @alpha, align 4
  %76 = call i32 (i32, i8*, ...) @fprintf(i32 %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %73, %70
  %78 = load i32, i32* @num_threads, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 8
  %81 = trunc i64 %80 to i32
  %82 = call i64 @malloc(i32 %81)
  %83 = inttoptr i64 %82 to i64*
  store i64* %83, i64** %8, align 8
  %84 = load i32, i32* @num_threads, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 8
  %87 = trunc i64 %86 to i32
  %88 = call i64 @malloc(i32 %87)
  %89 = inttoptr i64 %88 to i64*
  store i64* %89, i64** @lines_per_thread, align 8
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %235, %77
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @num_iter, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %238

94:                                               ; preds = %90
  store i32 0, i32* %7, align 4
  store i64 0, i64* %2, align 8
  br label %95

95:                                               ; preds = %109, %94
  %96 = load i64, i64* %2, align 8
  %97 = load i32, i32* @num_threads, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = icmp slt i64 %96, %99
  br i1 %100, label %101, label %112

101:                                              ; preds = %95
  %102 = load i32, i32* @num_lines, align 4
  %103 = load i32, i32* @num_threads, align 4
  %104 = sdiv i32 %102, %103
  %105 = sext i32 %104 to i64
  %106 = load i64*, i64** @lines_per_thread, align 8
  %107 = load i64, i64* %2, align 8
  %108 = getelementptr inbounds i64, i64* %106, i64 %107
  store i64 %105, i64* %108, align 8
  br label %109

109:                                              ; preds = %101
  %110 = load i64, i64* %2, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %2, align 8
  br label %95

112:                                              ; preds = %95
  %113 = load i32, i32* @num_lines, align 4
  %114 = load i32, i32* @num_threads, align 4
  %115 = sdiv i32 %113, %114
  %116 = load i32, i32* @num_lines, align 4
  %117 = load i32, i32* @num_threads, align 4
  %118 = srem i32 %116, %117
  %119 = add nsw i32 %115, %118
  %120 = sext i32 %119 to i64
  %121 = load i64*, i64** @lines_per_thread, align 8
  %122 = load i64, i64* %2, align 8
  %123 = getelementptr inbounds i64, i64* %121, i64 %122
  store i64 %120, i64* %123, align 8
  %124 = load i32, i32* @num_threads, align 4
  %125 = sext i32 %124 to i64
  %126 = mul i64 8, %125
  %127 = trunc i64 %126 to i32
  %128 = call i64 @malloc(i32 %127)
  %129 = inttoptr i64 %128 to i64*
  store i64* %129, i64** %12, align 8
  store i64 0, i64* %2, align 8
  br label %130

130:                                              ; preds = %140, %112
  %131 = load i64, i64* %2, align 8
  %132 = load i32, i32* @num_threads, align 4
  %133 = sext i32 %132 to i64
  %134 = icmp slt i64 %131, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %130
  %136 = load i64, i64* %2, align 8
  %137 = load i64*, i64** %12, align 8
  %138 = load i64, i64* %2, align 8
  %139 = getelementptr inbounds i64, i64* %137, i64 %138
  store i64 %136, i64* %139, align 8
  br label %140

140:                                              ; preds = %135
  %141 = load i64, i64* %2, align 8
  %142 = add nsw i64 %141, 1
  store i64 %142, i64* %2, align 8
  br label %130

143:                                              ; preds = %130
  store i64 0, i64* %2, align 8
  br label %144

144:                                              ; preds = %159, %143
  %145 = load i64, i64* %2, align 8
  %146 = load i32, i32* @num_threads, align 4
  %147 = sext i32 %146 to i64
  %148 = icmp slt i64 %145, %147
  br i1 %148, label %149, label %162

149:                                              ; preds = %144
  %150 = load i64*, i64** %8, align 8
  %151 = load i64, i64* %2, align 8
  %152 = getelementptr inbounds i64, i64* %150, i64 %151
  %153 = load i32, i32* @glove_thread, align 4
  %154 = load i64*, i64** %12, align 8
  %155 = load i64, i64* %2, align 8
  %156 = getelementptr inbounds i64, i64* %154, i64 %155
  %157 = bitcast i64* %156 to i8*
  %158 = call i32 @pthread_create(i64* %152, i32* null, i32 %153, i8* %157)
  br label %159

159:                                              ; preds = %149
  %160 = load i64, i64* %2, align 8
  %161 = add nsw i64 %160, 1
  store i64 %161, i64* %2, align 8
  br label %144

162:                                              ; preds = %144
  store i64 0, i64* %2, align 8
  br label %163

163:                                              ; preds = %174, %162
  %164 = load i64, i64* %2, align 8
  %165 = load i32, i32* @num_threads, align 4
  %166 = sext i32 %165 to i64
  %167 = icmp slt i64 %164, %166
  br i1 %167, label %168, label %177

168:                                              ; preds = %163
  %169 = load i64*, i64** %8, align 8
  %170 = load i64, i64* %2, align 8
  %171 = getelementptr inbounds i64, i64* %169, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @pthread_join(i64 %172, i32* null)
  br label %174

174:                                              ; preds = %168
  %175 = load i64, i64* %2, align 8
  %176 = add nsw i64 %175, 1
  store i64 %176, i64* %2, align 8
  br label %163

177:                                              ; preds = %163
  store i64 0, i64* %2, align 8
  br label %178

178:                                              ; preds = %192, %177
  %179 = load i64, i64* %2, align 8
  %180 = load i32, i32* @num_threads, align 4
  %181 = sext i32 %180 to i64
  %182 = icmp slt i64 %179, %181
  br i1 %182, label %183, label %195

183:                                              ; preds = %178
  %184 = load i64*, i64** @cost, align 8
  %185 = load i64, i64* %2, align 8
  %186 = getelementptr inbounds i64, i64* %184, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = load i32, i32* %7, align 4
  %189 = sext i32 %188 to i64
  %190 = add nsw i64 %189, %187
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %7, align 4
  br label %192

192:                                              ; preds = %183
  %193 = load i64, i64* %2, align 8
  %194 = add nsw i64 %193, 1
  store i64 %194, i64* %2, align 8
  br label %178

195:                                              ; preds = %178
  %196 = load i64*, i64** %12, align 8
  %197 = call i32 @free(i64* %196)
  %198 = call i32 @time(i32* %9)
  %199 = call %struct.tm* @localtime(i32* %9)
  store %struct.tm* %199, %struct.tm** %10, align 8
  %200 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %201 = load %struct.tm*, %struct.tm** %10, align 8
  %202 = call i32 @strftime(i8* %200, i32 80, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), %struct.tm* %201)
  %203 = load i32, i32* @stderr, align 4
  %204 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %205 = load i32, i32* %5, align 4
  %206 = add nsw i32 %205, 1
  %207 = load i32, i32* %7, align 4
  %208 = load i32, i32* @num_lines, align 4
  %209 = sdiv i32 %207, %208
  %210 = call i32 (i32, i8*, ...) @fprintf(i32 %203, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i8* %204, i32 %206, i32 %209)
  %211 = load i32, i32* @checkpoint_every, align 4
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %234

213:                                              ; preds = %195
  %214 = load i32, i32* %5, align 4
  %215 = add nsw i32 %214, 1
  %216 = load i32, i32* @checkpoint_every, align 4
  %217 = srem i32 %215, %216
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %234

219:                                              ; preds = %213
  %220 = load i32, i32* @stderr, align 4
  %221 = load i32, i32* %5, align 4
  %222 = add nsw i32 %221, 1
  %223 = call i32 (i32, i8*, ...) @fprintf(i32 %220, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i64 0, i64 0), i32 %222)
  %224 = load i32, i32* %5, align 4
  %225 = add nsw i32 %224, 1
  %226 = call i32 @save_params(i32 %225)
  store i32 %226, i32* %4, align 4
  %227 = load i32, i32* %4, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %219
  %230 = load i32, i32* %4, align 4
  store i32 %230, i32* %1, align 4
  br label %244

231:                                              ; preds = %219
  %232 = load i32, i32* @stderr, align 4
  %233 = call i32 (i32, i8*, ...) @fprintf(i32 %232, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %234

234:                                              ; preds = %231, %213, %195
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %5, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %5, align 4
  br label %90

238:                                              ; preds = %90
  %239 = load i64*, i64** %8, align 8
  %240 = call i32 @free(i64* %239)
  %241 = load i64*, i64** @lines_per_thread, align 8
  %242 = call i32 @free(i64* %241)
  %243 = call i32 @save_params(i32 0)
  store i32 %243, i32* %1, align 4
  br label %244

244:                                              ; preds = %238, %229, %19
  %245 = load i32, i32* %1, align 4
  ret i32 %245
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fseeko(i32*, i32, i32) #1

declare dso_local i64 @ftello(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @initialize_parameters(...) #1

declare dso_local i64 @malloc(i32) #1

declare !callback !2 dso_local i32 @pthread_create(i64*, i32*, i32, i8*) #1

declare dso_local i32 @pthread_join(i64, i32*) #1

declare dso_local i32 @free(i64*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @save_params(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
