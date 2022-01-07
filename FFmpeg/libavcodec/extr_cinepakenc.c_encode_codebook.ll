; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cinepakenc.c_encode_codebook.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cinepakenc.c_encode_codebook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@AV_PIX_FMT_RGB24 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32, i32, i32, i8*)* @encode_codebook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_codebook(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AV_PIX_FMT_RGB24, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 6, i32 4
  store i32 %26, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %27 = load i8*, i8** %12, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AV_PIX_FMT_RGB24, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %6
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %17, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 1, i32 0
  %39 = add nsw i32 %34, %38
  br label %47

40:                                               ; preds = %6
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %17, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 1, i32 0
  %46 = add nsw i32 %41, %45
  br label %47

47:                                               ; preds = %40, %33
  %48 = phi i32 [ %39, %33 ], [ %46, %40 ]
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %9, align 4
  %51 = mul nsw i32 %49, %50
  %52 = load i32, i32* %17, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 31
  %57 = sdiv i32 %56, 32
  %58 = mul nsw i32 %57, 4
  br label %60

59:                                               ; preds = %47
  br label %60

60:                                               ; preds = %59, %54
  %61 = phi i32 [ %58, %54 ], [ 0, %59 ]
  %62 = add nsw i32 %51, %61
  %63 = call i32 @write_chunk_header(i8* %27, i32 %48, i32 %62)
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %17, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %136

66:                                               ; preds = %60
  store i32 0, i32* %18, align 4
  store i32 0, i32* %13, align 4
  br label %67

67:                                               ; preds = %122, %66
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %125

71:                                               ; preds = %67
  %72 = load i32, i32* %18, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32, i32* %15, align 4
  store i32 %75, i32* %19, align 4
  %76 = load i32, i32* %15, align 4
  %77 = add nsw i32 %76, 4
  store i32 %77, i32* %15, align 4
  store i32 -2147483648, i32* %18, align 4
  br label %82

78:                                               ; preds = %71
  %79 = load i32, i32* %18, align 4
  %80 = ashr i32 %79, 1
  %81 = or i32 %80, -2147483648
  store i32 %81, i32* %18, align 4
  br label %82

82:                                               ; preds = %78, %74
  store i32 0, i32* %14, align 4
  br label %83

83:                                               ; preds = %108, %82
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %16, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %111

87:                                               ; preds = %83
  %88 = load i32*, i32** %8, align 8
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %16, align 4
  %92 = mul nsw i32 %90, %91
  %93 = add nsw i32 %89, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %88, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp sge i32 %97, 4
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 128, i32 0
  %101 = xor i32 %96, %100
  %102 = trunc i32 %101 to i8
  %103 = load i8*, i8** %12, align 8
  %104 = load i32, i32* %15, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %15, align 4
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i8, i8* %103, i64 %106
  store i8 %102, i8* %107, align 1
  br label %108

108:                                              ; preds = %87
  %109 = load i32, i32* %14, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %14, align 4
  br label %83

111:                                              ; preds = %83
  %112 = load i32, i32* %18, align 4
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %114, label %121

114:                                              ; preds = %111
  %115 = load i8*, i8** %12, align 8
  %116 = load i32, i32* %19, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = load i32, i32* %18, align 4
  %120 = call i32 @AV_WB32(i8* %118, i32 %119)
  store i32 0, i32* %18, align 4
  br label %121

121:                                              ; preds = %114, %111
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %13, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %13, align 4
  br label %67

125:                                              ; preds = %67
  %126 = load i32, i32* %18, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %125
  %129 = load i8*, i8** %12, align 8
  %130 = load i32, i32* %19, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load i32, i32* %18, align 4
  %134 = call i32 @AV_WB32(i8* %132, i32 %133)
  br label %135

135:                                              ; preds = %128, %125
  br label %175

136:                                              ; preds = %60
  store i32 0, i32* %13, align 4
  br label %137

137:                                              ; preds = %171, %136
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %174

141:                                              ; preds = %137
  store i32 0, i32* %14, align 4
  br label %142

142:                                              ; preds = %167, %141
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* %16, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %170

146:                                              ; preds = %142
  %147 = load i32*, i32** %8, align 8
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* %16, align 4
  %151 = mul nsw i32 %149, %150
  %152 = add nsw i32 %148, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %147, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %14, align 4
  %157 = icmp sge i32 %156, 4
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i32 128, i32 0
  %160 = xor i32 %155, %159
  %161 = trunc i32 %160 to i8
  %162 = load i8*, i8** %12, align 8
  %163 = load i32, i32* %15, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %15, align 4
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i8, i8* %162, i64 %165
  store i8 %161, i8* %166, align 1
  br label %167

167:                                              ; preds = %146
  %168 = load i32, i32* %14, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %14, align 4
  br label %142

170:                                              ; preds = %142
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %13, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %13, align 4
  br label %137

174:                                              ; preds = %137
  br label %175

175:                                              ; preds = %174, %135
  %176 = load i32, i32* %15, align 4
  ret i32 %176
}

declare dso_local i32 @write_chunk_header(i8*, i32, i32) #1

declare dso_local i32 @AV_WB32(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
