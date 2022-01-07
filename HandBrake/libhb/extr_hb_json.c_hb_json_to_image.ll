; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_hb_json.c_hb_json_to_image.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_hb_json.c_hb_json_to_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"{s:i, s:i, s:i,}\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Format\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Width\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Height\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"image: json unpack failure: %s\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"{s:o}\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Planes\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"image::planes: json unpack failure: %s\00", align 1
@HB_VALUE_TYPE_ARRAY = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"{s:i, s:s}\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"Size\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"Data\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"image::plane::data: json unpack failure: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @hb_json_to_image(i8* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i32* @hb_value_json(i8* %17)
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @unpack_i(i32* %7)
  %21 = call i32 @unpack_i(i32* %8)
  %22 = call i32 @unpack_b(i32* %9)
  %23 = call i32 (i32*, %struct.TYPE_8__*, i32, i8*, i8*, i32, ...) @json_unpack_ex(i32* %19, %struct.TYPE_8__* %5, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @hb_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %28)
  %30 = call i32 @hb_value_free(i32** %6)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %120

31:                                               ; preds = %1
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call %struct.TYPE_9__* @hb_image_init(i32 %32, i32 %33, i32 %34)
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %10, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %37 = icmp eq %struct.TYPE_9__* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = call i32 @hb_value_free(i32** %6)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %120

40:                                               ; preds = %31
  store i32* null, i32** %11, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @unpack_o(i32** %11)
  %43 = call i32 (i32*, %struct.TYPE_8__*, i32, i8*, i8*, i32, ...) @json_unpack_ex(i32* %41, %struct.TYPE_8__* %5, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @hb_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %48)
  %50 = call i32 @hb_value_free(i32** %6)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %51, %struct.TYPE_9__** %2, align 8
  br label %120

52:                                               ; preds = %40
  %53 = load i32*, i32** %11, align 8
  %54 = call i64 @hb_value_type(i32* %53)
  %55 = load i64, i64* @HB_VALUE_TYPE_ARRAY, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %117

57:                                               ; preds = %52
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @hb_value_array_len(i32* %58)
  store i32 %59, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %60

60:                                               ; preds = %113, %57
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %116

64:                                               ; preds = %60
  %65 = load i32*, i32** %11, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call i32* @hb_value_array_get(i32* %65, i32 %66)
  store i32* %67, i32** %14, align 8
  store i8* null, i8** %15, align 8
  %68 = load i32*, i32** %14, align 8
  %69 = call i32 @unpack_i(i32* %16)
  %70 = call i32 @unpack_s(i8** %15)
  %71 = call i32 (i32*, %struct.TYPE_8__*, i32, i8*, i8*, i32, ...) @json_unpack_ex(i32* %68, %struct.TYPE_8__* %5, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %64
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @hb_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), i32 %76)
  %78 = call i32 @hb_value_free(i32** %6)
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %79, %struct.TYPE_9__** %2, align 8
  br label %120

80:                                               ; preds = %64
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %112

90:                                               ; preds = %80
  %91 = load i8*, i8** %15, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %112

93:                                               ; preds = %90
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i8*, i8** %15, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @av_base64_decode(i32 %101, i8* %102, i32 %110)
  br label %112

112:                                              ; preds = %93, %90, %80
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %12, align 4
  br label %60

116:                                              ; preds = %60
  br label %117

117:                                              ; preds = %116, %52
  %118 = call i32 @hb_value_free(i32** %6)
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %119, %struct.TYPE_9__** %2, align 8
  br label %120

120:                                              ; preds = %117, %74, %46, %38, %26
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  ret %struct.TYPE_9__* %121
}

declare dso_local i32* @hb_value_json(i8*) #1

declare dso_local i32 @json_unpack_ex(i32*, %struct.TYPE_8__*, i32, i8*, i8*, i32, ...) #1

declare dso_local i32 @unpack_i(i32*) #1

declare dso_local i32 @unpack_b(i32*) #1

declare dso_local i32 @hb_error(i8*, i32) #1

declare dso_local i32 @hb_value_free(i32**) #1

declare dso_local %struct.TYPE_9__* @hb_image_init(i32, i32, i32) #1

declare dso_local i32 @unpack_o(i32**) #1

declare dso_local i64 @hb_value_type(i32*) #1

declare dso_local i32 @hb_value_array_len(i32*) #1

declare dso_local i32* @hb_value_array_get(i32*, i32) #1

declare dso_local i32 @unpack_s(i8**) #1

declare dso_local i32 @av_base64_decode(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
