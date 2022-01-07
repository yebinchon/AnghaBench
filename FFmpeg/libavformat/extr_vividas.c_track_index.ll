; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_vividas.c_track_index.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_vividas.c_track_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_8__*, i8* }
%struct.TYPE_8__ = type { i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_7__*, i32*, i32)* @track_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @track_index(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @avio_size(i32 %20)
  store i64 %21, i64* %15, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32* @avio_alloc_context(i32* %22, i32 %23, i32 0, i32* null, i32* null, i32* null, i32* null)
  store i32* %24, i32** %13, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = call i32 @AVERROR(i32 %28)
  store i32 %29, i32* %5, align 4
  br label %195

30:                                               ; preds = %4
  %31 = load i32*, i32** %13, align 8
  %32 = call i8* @ffio_read_varlen(i32* %31)
  %33 = load i32*, i32** %13, align 8
  %34 = call i32 @avio_r8(i32* %33)
  %35 = load i32*, i32** %13, align 8
  %36 = call i8* @ffio_read_varlen(i32* %35)
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ult i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %30
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = udiv i32 %48, 2
  %50 = icmp ugt i32 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %44, %30
  br label %186

52:                                               ; preds = %44
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i8* @av_calloc(i32 %55, i32 4)
  %57 = bitcast i8* %56 to %struct.TYPE_8__*
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  store %struct.TYPE_8__* %57, %struct.TYPE_8__** %59, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = icmp ne %struct.TYPE_8__* %62, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %52
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  %67 = load i32*, i32** %13, align 8
  %68 = call i32 @av_free(i32* %67)
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = call i32 @AVERROR(i32 %69)
  store i32 %70, i32* %5, align 4
  br label %195

71:                                               ; preds = %52
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %14, align 4
  br label %72

72:                                               ; preds = %168, %71
  %73 = load i32, i32* %14, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ult i32 %73, %76
  br i1 %77, label %78, label %171

78:                                               ; preds = %72
  %79 = load i32*, i32** %13, align 8
  %80 = call i8* @ffio_read_varlen(i32* %79)
  %81 = ptrtoint i8* %80 to i64
  store i64 %81, i64* %16, align 8
  %82 = load i32*, i32** %13, align 8
  %83 = call i8* @ffio_read_varlen(i32* %82)
  %84 = ptrtoint i8* %83 to i64
  store i64 %84, i64* %17, align 8
  %85 = load i64, i64* %16, align 8
  %86 = load i64, i64* @INT_MAX, align 8
  %87 = icmp sgt i64 %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %78
  %89 = load i64, i64* %17, align 8
  %90 = load i64, i64* @INT_MAX, align 8
  %91 = icmp sgt i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %88, %78
  br label %186

93:                                               ; preds = %88
  %94 = load i64, i64* %10, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 3
  store i64 %94, i64* %101, align 8
  %102 = load i64, i64* %11, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 2
  store i64 %102, i64* %109, align 8
  %110 = load i64, i64* %16, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = load i32, i32* %14, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  store i64 %110, i64* %117, align 8
  %118 = load i64, i64* %17, align 8
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = load i32, i32* %14, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  store i64 %118, i64* %125, align 8
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %10, align 8
  %135 = add nsw i64 %134, %133
  store i64 %135, i64* %10, align 8
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = load i32, i32* %14, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* %11, align 8
  %145 = add nsw i64 %144, %143
  store i64 %145, i64* %11, align 8
  %146 = load i32, i32* %12, align 4
  %147 = sext i32 %146 to i64
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  %151 = load i32, i32* %14, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp slt i64 %147, %155
  br i1 %156, label %157, label %167

157:                                              ; preds = %93
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %159, align 8
  %161 = load i32, i32* %14, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %12, align 4
  br label %167

167:                                              ; preds = %157, %93
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %14, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %14, align 4
  br label %72

171:                                              ; preds = %72
  %172 = load i64, i64* %15, align 8
  %173 = icmp sgt i64 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %171
  %175 = load i64, i64* %11, align 8
  %176 = load i64, i64* %15, align 8
  %177 = icmp sgt i64 %175, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %174
  br label %186

179:                                              ; preds = %174, %171
  %180 = load i32, i32* %12, align 4
  %181 = call i8* @av_calloc(i32 %180, i32 4)
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 2
  store i8* %181, i8** %183, align 8
  %184 = load i32*, i32** %13, align 8
  %185 = call i32 @av_free(i32* %184)
  store i32 0, i32* %5, align 4
  br label %195

186:                                              ; preds = %178, %92, %51
  %187 = load i32*, i32** %13, align 8
  %188 = call i32 @av_free(i32* %187)
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  store i32 0, i32* %190, align 8
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 1
  %193 = call i32 @av_freep(%struct.TYPE_8__** %192)
  %194 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %194, i32* %5, align 4
  br label %195

195:                                              ; preds = %186, %179, %64, %27
  %196 = load i32, i32* %5, align 4
  ret i32 %196
}

declare dso_local i64 @avio_size(i32) #1

declare dso_local i32* @avio_alloc_context(i32*, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @ffio_read_varlen(i32*) #1

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i8* @av_calloc(i32, i32) #1

declare dso_local i32 @av_free(i32*) #1

declare dso_local i32 @av_freep(%struct.TYPE_8__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
