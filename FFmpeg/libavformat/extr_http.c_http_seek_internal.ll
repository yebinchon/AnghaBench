; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_http.c_http_seek_internal.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_http.c_http_seek_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i64, %struct.TYPE_6__*, i32*, i32*, i32* }

@BUFFER_SIZE = common dso_local global i32 0, align 4
@AVSEEK_SIZE = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i64 0, align 8
@SEEK_END = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i64, i32, i32)* @http_seek_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @http_seek_internal(%struct.TYPE_6__* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %10, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %11, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %12, align 8
  %29 = load i32, i32* @BUFFER_SIZE, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %13, align 8
  %32 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %14, align 8
  store i32* null, i32** %17, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @AVSEEK_SIZE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %5, align 8
  store i32 1, i32* %18, align 4
  br label %221

40:                                               ; preds = %4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %64, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @SEEK_CUR, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i64, i64* %7, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %47, %43
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @SEEK_SET, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load i64, i64* %7, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54, %47
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %5, align 8
  store i32 1, i32* %18, align 4
  br label %221

64:                                               ; preds = %54, %50, %40
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @UINT64_MAX, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @SEEK_END, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i32, i32* @ENOSYS, align 4
  %76 = call i64 @AVERROR(i32 %75)
  store i64 %76, i64* %5, align 8
  store i32 1, i32* %18, align 4
  br label %221

77:                                               ; preds = %70, %64
  br label %78

78:                                               ; preds = %77
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @SEEK_CUR, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %7, align 8
  %88 = add nsw i64 %87, %86
  store i64 %88, i64* %7, align 8
  br label %108

89:                                               ; preds = %79
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @SEEK_END, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %7, align 8
  %98 = add nsw i64 %97, %96
  store i64 %98, i64* %7, align 8
  br label %107

99:                                               ; preds = %89
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @SEEK_SET, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i32, i32* @EINVAL, align 4
  %105 = call i64 @AVERROR(i32 %104)
  store i64 %105, i64* %5, align 8
  store i32 1, i32* %18, align 4
  br label %221

106:                                              ; preds = %99
  br label %107

107:                                              ; preds = %106, %93
  br label %108

108:                                              ; preds = %107, %83
  %109 = load i64, i64* %7, align 8
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i32, i32* @EINVAL, align 4
  %113 = call i64 @AVERROR(i32 %112)
  store i64 %113, i64* %5, align 8
  store i32 1, i32* %18, align 4
  br label %221

114:                                              ; preds = %108
  %115 = load i64, i64* %7, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %114
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load i32, i32* @ENOSYS, align 4
  %129 = call i64 @AVERROR(i32 %128)
  store i64 %129, i64* %5, align 8
  store i32 1, i32* %18, align 4
  br label %221

130:                                              ; preds = %122, %114
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %130
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @UINT64_MAX, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %166

141:                                              ; preds = %135, %130
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %141
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  br label %154

150:                                              ; preds = %141
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  br label %154

154:                                              ; preds = %150, %146
  %155 = phi i64 [ %149, %146 ], [ %153, %150 ]
  store i64 %155, i64* %19, align 8
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* %19, align 8
  %160 = icmp sge i64 %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %154
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  store i64 %164, i64* %5, align 8
  store i32 1, i32* %18, align 4
  br label %221

165:                                              ; preds = %154
  br label %166

166:                                              ; preds = %165, %135
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 5
  %169 = load i32*, i32** %168, align 8
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 6
  %172 = load i32*, i32** %171, align 8
  %173 = ptrtoint i32* %169 to i64
  %174 = ptrtoint i32* %172 to i64
  %175 = sub i64 %173, %174
  %176 = sdiv exact i64 %175, 4
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %15, align 4
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 6
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %15, align 4
  %182 = call i32 @memcpy(i32* %32, i32* %180, i32 %181)
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 3
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %184, align 8
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %186 = call i32 @http_open_cnx(%struct.TYPE_6__* %185, i32** %17)
  store i32 %186, i32* %16, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %216

188:                                              ; preds = %166
  %189 = call i32 @av_dict_free(i32** %17)
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 4
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %15, align 4
  %194 = call i32 @memcpy(i32* %192, i32* %32, i32 %193)
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 4
  %197 = load i32*, i32** %196, align 8
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 6
  store i32* %197, i32** %199, align 8
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 4
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %15, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 5
  store i32* %205, i32** %207, align 8
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 3
  store %struct.TYPE_6__* %208, %struct.TYPE_6__** %210, align 8
  %211 = load i64, i64* %12, align 8
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 0
  store i64 %211, i64* %213, align 8
  %214 = load i32, i32* %16, align 4
  %215 = sext i32 %214 to i64
  store i64 %215, i64* %5, align 8
  store i32 1, i32* %18, align 4
  br label %221

216:                                              ; preds = %166
  %217 = call i32 @av_dict_free(i32** %17)
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %219 = call i32 @ffurl_close(%struct.TYPE_6__* %218)
  %220 = load i64, i64* %7, align 8
  store i64 %220, i64* %5, align 8
  store i32 1, i32* %18, align 4
  br label %221

221:                                              ; preds = %216, %188, %161, %127, %111, %103, %74, %60, %36
  %222 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %222)
  %223 = load i64, i64* %5, align 8
  ret i64 %223
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @AVERROR(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @http_open_cnx(%struct.TYPE_6__*, i32**) #2

declare dso_local i32 @av_dict_free(i32**) #2

declare dso_local i32 @ffurl_close(%struct.TYPE_6__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
