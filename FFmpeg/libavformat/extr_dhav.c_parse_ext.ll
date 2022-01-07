; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dhav.c_parse_ext.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dhav.c_parse_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }

@sample_rates = common dso_local global i8** null, align 8
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Unknown type: %X, skipping rest of header.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @parse_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_ext(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %6, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %200, %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %201

16:                                               ; preds = %13
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @avio_r8(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  switch i32 %21, label %184 [
    i32 128, label %22
    i32 129, label %43
    i32 130, label %62
    i32 131, label %83
    i32 136, label %119
    i32 140, label %126
    i32 145, label %170
    i32 146, label %170
    i32 147, label %170
    i32 149, label %170
    i32 154, label %170
    i32 155, label %170
    i32 179, label %170
    i32 132, label %177
    i32 133, label %177
    i32 139, label %177
    i32 148, label %177
    i32 150, label %177
    i32 160, label %177
    i32 178, label %177
    i32 180, label %177
  ]

22:                                               ; preds = %16
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @avio_skip(i32 %25, i32 1)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @avio_r8(i32 %29)
  %31 = mul nsw i32 8, %30
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @avio_r8(i32 %36)
  %38 = mul nsw i32 8, %37
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %5, align 4
  %42 = sub nsw i32 %41, 4
  store i32 %42, i32* %5, align 4
  br label %195

43:                                               ; preds = %16
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @avio_skip(i32 %46, i32 1)
  store i32 %47, i32* %8, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @avio_r8(i32 %50)
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @avio_r8(i32 %56)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %5, align 4
  %61 = sub nsw i32 %60, 4
  store i32 %61, i32* %5, align 4
  br label %195

62:                                               ; preds = %16
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @avio_skip(i32 %65, i32 3)
  store i32 %66, i32* %8, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i8* @avio_rl16(i32 %69)
  %71 = ptrtoint i8* %70 to i32
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i8* @avio_rl16(i32 %76)
  %78 = ptrtoint i8* %77 to i32
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %5, align 4
  %82 = sub nsw i32 %81, 8
  store i32 %82, i32* %5, align 4
  br label %195

83:                                               ; preds = %16
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @avio_r8(i32 %86)
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 4
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @avio_r8(i32 %92)
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @avio_r8(i32 %98)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load i8**, i8*** @sample_rates, align 8
  %102 = call i32 @FF_ARRAY_ELEMS(i8** %101)
  %103 = icmp slt i32 %100, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %83
  %105 = load i8**, i8*** @sample_rates, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = ptrtoint i8* %109 to i32
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 6
  store i32 %110, i32* %112, align 4
  br label %116

113:                                              ; preds = %83
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 6
  store i32 8000, i32* %115, align 4
  br label %116

116:                                              ; preds = %113, %104
  %117 = load i32, i32* %5, align 4
  %118 = sub nsw i32 %117, 4
  store i32 %118, i32* %5, align 4
  br label %195

119:                                              ; preds = %16
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @avio_skip(i32 %122, i32 7)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %5, align 4
  %125 = sub nsw i32 %124, 8
  store i32 %125, i32* %5, align 4
  br label %195

126:                                              ; preds = %16
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @avio_skip(i32 %129, i32 1)
  store i32 %130, i32* %8, align 4
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @avio_r8(i32 %133)
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 4
  store i32 %134, i32* %136, align 4
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @avio_r8(i32 %139)
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 5
  store i32 %140, i32* %142, align 4
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @avio_r8(i32 %145)
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %7, align 4
  %148 = load i8**, i8*** @sample_rates, align 8
  %149 = call i32 @FF_ARRAY_ELEMS(i8** %148)
  %150 = icmp slt i32 %147, %149
  br i1 %150, label %151, label %160

151:                                              ; preds = %126
  %152 = load i8**, i8*** @sample_rates, align 8
  %153 = load i32, i32* %7, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8*, i8** %152, i64 %154
  %156 = load i8*, i8** %155, align 8
  %157 = ptrtoint i8* %156 to i32
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 6
  store i32 %157, i32* %159, align 4
  br label %163

160:                                              ; preds = %126
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 6
  store i32 8000, i32* %162, align 4
  br label %163

163:                                              ; preds = %160, %151
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @avio_skip(i32 %166, i32 3)
  store i32 %167, i32* %8, align 4
  %168 = load i32, i32* %5, align 4
  %169 = sub nsw i32 %168, 8
  store i32 %169, i32* %5, align 4
  br label %195

170:                                              ; preds = %16, %16, %16, %16, %16, %16, %16
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @avio_skip(i32 %173, i32 7)
  store i32 %174, i32* %8, align 4
  %175 = load i32, i32* %5, align 4
  %176 = sub nsw i32 %175, 8
  store i32 %176, i32* %5, align 4
  br label %195

177:                                              ; preds = %16, %16, %16, %16, %16, %16, %16, %16
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @avio_skip(i32 %180, i32 3)
  store i32 %181, i32* %8, align 4
  %182 = load i32, i32* %5, align 4
  %183 = sub nsw i32 %182, 4
  store i32 %183, i32* %5, align 4
  br label %195

184:                                              ; preds = %16
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %186 = load i32, i32* @AV_LOG_INFO, align 4
  %187 = load i32, i32* %9, align 4
  %188 = call i32 @av_log(%struct.TYPE_6__* %185, i32 %186, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %187)
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* %5, align 4
  %193 = sub nsw i32 %192, 1
  %194 = call i32 @avio_skip(i32 %191, i32 %193)
  store i32 %194, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %195

195:                                              ; preds = %184, %177, %170, %163, %119, %116, %62, %43, %22
  %196 = load i32, i32* %8, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %195
  %199 = load i32, i32* %8, align 4
  store i32 %199, i32* %3, align 4
  br label %202

200:                                              ; preds = %195
  br label %13

201:                                              ; preds = %13
  store i32 0, i32* %3, align 4
  br label %202

202:                                              ; preds = %201, %198
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local i32 @avio_r8(i32) #1

declare dso_local i32 @avio_skip(i32, i32) #1

declare dso_local i8* @avio_rl16(i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(i8**) #1

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
