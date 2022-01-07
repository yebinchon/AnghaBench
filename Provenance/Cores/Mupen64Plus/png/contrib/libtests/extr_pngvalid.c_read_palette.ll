; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_read_palette.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_read_palette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@PNG_INFO_PLTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"validate: invalid PLTE count\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"validate: invalid PLTE result\00", align 1
@PNG_INFO_tRNS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"validate: unexpected png_get_tRNS (palette) result\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32, i32)* @read_palette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_palette(%struct.TYPE_6__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %10, align 8
  %16 = load i32*, i32** %7, align 8
  store i32 -1, i32* %16, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @png_get_PLTE(i32 %17, i32 %18, %struct.TYPE_7__** %10, i32* %19)
  %21 = load i32, i32* @PNG_INFO_PLTE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %87

24:                                               ; preds = %4
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %13, align 4
  %31 = icmp sgt i32 %30, 256
  br i1 %31, label %32, label %35

32:                                               ; preds = %29, %24
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @png_error(i32 %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %29
  br label %36

36:                                               ; preds = %40, %35
  %37 = load i32, i32* %13, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %13, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %74

40:                                               ; preds = %36
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  store i32 %46, i32* %51, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  store i32 %57, i32* %62, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  store i32 %68, i32* %73, align 4
  br label %36

74:                                               ; preds = %36
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %78
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 256, %81
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 16
  %85 = trunc i64 %84 to i32
  %86 = call i32 @memset(%struct.TYPE_6__* %79, i32 126, i32 %85)
  br label %98

87:                                               ; preds = %4
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, -1
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @png_error(i32 %92, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %87
  %95 = load i32*, i32** %7, align 8
  store i32 0, i32* %95, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %97 = call i32 @memset(%struct.TYPE_6__* %96, i32 113, i32 8)
  br label %98

98:                                               ; preds = %94, %74
  store i32* null, i32** %11, align 8
  store i32 2, i32* %12, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @png_get_tRNS(i32 %99, i32 %100, i32** %11, i32* %12, i32 0)
  %102 = load i32, i32* @PNG_INFO_tRNS, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %183

105:                                              ; preds = %98
  %106 = load i32*, i32** %11, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 1
  br i1 %110, label %111, label %183

111:                                              ; preds = %108, %105
  %112 = load i32*, i32** %11, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32, i32* %12, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %183, label %117

117:                                              ; preds = %114, %111
  %118 = load i32*, i32** %11, align 8
  %119 = icmp eq i32* %118, null
  br i1 %119, label %131, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* %12, align 4
  %122 = icmp sle i32 %121, 0
  br i1 %122, label %131, label %123

123:                                              ; preds = %120
  %124 = load i32, i32* %12, align 4
  %125 = icmp sgt i32 %124, 256
  br i1 %125, label %131, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %12, align 4
  %128 = load i32*, i32** %7, align 8
  %129 = load i32, i32* %128, align 4
  %130 = icmp sgt i32 %127, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %126, %123, %120, %117
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @png_error(i32 %132, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %134

134:                                              ; preds = %131, %126
  store i32 0, i32* %14, align 4
  br label %135

135:                                              ; preds = %150, %134
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* %12, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %153

139:                                              ; preds = %135
  %140 = load i32*, i32** %11, align 8
  %141 = load i32, i32* %14, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %146 = load i32, i32* %14, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  store i32 %144, i32* %149, align 4
  br label %150

150:                                              ; preds = %139
  %151 = load i32, i32* %14, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %14, align 4
  br label %135

153:                                              ; preds = %135
  %154 = load i32*, i32** %7, align 8
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %12, align 4
  br label %156

156:                                              ; preds = %166, %153
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* %12, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %169

160:                                              ; preds = %156
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %162 = load i32, i32* %14, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  store i32 255, i32* %165, align 4
  br label %166

166:                                              ; preds = %160
  %167 = load i32, i32* %14, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %14, align 4
  br label %156

169:                                              ; preds = %156
  br label %170

170:                                              ; preds = %179, %169
  %171 = load i32, i32* %14, align 4
  %172 = icmp slt i32 %171, 256
  br i1 %172, label %173, label %182

173:                                              ; preds = %170
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %175 = load i32, i32* %14, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  store i32 33, i32* %178, align 4
  br label %179

179:                                              ; preds = %173
  %180 = load i32, i32* %14, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %14, align 4
  br label %170

182:                                              ; preds = %170
  store i32 1, i32* %5, align 4
  br label %213

183:                                              ; preds = %114, %108, %98
  store i32 0, i32* %15, align 4
  %184 = load i32*, i32** %7, align 8
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %12, align 4
  br label %186

186:                                              ; preds = %196, %183
  %187 = load i32, i32* %15, align 4
  %188 = load i32, i32* %12, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %199

190:                                              ; preds = %186
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %192 = load i32, i32* %15, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  store i32 255, i32* %195, align 4
  br label %196

196:                                              ; preds = %190
  %197 = load i32, i32* %15, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %15, align 4
  br label %186

199:                                              ; preds = %186
  br label %200

200:                                              ; preds = %209, %199
  %201 = load i32, i32* %15, align 4
  %202 = icmp slt i32 %201, 256
  br i1 %202, label %203, label %212

203:                                              ; preds = %200
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %205 = load i32, i32* %15, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  store i32 55, i32* %208, align 4
  br label %209

209:                                              ; preds = %203
  %210 = load i32, i32* %15, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %15, align 4
  br label %200

212:                                              ; preds = %200
  store i32 0, i32* %5, align 4
  br label %213

213:                                              ; preds = %212, %182
  %214 = load i32, i32* %5, align 4
  ret i32 %214
}

declare dso_local i32 @png_get_PLTE(i32, i32, %struct.TYPE_7__**, i32*) #1

declare dso_local i32 @png_error(i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @png_get_tRNS(i32, i32, i32**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
