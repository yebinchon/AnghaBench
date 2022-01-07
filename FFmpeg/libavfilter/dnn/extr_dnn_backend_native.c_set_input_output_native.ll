; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/dnn/extr_dnn_backend_native.c_set_input_output_native.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/dnn/extr_dnn_backend_native.c_set_input_output_native.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32* }
%struct.TYPE_8__ = type { i64, i64, i64, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32*, i32*, i32, i32 }

@DNN_ERROR = common dso_local global i32 0, align 4
@DOT_INPUT = common dso_local global i64 0, align 8
@DNN_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_7__*, i8*, i8**, i64)* @set_input_output_native to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_input_output_native(i8* %0, %struct.TYPE_7__* %1, i8* %2, i8** %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %13, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %5
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sle i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24, %5
  %30 = load i32, i32* @DNN_ERROR, align 4
  store i32 %30, i32* %6, align 4
  br label %194

31:                                               ; preds = %24
  store i32 0, i32* %14, align 4
  br label %32

32:                                               ; preds = %62, %31
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %39, label %65

39:                                               ; preds = %32
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %44
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %13, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = call i64 @strcmp(i32 %48, i8* %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %39
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @DOT_INPUT, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* @DNN_ERROR, align 4
  store i32 %59, i32* %6, align 4
  br label %194

60:                                               ; preds = %52
  br label %65

61:                                               ; preds = %39
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %13, align 8
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %14, align 4
  br label %32

65:                                               ; preds = %60, %32
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %67 = icmp ne %struct.TYPE_6__* %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* @DNN_ERROR, align 4
  store i32 %69, i32* %6, align 4
  br label %194

70:                                               ; preds = %65
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  store i32 1, i32* %74, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  store i32 %77, i32* %81, align 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  store i32 %84, i32* %88, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 3
  store i32 %91, i32* %95, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  %98 = call i32 @av_freep(i32** %97)
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %100 = call i32 @calculate_operand_data_length(%struct.TYPE_6__* %99)
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = call i32* @av_malloc(i32 %105)
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  store i32* %106, i32** %108, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %70
  %114 = load i32, i32* @DNN_ERROR, align 4
  store i32 %114, i32* %6, align 4
  br label %194

115:                                              ; preds = %70
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 3
  store i32* %118, i32** %120, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  store i64 0, i64* %122, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 3
  %125 = call i32 @av_freep(i32** %124)
  %126 = load i64, i64* %11, align 8
  %127 = call i32* @av_mallocz_array(i64 %126, i32 4)
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 3
  store i32* %127, i32** %129, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %136, label %134

134:                                              ; preds = %115
  %135 = load i32, i32* @DNN_ERROR, align 4
  store i32 %135, i32* %6, align 4
  br label %194

136:                                              ; preds = %115
  store i64 0, i64* %15, align 8
  br label %137

137:                                              ; preds = %181, %136
  %138 = load i64, i64* %15, align 8
  %139 = load i64, i64* %11, align 8
  %140 = icmp ult i64 %138, %139
  br i1 %140, label %141, label %184

141:                                              ; preds = %137
  %142 = load i8**, i8*** %10, align 8
  %143 = load i64, i64* %15, align 8
  %144 = getelementptr inbounds i8*, i8** %142, i64 %143
  %145 = load i8*, i8** %144, align 8
  store i8* %145, i8** %16, align 8
  store i32 0, i32* %17, align 4
  br label %146

146:                                              ; preds = %177, %141
  %147 = load i32, i32* %17, align 4
  %148 = sext i32 %147 to i64
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp slt i64 %148, %151
  br i1 %152, label %153, label %180

153:                                              ; preds = %146
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 4
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = load i32, i32* %17, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i64 %158
  store %struct.TYPE_6__* %159, %struct.TYPE_6__** %13, align 8
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = load i8*, i8** %16, align 8
  %164 = call i64 @strcmp(i32 %162, i8* %163)
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %176

166:                                              ; preds = %153
  %167 = load i32, i32* %17, align 4
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 3
  %170 = load i32*, i32** %169, align 8
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = add i64 %173, 1
  store i64 %174, i64* %172, align 8
  %175 = getelementptr inbounds i32, i32* %170, i64 %173
  store i32 %167, i32* %175, align 4
  br label %180

176:                                              ; preds = %153
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %17, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %17, align 4
  br label %146

180:                                              ; preds = %166, %146
  br label %181

181:                                              ; preds = %180
  %182 = load i64, i64* %15, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %15, align 8
  br label %137

184:                                              ; preds = %137
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* %11, align 8
  %189 = icmp ne i64 %187, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %184
  %191 = load i32, i32* @DNN_ERROR, align 4
  store i32 %191, i32* %6, align 4
  br label %194

192:                                              ; preds = %184
  %193 = load i32, i32* @DNN_SUCCESS, align 4
  store i32 %193, i32* %6, align 4
  br label %194

194:                                              ; preds = %192, %190, %134, %113, %68, %58, %29
  %195 = load i32, i32* %6, align 4
  ret i32 %195
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @av_freep(i32**) #1

declare dso_local i32 @calculate_operand_data_length(%struct.TYPE_6__*) #1

declare dso_local i32* @av_malloc(i32) #1

declare dso_local i32* @av_mallocz_array(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
