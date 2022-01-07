; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_scpr3.c_decode_unit3.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_scpr3.c_decode_unit3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32*, i32, i32, i32, i32, i64* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_15__*, i32, i32*)* @decode_unit3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_unit3(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  store i32* %17, i32** %10, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  store i32* %19, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %15, align 4
  switch i32 %23, label %186 [
    i32 0, label %24
    i32 1, label %42
    i32 2, label %54
    i32 3, label %66
    i32 4, label %78
    i32 5, label %128
    i32 6, label %150
    i32 7, label %168
  ]

24:                                               ; preds = %4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = call i32 @bytestream2_get_byte(i32* %26)
  %28 = load i32*, i32** %9, align 8
  store i32 %27, i32* %28, align 4
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %34, i32* %38, align 4
  %39 = load i32*, i32** %10, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = call i32 @sync_code3(i32* %39, i32* %40)
  br label %186

42:                                               ; preds = %4
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = call i32 @bytestream2_get_byte(i32* %44)
  %46 = load i32*, i32** %9, align 8
  store i32 %45, i32* %46, align 4
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @decode_static1(%struct.TYPE_15__* %47, i32 %49)
  %51 = load i32*, i32** %10, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @sync_code3(i32* %51, i32* %52)
  br label %186

54:                                               ; preds = %4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = call i32 @bytestream2_get_byte(i32* %56)
  %58 = load i32*, i32** %9, align 8
  store i32 %57, i32* %58, align 4
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @decode_static2(%struct.TYPE_15__* %59, i32 %61)
  %63 = load i32*, i32** %10, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @sync_code3(i32* %63, i32* %64)
  br label %186

66:                                               ; preds = %4
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = call i32 @bytestream2_get_byte(i32* %68)
  %70 = load i32*, i32** %9, align 8
  store i32 %69, i32* %70, align 4
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @decode_static3(%struct.TYPE_15__* %71, i32 %73)
  %75 = load i32*, i32** %10, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = call i32 @sync_code3(i32* %75, i32* %76)
  br label %186

78:                                               ; preds = %4
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 7
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 7
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 1
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %83, %88
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 7
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 2
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %89, %94
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 7
  %98 = load i64*, i64** %97, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 3
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %95, %100
  %102 = add nsw i64 %101, 256
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = sub nsw i64 %102, %106
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %14, align 4
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load i32*, i32** %9, align 8
  %112 = call i32 @decode_adaptive45(%struct.TYPE_15__* %109, i32 %110, i32* %111, i32* %12, i32* %13, i32* %14, i32 4)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %78
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %116 = load i32*, i32** %9, align 8
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @update_model4_to_5(%struct.TYPE_15__* %115, i32 %117)
  br label %119

119:                                              ; preds = %114, %78
  %120 = load i32*, i32** %10, align 8
  %121 = load i32*, i32** %11, align 8
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @decode3(i32* %120, i32* %121, i32 %122, i32 %123)
  %125 = load i32*, i32** %10, align 8
  %126 = load i32*, i32** %11, align 8
  %127 = call i32 @sync_code3(i32* %125, i32* %126)
  br label %186

128:                                              ; preds = %4
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %130 = load i32, i32* %8, align 4
  %131 = load i32*, i32** %9, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 3
  %134 = call i32 @decode_adaptive45(%struct.TYPE_15__* %129, i32 %130, i32* %131, i32* %12, i32* %13, i32* %133, i32 16)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %128
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %138 = load i32*, i32** %9, align 8
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @update_model5_to_6(%struct.TYPE_15__* %137, i32 %139)
  br label %141

141:                                              ; preds = %136, %128
  %142 = load i32*, i32** %10, align 8
  %143 = load i32*, i32** %11, align 8
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* %13, align 4
  %146 = call i32 @decode3(i32* %142, i32* %143, i32 %144, i32 %145)
  %147 = load i32*, i32** %10, align 8
  %148 = load i32*, i32** %11, align 8
  %149 = call i32 @sync_code3(i32* %147, i32* %148)
  br label %186

150:                                              ; preds = %4
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %152 = load i32, i32* %8, align 4
  %153 = load i32*, i32** %9, align 8
  %154 = call i32 @decode_adaptive6(%struct.TYPE_15__* %151, i32 %152, i32* %153, i32* %12, i32* %13)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %150
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %158 = call i32 @update_model6_to_7(%struct.TYPE_15__* %157)
  br label %159

159:                                              ; preds = %156, %150
  %160 = load i32*, i32** %10, align 8
  %161 = load i32*, i32** %11, align 8
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %13, align 4
  %164 = call i32 @decode3(i32* %160, i32* %161, i32 %162, i32 %163)
  %165 = load i32*, i32** %10, align 8
  %166 = load i32*, i32** %11, align 8
  %167 = call i32 @sync_code3(i32* %165, i32* %166)
  br label %186

168:                                              ; preds = %4
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 3
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 7
  %174 = load i64*, i64** %173, align 8
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = load i32*, i32** %9, align 8
  %185 = call i32 @decode_value3(%struct.TYPE_14__* %169, i32 255, i32* %171, i64* %174, i32 %177, i32 %180, i32 %183, i32* %184)
  store i32 %185, i32* %5, align 4
  br label %193

186:                                              ; preds = %4, %159, %141, %119, %66, %54, %42, %24
  %187 = load i32*, i32** %9, align 8
  %188 = load i32, i32* %187, align 4
  %189 = icmp sgt i32 %188, 255
  br i1 %189, label %190, label %192

190:                                              ; preds = %186
  %191 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %191, i32* %5, align 4
  br label %193

192:                                              ; preds = %186
  store i32 0, i32* %5, align 4
  br label %193

193:                                              ; preds = %192, %190, %168
  %194 = load i32, i32* %5, align 4
  ret i32 %194
}

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @sync_code3(i32*, i32*) #1

declare dso_local i32 @decode_static1(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @decode_static2(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @decode_static3(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @decode_adaptive45(%struct.TYPE_15__*, i32, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @update_model4_to_5(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @decode3(i32*, i32*, i32, i32) #1

declare dso_local i32 @update_model5_to_6(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @decode_adaptive6(%struct.TYPE_15__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @update_model6_to_7(%struct.TYPE_15__*) #1

declare dso_local i32 @decode_value3(%struct.TYPE_14__*, i32, i32*, i64*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
