; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/extr_video_shader_parse.c_video_shader_resolve_parameters.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/extr_video_shader_parse.c_video_shader_resolve_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_shader = type { i64, i32, %struct.video_shader_parameter*, %struct.TYPE_5__* }
%struct.video_shader_parameter = type { i32, i8*, i8*, float, float, float, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.string_list = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"#pragma parameter\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"#pragma parameter %63s \22%63[^\22]\22 %f %f %f %f\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"Found #pragma parameter %s (%s) %f %f %f %f in pass %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @video_shader_resolve_parameters(i32* %0, %struct.video_shader* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.video_shader*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.video_shader_parameter*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.string_list*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.video_shader* %1, %struct.video_shader** %4, align 8
  %14 = load %struct.video_shader*, %struct.video_shader** %4, align 8
  %15 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %14, i32 0, i32 2
  %16 = load %struct.video_shader_parameter*, %struct.video_shader_parameter** %15, align 8
  %17 = getelementptr inbounds %struct.video_shader_parameter, %struct.video_shader_parameter* %16, i64 0
  store %struct.video_shader_parameter* %17, %struct.video_shader_parameter** %6, align 8
  %18 = load %struct.video_shader*, %struct.video_shader** %4, align 8
  %19 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %188, %2
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.video_shader*, %struct.video_shader** %4, align 8
  %23 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ult i32 %21, %24
  br i1 %25, label %26, label %191

26:                                               ; preds = %20
  %27 = load %struct.video_shader*, %struct.video_shader** %4, align 8
  %28 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %27, i32 0, i32 3
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %7, align 8
  store i32* null, i32** %8, align 8
  store i64 0, i64* %9, align 8
  store %struct.string_list* null, %struct.string_list** %10, align 8
  store i64 0, i64* %11, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i64 @string_is_empty(i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  br label %188

40:                                               ; preds = %26
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @path_is_valid(i8* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  br label %188

45:                                               ; preds = %40
  %46 = load i8*, i8** %7, align 8
  %47 = bitcast i32** %8 to i8**
  %48 = call i32 @filestream_read_file(i8* %46, i8** %47, i64* %9)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  br label %188

51:                                               ; preds = %45
  %52 = load i64, i64* %9, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32*, i32** %8, align 8
  %56 = bitcast i32* %55 to i8*
  %57 = call %struct.string_list* @string_split(i8* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.string_list* %57, %struct.string_list** %10, align 8
  br label %58

58:                                               ; preds = %54, %51
  %59 = load i32*, i32** %8, align 8
  %60 = bitcast i32* %59 to i8*
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32*, i32** %8, align 8
  %64 = bitcast i32* %63 to i8*
  %65 = call i32 @free(i8* %64)
  br label %66

66:                                               ; preds = %62, %58
  %67 = load %struct.string_list*, %struct.string_list** %10, align 8
  %68 = icmp ne %struct.string_list* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  br label %188

70:                                               ; preds = %66
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.video_shader_parameter*, %struct.video_shader_parameter** %6, align 8
  %73 = getelementptr inbounds %struct.video_shader_parameter, %struct.video_shader_parameter* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %148, %125, %105, %70
  %75 = load %struct.video_shader*, %struct.video_shader** %4, align 8
  %76 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.video_shader*, %struct.video_shader** %4, align 8
  %79 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %78, i32 0, i32 2
  %80 = load %struct.video_shader_parameter*, %struct.video_shader_parameter** %79, align 8
  %81 = call i64 @ARRAY_SIZE(%struct.video_shader_parameter* %80)
  %82 = icmp slt i64 %77, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %74
  %84 = load i64, i64* %11, align 8
  %85 = load %struct.string_list*, %struct.string_list** %10, align 8
  %86 = getelementptr inbounds %struct.string_list, %struct.string_list* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ult i64 %84, %87
  br label %89

89:                                               ; preds = %83, %74
  %90 = phi i1 [ false, %74 ], [ %88, %83 ]
  br i1 %90, label %91, label %185

91:                                               ; preds = %89
  %92 = load %struct.string_list*, %struct.string_list** %10, align 8
  %93 = getelementptr inbounds %struct.string_list, %struct.string_list* %92, i32 0, i32 1
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = load i64, i64* %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %13, align 8
  %99 = load i64, i64* %11, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %11, align 8
  %101 = load i8*, i8** %13, align 8
  %102 = call i32 @STRLEN_CONST(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %103 = call i64 @strncmp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %91
  br label %74

106:                                              ; preds = %91
  %107 = load i8*, i8** %13, align 8
  %108 = load %struct.video_shader_parameter*, %struct.video_shader_parameter** %6, align 8
  %109 = getelementptr inbounds %struct.video_shader_parameter, %struct.video_shader_parameter* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.video_shader_parameter*, %struct.video_shader_parameter** %6, align 8
  %112 = getelementptr inbounds %struct.video_shader_parameter, %struct.video_shader_parameter* %111, i32 0, i32 2
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.video_shader_parameter*, %struct.video_shader_parameter** %6, align 8
  %115 = getelementptr inbounds %struct.video_shader_parameter, %struct.video_shader_parameter* %114, i32 0, i32 6
  %116 = load %struct.video_shader_parameter*, %struct.video_shader_parameter** %6, align 8
  %117 = getelementptr inbounds %struct.video_shader_parameter, %struct.video_shader_parameter* %116, i32 0, i32 3
  %118 = load %struct.video_shader_parameter*, %struct.video_shader_parameter** %6, align 8
  %119 = getelementptr inbounds %struct.video_shader_parameter, %struct.video_shader_parameter* %118, i32 0, i32 4
  %120 = load %struct.video_shader_parameter*, %struct.video_shader_parameter** %6, align 8
  %121 = getelementptr inbounds %struct.video_shader_parameter, %struct.video_shader_parameter* %120, i32 0, i32 5
  %122 = call i32 @sscanf(i8* %107, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %110, i8* %113, i32* %115, float* %117, float* %119, float* %121)
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* %12, align 4
  %124 = icmp slt i32 %123, 5
  br i1 %124, label %125, label %126

125:                                              ; preds = %106
  br label %74

126:                                              ; preds = %106
  %127 = load %struct.video_shader_parameter*, %struct.video_shader_parameter** %6, align 8
  %128 = getelementptr inbounds %struct.video_shader_parameter, %struct.video_shader_parameter* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 63
  store i8 0, i8* %130, align 1
  %131 = load %struct.video_shader_parameter*, %struct.video_shader_parameter** %6, align 8
  %132 = getelementptr inbounds %struct.video_shader_parameter, %struct.video_shader_parameter* %131, i32 0, i32 2
  %133 = load i8*, i8** %132, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 63
  store i8 0, i8* %134, align 1
  %135 = load i32, i32* %12, align 4
  %136 = icmp eq i32 %135, 5
  br i1 %136, label %137, label %148

137:                                              ; preds = %126
  %138 = load %struct.video_shader_parameter*, %struct.video_shader_parameter** %6, align 8
  %139 = getelementptr inbounds %struct.video_shader_parameter, %struct.video_shader_parameter* %138, i32 0, i32 4
  %140 = load float, float* %139, align 4
  %141 = load %struct.video_shader_parameter*, %struct.video_shader_parameter** %6, align 8
  %142 = getelementptr inbounds %struct.video_shader_parameter, %struct.video_shader_parameter* %141, i32 0, i32 3
  %143 = load float, float* %142, align 8
  %144 = fsub float %140, %143
  %145 = fmul float 0x3FB99999A0000000, %144
  %146 = load %struct.video_shader_parameter*, %struct.video_shader_parameter** %6, align 8
  %147 = getelementptr inbounds %struct.video_shader_parameter, %struct.video_shader_parameter* %146, i32 0, i32 5
  store float %145, float* %147, align 8
  br label %148

148:                                              ; preds = %137, %126
  %149 = load i32, i32* %5, align 4
  %150 = load %struct.video_shader_parameter*, %struct.video_shader_parameter** %6, align 8
  %151 = getelementptr inbounds %struct.video_shader_parameter, %struct.video_shader_parameter* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load %struct.video_shader_parameter*, %struct.video_shader_parameter** %6, align 8
  %153 = getelementptr inbounds %struct.video_shader_parameter, %struct.video_shader_parameter* %152, i32 0, i32 2
  %154 = load i8*, i8** %153, align 8
  %155 = load %struct.video_shader_parameter*, %struct.video_shader_parameter** %6, align 8
  %156 = getelementptr inbounds %struct.video_shader_parameter, %struct.video_shader_parameter* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = load %struct.video_shader_parameter*, %struct.video_shader_parameter** %6, align 8
  %159 = getelementptr inbounds %struct.video_shader_parameter, %struct.video_shader_parameter* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.video_shader_parameter*, %struct.video_shader_parameter** %6, align 8
  %162 = getelementptr inbounds %struct.video_shader_parameter, %struct.video_shader_parameter* %161, i32 0, i32 3
  %163 = load float, float* %162, align 8
  %164 = load %struct.video_shader_parameter*, %struct.video_shader_parameter** %6, align 8
  %165 = getelementptr inbounds %struct.video_shader_parameter, %struct.video_shader_parameter* %164, i32 0, i32 4
  %166 = load float, float* %165, align 4
  %167 = load %struct.video_shader_parameter*, %struct.video_shader_parameter** %6, align 8
  %168 = getelementptr inbounds %struct.video_shader_parameter, %struct.video_shader_parameter* %167, i32 0, i32 5
  %169 = load float, float* %168, align 8
  %170 = load %struct.video_shader_parameter*, %struct.video_shader_parameter** %6, align 8
  %171 = getelementptr inbounds %struct.video_shader_parameter, %struct.video_shader_parameter* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i8* %154, i8* %157, i32 %160, float %163, float %166, float %169, i32 %172)
  %174 = load %struct.video_shader_parameter*, %struct.video_shader_parameter** %6, align 8
  %175 = getelementptr inbounds %struct.video_shader_parameter, %struct.video_shader_parameter* %174, i32 0, i32 6
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.video_shader_parameter*, %struct.video_shader_parameter** %6, align 8
  %178 = getelementptr inbounds %struct.video_shader_parameter, %struct.video_shader_parameter* %177, i32 0, i32 7
  store i32 %176, i32* %178, align 8
  %179 = load %struct.video_shader*, %struct.video_shader** %4, align 8
  %180 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = add nsw i64 %181, 1
  store i64 %182, i64* %180, align 8
  %183 = load %struct.video_shader_parameter*, %struct.video_shader_parameter** %6, align 8
  %184 = getelementptr inbounds %struct.video_shader_parameter, %struct.video_shader_parameter* %183, i32 1
  store %struct.video_shader_parameter* %184, %struct.video_shader_parameter** %6, align 8
  br label %74

185:                                              ; preds = %89
  %186 = load %struct.string_list*, %struct.string_list** %10, align 8
  %187 = call i32 @string_list_free(%struct.string_list* %186)
  br label %188

188:                                              ; preds = %185, %69, %50, %44, %39
  %189 = load i32, i32* %5, align 4
  %190 = add i32 %189, 1
  store i32 %190, i32* %5, align 4
  br label %20

191:                                              ; preds = %20
  %192 = load i32*, i32** %3, align 8
  %193 = load %struct.video_shader*, %struct.video_shader** %4, align 8
  %194 = call i32 @video_shader_resolve_current_parameters(i32* %192, %struct.video_shader* %193)
  ret i32 %194
}

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i32 @path_is_valid(i8*) #1

declare dso_local i32 @filestream_read_file(i8*, i8**, i64*) #1

declare dso_local %struct.string_list* @string_split(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.video_shader_parameter*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @STRLEN_CONST(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*, i8*, i32*, float*, float*, float*) #1

declare dso_local i32 @RARCH_LOG(i8*, i8*, i8*, i32, float, float, float, i32) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #1

declare dso_local i32 @video_shader_resolve_current_parameters(i32*, %struct.video_shader*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
