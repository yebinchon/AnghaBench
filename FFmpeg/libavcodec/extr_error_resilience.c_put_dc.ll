; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_error_resilience.c_put_dc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_error_resilience.c_put_dc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32**, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, i32*, i32*, i32, i32)* @put_dc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_dc(%struct.TYPE_7__* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %13, align 8
  store i32 0, i32* %18, align 4
  br label %27

27:                                               ; preds = %99, %6
  %28 = load i32, i32* %18, align 4
  %29 = icmp slt i32 %28, 4
  br i1 %29, label %30, label %102

30:                                               ; preds = %27
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32**, i32*** %32, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = mul nsw i32 %36, 2
  %38 = load i32, i32* %18, align 4
  %39 = and i32 %38, 1
  %40 = add nsw i32 %37, %39
  %41 = load i32, i32* %12, align 4
  %42 = mul nsw i32 %41, 2
  %43 = load i32, i32* %18, align 4
  %44 = ashr i32 %43, 1
  %45 = add nsw i32 %42, %44
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = mul nsw i32 %45, %48
  %50 = add nsw i32 %40, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %35, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %30
  store i32 0, i32* %14, align 4
  br label %62

57:                                               ; preds = %30
  %58 = load i32, i32* %14, align 4
  %59 = icmp sgt i32 %58, 2040
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 2040, i32* %14, align 4
  br label %61

61:                                               ; preds = %60, %57
  br label %62

62:                                               ; preds = %61, %56
  store i32 0, i32* %17, align 4
  br label %63

63:                                               ; preds = %95, %62
  %64 = load i32, i32* %17, align 4
  %65 = icmp slt i32 %64, 8
  br i1 %65, label %66, label %98

66:                                               ; preds = %63
  store i32 0, i32* %19, align 4
  br label %67

67:                                               ; preds = %91, %66
  %68 = load i32, i32* %19, align 4
  %69 = icmp slt i32 %68, 8
  br i1 %69, label %70, label %94

70:                                               ; preds = %67
  %71 = load i32, i32* %14, align 4
  %72 = sdiv i32 %71, 8
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* %19, align 4
  %75 = load i32, i32* %18, align 4
  %76 = and i32 %75, 1
  %77 = mul nsw i32 %76, 8
  %78 = add nsw i32 %74, %77
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* %18, align 4
  %81 = ashr i32 %80, 1
  %82 = mul nsw i32 %81, 8
  %83 = add nsw i32 %79, %82
  %84 = load i32*, i32** %13, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 %83, %86
  %88 = add nsw i32 %78, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %73, i64 %89
  store i32 %72, i32* %90, align 4
  br label %91

91:                                               ; preds = %70
  %92 = load i32, i32* %19, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %19, align 4
  br label %67

94:                                               ; preds = %67
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %17, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %17, align 4
  br label %63

98:                                               ; preds = %63
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %18, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %18, align 4
  br label %27

102:                                              ; preds = %27
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32**, i32*** %104, align 8
  %106 = getelementptr inbounds i32*, i32** %105, i64 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %12, align 4
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = mul nsw i32 %109, %112
  %114 = add nsw i32 %108, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %107, i64 %115
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %15, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32**, i32*** %119, align 8
  %121 = getelementptr inbounds i32*, i32** %120, i64 2
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = mul nsw i32 %124, %127
  %129 = add nsw i32 %123, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %122, i64 %130
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %16, align 4
  %133 = load i32, i32* %15, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %102
  store i32 0, i32* %15, align 4
  br label %141

136:                                              ; preds = %102
  %137 = load i32, i32* %15, align 4
  %138 = icmp sgt i32 %137, 2040
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  store i32 2040, i32* %15, align 4
  br label %140

140:                                              ; preds = %139, %136
  br label %141

141:                                              ; preds = %140, %135
  %142 = load i32, i32* %16, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  store i32 0, i32* %16, align 4
  br label %150

145:                                              ; preds = %141
  %146 = load i32, i32* %16, align 4
  %147 = icmp sgt i32 %146, 2040
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  store i32 2040, i32* %16, align 4
  br label %149

149:                                              ; preds = %148, %145
  br label %150

150:                                              ; preds = %149, %144
  %151 = load i32*, i32** %10, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %194

153:                                              ; preds = %150
  store i32 0, i32* %17, align 4
  br label %154

154:                                              ; preds = %190, %153
  %155 = load i32, i32* %17, align 4
  %156 = icmp slt i32 %155, 8
  br i1 %156, label %157, label %193

157:                                              ; preds = %154
  store i32 0, i32* %20, align 4
  br label %158

158:                                              ; preds = %186, %157
  %159 = load i32, i32* %20, align 4
  %160 = icmp slt i32 %159, 8
  br i1 %160, label %161, label %189

161:                                              ; preds = %158
  %162 = load i32, i32* %15, align 4
  %163 = sdiv i32 %162, 8
  %164 = load i32*, i32** %9, align 8
  %165 = load i32, i32* %20, align 4
  %166 = load i32, i32* %17, align 4
  %167 = load i32*, i32** %13, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 1
  %169 = load i32, i32* %168, align 4
  %170 = mul nsw i32 %166, %169
  %171 = add nsw i32 %165, %170
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %164, i64 %172
  store i32 %163, i32* %173, align 4
  %174 = load i32, i32* %16, align 4
  %175 = sdiv i32 %174, 8
  %176 = load i32*, i32** %10, align 8
  %177 = load i32, i32* %20, align 4
  %178 = load i32, i32* %17, align 4
  %179 = load i32*, i32** %13, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 2
  %181 = load i32, i32* %180, align 4
  %182 = mul nsw i32 %178, %181
  %183 = add nsw i32 %177, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %176, i64 %184
  store i32 %175, i32* %185, align 4
  br label %186

186:                                              ; preds = %161
  %187 = load i32, i32* %20, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %20, align 4
  br label %158

189:                                              ; preds = %158
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %17, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %17, align 4
  br label %154

193:                                              ; preds = %154
  br label %194

194:                                              ; preds = %193, %150
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
