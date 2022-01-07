; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngpread.c_png_process_IDAT_data.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngpread.c_png_process_IDAT_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i64, i64, i32, %struct.TYPE_9__, i64, i32, i32 }
%struct.TYPE_9__ = type { i64, i64, i64, i32* }

@.str = private unnamed_addr constant [30 x i8] c"No IDAT data (internal error)\00", align 1
@PNG_FLAG_ZSTREAM_ENDED = common dso_local global i32 0, align 4
@Z_SYNC_FLUSH = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Truncated compressed data in IDAT\00", align 1
@Z_DATA_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"IDAT: ADLER32 checksum mismatch\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Decompression error in IDAT\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Extra compressed data in IDAT\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Extra compression data in IDAT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_process_IDAT_data(%struct.TYPE_10__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32*, i32** %5, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10, %3
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = call i32 @png_error(%struct.TYPE_10__* %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %10
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 3
  store i32* %17, i32** %20, align 8
  %21 = load i64, i64* %6, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = ptrtoint i8* %22 to i64
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  store i64 %23, i64* %26, align 8
  br label %27

27:                                               ; preds = %166, %16
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @PNG_FLAG_ZSTREAM_ENDED, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br label %40

40:                                               ; preds = %33, %27
  %41 = phi i1 [ false, %27 ], [ %39, %33 ]
  br i1 %41, label %42, label %167

42:                                               ; preds = %40
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %68, label %48

48:                                               ; preds = %42
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @PNG_ROWBYTES(i32 %51, i32 %54)
  %56 = add nsw i64 %55, 1
  %57 = inttoptr i64 %56 to i8*
  %58 = ptrtoint i8* %57 to i64
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  store i64 %58, i64* %61, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  store i64 %64, i64* %67, align 8
  br label %68

68:                                               ; preds = %48, %42
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = load i32, i32* @Z_SYNC_FLUSH, align 4
  %71 = call i32 @PNG_INFLATE(%struct.TYPE_10__* %69, i32 %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @Z_OK, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %114

75:                                               ; preds = %68
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @Z_STREAM_END, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %114

79:                                               ; preds = %75
  %80 = load i32, i32* @PNG_FLAG_ZSTREAM_ENDED, align 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 6
  store i64 0, i64* %86, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp sge i64 %89, %92
  br i1 %93, label %99, label %94

94:                                               ; preds = %79
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = icmp sgt i32 %97, 6
  br i1 %98, label %99, label %102

99:                                               ; preds = %94, %79
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %101 = call i32 @png_warning(%struct.TYPE_10__* %100, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %113

102:                                              ; preds = %94
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @Z_DATA_ERROR, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %108 = call i32 @png_benign_error(%struct.TYPE_10__* %107, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %112

109:                                              ; preds = %102
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %111 = call i32 @png_error(%struct.TYPE_10__* %110, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %112

112:                                              ; preds = %109, %106
  br label %113

113:                                              ; preds = %112, %99
  br label %176

114:                                              ; preds = %75, %68
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 5
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %118, %121
  br i1 %122, label %123, label %156

123:                                              ; preds = %114
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = icmp sge i64 %126, %129
  br i1 %130, label %136, label %131

131:                                              ; preds = %123
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = icmp sgt i32 %134, 6
  br i1 %135, label %136, label %146

136:                                              ; preds = %131, %123
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %138 = call i32 @png_warning(%struct.TYPE_10__* %137, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %139 = load i32, i32* @PNG_FLAG_ZSTREAM_ENDED, align 4
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 8
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 6
  store i64 0, i64* %145, align 8
  br label %176

146:                                              ; preds = %131
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 5
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %146
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %154 = call i32 @png_push_process_row(%struct.TYPE_10__* %153)
  br label %155

155:                                              ; preds = %152, %146
  br label %156

156:                                              ; preds = %155, %114
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* @Z_STREAM_END, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %156
  %161 = load i32, i32* @PNG_FLAG_ZSTREAM_ENDED, align 4
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 8
  br label %166

166:                                              ; preds = %160, %156
  br label %27

167:                                              ; preds = %40
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 5
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp sgt i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %167
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %175 = call i32 @png_warning(%struct.TYPE_10__* %174, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %176

176:                                              ; preds = %113, %136, %173, %167
  ret void
}

declare dso_local i32 @png_error(%struct.TYPE_10__*, i8*) #1

declare dso_local i64 @PNG_ROWBYTES(i32, i32) #1

declare dso_local i32 @PNG_INFLATE(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @png_warning(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @png_benign_error(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @png_push_process_row(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
