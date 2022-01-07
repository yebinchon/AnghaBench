; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_parser.c_save_weights_upto.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_parser.c_save_weights_upto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32*, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32, i32, i32, i32, i32, i32*, i32, i32*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Saving weights to %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@CONVOLUTIONAL = common dso_local global i64 0, align 8
@DECONVOLUTIONAL = common dso_local global i64 0, align 8
@CONNECTED = common dso_local global i64 0, align 8
@BATCHNORM = common dso_local global i64 0, align 8
@RNN = common dso_local global i64 0, align 8
@LSTM = common dso_local global i64 0, align 8
@GRU = common dso_local global i64 0, align 8
@CRNN = common dso_local global i64 0, align 8
@LOCAL = common dso_local global i64 0, align 8
@gpu_index = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @save_weights_upto(%struct.TYPE_8__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* @stderr, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i8*, i8** %5, align 8
  %19 = call i32* @fopen(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @file_error(i8* %23)
  br label %25

25:                                               ; preds = %22, %3
  store i32 0, i32* %8, align 4
  store i32 2, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @fwrite(i32* %8, i32 4, i32 1, i32* %26)
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @fwrite(i32* %9, i32 4, i32 1, i32* %28)
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @fwrite(i32* %10, i32 4, i32 1, i32* %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @fwrite(i32* %34, i32 8, i32 1, i32* %35)
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %231, %25
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %44, %45
  br label %47

47:                                               ; preds = %43, %37
  %48 = phi i1 [ false, %37 ], [ %46, %43 ]
  br i1 %48, label %49, label %234

49:                                               ; preds = %47
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i64 %54
  %56 = bitcast %struct.TYPE_9__* %12 to i8*
  %57 = bitcast %struct.TYPE_9__* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 224, i1 false)
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 29
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  br label %231

62:                                               ; preds = %49
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @CONVOLUTIONAL, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @DECONVOLUTIONAL, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %67, %62
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @save_convolutional_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %12, i32* %73)
  br label %75

75:                                               ; preds = %72, %67
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @CONNECTED, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32*, i32** %7, align 8
  %82 = call i32 @save_connected_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %12, i32* %81)
  br label %83

83:                                               ; preds = %80, %75
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @BATCHNORM, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32*, i32** %7, align 8
  %90 = call i32 @save_batchnorm_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %12, i32* %89)
  br label %91

91:                                               ; preds = %88, %83
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @RNN, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 11
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = load i32*, i32** %7, align 8
  %100 = call i32 @save_connected_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %98, i32* %99)
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 10
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = load i32*, i32** %7, align 8
  %104 = call i32 @save_connected_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %102, i32* %103)
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 9
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = load i32*, i32** %7, align 8
  %108 = call i32 @save_connected_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %106, i32* %107)
  br label %109

109:                                              ; preds = %96, %91
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @LSTM, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %147

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 28
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = load i32*, i32** %7, align 8
  %118 = call i32 @save_connected_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %116, i32* %117)
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 27
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = call i32 @save_connected_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %120, i32* %121)
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 26
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = load i32*, i32** %7, align 8
  %126 = call i32 @save_connected_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %124, i32* %125)
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 25
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = load i32*, i32** %7, align 8
  %130 = call i32 @save_connected_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %128, i32* %129)
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 24
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = load i32*, i32** %7, align 8
  %134 = call i32 @save_connected_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %132, i32* %133)
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 23
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %135, align 8
  %137 = load i32*, i32** %7, align 8
  %138 = call i32 @save_connected_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %136, i32* %137)
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 22
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %139, align 8
  %141 = load i32*, i32** %7, align 8
  %142 = call i32 @save_connected_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %140, i32* %141)
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 21
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %143, align 8
  %145 = load i32*, i32** %7, align 8
  %146 = call i32 @save_connected_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %144, i32* %145)
  br label %147

147:                                              ; preds = %114, %109
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @GRU, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %177

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 20
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %153, align 8
  %155 = load i32*, i32** %7, align 8
  %156 = call i32 @save_connected_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %154, i32* %155)
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 19
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %157, align 8
  %159 = load i32*, i32** %7, align 8
  %160 = call i32 @save_connected_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %158, i32* %159)
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 18
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  %163 = load i32*, i32** %7, align 8
  %164 = call i32 @save_connected_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %162, i32* %163)
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 17
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %165, align 8
  %167 = load i32*, i32** %7, align 8
  %168 = call i32 @save_connected_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %166, i32* %167)
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 16
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %169, align 8
  %171 = load i32*, i32** %7, align 8
  %172 = call i32 @save_connected_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %170, i32* %171)
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 15
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %173, align 8
  %175 = load i32*, i32** %7, align 8
  %176 = call i32 @save_connected_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %174, i32* %175)
  br label %177

177:                                              ; preds = %152, %147
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @CRNN, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %195

182:                                              ; preds = %177
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 11
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %183, align 8
  %185 = load i32*, i32** %7, align 8
  %186 = call i32 @save_convolutional_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %184, i32* %185)
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 10
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %187, align 8
  %189 = load i32*, i32** %7, align 8
  %190 = call i32 @save_convolutional_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %188, i32* %189)
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 9
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %191, align 8
  %193 = load i32*, i32** %7, align 8
  %194 = call i32 @save_convolutional_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %192, i32* %193)
  br label %195

195:                                              ; preds = %182, %177
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @LOCAL, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %230

200:                                              ; preds = %195
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = mul nsw i32 %202, %204
  store i32 %205, i32* %13, align 4
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  %207 = load i32, i32* %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  %209 = load i32, i32* %208, align 8
  %210 = mul nsw i32 %207, %209
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 4
  %212 = load i32, i32* %211, align 4
  %213 = mul nsw i32 %210, %212
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 5
  %215 = load i32, i32* %214, align 8
  %216 = mul nsw i32 %213, %215
  %217 = load i32, i32* %13, align 4
  %218 = mul nsw i32 %216, %217
  store i32 %218, i32* %14, align 4
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 6
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 7
  %222 = load i32, i32* %221, align 8
  %223 = load i32*, i32** %7, align 8
  %224 = call i32 @fwrite(i32* %220, i32 4, i32 %222, i32* %223)
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 8
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %14, align 4
  %228 = load i32*, i32** %7, align 8
  %229 = call i32 @fwrite(i32* %226, i32 4, i32 %227, i32* %228)
  br label %230

230:                                              ; preds = %200, %195
  br label %231

231:                                              ; preds = %230, %61
  %232 = load i32, i32* %11, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %11, align 4
  br label %37

234:                                              ; preds = %47
  %235 = load i32*, i32** %7, align 8
  %236 = call i32 @fclose(i32* %235)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @file_error(i8*) #1

declare dso_local i32 @fwrite(i32*, i32, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @save_convolutional_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8, i32*) #1

declare dso_local i32 @save_connected_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8, i32*) #1

declare dso_local i32 @save_batchnorm_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
