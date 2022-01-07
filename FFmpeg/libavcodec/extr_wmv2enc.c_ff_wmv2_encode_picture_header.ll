; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmv2enc.c_ff_wmv2_encode_picture_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmv2enc.c_ff_wmv2_encode_picture_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i64, i64, i64, i32, i64 }

@AV_PICTURE_TYPE_I = common dso_local global i64 0, align 8
@SKIP_TYPE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_wmv2_encode_picture_header(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = bitcast %struct.TYPE_6__* %7 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %5, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 13
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %13, 1
  %15 = call i32 @put_bits(i32* %10, i32 1, i32 %14)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* @AV_PICTURE_TYPE_I, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 13
  %25 = call i32 @put_bits(i32* %24, i32 7, i32 0)
  br label %26

26:                                               ; preds = %22, %2
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 13
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @put_bits(i32* %28, i32 5, i32 %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  store i32 1, i32* %34, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 3
  store i32 1, i32* %36, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 4
  store i32 0, i32* %38, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 5
  store i32 0, i32* %40, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store i32 0, i32* %44, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  store i32 0, i32* %46, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @av_assert0(i32 %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* @AV_PICTURE_TYPE_I, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %114

57:                                               ; preds = %26
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 1
  %62 = zext i1 %61 to i32
  %63 = call i32 @av_assert0(i32 %62)
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 7
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %57
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 13
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @put_bits(i32* %70, i32 1, i32 %73)
  br label %75

75:                                               ; preds = %68, %57
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 13
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @put_bits(i32* %82, i32 1, i32 %85)
  br label %87

87:                                               ; preds = %80, %75
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %105, label %92

92:                                               ; preds = %87
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 13
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 8
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @ff_msmpeg4_code012(i32* %94, i32 %97)
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 13
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 9
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @ff_msmpeg4_code012(i32* %100, i32 %103)
  br label %105

105:                                              ; preds = %92, %87
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 13
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @put_bits(i32* %107, i32 1, i32 %110)
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 12
  store i64 0, i64* %113, align 8
  br label %207

114:                                              ; preds = %26
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 13
  %117 = load i32, i32* @SKIP_TYPE_NONE, align 4
  %118 = call i32 @put_bits(i32* %116, i32 2, i32 %117)
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 13
  store i32 0, i32* %6, align 4
  %121 = call i32 @ff_msmpeg4_code012(i32* %120, i32 0)
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @wmv2_get_cbp_table_index(%struct.TYPE_6__* %122, i32 %123)
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 6
  store i32 %124, i32* %126, align 8
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %114
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 13
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @put_bits(i32* %133, i32 1, i32 %136)
  br label %138

138:                                              ; preds = %131, %114
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %163

143:                                              ; preds = %138
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 13
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = xor i32 %148, 1
  %150 = call i32 @put_bits(i32* %145, i32 1, i32 %149)
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %162, label %155

155:                                              ; preds = %143
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 13
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @ff_msmpeg4_code012(i32* %157, i32 %160)
  br label %162

162:                                              ; preds = %155, %143
  br label %163

163:                                              ; preds = %162, %138
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %163
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 13
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @put_bits(i32* %170, i32 1, i32 %173)
  br label %175

175:                                              ; preds = %168, %163
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %192, label %180

180:                                              ; preds = %175
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 13
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 9
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @ff_msmpeg4_code012(i32* %182, i32 %185)
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 9
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 8
  store i32 %189, i32* %191, align 8
  br label %192

192:                                              ; preds = %180, %175
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 13
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @put_bits(i32* %194, i32 1, i32 %197)
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 13
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @put_bits(i32* %200, i32 1, i32 %203)
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 12
  store i64 0, i64* %206, align 8
  br label %207

207:                                              ; preds = %192, %105
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 11
  store i64 0, i64* %209, align 8
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 10
  store i64 0, i64* %211, align 8
  ret i32 0
}

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @ff_msmpeg4_code012(i32*, i32) #1

declare dso_local i32 @wmv2_get_cbp_table_index(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
