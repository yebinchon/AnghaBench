; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/libchdr/extr_libchdr_huffman.c_huffman_import_tree_huffman.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/libchdr/extr_libchdr_huffman.c_huffman_import_tree_huffman.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.huffman_decoder = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bitstream = type { i32 }

@HUFFERR_NONE = common dso_local global i32 0, align 4
@HUFFERR_INVALID_DATA = common dso_local global i32 0, align 4
@HUFFERR_INPUT_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @huffman_import_tree_huffman(%struct.huffman_decoder* %0, %struct.bitstream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.huffman_decoder*, align 8
  %5 = alloca %struct.bitstream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.huffman_decoder*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.huffman_decoder* %0, %struct.huffman_decoder** %4, align 8
  store %struct.bitstream* %1, %struct.bitstream** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %17 = call %struct.huffman_decoder* @create_huffman_decoder(i32 24, i32 6)
  store %struct.huffman_decoder* %17, %struct.huffman_decoder** %14, align 8
  %18 = load %struct.bitstream*, %struct.bitstream** %5, align 8
  %19 = call i8* @bitstream_read(%struct.bitstream* %18, i32 3)
  %20 = ptrtoint i8* %19 to i32
  %21 = load %struct.huffman_decoder*, %struct.huffman_decoder** %14, align 8
  %22 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %20, i32* %25, align 4
  %26 = load %struct.bitstream*, %struct.bitstream** %5, align 8
  %27 = call i8* @bitstream_read(%struct.bitstream* %26, i32 3)
  %28 = getelementptr i8, i8* %27, i64 1
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %13, align 4
  store i32 1, i32* %11, align 4
  br label %30

30:                                               ; preds = %67, %2
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 24
  br i1 %32, label %33, label %70

33:                                               ; preds = %30
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %12, align 4
  %39 = icmp eq i32 %38, 7
  br i1 %39, label %40, label %48

40:                                               ; preds = %37, %33
  %41 = load %struct.huffman_decoder*, %struct.huffman_decoder** %14, align 8
  %42 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 0, i32* %47, align 4
  br label %66

48:                                               ; preds = %37
  %49 = load %struct.bitstream*, %struct.bitstream** %5, align 8
  %50 = call i8* @bitstream_read(%struct.bitstream* %49, i32 3)
  %51 = ptrtoint i8* %50 to i32
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp eq i32 %52, 7
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %12, align 4
  br label %57

57:                                               ; preds = %55, %54
  %58 = phi i32 [ 0, %54 ], [ %56, %55 ]
  %59 = load %struct.huffman_decoder*, %struct.huffman_decoder** %14, align 8
  %60 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 %58, i32* %65, align 4
  br label %66

66:                                               ; preds = %57, %40
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %30

70:                                               ; preds = %30
  %71 = load %struct.huffman_decoder*, %struct.huffman_decoder** %14, align 8
  %72 = call i32 @huffman_assign_canonical_codes(%struct.huffman_decoder* %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @HUFFERR_NONE, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %3, align 4
  br label %193

78:                                               ; preds = %70
  %79 = load %struct.huffman_decoder*, %struct.huffman_decoder** %14, align 8
  %80 = call i32 @huffman_build_lookup_table(%struct.huffman_decoder* %79)
  %81 = load %struct.huffman_decoder*, %struct.huffman_decoder** %4, align 8
  %82 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sub nsw i32 %83, 9
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %88, %78
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load i32, i32* %8, align 4
  %90 = ashr i32 %89, 1
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %85

93:                                               ; preds = %85
  store i32 0, i32* %7, align 4
  br label %94

94:                                               ; preds = %158, %93
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.huffman_decoder*, %struct.huffman_decoder** %4, align 8
  %97 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %159

100:                                              ; preds = %94
  %101 = load %struct.huffman_decoder*, %struct.huffman_decoder** %14, align 8
  %102 = load %struct.bitstream*, %struct.bitstream** %5, align 8
  %103 = call i32 @huffman_decode_one(%struct.huffman_decoder* %101, %struct.bitstream* %102)
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %15, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %100
  %107 = load i32, i32* %15, align 4
  %108 = sub nsw i32 %107, 1
  store i32 %108, i32* %6, align 4
  %109 = load %struct.huffman_decoder*, %struct.huffman_decoder** %4, align 8
  %110 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %109, i32 0, i32 1
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  store i32 %108, i32* %116, align 4
  br label %158

117:                                              ; preds = %100
  %118 = load %struct.bitstream*, %struct.bitstream** %5, align 8
  %119 = call i8* @bitstream_read(%struct.bitstream* %118, i32 3)
  %120 = getelementptr i8, i8* %119, i64 2
  %121 = ptrtoint i8* %120 to i32
  store i32 %121, i32* %16, align 4
  %122 = load i32, i32* %16, align 4
  %123 = icmp eq i32 %122, 9
  br i1 %123, label %124, label %132

124:                                              ; preds = %117
  %125 = load %struct.bitstream*, %struct.bitstream** %5, align 8
  %126 = load i32, i32* %10, align 4
  %127 = call i8* @bitstream_read(%struct.bitstream* %125, i32 %126)
  %128 = load i32, i32* %16, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr i8, i8* %127, i64 %129
  %131 = ptrtoint i8* %130 to i32
  store i32 %131, i32* %16, align 4
  br label %132

132:                                              ; preds = %124, %117
  br label %133

133:                                              ; preds = %154, %132
  %134 = load i32, i32* %16, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %133
  %137 = load i32, i32* %7, align 4
  %138 = load %struct.huffman_decoder*, %struct.huffman_decoder** %4, align 8
  %139 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %137, %140
  br label %142

142:                                              ; preds = %136, %133
  %143 = phi i1 [ false, %133 ], [ %141, %136 ]
  br i1 %143, label %144, label %157

144:                                              ; preds = %142
  %145 = load i32, i32* %6, align 4
  %146 = load %struct.huffman_decoder*, %struct.huffman_decoder** %4, align 8
  %147 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %146, i32 0, i32 1
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %7, align 4
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  store i32 %145, i32* %153, align 4
  br label %154

154:                                              ; preds = %144
  %155 = load i32, i32* %16, align 4
  %156 = add nsw i32 %155, -1
  store i32 %156, i32* %16, align 4
  br label %133

157:                                              ; preds = %142
  br label %158

158:                                              ; preds = %157, %106
  br label %94

159:                                              ; preds = %94
  %160 = load i32, i32* %7, align 4
  %161 = load %struct.huffman_decoder*, %struct.huffman_decoder** %4, align 8
  %162 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp ne i32 %160, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %159
  %166 = load %struct.huffman_decoder*, %struct.huffman_decoder** %14, align 8
  %167 = call i32 @delete_huffman_decoder(%struct.huffman_decoder* %166)
  %168 = load i32, i32* @HUFFERR_INVALID_DATA, align 4
  store i32 %168, i32* %3, align 4
  br label %193

169:                                              ; preds = %159
  %170 = load %struct.huffman_decoder*, %struct.huffman_decoder** %4, align 8
  %171 = call i32 @huffman_assign_canonical_codes(%struct.huffman_decoder* %170)
  store i32 %171, i32* %9, align 4
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* @HUFFERR_NONE, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %179

175:                                              ; preds = %169
  %176 = load %struct.huffman_decoder*, %struct.huffman_decoder** %14, align 8
  %177 = call i32 @delete_huffman_decoder(%struct.huffman_decoder* %176)
  %178 = load i32, i32* %9, align 4
  store i32 %178, i32* %3, align 4
  br label %193

179:                                              ; preds = %169
  %180 = load %struct.huffman_decoder*, %struct.huffman_decoder** %4, align 8
  %181 = call i32 @huffman_build_lookup_table(%struct.huffman_decoder* %180)
  %182 = load %struct.huffman_decoder*, %struct.huffman_decoder** %14, align 8
  %183 = call i32 @delete_huffman_decoder(%struct.huffman_decoder* %182)
  %184 = load %struct.bitstream*, %struct.bitstream** %5, align 8
  %185 = call i64 @bitstream_overflow(%struct.bitstream* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %179
  %188 = load i32, i32* @HUFFERR_INPUT_BUFFER_TOO_SMALL, align 4
  br label %191

189:                                              ; preds = %179
  %190 = load i32, i32* @HUFFERR_NONE, align 4
  br label %191

191:                                              ; preds = %189, %187
  %192 = phi i32 [ %188, %187 ], [ %190, %189 ]
  store i32 %192, i32* %3, align 4
  br label %193

193:                                              ; preds = %191, %175, %165, %76
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local %struct.huffman_decoder* @create_huffman_decoder(i32, i32) #1

declare dso_local i8* @bitstream_read(%struct.bitstream*, i32) #1

declare dso_local i32 @huffman_assign_canonical_codes(%struct.huffman_decoder*) #1

declare dso_local i32 @huffman_build_lookup_table(%struct.huffman_decoder*) #1

declare dso_local i32 @huffman_decode_one(%struct.huffman_decoder*, %struct.bitstream*) #1

declare dso_local i32 @delete_huffman_decoder(%struct.huffman_decoder*) #1

declare dso_local i64 @bitstream_overflow(%struct.bitstream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
