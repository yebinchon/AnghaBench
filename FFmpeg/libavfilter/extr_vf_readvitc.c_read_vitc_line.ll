; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_readvitc.c_read_vitc_line.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_readvitc.c_read_vitc_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32*, i64, i64, i32, i64 }

@LINE_DATA_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64*, i32, i32, i32)* @read_vitc_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_vitc_line(%struct.TYPE_3__* %0, i64* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %18, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %5
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @FFMIN(i32 %24, i64 %27)
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %23, %5
  store i32 0, i32* %17, align 4
  br label %30

30:                                               ; preds = %194, %29
  %31 = load i32, i32* %17, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %197

34:                                               ; preds = %30
  %35 = load i64*, i64** %7, align 8
  store i64* %35, i64** %11, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* @LINE_DATA_SIZE, align 4
  %40 = call i32 @memset(i32* %38, i32 0, i32 %39)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %16, align 4
  br label %41

41:                                               ; preds = %171, %34
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %46, 9
  br label %48

48:                                               ; preds = %45, %41
  %49 = phi i1 [ false, %41 ], [ %47, %45 ]
  br i1 %49, label %50, label %174

50:                                               ; preds = %48
  br label %51

51:                                               ; preds = %67, %50
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load i64*, i64** %11, align 8
  %57 = load i32, i32* %16, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %60, %63
  br label %65

65:                                               ; preds = %55, %51
  %66 = phi i1 [ false, %51 ], [ %64, %55 ]
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = load i32, i32* %16, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %16, align 4
  br label %51

70:                                               ; preds = %65
  br label %71

71:                                               ; preds = %87, %70
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %71
  %76 = load i64*, i64** %11, align 8
  %77 = load i32, i32* %16, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp sgt i64 %80, %83
  br label %85

85:                                               ; preds = %75, %71
  %86 = phi i1 [ false, %71 ], [ %84, %75 ]
  br i1 %86, label %87, label %90

87:                                               ; preds = %85
  %88 = load i32, i32* %16, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %16, align 4
  br label %71

90:                                               ; preds = %85
  %91 = load i32, i32* %16, align 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 10
  %96 = sdiv i32 %95, 20
  %97 = sub nsw i32 %91, %96
  %98 = call i32 @FFMAX(i32 %97, i32 1)
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %16, align 4
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %100, %103
  %105 = load i32, i32* %9, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %90
  br label %174

108:                                              ; preds = %90
  %109 = load i64*, i64** %11, align 8
  %110 = load i32, i32* %16, align 4
  %111 = call i64 @get_pit_avg3(i64* %109, i32 %110)
  store i64 %111, i64* %15, align 8
  %112 = load i64, i64* %15, align 8
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp slt i64 %112, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %108
  br label %174

118:                                              ; preds = %108
  %119 = load i32, i32* %14, align 4
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = sdiv i32 %122, 10
  %124 = add nsw i32 %119, %123
  store i32 %124, i32* %16, align 4
  %125 = load i64*, i64** %11, align 8
  %126 = load i32, i32* %16, align 4
  %127 = call i64 @get_pit_avg3(i64* %125, i32 %126)
  store i64 %127, i64* %15, align 8
  %128 = load i64, i64* %15, align 8
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = icmp sgt i64 %128, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %118
  br label %174

134:                                              ; preds = %118
  store i32 0, i32* %13, align 4
  br label %135

135:                                              ; preds = %168, %134
  %136 = load i32, i32* %13, align 4
  %137 = icmp sle i32 %136, 7
  br i1 %137, label %138, label %171

138:                                              ; preds = %135
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %140, 2
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = mul nsw i32 %141, %144
  %146 = sdiv i32 %145, 10
  %147 = add nsw i32 %139, %146
  store i32 %147, i32* %16, align 4
  %148 = load i64*, i64** %11, align 8
  %149 = load i32, i32* %16, align 4
  %150 = call i64 @get_pit_avg3(i64* %148, i32 %149)
  store i64 %150, i64* %15, align 8
  %151 = load i64, i64* %15, align 8
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 5
  %154 = load i64, i64* %153, align 8
  %155 = icmp sgt i64 %151, %154
  br i1 %155, label %156, label %167

156:                                              ; preds = %138
  %157 = load i32, i32* %13, align 4
  %158 = shl i32 1, %157
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %12, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, %158
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %156, %138
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %13, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %13, align 4
  br label %135

171:                                              ; preds = %135
  %172 = load i32, i32* %12, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %12, align 4
  br label %41

174:                                              ; preds = %133, %117, %107, %48
  %175 = load i32, i32* %12, align 4
  %176 = icmp eq i32 %175, 9
  br i1 %176, label %177, label %189

177:                                              ; preds = %174
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = call i32 @get_vitc_crc(i32* %180)
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 8
  %186 = load i32, i32* %185, align 4
  %187 = icmp eq i32 %181, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %177
  store i32 1, i32* %18, align 4
  br label %197

189:                                              ; preds = %177, %174
  %190 = load i32, i32* %8, align 4
  %191 = load i64*, i64** %7, align 8
  %192 = sext i32 %190 to i64
  %193 = getelementptr inbounds i64, i64* %191, i64 %192
  store i64* %193, i64** %7, align 8
  br label %194

194:                                              ; preds = %189
  %195 = load i32, i32* %17, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %17, align 4
  br label %30

197:                                              ; preds = %188, %30
  %198 = load i32, i32* %18, align 4
  ret i32 %198
}

declare dso_local i32 @FFMIN(i32, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i64 @get_pit_avg3(i64*, i32) #1

declare dso_local i32 @get_vitc_crc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
