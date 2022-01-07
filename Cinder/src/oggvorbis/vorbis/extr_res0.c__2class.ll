; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_res0.c__2class.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_res0.c__2class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64** (i32*, i32*, i32**, i32)* @_2class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64** @_2class(i32* %0, i32* %1, i32** %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64**, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32 %3, i32* %8, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = bitcast i32* %22 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %13, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %14, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %15, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %16, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %35, %38
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* %15, align 4
  %42 = sdiv i32 %40, %41
  store i32 %42, i32* %18, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = call i8* @_vorbis_block_alloc(i32* %43, i32 8)
  %45 = bitcast i8* %44 to i64**
  store i64** %45, i64*** %19, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %18, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 8
  %50 = trunc i64 %49 to i32
  %51 = call i8* @_vorbis_block_alloc(i32* %46, i32 %50)
  %52 = bitcast i8* %51 to i64*
  %53 = load i64**, i64*** %19, align 8
  %54 = getelementptr inbounds i64*, i64** %53, i64 0
  store i64* %52, i64** %54, align 8
  %55 = load i64**, i64*** %19, align 8
  %56 = getelementptr inbounds i64*, i64** %55, i64 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %18, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 @memset(i64* %57, i32 0, i32 %61)
  store i64 0, i64* %9, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %8, align 4
  %67 = sdiv i32 %65, %66
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %12, align 8
  br label %69

69:                                               ; preds = %173, %4
  %70 = load i64, i64* %9, align 8
  %71 = load i32, i32* %18, align 4
  %72 = sext i32 %71 to i64
  %73 = icmp slt i64 %70, %72
  br i1 %73, label %74, label %176

74:                                               ; preds = %69
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i64 0, i64* %10, align 8
  br label %75

75:                                               ; preds = %131, %74
  %76 = load i64, i64* %10, align 8
  %77 = load i32, i32* %15, align 4
  %78 = sext i32 %77 to i64
  %79 = icmp slt i64 %76, %78
  br i1 %79, label %80, label %136

80:                                               ; preds = %75
  %81 = load i32**, i32*** %7, align 8
  %82 = getelementptr inbounds i32*, i32** %81, i64 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* %12, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @abs(i32 %86) #3
  %88 = load i32, i32* %20, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %80
  %91 = load i32**, i32*** %7, align 8
  %92 = getelementptr inbounds i32*, i32** %91, i64 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* %12, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @abs(i32 %96) #3
  store i32 %97, i32* %20, align 4
  br label %98

98:                                               ; preds = %90, %80
  store i64 1, i64* %11, align 8
  br label %99

99:                                               ; preds = %125, %98
  %100 = load i64, i64* %11, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = icmp slt i64 %100, %102
  br i1 %103, label %104, label %128

104:                                              ; preds = %99
  %105 = load i32**, i32*** %7, align 8
  %106 = load i64, i64* %11, align 8
  %107 = getelementptr inbounds i32*, i32** %105, i64 %106
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* %12, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @abs(i32 %111) #3
  %113 = load i32, i32* %21, align 4
  %114 = icmp sgt i32 %112, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %104
  %116 = load i32**, i32*** %7, align 8
  %117 = load i64, i64* %11, align 8
  %118 = getelementptr inbounds i32*, i32** %116, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* %12, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @abs(i32 %122) #3
  store i32 %123, i32* %21, align 4
  br label %124

124:                                              ; preds = %115, %104
  br label %125

125:                                              ; preds = %124
  %126 = load i64, i64* %11, align 8
  %127 = add nsw i64 %126, 1
  store i64 %127, i64* %11, align 8
  br label %99

128:                                              ; preds = %99
  %129 = load i64, i64* %12, align 8
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* %12, align 8
  br label %131

131:                                              ; preds = %128
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = load i64, i64* %10, align 8
  %135 = add nsw i64 %134, %133
  store i64 %135, i64* %10, align 8
  br label %75

136:                                              ; preds = %75
  store i64 0, i64* %10, align 8
  br label %137

137:                                              ; preds = %163, %136
  %138 = load i64, i64* %10, align 8
  %139 = load i32, i32* %16, align 4
  %140 = sub nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = icmp slt i64 %138, %141
  br i1 %142, label %143, label %166

143:                                              ; preds = %137
  %144 = load i32, i32* %20, align 4
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 4
  %147 = load i32*, i32** %146, align 8
  %148 = load i64, i64* %10, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = icmp sle i32 %144, %150
  br i1 %151, label %152, label %162

152:                                              ; preds = %143
  %153 = load i32, i32* %21, align 4
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 5
  %156 = load i32*, i32** %155, align 8
  %157 = load i64, i64* %10, align 8
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = icmp sle i32 %153, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %152
  br label %166

162:                                              ; preds = %152, %143
  br label %163

163:                                              ; preds = %162
  %164 = load i64, i64* %10, align 8
  %165 = add nsw i64 %164, 1
  store i64 %165, i64* %10, align 8
  br label %137

166:                                              ; preds = %161, %137
  %167 = load i64, i64* %10, align 8
  %168 = load i64**, i64*** %19, align 8
  %169 = getelementptr inbounds i64*, i64** %168, i64 0
  %170 = load i64*, i64** %169, align 8
  %171 = load i64, i64* %9, align 8
  %172 = getelementptr inbounds i64, i64* %170, i64 %171
  store i64 %167, i64* %172, align 8
  br label %173

173:                                              ; preds = %166
  %174 = load i64, i64* %9, align 8
  %175 = add nsw i64 %174, 1
  store i64 %175, i64* %9, align 8
  br label %69

176:                                              ; preds = %69
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %178, align 4
  %181 = load i64**, i64*** %19, align 8
  ret i64** %181
}

declare dso_local i8* @_vorbis_block_alloc(i32*, i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
