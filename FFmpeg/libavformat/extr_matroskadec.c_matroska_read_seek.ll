; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_matroska_read_seek.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_matroska_read_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_21__**, %struct.TYPE_20__* }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_20__ = type { i64, i32, i32, i64, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i64, i64 }

@AV_NOPTS_VALUE = common dso_local global i32 0, align 4
@AVSEEK_FLAG_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, i32, i32, i32)* @matroska_read_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @matroska_read_seek(%struct.TYPE_22__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  store %struct.TYPE_20__* %17, %struct.TYPE_20__** %10, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %11, align 8
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %20, i64 %22
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  store %struct.TYPE_21__* %24, %struct.TYPE_21__** %12, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %4
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %33 = call i32 @matroska_parse_cues(%struct.TYPE_20__* %32)
  br label %34

34:                                               ; preds = %29, %4
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %207

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @FFMAX(i32 %41, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @av_index_search_timestamp(%struct.TYPE_21__* %49, i32 %50, i32 %51)
  store i32 %52, i32* %14, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %40
  %55 = load i32, i32* %14, align 4
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %58, 1
  %60 = icmp eq i32 %55, %59
  br i1 %60, label %61, label %99

61:                                               ; preds = %54, %40
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %64, align 8
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @matroska_reset_status(%struct.TYPE_20__* %62, i32 0, i32 %73)
  br label %75

75:                                               ; preds = %97, %61
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @av_index_search_timestamp(%struct.TYPE_21__* %76, i32 %77, i32 %78)
  store i32 %79, i32* %14, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %75
  %82 = load i32, i32* %14, align 4
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sub nsw i32 %85, 1
  %87 = icmp eq i32 %82, %86
  br label %88

88:                                               ; preds = %81, %75
  %89 = phi i1 [ true, %75 ], [ %87, %81 ]
  br i1 %89, label %90, label %98

90:                                               ; preds = %88
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %92 = call i32 @matroska_clear_queue(%struct.TYPE_20__* %91)
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %94 = call i64 @matroska_parse_cluster(%struct.TYPE_20__* %93)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  br label %98

97:                                               ; preds = %90
  br label %75

98:                                               ; preds = %96, %88
  br label %99

99:                                               ; preds = %98, %54
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %101 = call i32 @matroska_clear_queue(%struct.TYPE_20__* %100)
  %102 = load i32, i32* %14, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %116, label %104

104:                                              ; preds = %99
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %104
  %110 = load i32, i32* %14, align 4
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sub nsw i32 %113, 1
  %115 = icmp eq i32 %110, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %109, %99
  br label %207

117:                                              ; preds = %109, %104
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %120, align 8
  store %struct.TYPE_19__* %121, %struct.TYPE_19__** %11, align 8
  store i32 0, i32* %13, align 4
  br label %122

122:                                              ; preds = %154, %117
  %123 = load i32, i32* %13, align 4
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 5
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp slt i32 %123, %127
  br i1 %128, label %129, label %157

129:                                              ; preds = %122
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 2
  store i64 0, i64* %135, align 8
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %137 = load i32, i32* %13, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 1
  store i64 0, i64* %141, align 8
  %142 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %144 = load i32, i32* %13, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 0
  store i32 %142, i32* %148, align 8
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %150 = load i32, i32* %13, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 0
  store i64 0, i64* %153, align 8
  br label %154

154:                                              ; preds = %129
  %155 = load i32, i32* %13, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %13, align 4
  br label %122

157:                                              ; preds = %122
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %160, align 8
  %162 = load i32, i32* %14, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @matroska_reset_status(%struct.TYPE_20__* %158, i32 0, i32 %166)
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* @AVSEEK_FLAG_ANY, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %157
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 1
  store i32 0, i32* %174, align 4
  %175 = load i32, i32* %8, align 4
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 4
  store i32 %175, i32* %177, align 8
  br label %191

178:                                              ; preds = %157
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 1
  store i32 1, i32* %180, align 4
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 2
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %182, align 8
  %184 = load i32, i32* %14, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 4
  store i32 %188, i32* %190, align 8
  br label %191

191:                                              ; preds = %178, %172
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 1
  store i32 1, i32* %193, align 8
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 3
  store i64 0, i64* %195, align 8
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i32 0, i32 2
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %199, align 8
  %201 = load i32, i32* %14, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @ff_update_cur_dts(%struct.TYPE_22__* %196, %struct.TYPE_21__* %197, i32 %205)
  store i32 0, i32* %5, align 4
  br label %220

207:                                              ; preds = %116, %39
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %209 = call i32 @matroska_reset_status(%struct.TYPE_20__* %208, i32 0, i32 -1)
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 2
  store i32 -1, i32* %211, align 4
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %213 = call i32 @matroska_clear_queue(%struct.TYPE_20__* %212)
  %214 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 1
  store i32 0, i32* %215, align 8
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %216, i32 0, i32 1
  store i32 0, i32* %217, align 4
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 3
  store i64 0, i64* %219, align 8
  store i32 -1, i32* %5, align 4
  br label %220

220:                                              ; preds = %207, %191
  %221 = load i32, i32* %5, align 4
  ret i32 %221
}

declare dso_local i32 @matroska_parse_cues(%struct.TYPE_20__*) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @av_index_search_timestamp(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @matroska_reset_status(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @matroska_clear_queue(%struct.TYPE_20__*) #1

declare dso_local i64 @matroska_parse_cluster(%struct.TYPE_20__*) #1

declare dso_local i32 @ff_update_cur_dts(%struct.TYPE_22__*, %struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
