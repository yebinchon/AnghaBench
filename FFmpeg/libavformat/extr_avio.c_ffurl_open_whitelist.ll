; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_avio.c_ffurl_open_whitelist.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_avio.c_ffurl_open_whitelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"protocol_whitelist\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"protocol_blacklist\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ffurl_open_whitelist(%struct.TYPE_14__** %0, i8* %1, i32 %2, i32* %3, i32** %4, i8* %5, i8* %6, %struct.TYPE_14__* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_15__*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_14__** %0, %struct.TYPE_14__*** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32** %4, i32*** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store %struct.TYPE_14__* %7, %struct.TYPE_14__** %17, align 8
  store i32* null, i32** %18, align 8
  %21 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = load i32, i32* %12, align 4
  %24 = load i32*, i32** %13, align 8
  %25 = call i32 @ffurl_alloc(%struct.TYPE_14__** %21, i8* %22, i32 %23, i32* %24)
  store i32 %25, i32* %20, align 4
  %26 = load i32, i32* %20, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %8
  %29 = load i32, i32* %20, align 4
  store i32 %29, i32* %9, align 4
  br label %144

30:                                               ; preds = %8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %32 = icmp ne %struct.TYPE_14__* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %37 = call i32 @av_opt_copy(%struct.TYPE_14__* %35, %struct.TYPE_14__* %36)
  br label %38

38:                                               ; preds = %33, %30
  %39 = load i32**, i32*** %14, align 8
  %40 = icmp ne i32** %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %44 = load i32**, i32*** %14, align 8
  %45 = call i32 @av_opt_set_dict(%struct.TYPE_14__* %43, i32** %44)
  store i32 %45, i32* %20, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %138

48:                                               ; preds = %41, %38
  %49 = load i32**, i32*** %14, align 8
  %50 = icmp ne i32** %49, null
  br i1 %50, label %51, label %68

51:                                               ; preds = %48
  %52 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %51
  %60 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  %64 = load i32**, i32*** %14, align 8
  %65 = call i32 @av_opt_set_dict(%struct.TYPE_14__* %63, i32** %64)
  store i32 %65, i32* %20, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %138

68:                                               ; preds = %59, %51, %48
  %69 = load i32**, i32*** %14, align 8
  %70 = icmp ne i32** %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  store i32** %18, i32*** %14, align 8
  br label %72

72:                                               ; preds = %71, %68
  %73 = load i8*, i8** %15, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %88

75:                                               ; preds = %72
  %76 = load i32**, i32*** %14, align 8
  %77 = load i32*, i32** %76, align 8
  %78 = call %struct.TYPE_15__* @av_dict_get(i32* %77, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_15__* %78, %struct.TYPE_15__** %19, align 8
  %79 = icmp ne %struct.TYPE_15__* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %75
  %81 = load i8*, i8** %15, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @strcmp(i8* %81, i32 %84)
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  br label %88

88:                                               ; preds = %80, %75, %72
  %89 = phi i1 [ true, %75 ], [ true, %72 ], [ %87, %80 ]
  %90 = zext i1 %89 to i32
  %91 = call i32 @av_assert0(i32 %90)
  %92 = load i8*, i8** %16, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %107

94:                                               ; preds = %88
  %95 = load i32**, i32*** %14, align 8
  %96 = load i32*, i32** %95, align 8
  %97 = call %struct.TYPE_15__* @av_dict_get(i32* %96, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_15__* %97, %struct.TYPE_15__** %19, align 8
  %98 = icmp ne %struct.TYPE_15__* %97, null
  br i1 %98, label %99, label %107

99:                                               ; preds = %94
  %100 = load i8*, i8** %16, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @strcmp(i8* %100, i32 %103)
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  br label %107

107:                                              ; preds = %99, %94, %88
  %108 = phi i1 [ true, %94 ], [ true, %88 ], [ %106, %99 ]
  %109 = zext i1 %108 to i32
  %110 = call i32 @av_assert0(i32 %109)
  %111 = load i32**, i32*** %14, align 8
  %112 = load i8*, i8** %15, align 8
  %113 = call i32 @av_dict_set(i32** %111, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %112, i32 0)
  store i32 %113, i32* %20, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  br label %138

116:                                              ; preds = %107
  %117 = load i32**, i32*** %14, align 8
  %118 = load i8*, i8** %16, align 8
  %119 = call i32 @av_dict_set(i32** %117, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %118, i32 0)
  store i32 %119, i32* %20, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %138

122:                                              ; preds = %116
  %123 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %123, align 8
  %125 = load i32**, i32*** %14, align 8
  %126 = call i32 @av_opt_set_dict(%struct.TYPE_14__* %124, i32** %125)
  store i32 %126, i32* %20, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  br label %138

129:                                              ; preds = %122
  %130 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %130, align 8
  %132 = load i32**, i32*** %14, align 8
  %133 = call i32 @ffurl_connect(%struct.TYPE_14__* %131, i32** %132)
  store i32 %133, i32* %20, align 4
  %134 = load i32, i32* %20, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %129
  store i32 0, i32* %9, align 4
  br label %144

137:                                              ; preds = %129
  br label %138

138:                                              ; preds = %137, %128, %121, %115, %67, %47
  %139 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %139, align 8
  %141 = call i32 @ffurl_close(%struct.TYPE_14__* %140)
  %142 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %142, align 8
  %143 = load i32, i32* %20, align 4
  store i32 %143, i32* %9, align 4
  br label %144

144:                                              ; preds = %138, %136, %28
  %145 = load i32, i32* %9, align 4
  ret i32 %145
}

declare dso_local i32 @ffurl_alloc(%struct.TYPE_14__**, i8*, i32, i32*) #1

declare dso_local i32 @av_opt_copy(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @av_opt_set_dict(%struct.TYPE_14__*, i32**) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local %struct.TYPE_15__* @av_dict_get(i32*, i8*, i32*, i32) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #1

declare dso_local i32 @ffurl_connect(%struct.TYPE_14__*, i32**) #1

declare dso_local i32 @ffurl_close(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
