; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_gdv.c_decompress_5.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_gdv.c_decompress_5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@PREAMBLE_SIZE = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @decompress_5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decompress_5(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %6, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 4
  store i32* %25, i32** %7, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 3
  store i32* %27, i32** %8, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  store i32* %29, i32** %9, align 8
  %30 = bitcast %struct.TYPE_7__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %30, i8 0, i64 4, i1 false)
  %31 = load i32*, i32** %8, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @bytestream2_init(i32* %31, i32 %34, i32 %37)
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @PREAMBLE_SIZE, align 4
  %42 = add i32 %40, %41
  %43 = call i32 @bytestream2_skip_p(i32* %39, i32 %42)
  br label %44

44:                                               ; preds = %131, %2
  %45 = load i32*, i32** %9, align 8
  %46 = call i64 @bytestream2_get_bytes_left_p(i32* %45)
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @bytestream2_get_bytes_left(i32* %49)
  %51 = icmp sgt i32 %50, 0
  br label %52

52:                                               ; preds = %48, %44
  %53 = phi i1 [ false, %44 ], [ %51, %48 ]
  br i1 %53, label %54, label %132

54:                                               ; preds = %52
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @read_bits2(%struct.TYPE_7__* %10, i32* %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @bytestream2_get_bytes_left(i32* %57)
  %59 = icmp slt i32 %58, 1
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %61, i32* %3, align 4
  br label %139

62:                                               ; preds = %54
  %63 = load i32, i32* %11, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i32*, i32** %9, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @bytestream2_get_byte(i32* %67)
  %69 = call i32 @bytestream2_put_byte(i32* %66, i32 %68)
  br label %131

70:                                               ; preds = %62
  %71 = load i32, i32* %11, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %92

73:                                               ; preds = %70
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @bytestream2_get_byte(i32* %74)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = and i32 %76, 15
  %78 = add nsw i32 %77, 3
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %12, align 4
  %80 = ashr i32 %79, 4
  store i32 %80, i32* %14, align 4
  %81 = load i32*, i32** %7, align 8
  %82 = call i32 @bytestream2_get_byte(i32* %81)
  %83 = shl i32 %82, 4
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %83, %84
  %86 = sub nsw i32 %85, 4096
  store i32 %86, i32* %15, align 4
  %87 = load i32*, i32** %9, align 8
  %88 = load i32*, i32** %8, align 8
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @lz_copy(i32* %87, i32* %88, i32 %89, i32 %90)
  br label %130

92:                                               ; preds = %70
  %93 = load i32, i32* %11, align 4
  %94 = icmp eq i32 %93, 2
  br i1 %94, label %95, label %114

95:                                               ; preds = %92
  %96 = load i32*, i32** %7, align 8
  %97 = call i32 @bytestream2_get_byte(i32* %96)
  store i32 %97, i32* %17, align 4
  %98 = load i32, i32* %17, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  store i32 0, i32* %3, align 4
  br label %139

101:                                              ; preds = %95
  %102 = load i32, i32* %17, align 4
  %103 = icmp ne i32 %102, 255
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i32, i32* %17, align 4
  store i32 %105, i32* %16, align 4
  br label %109

106:                                              ; preds = %101
  %107 = load i32*, i32** %7, align 8
  %108 = call i32 @bytestream2_get_le16(i32* %107)
  store i32 %108, i32* %16, align 4
  br label %109

109:                                              ; preds = %106, %104
  %110 = load i32*, i32** %9, align 8
  %111 = load i32, i32* %16, align 4
  %112 = add nsw i32 %111, 1
  %113 = call i32 @bytestream2_skip_p(i32* %110, i32 %112)
  br label %129

114:                                              ; preds = %92
  %115 = load i32*, i32** %7, align 8
  %116 = call i32 @bytestream2_get_byte(i32* %115)
  store i32 %116, i32* %18, align 4
  %117 = load i32, i32* %18, align 4
  %118 = and i32 %117, 3
  %119 = add nsw i32 %118, 2
  store i32 %119, i32* %19, align 4
  %120 = load i32, i32* %18, align 4
  %121 = ashr i32 %120, 2
  %122 = sub nsw i32 0, %121
  %123 = sub nsw i32 %122, 1
  store i32 %123, i32* %20, align 4
  %124 = load i32*, i32** %9, align 8
  %125 = load i32*, i32** %8, align 8
  %126 = load i32, i32* %20, align 4
  %127 = load i32, i32* %19, align 4
  %128 = call i32 @lz_copy(i32* %124, i32* %125, i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %114, %109
  br label %130

130:                                              ; preds = %129, %73
  br label %131

131:                                              ; preds = %130, %65
  br label %44

132:                                              ; preds = %52
  %133 = load i32*, i32** %9, align 8
  %134 = call i64 @bytestream2_get_bytes_left_p(i32* %133)
  %135 = icmp sgt i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %137, i32* %3, align 4
  br label %139

138:                                              ; preds = %132
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %138, %136, %100, %60
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bytestream2_init(i32*, i32, i32) #2

declare dso_local i32 @bytestream2_skip_p(i32*, i32) #2

declare dso_local i64 @bytestream2_get_bytes_left_p(i32*) #2

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #2

declare dso_local i32 @read_bits2(%struct.TYPE_7__*, i32*) #2

declare dso_local i32 @bytestream2_put_byte(i32*, i32) #2

declare dso_local i32 @bytestream2_get_byte(i32*) #2

declare dso_local i32 @lz_copy(i32*, i32*, i32, i32) #2

declare dso_local i32 @bytestream2_get_le16(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
