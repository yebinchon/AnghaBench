; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_flvenc.c_shift_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_flvenc.c_shift_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, i32**, i32, i32, i32*)*, i32*, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@AVIO_FLAG_READ = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"Unable to re-open %s output file for the second pass (add_keyframe_index)\0A\00", align 1
@READ_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @shift_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shift_data(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca [2 x i32*], align 16
  %12 = alloca i32, align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %7, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @avio_tell(i32* %20)
  store i32 %21, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = mul nsw i32 %24, 9
  %26 = mul nsw i32 %25, 2
  %27 = add nsw i32 %26, 10
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 15
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 7
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 3
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %1
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %205

41:                                               ; preds = %1
  %42 = load i32, i32* %6, align 4
  %43 = call i32* @av_malloc_array(i32 %42, i32 2)
  store i32* %43, i32** %10, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = call i32 @AVERROR(i32 %47)
  store i32 %48, i32* %2, align 4
  br label %205

49:                                               ; preds = %41
  %50 = load i32*, i32** %10, align 8
  %51 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 0
  store i32* %50, i32** %51, align 16
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 1
  store i32* %55, i32** %56, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @SEEK_SET, align 4
  %64 = call i32 @avio_seek(i32* %59, i32 %62, i32 %63)
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %70, %72
  %74 = call i32 @avio_wb24(i32* %67, i64 %73)
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @SEEK_SET, align 4
  %82 = call i32 @avio_seek(i32* %77, i32 %80, i32 %81)
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 5
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, 11
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %89, %91
  %93 = call i32 @avio_wb32(i32* %85, i64 %92)
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @SEEK_SET, align 4
  %99 = call i32 @avio_seek(i32* %96, i32 %97, i32 %98)
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @avio_flush(i32* %102)
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32 (%struct.TYPE_8__*, i32**, i32, i32, i32*)*, i32 (%struct.TYPE_8__*, i32**, i32, i32, i32*)** %105, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @AVIO_FLAG_READ, align 4
  %112 = call i32 %106(%struct.TYPE_8__* %107, i32** %14, i32 %110, i32 %111, i32* null)
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %4, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %49
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %117 = load i32, i32* @AV_LOG_ERROR, align 4
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @av_log(%struct.TYPE_8__* %116, i32 %117, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %120)
  br label %201

122:                                              ; preds = %49
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @avio_tell(i32* %125)
  store i32 %126, i32* %9, align 4
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %132, %133
  %135 = load i32, i32* @SEEK_SET, align 4
  %136 = call i32 @avio_seek(i32* %129, i32 %134, i32 %135)
  %137 = load i32*, i32** %14, align 8
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @SEEK_SET, align 4
  %142 = call i32 @avio_seek(i32* %137, i32 %140, i32 %141)
  %143 = load i32*, i32** %14, align 8
  %144 = call i32 @avio_tell(i32* %143)
  store i32 %144, i32* %8, align 4
  br label %145

145:                                              ; preds = %122
  %146 = load i32*, i32** %14, align 8
  %147 = load i32, i32* %12, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 %148
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %6, align 4
  %152 = call i32 (i32*, i32*, i32, ...) bitcast (i32 (...)* @avio_read to i32 (i32*, i32*, i32, ...)*)(i32* %146, i32* %150, i32 %151)
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %154
  store i32 %152, i32* %155, align 4
  %156 = load i32, i32* %12, align 4
  %157 = xor i32 %156, 1
  store i32 %157, i32* %12, align 4
  br label %158

158:                                              ; preds = %145
  br label %159

159:                                              ; preds = %194, %158
  br label %160

160:                                              ; preds = %159
  %161 = load i32*, i32** %14, align 8
  %162 = load i32, i32* %12, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 %163
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %6, align 4
  %167 = call i32 (i32*, i32*, i32, ...) bitcast (i32 (...)* @avio_read to i32 (i32*, i32*, i32, ...)*)(i32* %161, i32* %165, i32 %166)
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %169
  store i32 %167, i32* %170, align 4
  %171 = load i32, i32* %12, align 4
  %172 = xor i32 %171, 1
  store i32 %172, i32* %12, align 4
  br label %173

173:                                              ; preds = %160
  %174 = load i32, i32* %12, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %175
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %5, align 4
  %178 = load i32, i32* %5, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %173
  br label %198

181:                                              ; preds = %173
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %12, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 %186
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %5, align 4
  %190 = call i32 @avio_write(i32* %184, i32* %188, i32 %189)
  %191 = load i32, i32* %5, align 4
  %192 = load i32, i32* %8, align 4
  %193 = add nsw i32 %192, %191
  store i32 %193, i32* %8, align 4
  br label %194

194:                                              ; preds = %181
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* %9, align 4
  %197 = icmp sle i32 %195, %196
  br i1 %197, label %159, label %198

198:                                              ; preds = %194, %180
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %200 = call i32 @ff_format_io_close(%struct.TYPE_8__* %199, i32** %14)
  br label %201

201:                                              ; preds = %198, %115
  %202 = load i32*, i32** %10, align 8
  %203 = call i32 @av_free(i32* %202)
  %204 = load i32, i32* %4, align 4
  store i32 %204, i32* %2, align 4
  br label %205

205:                                              ; preds = %201, %46, %39
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32* @av_malloc_array(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_seek(i32*, i32, i32) #1

declare dso_local i32 @avio_wb24(i32*, i64) #1

declare dso_local i32 @avio_wb32(i32*, i64) #1

declare dso_local i32 @avio_flush(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_8__*, i32, i8*, i32) #1

declare dso_local i32 @avio_read(...) #1

declare dso_local i32 @avio_write(i32*, i32*, i32) #1

declare dso_local i32 @ff_format_io_close(%struct.TYPE_8__*, i32**) #1

declare dso_local i32 @av_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
