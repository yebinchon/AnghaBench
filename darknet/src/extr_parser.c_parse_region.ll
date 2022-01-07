; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_parser.c_parse_region.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_parser.c_parse_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, float*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_6__ = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"coords\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"classes\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"num\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"softmax\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"background\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"jitter\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"rescore\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"thresh\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"classfix\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"absolute\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"coord_scale\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"object_scale\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"noobject_scale\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"mask_scale\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"class_scale\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"bias_match\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"tree\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"anchors\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_region(%struct.TYPE_7__* noalias sret %0, i32* %1, %struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  store i32* %1, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i8* @option_find_int(i32* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 4)
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* %5, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = call i8* @option_find_int(i32* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 20)
  %20 = ptrtoint i8* %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = call i8* @option_find_int(i32* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  call void @make_region_layer(%struct.TYPE_7__* sret %0, i32 %25, i32 %27, i32 %29, i32 %30, i32 %31, i32 %32)
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %34, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = call i8* @option_find_int_quiet(i32* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 20
  store i8* %41, i8** %42, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = call i8* @option_find_int_quiet(i32* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 19
  store i8* %44, i8** %45, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = call i8* @option_find_int(i32* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 18
  store i8* %47, i8** %48, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = call i8* @option_find_int_quiet(i32* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 0)
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 17
  store i8* %50, i8** %51, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = call i8* @option_find_int_quiet(i32* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 30)
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 16
  store i8* %53, i8** %54, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = call i8* @option_find_float(i32* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 0)
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 15
  store i8* %56, i8** %57, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = call i8* @option_find_int_quiet(i32* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 0)
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 14
  store i8* %59, i8** %60, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = call i8* @option_find_float(i32* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 0)
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 13
  store i8* %62, i8** %63, align 8
  %64 = load i32*, i32** %4, align 8
  %65 = call i8* @option_find_int_quiet(i32* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 0)
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 12
  store i8* %65, i8** %66, align 8
  %67 = load i32*, i32** %4, align 8
  %68 = call i8* @option_find_int_quiet(i32* %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 0)
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 11
  store i8* %68, i8** %69, align 8
  %70 = load i32*, i32** %4, align 8
  %71 = call i8* @option_find_int_quiet(i32* %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 0)
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 10
  store i8* %71, i8** %72, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = call i8* @option_find_float(i32* %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 1)
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 9
  store i8* %74, i8** %75, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = call i8* @option_find_float(i32* %76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32 1)
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 8
  store i8* %77, i8** %78, align 8
  %79 = load i32*, i32** %4, align 8
  %80 = call i8* @option_find_float(i32* %79, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 1)
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 7
  store i8* %80, i8** %81, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = call i8* @option_find_float(i32* %82, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i32 1)
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 6
  store i8* %83, i8** %84, align 8
  %85 = load i32*, i32** %4, align 8
  %86 = call i8* @option_find_float(i32* %85, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 1)
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 5
  store i8* %86, i8** %87, align 8
  %88 = load i32*, i32** %4, align 8
  %89 = call i8* @option_find_int_quiet(i32* %88, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i32 0)
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 4
  store i8* %89, i8** %90, align 8
  %91 = load i32*, i32** %4, align 8
  %92 = call i8* @option_find_str(i32* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i32 0)
  store i8* %92, i8** %8, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %3
  %96 = load i8*, i8** %8, align 8
  %97 = call i32 @read_tree(i8* %96)
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 3
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %95, %3
  %100 = load i32*, i32** %4, align 8
  %101 = call i8* @option_find_str(i32* %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i32 0)
  store i8* %101, i8** %9, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load i8*, i8** %9, align 8
  %106 = call i32 @read_map(i8* %105)
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 2
  store i32 %106, i32* %107, align 8
  br label %108

108:                                              ; preds = %104, %99
  %109 = load i32*, i32** %4, align 8
  %110 = call i8* @option_find_str(i32* %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i32 0)
  store i8* %110, i8** %10, align 8
  %111 = load i8*, i8** %10, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %156

113:                                              ; preds = %108
  %114 = load i8*, i8** %10, align 8
  %115 = call i32 @strlen(i8* %114)
  store i32 %115, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %116

116:                                              ; preds = %132, %113
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %135

120:                                              ; preds = %116
  %121 = load i8*, i8** %10, align 8
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 44
  br i1 %127, label %128, label %131

128:                                              ; preds = %120
  %129 = load i32, i32* %12, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %12, align 4
  br label %131

131:                                              ; preds = %128, %120
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %13, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %13, align 4
  br label %116

135:                                              ; preds = %116
  store i32 0, i32* %13, align 4
  br label %136

136:                                              ; preds = %152, %135
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* %12, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %155

140:                                              ; preds = %136
  %141 = load i8*, i8** %10, align 8
  %142 = call float @atof(i8* %141)
  store float %142, float* %14, align 4
  %143 = load float, float* %14, align 4
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 1
  %145 = load float*, float** %144, align 8
  %146 = load i32, i32* %13, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds float, float* %145, i64 %147
  store float %143, float* %148, align 4
  %149 = load i8*, i8** %10, align 8
  %150 = call i8* @strchr(i8* %149, i8 signext 44)
  %151 = getelementptr inbounds i8, i8* %150, i64 1
  store i8* %151, i8** %10, align 8
  br label %152

152:                                              ; preds = %140
  %153 = load i32, i32* %13, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %13, align 4
  br label %136

155:                                              ; preds = %136
  br label %156

156:                                              ; preds = %155, %108
  ret void
}

declare dso_local i8* @option_find_int(i32*, i8*, i32) #1

declare dso_local void @make_region_layer(%struct.TYPE_7__* sret, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @option_find_int_quiet(i32*, i8*, i32) #1

declare dso_local i8* @option_find_float(i32*, i8*, i32) #1

declare dso_local i8* @option_find_str(i32*, i8*, i32) #1

declare dso_local i32 @read_tree(i8*) #1

declare dso_local i32 @read_map(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local float @atof(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
