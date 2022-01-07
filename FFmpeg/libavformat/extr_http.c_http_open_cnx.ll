; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_http.c_http_open_cnx.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_http.c_http_open_cnx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64, %struct.TYPE_10__, %struct.TYPE_7__, i32 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i64 }

@HTTP_AUTH_NONE = common dso_local global i64 0, align 8
@MAX_REDIRECTS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32**)* @http_open_cnx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_open_cnx(%struct.TYPE_8__* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32** %1, i32*** %5, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %131, %92, %62, %2
  %16 = load i32**, i32*** %5, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @av_dict_copy(i32** %16, i32 %19, i32 0)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %6, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %7, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = load i32**, i32*** %5, align 8
  %31 = call i32 @http_open_cnx_internal(%struct.TYPE_8__* %29, i32** %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %15
  br label %136

35:                                               ; preds = %15
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 401
  br i1 %41, label %42, label %67

42:                                               ; preds = %35
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @HTTP_AUTH_NONE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %42
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %46, %42
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @HTTP_AUTH_NONE, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %60, 4
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = call i32 @ffurl_closep(i64* %64)
  br label %15

66:                                               ; preds = %59, %52, %46
  br label %136

67:                                               ; preds = %35
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 407
  br i1 %71, label %72, label %97

72:                                               ; preds = %67
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* @HTTP_AUTH_NONE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %82, label %76

76:                                               ; preds = %72
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %76, %72
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @HTTP_AUTH_NONE, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %82
  %90 = load i32, i32* %10, align 4
  %91 = icmp slt i32 %90, 4
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = call i32 @ffurl_closep(i64* %94)
  br label %15

96:                                               ; preds = %89, %82, %76
  br label %136

97:                                               ; preds = %67
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, 301
  br i1 %101, label %117, label %102

102:                                              ; preds = %97
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 302
  br i1 %106, label %117, label %107

107:                                              ; preds = %102
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %110, 303
  br i1 %111, label %117, label %112

112:                                              ; preds = %107
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %115, 307
  br i1 %116, label %117, label %135

117:                                              ; preds = %112, %107, %102, %97
  %118 = load i32, i32* %9, align 4
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %135

120:                                              ; preds = %117
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  %123 = call i32 @ffurl_closep(i64* %122)
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* @MAX_REDIRECTS, align 4
  %127 = icmp sge i32 %124, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %120
  %129 = load i32, i32* @EIO, align 4
  %130 = call i32 @AVERROR(i32 %129)
  store i32 %130, i32* %3, align 4
  br label %157

131:                                              ; preds = %120
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 2
  %134 = call i32 @memset(%struct.TYPE_10__* %133, i32 0, i32 16)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %15

135:                                              ; preds = %117, %112
  store i32 0, i32* %3, align 4
  br label %157

136:                                              ; preds = %96, %66, %34
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  %144 = call i32 @ffurl_closep(i64* %143)
  br label %145

145:                                              ; preds = %141, %136
  %146 = load i32, i32* %9, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = load i32, i32* %9, align 4
  store i32 %149, i32* %3, align 4
  br label %157

150:                                              ; preds = %145
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @EIO, align 4
  %155 = call i32 @AVERROR(i32 %154)
  %156 = call i32 @ff_http_averror(i32 %153, i32 %155)
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %150, %148, %135, %128
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i32 @av_dict_copy(i32**, i32, i32) #1

declare dso_local i32 @http_open_cnx_internal(%struct.TYPE_8__*, i32**) #1

declare dso_local i32 @ffurl_closep(i64*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @ff_http_averror(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
