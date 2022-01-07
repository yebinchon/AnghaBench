; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_codebook.c_vorbis_book_decodevv_add.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_codebook.c_vorbis_book_decodevv_add.c"
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
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %9, align 8
  store i32** %1, i32*** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %159

27:                                               ; preds = %7
  store i32 0, i32* %19, align 4
  %28 = load i32, i32* %15, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %28, %31
  store i32 %32, i32* %20, align 4
  %33 = load i32, i32* %20, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %96

35:                                               ; preds = %27
  %36 = load i64, i64* %11, align 8
  store i64 %36, i64* %16, align 8
  br label %37

37:                                               ; preds = %94, %35
  %38 = load i64, i64* %16, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load i32, i32* %14, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = icmp slt i64 %38, %42
  br i1 %43, label %44, label %95

44:                                               ; preds = %37
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = call i64 @decode_packed_entry_number(%struct.TYPE_4__* %45, i32* %46)
  store i64 %47, i64* %18, align 8
  %48 = load i64, i64* %18, align 8
  %49 = icmp eq i64 %48, -1
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i64 -1, i64* %8, align 8
  br label %160

51:                                               ; preds = %44
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* %18, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = mul nsw i64 %55, %58
  %60 = getelementptr inbounds i32, i32* %54, i64 %59
  store i32* %60, i32** %21, align 8
  store i64 0, i64* %17, align 8
  br label %61

61:                                               ; preds = %91, %51
  %62 = load i64, i64* %17, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %62, %65
  br i1 %66, label %67, label %94

67:                                               ; preds = %61
  %68 = load i32*, i32** %21, align 8
  %69 = load i64, i64* %17, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %20, align 4
  %73 = ashr i32 %71, %72
  %74 = load i32**, i32*** %10, align 8
  %75 = load i32, i32* %19, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %19, align 4
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i32*, i32** %74, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* %16, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, %73
  store i32 %83, i32* %81, align 4
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %67
  store i32 0, i32* %19, align 4
  %88 = load i64, i64* %16, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %16, align 8
  br label %90

90:                                               ; preds = %87, %67
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %17, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %17, align 8
  br label %61

94:                                               ; preds = %61
  br label %37

95:                                               ; preds = %37
  br label %158

96:                                               ; preds = %27
  %97 = load i64, i64* %11, align 8
  store i64 %97, i64* %16, align 8
  br label %98

98:                                               ; preds = %156, %96
  %99 = load i64, i64* %16, align 8
  %100 = load i64, i64* %11, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %100, %102
  %104 = icmp slt i64 %99, %103
  br i1 %104, label %105, label %157

105:                                              ; preds = %98
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %107 = load i32*, i32** %13, align 8
  %108 = call i64 @decode_packed_entry_number(%struct.TYPE_4__* %106, i32* %107)
  store i64 %108, i64* %18, align 8
  %109 = load i64, i64* %18, align 8
  %110 = icmp eq i64 %109, -1
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  store i64 -1, i64* %8, align 8
  br label %160

112:                                              ; preds = %105
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* %18, align 8
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = mul nsw i64 %116, %119
  %121 = getelementptr inbounds i32, i32* %115, i64 %120
  store i32* %121, i32** %22, align 8
  store i64 0, i64* %17, align 8
  br label %122

122:                                              ; preds = %153, %112
  %123 = load i64, i64* %17, align 8
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = icmp slt i64 %123, %126
  br i1 %127, label %128, label %156

128:                                              ; preds = %122
  %129 = load i32*, i32** %22, align 8
  %130 = load i64, i64* %17, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %20, align 4
  %134 = sub nsw i32 0, %133
  %135 = shl i32 %132, %134
  %136 = load i32**, i32*** %10, align 8
  %137 = load i32, i32* %19, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %19, align 4
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i32*, i32** %136, i64 %139
  %141 = load i32*, i32** %140, align 8
  %142 = load i64, i64* %16, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, %135
  store i32 %145, i32* %143, align 4
  %146 = load i32, i32* %19, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %128
  store i32 0, i32* %19, align 4
  %150 = load i64, i64* %16, align 8
  %151 = add nsw i64 %150, 1
  store i64 %151, i64* %16, align 8
  br label %152

152:                                              ; preds = %149, %128
  br label %153

153:                                              ; preds = %152
  %154 = load i64, i64* %17, align 8
  %155 = add nsw i64 %154, 1
  store i64 %155, i64* %17, align 8
  br label %122

156:                                              ; preds = %122
  br label %98

157:                                              ; preds = %98
  br label %158

158:                                              ; preds = %157, %95
  br label %159

159:                                              ; preds = %158, %7
  store i64 0, i64* %8, align 8
  br label %160

160:                                              ; preds = %159, %111, %50
  %161 = load i64, i64* %8, align 8
  ret i64 %161
}

declare dso_local i64 @decode_packed_entry_number(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
