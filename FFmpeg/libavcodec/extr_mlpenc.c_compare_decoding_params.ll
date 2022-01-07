; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpenc.c_compare_decoding_params.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpenc.c_compare_decoding_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_12__*, %struct.TYPE_15__*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i64, i64, i64 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i64, i64, i64*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64* }

@PARAM_PRESENCE_FLAGS = common dso_local global i32 0, align 4
@PARAM_BLOCKSIZE = common dso_local global i32 0, align 4
@PARAM_MATRIX = common dso_local global i32 0, align 4
@PARAM_OUTSHIFT = common dso_local global i32 0, align 4
@PARAM_QUANTSTEP = common dso_local global i32 0, align 4
@PARAM_FIR = common dso_local global i32 0, align 4
@FIR = common dso_local global i32 0, align 4
@PARAM_IIR = common dso_local global i32 0, align 4
@IIR = common dso_local global i32 0, align 4
@PARAM_HUFFOFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @compare_decoding_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_decoding_params(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 4
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %3, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %4, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 3
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %5, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 3
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %6, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %7, align 8
  store i32 0, i32* %9, align 4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %1
  %33 = load i32, i32* @PARAM_PRESENCE_FLAGS, align 4
  %34 = load i32, i32* %9, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %32, %1
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load i32, i32* @PARAM_BLOCKSIZE, align 4
  %46 = load i32, i32* %9, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %44, %36
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %52 = call i64 @compare_matrix_params(%struct.TYPE_14__* %49, %struct.TYPE_13__* %50, %struct.TYPE_13__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i32, i32* @PARAM_MATRIX, align 4
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %54, %48
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %86, %58
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ule i32 %60, %63
  br i1 %64, label %65, label %89

65:                                               ; preds = %59
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %72, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %65
  %82 = load i32, i32* @PARAM_OUTSHIFT, align 4
  %83 = load i32, i32* %9, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %9, align 4
  br label %89

85:                                               ; preds = %65
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %8, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %59

89:                                               ; preds = %81, %59
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %117, %89
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp ule i32 %91, %94
  br i1 %95, label %96, label %120

96:                                               ; preds = %90
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 2
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 2
  %106 = load i64*, i64** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %103, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %96
  %113 = load i32, i32* @PARAM_QUANTSTEP, align 4
  %114 = load i32, i32* %9, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %9, align 4
  br label %120

116:                                              ; preds = %96
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %8, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %8, align 4
  br label %90

120:                                              ; preds = %112, %90
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %204, %120
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp ule i32 %125, %128
  br i1 %129, label %130, label %207

130:                                              ; preds = %124
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %132, align 8
  %134 = load i32, i32* %8, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i64 %135
  store %struct.TYPE_16__* %136, %struct.TYPE_16__** %10, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i64 %141
  store %struct.TYPE_16__* %142, %struct.TYPE_16__** %11, align 8
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* @PARAM_FIR, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %157, label %147

147:                                              ; preds = %130
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %150 = load i32, i32* @FIR, align 4
  %151 = call i64 @compare_filter_params(%struct.TYPE_16__* %148, %struct.TYPE_16__* %149, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %147
  %154 = load i32, i32* @PARAM_FIR, align 4
  %155 = load i32, i32* %9, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %9, align 4
  br label %157

157:                                              ; preds = %153, %147, %130
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* @PARAM_IIR, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %172, label %162

162:                                              ; preds = %157
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %165 = load i32, i32* @IIR, align 4
  %166 = call i64 @compare_filter_params(%struct.TYPE_16__* %163, %struct.TYPE_16__* %164, i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %162
  %169 = load i32, i32* @PARAM_IIR, align 4
  %170 = load i32, i32* %9, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %9, align 4
  br label %172

172:                                              ; preds = %168, %162, %157
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %175, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %172
  %181 = load i32, i32* @PARAM_HUFFOFFSET, align 4
  %182 = load i32, i32* %9, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %9, align 4
  br label %184

184:                                              ; preds = %180, %172
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %187, %190
  br i1 %191, label %200, label %192

192:                                              ; preds = %184
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %195, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %192, %184
  %201 = load i32, i32* %9, align 4
  %202 = or i32 %201, 1
  store i32 %202, i32* %9, align 4
  br label %203

203:                                              ; preds = %200, %192
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %8, align 4
  %206 = add i32 %205, 1
  store i32 %206, i32* %8, align 4
  br label %124

207:                                              ; preds = %124
  %208 = load i32, i32* %9, align 4
  ret i32 %208
}

declare dso_local i64 @compare_matrix_params(%struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i64 @compare_filter_params(%struct.TYPE_16__*, %struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
