; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_golomb.h_get_ur_golomb_jpegls.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_golomb.h_get_ur_golomb_jpegls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }

@re = common dso_local global i32 0, align 4
@MIN_CACHE_BITS = common dso_local global i32 0, align 4
@re_index = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32, i32, i32)* @get_ur_golomb_jpegls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ur_golomb_jpegls(%struct.TYPE_15__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @re, align 4
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %15 = call i32 @OPEN_READER(i32 %13, %struct.TYPE_15__* %14)
  %16 = load i32, i32* @re, align 4
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %18 = call i32 @UPDATE_CACHE(i32 %16, %struct.TYPE_15__* %17)
  %19 = load i32, i32* @re, align 4
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %21 = call i32 @GET_CACHE(i32 %19, %struct.TYPE_15__* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @av_log2(i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp sle i32 %24, 31
  %26 = zext i1 %25 to i32
  %27 = call i32 @av_assert2(i32 %26)
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 %28, %29
  %31 = load i32, i32* @MIN_CACHE_BITS, align 4
  %32 = sub nsw i32 32, %31
  %33 = load i32, i32* @MIN_CACHE_BITS, align 4
  %34 = icmp eq i32 %33, 32
  %35 = zext i1 %34 to i32
  %36 = add nsw i32 %32, %35
  %37 = icmp sge i32 %30, %36
  br i1 %37, label %38, label %66

38:                                               ; preds = %4
  %39 = load i32, i32* %11, align 4
  %40 = sub nsw i32 32, %39
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %66

43:                                               ; preds = %38
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %7, align 4
  %46 = sub nsw i32 %44, %45
  %47 = load i32, i32* %10, align 4
  %48 = lshr i32 %47, %46
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = sub i32 30, %49
  %51 = load i32, i32* %7, align 4
  %52 = shl i32 %50, %51
  %53 = load i32, i32* %10, align 4
  %54 = add i32 %53, %52
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* @re, align 4
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 32, %57
  %59 = load i32, i32* %11, align 4
  %60 = sub nsw i32 %58, %59
  %61 = call i32 @LAST_SKIP_BITS(i32 %55, %struct.TYPE_15__* %56, i32 %60)
  %62 = load i32, i32* @re, align 4
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %64 = call i32 @CLOSE_READER(i32 %62, %struct.TYPE_15__* %63)
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %5, align 4
  br label %206

66:                                               ; preds = %38, %4
  store i32 0, i32* %12, align 4
  br label %67

67:                                               ; preds = %99, %66
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @MIN_CACHE_BITS, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32, i32* %8, align 4
  %72 = icmp sle i32 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load i32, i32* @re, align 4
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %76 = load i32, i32* @MIN_CACHE_BITS, align 4
  %77 = call i32 @SHOW_UBITS(i32 %74, %struct.TYPE_15__* %75, i32 %76)
  %78 = icmp eq i32 %77, 0
  br label %79

79:                                               ; preds = %73, %67
  %80 = phi i1 [ false, %67 ], [ %78, %73 ]
  br i1 %80, label %81, label %103

81:                                               ; preds = %79
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @re_index, align 8
  %86 = icmp sle i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load i32, i32* @re, align 4
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %90 = call i32 @CLOSE_READER(i32 %88, %struct.TYPE_15__* %89)
  store i32 -1, i32* %5, align 4
  br label %206

91:                                               ; preds = %81
  %92 = load i32, i32* @re, align 4
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %94 = load i32, i32* @MIN_CACHE_BITS, align 4
  %95 = call i32 @LAST_SKIP_BITS(i32 %92, %struct.TYPE_15__* %93, i32 %94)
  %96 = load i32, i32* @re, align 4
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %98 = call i32 @UPDATE_CACHE(i32 %96, %struct.TYPE_15__* %97)
  br label %99

99:                                               ; preds = %91
  %100 = load i32, i32* @MIN_CACHE_BITS, align 4
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %12, align 4
  br label %67

103:                                              ; preds = %79
  br label %104

104:                                              ; preds = %119, %103
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = load i32, i32* @re, align 4
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %111 = call i32 @SHOW_UBITS(i32 %109, %struct.TYPE_15__* %110, i32 1)
  %112 = icmp eq i32 %111, 0
  br label %113

113:                                              ; preds = %108, %104
  %114 = phi i1 [ false, %104 ], [ %112, %108 ]
  br i1 %114, label %115, label %122

115:                                              ; preds = %113
  %116 = load i32, i32* @re, align 4
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %118 = call i32 @SKIP_BITS(i32 %116, %struct.TYPE_15__* %117, i32 1)
  br label %119

119:                                              ; preds = %115
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %12, align 4
  br label %104

122:                                              ; preds = %113
  %123 = load i32, i32* @re, align 4
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %125 = call i32 @LAST_SKIP_BITS(i32 %123, %struct.TYPE_15__* %124, i32 1)
  %126 = load i32, i32* @re, align 4
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %128 = call i32 @UPDATE_CACHE(i32 %126, %struct.TYPE_15__* %127)
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* %8, align 4
  %131 = sub nsw i32 %130, 1
  %132 = icmp slt i32 %129, %131
  br i1 %132, label %133, label %183

133:                                              ; preds = %122
  %134 = load i32, i32* %7, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %176

136:                                              ; preds = %133
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* @MIN_CACHE_BITS, align 4
  %139 = sub nsw i32 %138, 1
  %140 = icmp sgt i32 %137, %139
  br i1 %140, label %141, label %166

141:                                              ; preds = %136
  %142 = load i32, i32* @re, align 4
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %144 = call i32 @SHOW_UBITS(i32 %142, %struct.TYPE_15__* %143, i32 16)
  %145 = load i32, i32* %7, align 4
  %146 = sub nsw i32 %145, 16
  %147 = shl i32 %144, %146
  store i32 %147, i32* %10, align 4
  %148 = load i32, i32* @re, align 4
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %150 = call i32 @LAST_SKIP_BITS(i32 %148, %struct.TYPE_15__* %149, i32 16)
  %151 = load i32, i32* @re, align 4
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %153 = call i32 @UPDATE_CACHE(i32 %151, %struct.TYPE_15__* %152)
  %154 = load i32, i32* @re, align 4
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sub nsw i32 %156, 16
  %158 = call i32 @SHOW_UBITS(i32 %154, %struct.TYPE_15__* %155, i32 %157)
  %159 = load i32, i32* %10, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %10, align 4
  %161 = load i32, i32* @re, align 4
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sub nsw i32 %163, 16
  %165 = call i32 @LAST_SKIP_BITS(i32 %161, %struct.TYPE_15__* %162, i32 %164)
  br label %175

166:                                              ; preds = %136
  %167 = load i32, i32* @re, align 4
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %169 = load i32, i32* %7, align 4
  %170 = call i32 @SHOW_UBITS(i32 %167, %struct.TYPE_15__* %168, i32 %169)
  store i32 %170, i32* %10, align 4
  %171 = load i32, i32* @re, align 4
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %173 = load i32, i32* %7, align 4
  %174 = call i32 @LAST_SKIP_BITS(i32 %171, %struct.TYPE_15__* %172, i32 %173)
  br label %175

175:                                              ; preds = %166, %141
  br label %177

176:                                              ; preds = %133
  store i32 0, i32* %10, align 4
  br label %177

177:                                              ; preds = %176, %175
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* %7, align 4
  %180 = shl i32 %178, %179
  %181 = load i32, i32* %10, align 4
  %182 = add i32 %181, %180
  store i32 %182, i32* %10, align 4
  br label %201

183:                                              ; preds = %122
  %184 = load i32, i32* %12, align 4
  %185 = load i32, i32* %8, align 4
  %186 = sub nsw i32 %185, 1
  %187 = icmp eq i32 %184, %186
  br i1 %187, label %188, label %199

188:                                              ; preds = %183
  %189 = load i32, i32* @re, align 4
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %191 = load i32, i32* %9, align 4
  %192 = call i32 @SHOW_UBITS(i32 %189, %struct.TYPE_15__* %190, i32 %191)
  store i32 %192, i32* %10, align 4
  %193 = load i32, i32* @re, align 4
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %195 = load i32, i32* %9, align 4
  %196 = call i32 @LAST_SKIP_BITS(i32 %193, %struct.TYPE_15__* %194, i32 %195)
  %197 = load i32, i32* %10, align 4
  %198 = add i32 %197, 1
  store i32 %198, i32* %10, align 4
  br label %200

199:                                              ; preds = %183
  store i32 -1, i32* %10, align 4
  br label %200

200:                                              ; preds = %199, %188
  br label %201

201:                                              ; preds = %200, %177
  %202 = load i32, i32* @re, align 4
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %204 = call i32 @CLOSE_READER(i32 %202, %struct.TYPE_15__* %203)
  %205 = load i32, i32* %10, align 4
  store i32 %205, i32* %5, align 4
  br label %206

206:                                              ; preds = %201, %87, %43
  %207 = load i32, i32* %5, align 4
  ret i32 %207
}

declare dso_local i32 @OPEN_READER(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @UPDATE_CACHE(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @GET_CACHE(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @av_log2(i32) #1

declare dso_local i32 @av_assert2(i32) #1

declare dso_local i32 @LAST_SKIP_BITS(i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @CLOSE_READER(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @SHOW_UBITS(i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @SKIP_BITS(i32, %struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
