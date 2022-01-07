; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngwutil.c_png_compress_IDAT.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngwutil.c_png_compress_IDAT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i32, i64, %struct.TYPE_13__, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { i8*, i64, i64, i32*, i32 }
%struct.TYPE_15__ = type { i32*, i32* }

@png_IDAT = common dso_local global i64 0, align 8
@png_compression_bufferp = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@ZLIB_IO_MAX = common dso_local global i64 0, align 8
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@PNG_HAVE_IDAT = common dso_local global i32 0, align 4
@Z_FINISH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Z_OK on Z_FINISH with output space\00", align 1
@Z_STREAM_END = common dso_local global i32 0, align 4
@PNG_AFTER_IDAT = common dso_local global i32 0, align 4
@PNG_COMPRESSION_TYPE_BASE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_compress_IDAT(%struct.TYPE_14__* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @png_IDAT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %75

20:                                               ; preds = %4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 5
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %24 = icmp eq %struct.TYPE_15__* %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = load i32, i32* @png_compression_bufferp, align 4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %29 = call i32 @PNG_COMPRESSION_BUFFER_SIZE(%struct.TYPE_14__* %28)
  %30 = call i32 @png_malloc(%struct.TYPE_14__* %27, i32 %29)
  %31 = call %struct.TYPE_15__* @png_voidcast(i32 %26, i32 %30)
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 5
  store %struct.TYPE_15__* %31, %struct.TYPE_15__** %33, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 5
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  br label %45

38:                                               ; preds = %20
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 5
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 1
  %44 = call i32 @png_free_buffer_list(%struct.TYPE_14__* %39, i32** %43)
  br label %45

45:                                               ; preds = %38, %25
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %47 = load i64, i64* @png_IDAT, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %49 = call i32 @png_image_size(%struct.TYPE_14__* %48)
  %50 = call i32 @png_deflate_claim(%struct.TYPE_14__* %46, i64 %47, i32 %49)
  %51 = load i32, i32* @Z_OK, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %45
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @png_error(%struct.TYPE_14__* %54, i8* %58)
  br label %60

60:                                               ; preds = %53, %45
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 5
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 3
  store i32* %65, i32** %68, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  store i64 %71, i64* %74, align 8
  br label %75

75:                                               ; preds = %60, %4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @PNGZ_INPUT_CAST(i32 %76)
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 4
  store i32 %77, i32* %80, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 2
  store i64 0, i64* %83, align 8
  br label %84

84:                                               ; preds = %229, %158, %75
  %85 = load i64, i64* @ZLIB_IO_MAX, align 8
  store i64 %85, i64* %10, align 8
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* %7, align 8
  %88 = icmp sgt i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i64, i64* %7, align 8
  store i64 %90, i64* %10, align 8
  br label %91

91:                                               ; preds = %89, %84
  %92 = load i64, i64* %10, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 2
  store i64 %92, i64* %95, align 8
  %96 = load i64, i64* %10, align 8
  %97 = load i64, i64* %7, align 8
  %98 = sub nsw i64 %97, %96
  store i64 %98, i64* %7, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 4
  %101 = load i64, i64* %7, align 8
  %102 = icmp sgt i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %91
  %104 = load i32, i32* @Z_NO_FLUSH, align 4
  br label %107

105:                                              ; preds = %91
  %106 = load i32, i32* %8, align 4
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i32 [ %104, %103 ], [ %106, %105 ]
  %109 = call i32 @deflate(%struct.TYPE_13__* %100, i32 %108)
  store i32 %109, i32* %9, align 4
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %7, align 8
  %115 = add nsw i64 %114, %113
  store i64 %115, i64* %7, align 8
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 2
  store i64 0, i64* %118, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %160

124:                                              ; preds = %107
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 5
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  store i32* %129, i32** %11, align 8
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %12, align 8
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %134 = load i64, i64* @png_IDAT, align 8
  %135 = load i32*, i32** %11, align 8
  %136 = load i64, i64* %12, align 8
  %137 = call i32 @png_write_complete_chunk(%struct.TYPE_14__* %133, i64 %134, i32* %135, i64 %136)
  %138 = load i32, i32* @PNG_HAVE_IDAT, align 4
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 8
  %143 = load i32*, i32** %11, align 8
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 3
  store i32* %143, i32** %146, align 8
  %147 = load i64, i64* %12, align 8
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  store i64 %147, i64* %150, align 8
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* @Z_OK, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %159

154:                                              ; preds = %124
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* @Z_NO_FLUSH, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  br label %84

159:                                              ; preds = %154, %124
  br label %160

160:                                              ; preds = %159, %107
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* @Z_OK, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %176

164:                                              ; preds = %160
  %165 = load i64, i64* %7, align 8
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %164
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* @Z_FINISH, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %167
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %173 = call i32 @png_error(%struct.TYPE_14__* %172, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %174

174:                                              ; preds = %171, %167
  br label %230

175:                                              ; preds = %164
  br label %229

176:                                              ; preds = %160
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* @Z_STREAM_END, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %218

180:                                              ; preds = %176
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* @Z_FINISH, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %218

184:                                              ; preds = %180
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 5
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  store i32* %189, i32** %13, align 8
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 4
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = sub nsw i64 %192, %196
  store i64 %197, i64* %14, align 8
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %199 = load i64, i64* @png_IDAT, align 8
  %200 = load i32*, i32** %13, align 8
  %201 = load i64, i64* %14, align 8
  %202 = call i32 @png_write_complete_chunk(%struct.TYPE_14__* %198, i64 %199, i32* %200, i64 %201)
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 4
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 1
  store i64 0, i64* %205, align 8
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 4
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 3
  store i32* null, i32** %208, align 8
  %209 = load i32, i32* @PNG_HAVE_IDAT, align 4
  %210 = load i32, i32* @PNG_AFTER_IDAT, align 4
  %211 = or i32 %209, %210
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = or i32 %214, %211
  store i32 %215, i32* %213, align 8
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 0
  store i64 0, i64* %217, align 8
  br label %230

218:                                              ; preds = %180, %176
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %220 = load i32, i32* %9, align 4
  %221 = call i32 @png_zstream_error(%struct.TYPE_14__* %219, i32 %220)
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 4
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 0
  %226 = load i8*, i8** %225, align 8
  %227 = call i32 @png_error(%struct.TYPE_14__* %222, i8* %226)
  br label %228

228:                                              ; preds = %218
  br label %229

229:                                              ; preds = %228, %175
  br label %84

230:                                              ; preds = %184, %174
  ret void
}

declare dso_local %struct.TYPE_15__* @png_voidcast(i32, i32) #1

declare dso_local i32 @png_malloc(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @PNG_COMPRESSION_BUFFER_SIZE(%struct.TYPE_14__*) #1

declare dso_local i32 @png_free_buffer_list(%struct.TYPE_14__*, i32**) #1

declare dso_local i32 @png_deflate_claim(%struct.TYPE_14__*, i64, i32) #1

declare dso_local i32 @png_image_size(%struct.TYPE_14__*) #1

declare dso_local i32 @png_error(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @PNGZ_INPUT_CAST(i32) #1

declare dso_local i32 @deflate(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @png_write_complete_chunk(%struct.TYPE_14__*, i64, i32*, i64) #1

declare dso_local i32 @png_zstream_error(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
