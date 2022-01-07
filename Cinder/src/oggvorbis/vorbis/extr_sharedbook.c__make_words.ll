; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_sharedbook.c__make_words.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_sharedbook.c__make_words.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @_make_words(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [33 x i64], align 16
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %10, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  br label %22

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i64 [ %19, %18 ], [ %21, %20 ]
  %24 = mul i64 %23, 8
  %25 = call i64* @_ogg_malloc(i64 %24)
  store i64* %25, i64** %12, align 8
  %26 = getelementptr inbounds [33 x i64], [33 x i64]* %11, i64 0, i64 0
  %27 = call i32 @memset(i64* %26, i32 0, i32 264)
  store i64 0, i64* %8, align 8
  br label %28

28:                                               ; preds = %132, %22
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %135

32:                                               ; preds = %28
  %33 = load i8*, i8** %5, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i64
  store i64 %37, i64* %13, align 8
  %38 = load i64, i64* %13, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %124

40:                                               ; preds = %32
  %41 = load i64, i64* %13, align 8
  %42 = getelementptr inbounds [33 x i64], [33 x i64]* %11, i64 0, i64 %41
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %14, align 8
  %44 = load i64, i64* %13, align 8
  %45 = icmp slt i64 %44, 32
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load i64, i64* %14, align 8
  %48 = load i64, i64* %13, align 8
  %49 = ashr i64 %47, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i64*, i64** %12, align 8
  %53 = call i32 @_ogg_free(i64* %52)
  store i64* null, i64** %4, align 8
  br label %216

54:                                               ; preds = %46, %40
  %55 = load i64, i64* %14, align 8
  %56 = load i64*, i64** %12, align 8
  %57 = load i64, i64* %10, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %10, align 8
  %59 = getelementptr inbounds i64, i64* %56, i64 %57
  store i64 %55, i64* %59, align 8
  %60 = load i64, i64* %13, align 8
  store i64 %60, i64* %9, align 8
  br label %61

61:                                               ; preds = %91, %54
  %62 = load i64, i64* %9, align 8
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %94

64:                                               ; preds = %61
  %65 = load i64, i64* %9, align 8
  %66 = getelementptr inbounds [33 x i64], [33 x i64]* %11, i64 0, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = and i64 %67, 1
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %64
  %71 = load i64, i64* %9, align 8
  %72 = icmp eq i64 %71, 1
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = getelementptr inbounds [33 x i64], [33 x i64]* %11, i64 0, i64 1
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %74, align 8
  br label %85

77:                                               ; preds = %70
  %78 = load i64, i64* %9, align 8
  %79 = sub nsw i64 %78, 1
  %80 = getelementptr inbounds [33 x i64], [33 x i64]* %11, i64 0, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = shl i64 %81, 1
  %83 = load i64, i64* %9, align 8
  %84 = getelementptr inbounds [33 x i64], [33 x i64]* %11, i64 0, i64 %83
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %77, %73
  br label %94

86:                                               ; preds = %64
  %87 = load i64, i64* %9, align 8
  %88 = getelementptr inbounds [33 x i64], [33 x i64]* %11, i64 0, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %88, align 8
  br label %91

91:                                               ; preds = %86
  %92 = load i64, i64* %9, align 8
  %93 = add nsw i64 %92, -1
  store i64 %93, i64* %9, align 8
  br label %61

94:                                               ; preds = %85, %61
  %95 = load i64, i64* %13, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %9, align 8
  br label %97

97:                                               ; preds = %120, %94
  %98 = load i64, i64* %9, align 8
  %99 = icmp slt i64 %98, 33
  br i1 %99, label %100, label %123

100:                                              ; preds = %97
  %101 = load i64, i64* %9, align 8
  %102 = getelementptr inbounds [33 x i64], [33 x i64]* %11, i64 0, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = ashr i64 %103, 1
  %105 = load i64, i64* %14, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %118

107:                                              ; preds = %100
  %108 = load i64, i64* %9, align 8
  %109 = getelementptr inbounds [33 x i64], [33 x i64]* %11, i64 0, i64 %108
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %14, align 8
  %111 = load i64, i64* %9, align 8
  %112 = sub nsw i64 %111, 1
  %113 = getelementptr inbounds [33 x i64], [33 x i64]* %11, i64 0, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = shl i64 %114, 1
  %116 = load i64, i64* %9, align 8
  %117 = getelementptr inbounds [33 x i64], [33 x i64]* %11, i64 0, i64 %116
  store i64 %115, i64* %117, align 8
  br label %119

118:                                              ; preds = %100
  br label %123

119:                                              ; preds = %107
  br label %120

120:                                              ; preds = %119
  %121 = load i64, i64* %9, align 8
  %122 = add nsw i64 %121, 1
  store i64 %122, i64* %9, align 8
  br label %97

123:                                              ; preds = %118, %97
  br label %131

124:                                              ; preds = %32
  %125 = load i64, i64* %7, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i64, i64* %10, align 8
  %129 = add nsw i64 %128, 1
  store i64 %129, i64* %10, align 8
  br label %130

130:                                              ; preds = %127, %124
  br label %131

131:                                              ; preds = %130, %123
  br label %132

132:                                              ; preds = %131
  %133 = load i64, i64* %8, align 8
  %134 = add nsw i64 %133, 1
  store i64 %134, i64* %8, align 8
  br label %28

135:                                              ; preds = %28
  %136 = load i64, i64* %7, align 8
  %137 = icmp ne i64 %136, 1
  br i1 %137, label %138, label %159

138:                                              ; preds = %135
  store i64 1, i64* %8, align 8
  br label %139

139:                                              ; preds = %155, %138
  %140 = load i64, i64* %8, align 8
  %141 = icmp slt i64 %140, 33
  br i1 %141, label %142, label %158

142:                                              ; preds = %139
  %143 = load i64, i64* %8, align 8
  %144 = getelementptr inbounds [33 x i64], [33 x i64]* %11, i64 0, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* %8, align 8
  %147 = sub nsw i64 32, %146
  %148 = lshr i64 4294967295, %147
  %149 = and i64 %145, %148
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %142
  %152 = load i64*, i64** %12, align 8
  %153 = call i32 @_ogg_free(i64* %152)
  store i64* null, i64** %4, align 8
  br label %216

154:                                              ; preds = %142
  br label %155

155:                                              ; preds = %154
  %156 = load i64, i64* %8, align 8
  %157 = add nsw i64 %156, 1
  store i64 %157, i64* %8, align 8
  br label %139

158:                                              ; preds = %139
  br label %159

159:                                              ; preds = %158, %135
  store i64 0, i64* %8, align 8
  store i64 0, i64* %10, align 8
  br label %160

160:                                              ; preds = %211, %159
  %161 = load i64, i64* %8, align 8
  %162 = load i64, i64* %6, align 8
  %163 = icmp slt i64 %161, %162
  br i1 %163, label %164, label %214

164:                                              ; preds = %160
  store i64 0, i64* %15, align 8
  store i64 0, i64* %9, align 8
  br label %165

165:                                              ; preds = %185, %164
  %166 = load i64, i64* %9, align 8
  %167 = load i8*, i8** %5, align 8
  %168 = load i64, i64* %8, align 8
  %169 = getelementptr inbounds i8, i8* %167, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i64
  %172 = icmp slt i64 %166, %171
  br i1 %172, label %173, label %188

173:                                              ; preds = %165
  %174 = load i64, i64* %15, align 8
  %175 = shl i64 %174, 1
  store i64 %175, i64* %15, align 8
  %176 = load i64*, i64** %12, align 8
  %177 = load i64, i64* %10, align 8
  %178 = getelementptr inbounds i64, i64* %176, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* %9, align 8
  %181 = ashr i64 %179, %180
  %182 = and i64 %181, 1
  %183 = load i64, i64* %15, align 8
  %184 = or i64 %183, %182
  store i64 %184, i64* %15, align 8
  br label %185

185:                                              ; preds = %173
  %186 = load i64, i64* %9, align 8
  %187 = add nsw i64 %186, 1
  store i64 %187, i64* %9, align 8
  br label %165

188:                                              ; preds = %165
  %189 = load i64, i64* %7, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %204

191:                                              ; preds = %188
  %192 = load i8*, i8** %5, align 8
  %193 = load i64, i64* %8, align 8
  %194 = getelementptr inbounds i8, i8* %192, i64 %193
  %195 = load i8, i8* %194, align 1
  %196 = icmp ne i8 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %191
  %198 = load i64, i64* %15, align 8
  %199 = load i64*, i64** %12, align 8
  %200 = load i64, i64* %10, align 8
  %201 = add nsw i64 %200, 1
  store i64 %201, i64* %10, align 8
  %202 = getelementptr inbounds i64, i64* %199, i64 %200
  store i64 %198, i64* %202, align 8
  br label %203

203:                                              ; preds = %197, %191
  br label %210

204:                                              ; preds = %188
  %205 = load i64, i64* %15, align 8
  %206 = load i64*, i64** %12, align 8
  %207 = load i64, i64* %10, align 8
  %208 = add nsw i64 %207, 1
  store i64 %208, i64* %10, align 8
  %209 = getelementptr inbounds i64, i64* %206, i64 %207
  store i64 %205, i64* %209, align 8
  br label %210

210:                                              ; preds = %204, %203
  br label %211

211:                                              ; preds = %210
  %212 = load i64, i64* %8, align 8
  %213 = add nsw i64 %212, 1
  store i64 %213, i64* %8, align 8
  br label %160

214:                                              ; preds = %160
  %215 = load i64*, i64** %12, align 8
  store i64* %215, i64** %4, align 8
  br label %216

216:                                              ; preds = %214, %151, %51
  %217 = load i64*, i64** %4, align 8
  ret i64* %217
}

declare dso_local i64* @_ogg_malloc(i64) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @_ogg_free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
