; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lumakey.c_do_lumakey_slice8.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lumakey.c_do_lumakey_slice8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32**, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i32, i32)* @do_lumakey_slice8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_lumakey_slice8(%struct.TYPE_7__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %9, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %10, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = mul nsw i32 %27, %28
  %30 = load i32, i32* %8, align 4
  %31 = sdiv i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  %37 = mul nsw i32 %34, %36
  %38 = load i32, i32* %8, align 4
  %39 = sdiv i32 %37, %38
  store i32 %39, i32* %12, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32**, i32*** %41, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 3
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %45, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %44, i64 %52
  store i32* %53, i32** %13, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32**, i32*** %55, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %59, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %58, i64 %66
  store i32* %67, i32** %14, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %15, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %16, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %19, align 4
  br label %78

78:                                               ; preds = %194, %4
  %79 = load i32, i32* %19, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %197

82:                                               ; preds = %78
  store i32 0, i32* %18, align 4
  br label %83

83:                                               ; preds = %174, %82
  %84 = load i32, i32* %18, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %177

89:                                               ; preds = %83
  %90 = load i32*, i32** %14, align 8
  %91 = load i32, i32* %18, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %17, align 4
  %96 = icmp sge i32 %94, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %89
  %98 = load i32*, i32** %14, align 8
  %99 = load i32, i32* %18, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %16, align 4
  %104 = icmp sle i32 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %97
  %106 = load i32*, i32** %13, align 8
  %107 = load i32, i32* %18, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32 0, i32* %109, align 4
  br label %173

110:                                              ; preds = %97, %89
  %111 = load i32*, i32** %14, align 8
  %112 = load i32, i32* %18, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %17, align 4
  %117 = load i32, i32* %15, align 4
  %118 = sub nsw i32 %116, %117
  %119 = icmp sgt i32 %115, %118
  br i1 %119, label %120, label %172

120:                                              ; preds = %110
  %121 = load i32*, i32** %14, align 8
  %122 = load i32, i32* %18, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %16, align 4
  %127 = load i32, i32* %15, align 4
  %128 = add nsw i32 %126, %127
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %172

130:                                              ; preds = %120
  %131 = load i32*, i32** %14, align 8
  %132 = load i32, i32* %18, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %17, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %156

138:                                              ; preds = %130
  %139 = load i32*, i32** %14, align 8
  %140 = load i32, i32* %18, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %17, align 4
  %145 = sub nsw i32 %143, %144
  %146 = load i32, i32* %15, align 4
  %147 = add nsw i32 %145, %146
  %148 = mul nsw i32 %147, 255
  %149 = load i32, i32* %15, align 4
  %150 = sdiv i32 %148, %149
  %151 = sub nsw i32 255, %150
  %152 = load i32*, i32** %13, align 8
  %153 = load i32, i32* %18, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  store i32 %151, i32* %155, align 4
  br label %171

156:                                              ; preds = %130
  %157 = load i32*, i32** %14, align 8
  %158 = load i32, i32* %18, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %16, align 4
  %163 = sub nsw i32 %161, %162
  %164 = mul nsw i32 %163, 255
  %165 = load i32, i32* %15, align 4
  %166 = sdiv i32 %164, %165
  %167 = load i32*, i32** %13, align 8
  %168 = load i32, i32* %18, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  store i32 %166, i32* %170, align 4
  br label %171

171:                                              ; preds = %156, %138
  br label %172

172:                                              ; preds = %171, %120, %110
  br label %173

173:                                              ; preds = %172, %105
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %18, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %18, align 4
  br label %83

177:                                              ; preds = %83
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32*, i32** %14, align 8
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  store i32* %185, i32** %14, align 8
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 2
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 3
  %190 = load i32, i32* %189, align 4
  %191 = load i32*, i32** %13, align 8
  %192 = sext i32 %190 to i64
  %193 = getelementptr inbounds i32, i32* %191, i64 %192
  store i32* %193, i32** %13, align 8
  br label %194

194:                                              ; preds = %177
  %195 = load i32, i32* %19, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %19, align 4
  br label %78

197:                                              ; preds = %78
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
