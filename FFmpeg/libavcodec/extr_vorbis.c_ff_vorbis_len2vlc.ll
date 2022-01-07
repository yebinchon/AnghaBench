; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vorbis.c_ff_vorbis_len2vlc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vorbis.c_ff_vorbis_len2vlc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_vorbis_len2vlc(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [33 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = bitcast [33 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 132, i1 false)
  %14 = bitcast i8* %13 to <{ i32, [32 x i32] }>*
  %15 = getelementptr inbounds <{ i32, [32 x i32] }>, <{ i32, [32 x i32] }>* %14, i32 0, i32 0
  store i32 404, i32* %15, align 16
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %30, %3
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %11, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  br label %27

27:                                               ; preds = %20, %16
  %28 = phi i1 [ false, %16 ], [ %26, %20 ]
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %11, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %11, align 4
  br label %16

33:                                               ; preds = %27
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %199

38:                                               ; preds = %33
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %11, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 0, i32* %42, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %11, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %47, 32
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %50, i32* %4, align 4
  br label %199

51:                                               ; preds = %38
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %67, %51
  %53 = load i32, i32* %9, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %11, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp ult i32 %53, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %52
  %61 = load i32, i32* %9, align 4
  %62 = shl i32 1, %61
  %63 = load i32, i32* %9, align 4
  %64 = add i32 %63, 1
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds [33 x i32], [33 x i32]* %8, i64 0, i64 %65
  store i32 %62, i32* %66, align 4
  br label %67

67:                                               ; preds = %60
  %68 = load i32, i32* %9, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %52

70:                                               ; preds = %52
  %71 = load i32, i32* %11, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %88, %70
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* %9, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 0
  br label %85

85:                                               ; preds = %78, %74
  %86 = phi i1 [ false, %74 ], [ %84, %78 ]
  br i1 %86, label %87, label %91

87:                                               ; preds = %85
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %9, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %74

91:                                               ; preds = %85
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i32 0, i32* %4, align 4
  br label %199

96:                                               ; preds = %91
  br label %97

97:                                               ; preds = %179, %96
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp ult i32 %98, %99
  br i1 %100, label %101, label %182

101:                                              ; preds = %97
  %102 = load i32*, i32** %5, align 8
  %103 = load i32, i32* %11, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = icmp sgt i32 %106, 32
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %109, i32* %4, align 4
  br label %199

110:                                              ; preds = %101
  %111 = load i32*, i32** %5, align 8
  %112 = load i32, i32* %11, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  br label %179

118:                                              ; preds = %110
  %119 = load i32*, i32** %5, align 8
  %120 = load i32, i32* %11, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %9, align 4
  br label %124

124:                                              ; preds = %135, %118
  %125 = load i32, i32* %9, align 4
  %126 = icmp ugt i32 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %124
  %128 = load i32, i32* %9, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds [33 x i32], [33 x i32]* %8, i64 0, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  br label %138

134:                                              ; preds = %127
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %9, align 4
  %137 = add i32 %136, -1
  store i32 %137, i32* %9, align 4
  br label %124

138:                                              ; preds = %133, %124
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %138
  %142 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %142, i32* %4, align 4
  br label %199

143:                                              ; preds = %138
  %144 = load i32, i32* %9, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds [33 x i32], [33 x i32]* %8, i64 0, i64 %145
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* %9, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds [33 x i32], [33 x i32]* %8, i64 0, i64 %149
  store i32 0, i32* %150, align 4
  %151 = load i32, i32* %9, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %10, align 4
  br label %153

153:                                              ; preds = %170, %143
  %154 = load i32, i32* %10, align 4
  %155 = load i32*, i32** %5, align 8
  %156 = load i32, i32* %11, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = icmp ule i32 %154, %159
  br i1 %160, label %161, label %173

161:                                              ; preds = %153
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %10, align 4
  %164 = sub i32 %163, 1
  %165 = shl i32 1, %164
  %166 = add i32 %162, %165
  %167 = load i32, i32* %10, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds [33 x i32], [33 x i32]* %8, i64 0, i64 %168
  store i32 %166, i32* %169, align 4
  br label %170

170:                                              ; preds = %161
  %171 = load i32, i32* %10, align 4
  %172 = add i32 %171, 1
  store i32 %172, i32* %10, align 4
  br label %153

173:                                              ; preds = %153
  %174 = load i32, i32* %12, align 4
  %175 = load i32*, i32** %6, align 8
  %176 = load i32, i32* %11, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  store i32 %174, i32* %178, align 4
  br label %179

179:                                              ; preds = %173, %117
  %180 = load i32, i32* %11, align 4
  %181 = add i32 %180, 1
  store i32 %181, i32* %11, align 4
  br label %97

182:                                              ; preds = %97
  store i32 1, i32* %11, align 4
  br label %183

183:                                              ; preds = %195, %182
  %184 = load i32, i32* %11, align 4
  %185 = icmp ult i32 %184, 33
  br i1 %185, label %186, label %198

186:                                              ; preds = %183
  %187 = load i32, i32* %11, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds [33 x i32], [33 x i32]* %8, i64 0, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %186
  %193 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %193, i32* %4, align 4
  br label %199

194:                                              ; preds = %186
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %11, align 4
  %197 = add i32 %196, 1
  store i32 %197, i32* %11, align 4
  br label %183

198:                                              ; preds = %183
  store i32 0, i32* %4, align 4
  br label %199

199:                                              ; preds = %198, %192, %141, %108, %95, %49, %37
  %200 = load i32, i32* %4, align 4
  ret i32 %200
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
