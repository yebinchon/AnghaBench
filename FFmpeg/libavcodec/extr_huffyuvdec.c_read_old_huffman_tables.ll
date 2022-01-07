; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_huffyuvdec.c_read_old_huffman_tables.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_huffyuvdec.c_read_old_huffman_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32**, i32**, i32* }

@classic_shift_luma = common dso_local global i32 0, align 4
@classic_shift_luma_table_size = common dso_local global i32 0, align 4
@classic_shift_chroma = common dso_local global i32 0, align 4
@classic_shift_chroma_table_size = common dso_local global i32 0, align 4
@classic_add_luma = common dso_local global i32* null, align 8
@classic_add_chroma = common dso_local global i32* null, align 8
@VLC_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @read_old_huffman_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_old_huffman_tables(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %7 = load i32, i32* @classic_shift_luma, align 4
  %8 = load i32, i32* @classic_shift_luma_table_size, align 4
  %9 = mul nsw i32 %8, 8
  %10 = call i32 @init_get_bits(i32* %4, i32 %7, i32 %9)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load i32**, i32*** %12, align 8
  %14 = getelementptr inbounds i32*, i32** %13, i64 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @read_len_table(i32* %15, i32* %4, i32 256)
  store i32 %16, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %174

20:                                               ; preds = %1
  %21 = load i32, i32* @classic_shift_chroma, align 4
  %22 = load i32, i32* @classic_shift_chroma_table_size, align 4
  %23 = mul nsw i32 %22, 8
  %24 = call i32 @init_get_bits(i32* %4, i32 %21, i32 %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i32**, i32*** %26, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @read_len_table(i32* %29, i32* %4, i32 256)
  store i32 %30, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %174

34:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %52, %34
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 256
  br i1 %37, label %38, label %55

38:                                               ; preds = %35
  %39 = load i32*, i32** @classic_add_luma, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32**, i32*** %45, align 8
  %47 = getelementptr inbounds i32*, i32** %46, i64 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %43, i32* %51, align 4
  br label %52

52:                                               ; preds = %38
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %35

55:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %73, %55
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %57, 256
  br i1 %58, label %59, label %76

59:                                               ; preds = %56
  %60 = load i32*, i32** @classic_add_chroma, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32**, i32*** %66, align 8
  %68 = getelementptr inbounds i32*, i32** %67, i64 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %64, i32* %72, align 4
  br label %73

73:                                               ; preds = %59
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %56

76:                                               ; preds = %56
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp sge i32 %79, 24
  br i1 %80, label %81, label %104

81:                                               ; preds = %76
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32**, i32*** %83, align 8
  %85 = getelementptr inbounds i32*, i32** %84, i64 1
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32**, i32*** %88, align 8
  %90 = getelementptr inbounds i32*, i32** %89, i64 0
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @memcpy(i32* %86, i32* %91, i32 1024)
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  %95 = load i32**, i32*** %94, align 8
  %96 = getelementptr inbounds i32*, i32** %95, i64 1
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load i32**, i32*** %99, align 8
  %101 = getelementptr inbounds i32*, i32** %100, i64 0
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @memcpy(i32* %97, i32* %102, i32 1024)
  br label %104

104:                                              ; preds = %81, %76
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32**, i32*** %106, align 8
  %108 = getelementptr inbounds i32*, i32** %107, i64 2
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32**, i32*** %111, align 8
  %113 = getelementptr inbounds i32*, i32** %112, i64 1
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @memcpy(i32* %109, i32* %114, i32 1024)
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 2
  %118 = load i32**, i32*** %117, align 8
  %119 = getelementptr inbounds i32*, i32** %118, i64 2
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 2
  %123 = load i32**, i32*** %122, align 8
  %124 = getelementptr inbounds i32*, i32** %123, i64 1
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @memcpy(i32* %120, i32* %125, i32 1024)
  store i32 0, i32* %5, align 4
  br label %127

127:                                              ; preds = %164, %104
  %128 = load i32, i32* %5, align 4
  %129 = icmp slt i32 %128, 4
  br i1 %129, label %130, label %167

130:                                              ; preds = %127
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 3
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = call i32 @ff_free_vlc(i32* %136)
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 3
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* @VLC_BITS, align 4
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 2
  %147 = load i32**, i32*** %146, align 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32*, i32** %147, i64 %149
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  %154 = load i32**, i32*** %153, align 8
  %155 = load i32, i32* %5, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32*, i32** %154, i64 %156
  %158 = load i32*, i32** %157, align 8
  %159 = call i32 @init_vlc(i32* %143, i32 %144, i32 256, i32* %151, i32 1, i32 1, i32* %158, i32 4, i32 4, i32 0)
  store i32 %159, i32* %6, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %130
  %162 = load i32, i32* %6, align 4
  store i32 %162, i32* %2, align 4
  br label %174

163:                                              ; preds = %130
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %5, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %5, align 4
  br label %127

167:                                              ; preds = %127
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %169 = call i32 @generate_joint_tables(%struct.TYPE_4__* %168)
  store i32 %169, i32* %6, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %167
  %172 = load i32, i32* %6, align 4
  store i32 %172, i32* %2, align 4
  br label %174

173:                                              ; preds = %167
  store i32 0, i32* %2, align 4
  br label %174

174:                                              ; preds = %173, %171, %161, %32, %18
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local i32 @init_get_bits(i32*, i32, i32) #1

declare dso_local i32 @read_len_table(i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ff_free_vlc(i32*) #1

declare dso_local i32 @init_vlc(i32*, i32, i32, i32*, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @generate_joint_tables(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
