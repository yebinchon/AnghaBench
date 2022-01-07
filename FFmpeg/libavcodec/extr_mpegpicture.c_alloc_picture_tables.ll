; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegpicture.c_alloc_picture_tables.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegpicture.c_alloc_picture_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i32, i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@FMT_H263 = common dso_local global i32 0, align 4
@AV_CODEC_FLAG2_EXPORT_MVS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_5__*, i32, i32, i32, i32, i32, i32)* @alloc_picture_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_picture_tables(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %16, align 4
  %26 = add nsw i32 %25, 1
  %27 = mul nsw i32 %24, %26
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %18, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %16, align 4
  %31 = mul nsw i32 %29, %30
  store i32 %31, i32* %19, align 4
  %32 = load i32, i32* %17, align 4
  %33 = load i32, i32* %16, align 4
  %34 = mul nsw i32 %32, %33
  %35 = mul nsw i32 %34, 2
  store i32 %35, i32* %20, align 4
  %36 = load i32, i32* %19, align 4
  %37 = add nsw i32 %36, 2
  %38 = call i8* @av_buffer_allocz(i32 %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 9
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* %18, align 4
  %42 = load i32, i32* %14, align 4
  %43 = add nsw i32 %41, %42
  %44 = call i8* @av_buffer_allocz(i32 %43)
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 8
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %18, align 4
  %48 = load i32, i32* %14, align 4
  %49 = add nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 4
  %52 = trunc i64 %51 to i32
  %53 = call i8* @av_buffer_allocz(i32 %52)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 7
  store i8* %53, i8** %55, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 9
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %70

60:                                               ; preds = %8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 8
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 7
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %65, %60, %8
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = call i32 @AVERROR(i32 %71)
  store i32 %72, i32* %9, align 4
  br label %193

73:                                               ; preds = %65
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %113

76:                                               ; preds = %73
  %77 = load i32, i32* %19, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 4
  %80 = trunc i64 %79 to i32
  %81 = call i8* @av_buffer_allocz(i32 %80)
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 6
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* %19, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 4
  %87 = trunc i64 %86 to i32
  %88 = call i8* @av_buffer_allocz(i32 %87)
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 5
  store i8* %88, i8** %90, align 8
  %91 = load i32, i32* %19, align 4
  %92 = call i8* @av_buffer_allocz(i32 %91)
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 4
  store i8* %92, i8** %94, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 6
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %109

99:                                               ; preds = %76
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 5
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 4
  %107 = load i8*, i8** %106, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %104, %99, %76
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = call i32 @AVERROR(i32 %110)
  store i32 %111, i32* %9, align 4
  br label %193

112:                                              ; preds = %104
  br label %113

113:                                              ; preds = %112, %73
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* @FMT_H263, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %127, label %117

117:                                              ; preds = %113
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %127, label %120

120:                                              ; preds = %117
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @AV_CODEC_FLAG2_EXPORT_MVS, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %186

127:                                              ; preds = %120, %117, %113
  %128 = load i32, i32* %20, align 4
  %129 = add nsw i32 %128, 4
  %130 = mul nsw i32 2, %129
  %131 = sext i32 %130 to i64
  %132 = mul i64 %131, 4
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %22, align 4
  %134 = load i32, i32* %19, align 4
  %135 = mul nsw i32 4, %134
  store i32 %135, i32* %23, align 4
  store i32 0, i32* %21, align 4
  br label %136

136:                                              ; preds = %182, %127
  %137 = load i32, i32* %22, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32, i32* %21, align 4
  %141 = icmp slt i32 %140, 2
  br label %142

142:                                              ; preds = %139, %136
  %143 = phi i1 [ false, %136 ], [ %141, %139 ]
  br i1 %143, label %144, label %185

144:                                              ; preds = %142
  %145 = load i32, i32* %22, align 4
  %146 = call i8* @av_buffer_allocz(i32 %145)
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 3
  %149 = load i8**, i8*** %148, align 8
  %150 = load i32, i32* %21, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8*, i8** %149, i64 %151
  store i8* %146, i8** %152, align 8
  %153 = load i32, i32* %23, align 4
  %154 = call i8* @av_buffer_allocz(i32 %153)
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 2
  %157 = load i8**, i8*** %156, align 8
  %158 = load i32, i32* %21, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8*, i8** %157, i64 %159
  store i8* %154, i8** %160, align 8
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 3
  %163 = load i8**, i8*** %162, align 8
  %164 = load i32, i32* %21, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8*, i8** %163, i64 %165
  %167 = load i8*, i8** %166, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %178

169:                                              ; preds = %144
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 2
  %172 = load i8**, i8*** %171, align 8
  %173 = load i32, i32* %21, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8*, i8** %172, i64 %174
  %176 = load i8*, i8** %175, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %181, label %178

178:                                              ; preds = %169, %144
  %179 = load i32, i32* @ENOMEM, align 4
  %180 = call i32 @AVERROR(i32 %179)
  store i32 %180, i32* %9, align 4
  br label %193

181:                                              ; preds = %169
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %21, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %21, align 4
  br label %136

185:                                              ; preds = %142
  br label %186

186:                                              ; preds = %185, %120
  %187 = load i32, i32* %15, align 4
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 8
  %190 = load i32, i32* %16, align 4
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 1
  store i32 %190, i32* %192, align 4
  store i32 0, i32* %9, align 4
  br label %193

193:                                              ; preds = %186, %178, %109, %70
  %194 = load i32, i32* %9, align 4
  ret i32 %194
}

declare dso_local i8* @av_buffer_allocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
