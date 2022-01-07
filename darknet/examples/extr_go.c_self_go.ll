; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_go.c_self_go.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_go.c_self_go.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Total: %d, Player 1: %f, Player 2: %f\0A\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @self_go(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca [600 x [93 x i8]], align 16
  %16 = alloca i32, align 4
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  %19 = alloca float*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca float, align 4
  %26 = alloca i32, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca %struct.TYPE_3__, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca float*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i32* @load_network(i8* %35, i8* %36, i32 0)
  store i32* %37, i32** %13, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %5
  %41 = load i8*, i8** %8, align 8
  %42 = call i32* @parse_network_cfg(i8* %41)
  store i32* %42, i32** %14, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32*, i32** %14, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @load_weights(i32* %46, i8* %47)
  br label %49

49:                                               ; preds = %45, %40
  br label %56

50:                                               ; preds = %5
  %51 = call i8* @calloc(i32 1, i32 4)
  %52 = bitcast i8* %51 to i32*
  store i32* %52, i32** %14, align 8
  %53 = load i32*, i32** %13, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %14, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %50, %49
  %57 = call i32 @time(i32 0)
  %58 = call i32 @srand(i32 %57)
  store i32 0, i32* %16, align 4
  %59 = call i8* @calloc(i32 1083, i32 4)
  %60 = bitcast i8* %59 to float*
  store float* %60, float** %17, align 8
  %61 = load float*, float** %17, align 8
  %62 = call i32 @flip_board(float* %61)
  %63 = call i8* @calloc(i32 1083, i32 4)
  %64 = bitcast i8* %63 to float*
  store float* %64, float** %18, align 8
  %65 = call i8* @calloc(i32 1083, i32 4)
  %66 = bitcast i8* %65 to float*
  store float* %66, float** %19, align 8
  store i32 0, i32* %20, align 4
  store i32 1, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store float 0x3FB99999A0000000, float* %25, align 4
  store i32 500, i32* %26, align 4
  store float 5.000000e+00, float* %27, align 4
  br label %67

67:                                               ; preds = %56, %201, %240
  %68 = load i32, i32* %20, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %116

70:                                               ; preds = %67
  %71 = load i32*, i32** %11, align 8
  %72 = call i32* @move_mcts(i32* %71, i32 -1)
  store i32* %72, i32** %11, align 8
  %73 = load i32*, i32** %12, align 8
  %74 = call i32* @move_mcts(i32* %73, i32 -1)
  store i32* %74, i32** %12, align 8
  %75 = load float*, float** %17, align 8
  %76 = call float @score_game(float* %75)
  store float %76, float* %28, align 4
  %77 = load float, float* %28, align 4
  %78 = fcmp ogt float %77, 0.000000e+00
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* %24, align 4
  %81 = srem i32 %80, 2
  %82 = icmp eq i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = icmp eq i32 %79, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %70
  %86 = load i32, i32* %22, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %22, align 4
  br label %91

88:                                               ; preds = %70
  %89 = load i32, i32* %23, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %23, align 4
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i32, i32* %24, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %24, align 4
  %94 = load i32, i32* @stderr, align 4
  %95 = load i32, i32* %24, align 4
  %96 = load i32, i32* %22, align 4
  %97 = sitofp i32 %96 to float
  %98 = load i32, i32* %24, align 4
  %99 = sitofp i32 %98 to float
  %100 = fdiv float %97, %99
  %101 = load i32, i32* %23, align 4
  %102 = sitofp i32 %101 to float
  %103 = load i32, i32* %24, align 4
  %104 = sitofp i32 %103 to float
  %105 = fdiv float %102, %104
  %106 = call i32 @fprintf(i32 %94, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %95, float %100, float %105)
  %107 = call i32 @sleep(i32 1)
  %108 = load float*, float** %17, align 8
  %109 = call i32 @memset(float* %108, i32 0, i32 4332)
  %110 = load float*, float** %17, align 8
  %111 = call i32 @flip_board(float* %110)
  store i32 1, i32* %21, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %16, align 4
  %112 = load i32, i32* @stdout, align 4
  %113 = call i32 @fflush(i32 %112)
  %114 = load i32, i32* @stderr, align 4
  %115 = call i32 @fflush(i32 %114)
  br label %116

116:                                              ; preds = %91, %67
  %117 = load i32, i32* %24, align 4
  %118 = srem i32 %117, 2
  %119 = icmp eq i32 %118, 0
  %120 = zext i1 %119 to i32
  %121 = load i32, i32* %21, align 4
  %122 = icmp eq i32 %121, 1
  %123 = zext i1 %122 to i32
  %124 = icmp eq i32 %120, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %116
  store float 5.000000e+00, float* %27, align 4
  br label %127

126:                                              ; preds = %116
  store float 1.000000e+00, float* %27, align 4
  br label %127

127:                                              ; preds = %126, %125
  %128 = load i32, i32* %24, align 4
  %129 = srem i32 %128, 2
  %130 = icmp eq i32 %129, 0
  %131 = zext i1 %130 to i32
  %132 = load i32, i32* %21, align 4
  %133 = icmp eq i32 %132, 1
  %134 = zext i1 %133 to i32
  %135 = icmp eq i32 %131, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %127
  %137 = load i32*, i32** %13, align 8
  br label %140

138:                                              ; preds = %127
  %139 = load i32*, i32** %14, align 8
  br label %140

140:                                              ; preds = %138, %136
  %141 = phi i32* [ %137, %136 ], [ %139, %138 ]
  store i32* %141, i32** %29, align 8
  %142 = load i32, i32* %24, align 4
  %143 = srem i32 %142, 2
  %144 = icmp eq i32 %143, 0
  %145 = zext i1 %144 to i32
  %146 = load i32, i32* %21, align 4
  %147 = icmp eq i32 %146, 1
  %148 = zext i1 %147 to i32
  %149 = icmp eq i32 %145, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %140
  %151 = load i32*, i32** %11, align 8
  br label %154

152:                                              ; preds = %140
  %153 = load i32*, i32** %12, align 8
  br label %154

154:                                              ; preds = %152, %150
  %155 = phi i32* [ %151, %150 ], [ %153, %152 ]
  store i32* %155, i32** %30, align 8
  %156 = load i32*, i32** %30, align 8
  %157 = load i32*, i32** %29, align 8
  %158 = load float*, float** %17, align 8
  %159 = load float*, float** %19, align 8
  %160 = load i32, i32* %21, align 4
  %161 = load i32, i32* %26, align 4
  %162 = load float, float* %27, align 4
  %163 = call i32* @run_mcts(i32* %156, i32* %157, float* %158, float* %159, i32 %160, i32 %161, float %162, i32 0)
  store i32* %163, i32** %30, align 8
  %164 = load i32*, i32** %30, align 8
  %165 = load float, float* %25, align 4
  %166 = load i32, i32* %21, align 4
  %167 = call i64 @pick_move(i32* %164, float %165, i32 %166)
  %168 = bitcast %struct.TYPE_3__* %31 to i64*
  store i64 %167, i64* %168, align 4
  %169 = load i32, i32* %24, align 4
  %170 = srem i32 %169, 2
  %171 = icmp eq i32 %170, 0
  %172 = zext i1 %171 to i32
  %173 = load i32, i32* %21, align 4
  %174 = icmp eq i32 %173, 1
  %175 = zext i1 %174 to i32
  %176 = icmp eq i32 %172, %175
  br i1 %176, label %177, label %179

177:                                              ; preds = %154
  %178 = load i32*, i32** %30, align 8
  store i32* %178, i32** %11, align 8
  br label %181

179:                                              ; preds = %154
  %180 = load i32*, i32** %30, align 8
  store i32* %180, i32** %12, align 8
  br label %181

181:                                              ; preds = %179, %177
  %182 = load i32*, i32** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = mul nsw i32 %184, 19
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %185, %187
  %189 = call i32* @move_mcts(i32* %182, i32 %188)
  store i32* %189, i32** %11, align 8
  %190 = load i32*, i32** %12, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = mul nsw i32 %192, 19
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %193, %195
  %197 = call i32* @move_mcts(i32* %190, i32 %196)
  store i32* %197, i32** %12, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = icmp eq i32 %199, 19
  br i1 %200, label %201, label %202

201:                                              ; preds = %181
  store i32 1, i32* %20, align 4
  br label %67

202:                                              ; preds = %181
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  store i32 %204, i32* %32, align 4
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  store i32 %206, i32* %33, align 4
  %207 = load float*, float** %19, align 8
  store float* %207, float** %34, align 8
  %208 = load float*, float** %18, align 8
  store float* %208, float** %19, align 8
  %209 = load float*, float** %34, align 8
  store float* %209, float** %18, align 8
  %210 = load i32, i32* %21, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %202
  %213 = load float*, float** %17, align 8
  %214 = call i32 @flip_board(float* %213)
  br label %215

215:                                              ; preds = %212, %202
  %216 = load i32, i32* %32, align 4
  %217 = trunc i32 %216 to i8
  %218 = load i32, i32* %16, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [600 x [93 x i8]], [600 x [93 x i8]]* %15, i64 0, i64 %219
  %221 = getelementptr inbounds [93 x i8], [93 x i8]* %220, i64 0, i64 0
  store i8 %217, i8* %221, align 1
  %222 = load i32, i32* %33, align 4
  %223 = trunc i32 %222 to i8
  %224 = load i32, i32* %16, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [600 x [93 x i8]], [600 x [93 x i8]]* %15, i64 0, i64 %225
  %227 = getelementptr inbounds [93 x i8], [93 x i8]* %226, i64 0, i64 1
  store i8 %223, i8* %227, align 1
  %228 = load i32, i32* %16, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [600 x [93 x i8]], [600 x [93 x i8]]* %15, i64 0, i64 %229
  %231 = getelementptr inbounds [93 x i8], [93 x i8]* %230, i64 0, i64 0
  %232 = getelementptr inbounds i8, i8* %231, i64 2
  %233 = load float*, float** %17, align 8
  %234 = call i32 @board_to_string(i8* %232, float* %233)
  %235 = load i32, i32* %21, align 4
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %215
  %238 = load float*, float** %17, align 8
  %239 = call i32 @flip_board(float* %238)
  br label %240

240:                                              ; preds = %237, %215
  %241 = load i32, i32* %16, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %16, align 4
  %243 = load float*, float** %17, align 8
  %244 = load i32, i32* %21, align 4
  %245 = load i32, i32* %32, align 4
  %246 = load i32, i32* %33, align 4
  %247 = call i32 @move_go(float* %243, i32 %244, i32 %245, i32 %246)
  %248 = load float*, float** %17, align 8
  %249 = load float*, float** %18, align 8
  %250 = call i32 @copy_cpu(i32 1083, float* %248, i32 1, float* %249, i32 1)
  %251 = load i32, i32* %21, align 4
  %252 = sub nsw i32 0, %251
  store i32 %252, i32* %21, align 4
  br label %67
}

declare dso_local i32* @load_network(i8*, i8*, i32) #1

declare dso_local i32* @parse_network_cfg(i8*) #1

declare dso_local i32 @load_weights(i32*, i8*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @time(i32) #1

declare dso_local i32 @flip_board(float*) #1

declare dso_local i32* @move_mcts(i32*, i32) #1

declare dso_local float @score_game(float*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, float, float) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @memset(float*, i32, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32* @run_mcts(i32*, i32*, float*, float*, i32, i32, float, i32) #1

declare dso_local i64 @pick_move(i32*, float, i32) #1

declare dso_local i32 @board_to_string(i8*, float*) #1

declare dso_local i32 @move_go(float*, i32, i32, i32) #1

declare dso_local i32 @copy_cpu(i32, float*, i32, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
