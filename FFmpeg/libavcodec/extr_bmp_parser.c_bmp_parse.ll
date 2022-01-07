; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_bmp_parser.c_bmp_parse.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_bmp_parser.c_bmp_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }

@END_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32**, i32*, i32*, i32)* @bmp_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmp_parse(%struct.TYPE_6__* %0, i32* %1, i32** %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32** %2, i32*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %14, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* @END_NOT_FOUND, align 4
  store i32 %26, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %27 = load i32*, i32** %11, align 8
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %165, %117, %6
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp sle i32 %32, 10
  br i1 %33, label %34, label %144

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %136, %34
  %36 = load i32, i32* %17, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %139

39:                                               ; preds = %35
  %40 = load i32, i32* %15, align 4
  %41 = shl i32 %40, 8
  %42 = load i32*, i32** %12, align 8
  %43 = load i32, i32* %17, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %41, %46
  store i32 %47, i32* %15, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %39
  %54 = load i32, i32* %15, align 4
  %55 = ashr i32 %54, 48
  %56 = icmp eq i32 %55, 16973
  br i1 %56, label %57, label %73

57:                                               ; preds = %53
  %58 = load i32, i32* %15, align 4
  %59 = ashr i32 %58, 16
  %60 = call i8* @av_bswap32(i32 %59)
  %61 = ptrtoint i8* %60 to i32
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp sgt i32 %66, 17
  br i1 %67, label %68, label %72

68:                                               ; preds = %57
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  store i32 1, i32* %71, align 4
  br label %72

72:                                               ; preds = %68, %57
  br label %73

73:                                               ; preds = %72, %53
  br label %135

74:                                               ; preds = %39
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 10
  br i1 %79, label %80, label %121

80:                                               ; preds = %74
  %81 = load i32, i32* %15, align 4
  %82 = call i8* @av_bswap32(i32 %81)
  %83 = ptrtoint i8* %82 to i32
  store i32 %83, i32* %18, align 4
  %84 = load i32, i32* %18, align 4
  %85 = icmp ult i32 %84, 12
  br i1 %85, label %89, label %86

86:                                               ; preds = %80
  %87 = load i32, i32* %18, align 4
  %88 = icmp ugt i32 %87, 200
  br i1 %88, label %89, label %93

89:                                               ; preds = %86, %80
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  store i32 0, i32* %92, align 4
  br label %136

93:                                               ; preds = %86
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %17, align 4
  %103 = add nsw i32 %101, %102
  %104 = sub nsw i32 %103, 17
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %17, align 4
  %112 = add nsw i32 %110, %111
  %113 = icmp sgt i32 %112, 17
  br i1 %113, label %114, label %117

114:                                              ; preds = %93
  %115 = load i32, i32* %17, align 4
  %116 = sub nsw i32 %115, 17
  store i32 %116, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %139

117:                                              ; preds = %93
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  store i32 0, i32* %120, align 4
  br label %28

121:                                              ; preds = %74
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %121
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %127, %121
  br label %134

134:                                              ; preds = %133
  br label %135

135:                                              ; preds = %134, %73
  br label %136

136:                                              ; preds = %135, %89
  %137 = load i32, i32* %17, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %17, align 4
  br label %35

139:                                              ; preds = %114, %35
  %140 = load i32, i32* %15, align 4
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  store i32 %140, i32* %143, align 4
  br label %170

144:                                              ; preds = %28
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %169

149:                                              ; preds = %144
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %13, align 4
  %154 = call i32 @FFMIN(i32 %152, i32 %153)
  store i32 %154, i32* %17, align 4
  %155 = load i32, i32* %17, align 4
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = sub nsw i32 %158, %155
  store i32 %159, i32* %157, align 4
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %149
  br label %171

165:                                              ; preds = %149
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 1
  store i32 0, i32* %168, align 4
  br label %28

169:                                              ; preds = %144
  br label %170

170:                                              ; preds = %169, %139
  br label %171

171:                                              ; preds = %170, %164
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 2
  %174 = load i32, i32* %16, align 4
  %175 = call i64 @ff_combine_frame(%struct.TYPE_7__* %173, i32 %174, i32** %12, i32* %13)
  %176 = icmp slt i64 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %171
  %178 = load i32, i32* %13, align 4
  store i32 %178, i32* %7, align 4
  br label %208

179:                                              ; preds = %171
  %180 = load i32, i32* %16, align 4
  %181 = load i32, i32* @END_NOT_FOUND, align 4
  %182 = icmp ne i32 %180, %181
  br i1 %182, label %183, label %198

183:                                              ; preds = %179
  %184 = load i32, i32* %16, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %198

186:                                              ; preds = %183
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %17, align 4
  %192 = sub nsw i32 %190, %191
  %193 = sub nsw i32 %192, 1
  %194 = call i32 @FFMAX(i32 %193, i32 0)
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 1
  store i32 %194, i32* %197, align 4
  br label %202

198:                                              ; preds = %183, %179
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 1
  store i32 0, i32* %201, align 4
  br label %202

202:                                              ; preds = %198, %186
  %203 = load i32*, i32** %12, align 8
  %204 = load i32**, i32*** %10, align 8
  store i32* %203, i32** %204, align 8
  %205 = load i32, i32* %13, align 4
  %206 = load i32*, i32** %11, align 8
  store i32 %205, i32* %206, align 4
  %207 = load i32, i32* %16, align 4
  store i32 %207, i32* %7, align 4
  br label %208

208:                                              ; preds = %202, %177
  %209 = load i32, i32* %7, align 4
  ret i32 %209
}

declare dso_local i8* @av_bswap32(i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i64 @ff_combine_frame(%struct.TYPE_7__*, i32, i32**, i32*) #1

declare dso_local i32 @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
