; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_codebook.c_vorbis_book_decodevv_add.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_codebook.c_vorbis_book_decodevv_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vorbis_book_decodevv_add(%struct.TYPE_4__* %0, i32** %1, i64 %2, i32 %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %9, align 8
  store i32** %1, i32*** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %175

28:                                               ; preds = %7
  store i32 0, i32* %19, align 4
  %29 = load i32, i32* %15, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %29, %32
  store i32 %33, i32* %20, align 4
  %34 = load i64, i64* %11, align 8
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %21, align 4
  %39 = load i32, i32* %20, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %107

41:                                               ; preds = %28
  %42 = load i64, i64* %11, align 8
  store i64 %42, i64* %16, align 8
  br label %43

43:                                               ; preds = %105, %41
  %44 = load i64, i64* %16, align 8
  %45 = load i32, i32* %21, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp slt i64 %44, %46
  br i1 %47, label %48, label %106

48:                                               ; preds = %43
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = call i64 @decode_packed_entry_number(%struct.TYPE_4__* %49, i32* %50)
  store i64 %51, i64* %18, align 8
  %52 = load i64, i64* %18, align 8
  %53 = icmp eq i64 %52, -1
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i64 -1, i64* %8, align 8
  br label %176

55:                                               ; preds = %48
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %18, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = mul nsw i64 %59, %62
  %64 = getelementptr inbounds i32, i32* %58, i64 %63
  store i32* %64, i32** %22, align 8
  store i64 0, i64* %17, align 8
  br label %65

65:                                               ; preds = %102, %55
  %66 = load i64, i64* %16, align 8
  %67 = load i32, i32* %21, align 4
  %68 = sext i32 %67 to i64
  %69 = icmp slt i64 %66, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i64, i64* %17, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %71, %74
  br label %76

76:                                               ; preds = %70, %65
  %77 = phi i1 [ false, %65 ], [ %75, %70 ]
  br i1 %77, label %78, label %105

78:                                               ; preds = %76
  %79 = load i32*, i32** %22, align 8
  %80 = load i64, i64* %17, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %20, align 4
  %84 = ashr i32 %82, %83
  %85 = load i32**, i32*** %10, align 8
  %86 = load i32, i32* %19, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %19, align 4
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32*, i32** %85, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* %16, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, %84
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* %19, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %78
  store i32 0, i32* %19, align 4
  %99 = load i64, i64* %16, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %16, align 8
  br label %101

101:                                              ; preds = %98, %78
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* %17, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %17, align 8
  br label %65

105:                                              ; preds = %76
  br label %43

106:                                              ; preds = %43
  br label %174

107:                                              ; preds = %28
  %108 = load i64, i64* %11, align 8
  store i64 %108, i64* %16, align 8
  br label %109

109:                                              ; preds = %172, %107
  %110 = load i64, i64* %16, align 8
  %111 = load i32, i32* %21, align 4
  %112 = sext i32 %111 to i64
  %113 = icmp slt i64 %110, %112
  br i1 %113, label %114, label %173

114:                                              ; preds = %109
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %116 = load i32*, i32** %13, align 8
  %117 = call i64 @decode_packed_entry_number(%struct.TYPE_4__* %115, i32* %116)
  store i64 %117, i64* %18, align 8
  %118 = load i64, i64* %18, align 8
  %119 = icmp eq i64 %118, -1
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  store i64 -1, i64* %8, align 8
  br label %176

121:                                              ; preds = %114
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = load i64, i64* %18, align 8
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = mul nsw i64 %125, %128
  %130 = getelementptr inbounds i32, i32* %124, i64 %129
  store i32* %130, i32** %23, align 8
  store i64 0, i64* %17, align 8
  br label %131

131:                                              ; preds = %169, %121
  %132 = load i64, i64* %16, align 8
  %133 = load i32, i32* %21, align 4
  %134 = sext i32 %133 to i64
  %135 = icmp slt i64 %132, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %131
  %137 = load i64, i64* %17, align 8
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = icmp slt i64 %137, %140
  br label %142

142:                                              ; preds = %136, %131
  %143 = phi i1 [ false, %131 ], [ %141, %136 ]
  br i1 %143, label %144, label %172

144:                                              ; preds = %142
  %145 = load i32*, i32** %23, align 8
  %146 = load i64, i64* %17, align 8
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %20, align 4
  %150 = sub nsw i32 0, %149
  %151 = shl i32 %148, %150
  %152 = load i32**, i32*** %10, align 8
  %153 = load i32, i32* %19, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %19, align 4
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i32*, i32** %152, i64 %155
  %157 = load i32*, i32** %156, align 8
  %158 = load i64, i64* %16, align 8
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, %151
  store i32 %161, i32* %159, align 4
  %162 = load i32, i32* %19, align 4
  %163 = load i32, i32* %12, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %144
  store i32 0, i32* %19, align 4
  %166 = load i64, i64* %16, align 8
  %167 = add nsw i64 %166, 1
  store i64 %167, i64* %16, align 8
  br label %168

168:                                              ; preds = %165, %144
  br label %169

169:                                              ; preds = %168
  %170 = load i64, i64* %17, align 8
  %171 = add nsw i64 %170, 1
  store i64 %171, i64* %17, align 8
  br label %131

172:                                              ; preds = %142
  br label %109

173:                                              ; preds = %109
  br label %174

174:                                              ; preds = %173, %106
  br label %175

175:                                              ; preds = %174, %7
  store i64 0, i64* %8, align 8
  br label %176

176:                                              ; preds = %175, %120, %54
  %177 = load i64, i64* %8, align 8
  ret i64 %177
}

declare dso_local i64 @decode_packed_entry_number(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
