; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/raw/extr_raw_video_reader.c_rawvideo_parse_uri.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/raw/extr_raw_video_reader.c_rawvideo_parse_uri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8* }

@.str = private unnamed_addr constant [21 x i8] c"_C%4cW%iH%iF%i#%iS%i\00", align 1
@VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED = common dso_local global i32 0, align 4
@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32*, i32*, i32*, i32*, i32*)* @rawvideo_parse_uri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rawvideo_parse_uri(%struct.TYPE_7__* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %24, align 8
  store i32 0, i32* %17, align 4
  br label %32

32:                                               ; preds = %68, %7
  %33 = load i8*, i8** %24, align 8
  %34 = load i32, i32* %17, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = icmp ne i8 %37, 0
  br i1 %38, label %39, label %71

39:                                               ; preds = %32
  %40 = load i8*, i8** %24, align 8
  %41 = load i32, i32* %17, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 95
  br i1 %46, label %47, label %57

47:                                               ; preds = %39
  %48 = load i8*, i8** %24, align 8
  %49 = load i32, i32* %17, align 4
  %50 = add i32 %49, 1
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 67
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %68

57:                                               ; preds = %47, %39
  %58 = load i8*, i8** %24, align 8
  %59 = load i32, i32* %17, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = bitcast i32* %16 to i8*
  %63 = call i32 @sscanf(i8* %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %62, i32* %19, i32* %20, i32* %21, i32* %22, i32* %23)
  store i32 %63, i32* %18, align 4
  %64 = load i32, i32* %18, align 4
  %65 = icmp uge i32 %64, 3
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %71

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %56
  %69 = load i32, i32* %17, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %17, align 4
  br label %32

71:                                               ; preds = %66, %32
  %72 = load i8*, i8** %24, align 8
  %73 = load i32, i32* %17, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = icmp ne i8 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %71
  %79 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 4
  store i32 %79, i32* %8, align 4
  br label %148

80:                                               ; preds = %71
  %81 = load i32, i32* %23, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %16, align 4
  switch i32 %84, label %91 [
    i32 129, label %85
    i32 128, label %85
  ]

85:                                               ; preds = %83, %83
  %86 = load i32, i32* %19, align 4
  %87 = load i32, i32* %20, align 4
  %88 = mul i32 %86, %87
  %89 = mul i32 %88, 3
  %90 = udiv i32 %89, 2
  store i32 %90, i32* %23, align 4
  br label %92

91:                                               ; preds = %83
  br label %92

92:                                               ; preds = %91, %85
  br label %93

93:                                               ; preds = %92, %80
  %94 = load i32, i32* %19, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load i32, i32* %20, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* %23, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %99, %96, %93
  %103 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 4
  store i32 %103, i32* %8, align 4
  br label %148

104:                                              ; preds = %99
  %105 = load i32*, i32** %15, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i32, i32* %23, align 4
  %109 = load i32*, i32** %15, align 8
  store i32 %108, i32* %109, align 4
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i32*, i32** %10, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i32, i32* %16, align 4
  %115 = load i32*, i32** %10, align 8
  store i32 %114, i32* %115, align 4
  br label %116

116:                                              ; preds = %113, %110
  %117 = load i32*, i32** %11, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i32, i32* %19, align 4
  %121 = load i32*, i32** %11, align 8
  store i32 %120, i32* %121, align 4
  br label %122

122:                                              ; preds = %119, %116
  %123 = load i32*, i32** %12, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i32, i32* %20, align 4
  %127 = load i32*, i32** %12, align 8
  store i32 %126, i32* %127, align 4
  br label %128

128:                                              ; preds = %125, %122
  %129 = load i32*, i32** %13, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i32, i32* %21, align 4
  %133 = load i32*, i32** %13, align 8
  store i32 %132, i32* %133, align 4
  br label %134

134:                                              ; preds = %131, %128
  %135 = load i32*, i32** %14, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32, i32* %22, align 4
  %139 = load i32*, i32** %14, align 8
  store i32 %138, i32* %139, align 4
  br label %140

140:                                              ; preds = %137, %134
  %141 = load i32*, i32** %15, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i32, i32* %23, align 4
  %145 = load i32*, i32** %15, align 8
  store i32 %144, i32* %145, align 4
  br label %146

146:                                              ; preds = %143, %140
  %147 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %147, i32* %8, align 4
  br label %148

148:                                              ; preds = %146, %102, %78
  %149 = load i32, i32* %8, align 4
  ret i32 %149
}

declare dso_local i32 @sscanf(i8*, i8*, i8*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
