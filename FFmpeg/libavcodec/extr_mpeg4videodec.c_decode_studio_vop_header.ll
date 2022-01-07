; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4videodec.c_decode_studio_vop_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4videodec.c_decode_studio_vop_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_9__, i32, i32, i32, i64, i64, i32, i64, i64 }
%struct.TYPE_9__ = type { i32 }

@mpeg4_decode_studio_mb = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i64 0, align 8
@BIN_ONLY_SHAPE = common dso_local global i64 0, align 8
@ff_alternate_vertical_scan = common dso_local global i32 0, align 4
@ff_zigzag_direct = common dso_local global i32 0, align 4
@ff_alternate_horizontal_scan = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*)* @decode_studio_vop_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_studio_vop_header(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %6, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @get_bits_left(i32* %9)
  %11 = icmp sle i32 %10, 32
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %167

13:                                               ; preds = %2
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 14
  store i64 0, i64* %15, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 13
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* @mpeg4_decode_studio_mb, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 12
  store i32 %18, i32* %20, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @decode_smpte_tc(%struct.TYPE_11__* %21, i32* %22)
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @skip_bits(i32* %24, i32 10)
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @skip_bits(i32* %26, i32 2)
  %28 = load i32*, i32** %5, align 8
  %29 = call i64 @get_bits(i32* %28, i32 2)
  %30 = load i64, i64* @AV_PICTURE_TYPE_I, align 8
  %31 = add nsw i64 %29, %30
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @get_bits1(i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %13
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @skip_bits1(i32* %38)
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @skip_bits1(i32* %40)
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @get_bits1(i32* %42)
  %44 = xor i32 %43, 1
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %37, %13
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AV_PICTURE_TYPE_I, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @get_bits1(i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %59 = call i32 @reset_studio_dc_predictors(%struct.TYPE_10__* %58)
  br label %60

60:                                               ; preds = %57, %53
  br label %61

61:                                               ; preds = %60, %47
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @BIN_ONLY_SHAPE, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %88

67:                                               ; preds = %61
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @get_bits1(i32* %68)
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @get_bits1(i32* %72)
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = call i64 @get_bits(i32* %76, i32 2)
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 11
  store i64 %77, i64* %79, align 8
  %80 = load i32*, i32** %5, align 8
  %81 = call i64 @get_bits(i32* %80, i32 2)
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 10
  store i64 %81, i64* %83, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @get_bits1(i32* %84)
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %67, %61
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %126

93:                                               ; preds = %88
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 6
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 9
  %100 = load i32, i32* @ff_alternate_vertical_scan, align 4
  %101 = call i32 @ff_init_scantable(i32 %97, i32* %99, i32 %100)
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 6
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 8
  %108 = load i32, i32* @ff_alternate_vertical_scan, align 4
  %109 = call i32 @ff_init_scantable(i32 %105, i32* %107, i32 %108)
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 6
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 7
  %116 = load i32, i32* @ff_alternate_vertical_scan, align 4
  %117 = call i32 @ff_init_scantable(i32 %113, i32* %115, i32 %116)
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 6
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 5
  %124 = load i32, i32* @ff_alternate_vertical_scan, align 4
  %125 = call i32 @ff_init_scantable(i32 %121, i32* %123, i32 %124)
  br label %159

126:                                              ; preds = %88
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 6
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 9
  %133 = load i32, i32* @ff_zigzag_direct, align 4
  %134 = call i32 @ff_init_scantable(i32 %130, i32* %132, i32 %133)
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 6
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 8
  %141 = load i32, i32* @ff_zigzag_direct, align 4
  %142 = call i32 @ff_init_scantable(i32 %138, i32* %140, i32 %141)
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 6
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 7
  %149 = load i32, i32* @ff_alternate_horizontal_scan, align 4
  %150 = call i32 @ff_init_scantable(i32 %146, i32* %148, i32 %149)
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 6
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 5
  %157 = load i32, i32* @ff_alternate_vertical_scan, align 4
  %158 = call i32 @ff_init_scantable(i32 %154, i32* %156, i32 %157)
  br label %159

159:                                              ; preds = %126, %93
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %161 = call i32 @mpeg4_load_default_matrices(%struct.TYPE_10__* %160)
  %162 = load i32*, i32** %5, align 8
  %163 = call i32 @next_start_code_studio(i32* %162)
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %165 = load i32*, i32** %5, align 8
  %166 = call i32 @extension_and_user_data(%struct.TYPE_10__* %164, i32* %165, i32 4)
  store i32 0, i32* %3, align 4
  br label %167

167:                                              ; preds = %159, %12
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @decode_smpte_tc(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i64 @get_bits(i32*, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @skip_bits1(i32*) #1

declare dso_local i32 @reset_studio_dc_predictors(%struct.TYPE_10__*) #1

declare dso_local i32 @ff_init_scantable(i32, i32*, i32) #1

declare dso_local i32 @mpeg4_load_default_matrices(%struct.TYPE_10__*) #1

declare dso_local i32 @next_start_code_studio(i32*) #1

declare dso_local i32 @extension_and_user_data(%struct.TYPE_10__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
