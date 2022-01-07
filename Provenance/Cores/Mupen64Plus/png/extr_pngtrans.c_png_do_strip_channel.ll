; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngtrans.c_png_do_strip_channel.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngtrans.c_png_do_strip_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i64 }

@PNG_COLOR_TYPE_GRAY_ALPHA = common dso_local global i64 0, align 8
@PNG_COLOR_TYPE_GRAY = common dso_local global i64 0, align 8
@PNG_COLOR_TYPE_RGB_ALPHA = common dso_local global i64 0, align 8
@PNG_COLOR_TYPE_RGB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_do_strip_channel(%struct.TYPE_3__* %0, i8** %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8**, i8*** %5, align 8
  store i8** %10, i8*** %7, align 8
  %11 = load i8**, i8*** %5, align 8
  store i8** %11, i8*** %8, align 8
  %12 = load i8**, i8*** %5, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i8*, i8** %12, i64 %16
  store i8** %17, i8*** %9, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %104

22:                                               ; preds = %3
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 8
  br i1 %26, label %27, label %53

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i8**, i8*** %7, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i32 1
  store i8** %32, i8*** %7, align 8
  br label %38

33:                                               ; preds = %27
  %34 = load i8**, i8*** %7, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 2
  store i8** %35, i8*** %7, align 8
  %36 = load i8**, i8*** %8, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i32 1
  store i8** %37, i8*** %8, align 8
  br label %38

38:                                               ; preds = %33, %30
  br label %39

39:                                               ; preds = %43, %38
  %40 = load i8**, i8*** %7, align 8
  %41 = load i8**, i8*** %9, align 8
  %42 = icmp ult i8** %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load i8**, i8*** %7, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = load i8**, i8*** %8, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i32 1
  store i8** %47, i8*** %8, align 8
  store i8* %45, i8** %46, align 8
  %48 = load i8**, i8*** %7, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 2
  store i8** %49, i8*** %7, align 8
  br label %39

50:                                               ; preds = %39
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 3
  store i32 8, i32* %52, align 4
  br label %91

53:                                               ; preds = %22
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 16
  br i1 %57, label %58, label %89

58:                                               ; preds = %53
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i8**, i8*** %7, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 2
  store i8** %63, i8*** %7, align 8
  br label %69

64:                                               ; preds = %58
  %65 = load i8**, i8*** %7, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 4
  store i8** %66, i8*** %7, align 8
  %67 = load i8**, i8*** %8, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 2
  store i8** %68, i8*** %8, align 8
  br label %69

69:                                               ; preds = %64, %61
  br label %70

70:                                               ; preds = %74, %69
  %71 = load i8**, i8*** %7, align 8
  %72 = load i8**, i8*** %9, align 8
  %73 = icmp ult i8** %71, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %70
  %75 = load i8**, i8*** %7, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i32 1
  store i8** %76, i8*** %7, align 8
  %77 = load i8*, i8** %75, align 8
  %78 = load i8**, i8*** %8, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i32 1
  store i8** %79, i8*** %8, align 8
  store i8* %77, i8** %78, align 8
  %80 = load i8**, i8*** %7, align 8
  %81 = load i8*, i8** %80, align 8
  %82 = load i8**, i8*** %8, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i32 1
  store i8** %83, i8*** %8, align 8
  store i8* %81, i8** %82, align 8
  %84 = load i8**, i8*** %7, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 3
  store i8** %85, i8*** %7, align 8
  br label %70

86:                                               ; preds = %70
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 3
  store i32 16, i32* %88, align 4
  br label %90

89:                                               ; preds = %53
  br label %233

90:                                               ; preds = %86
  br label %91

91:                                               ; preds = %90, %50
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  store i32 1, i32* %93, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @PNG_COLOR_TYPE_GRAY_ALPHA, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %91
  %100 = load i64, i64* @PNG_COLOR_TYPE_GRAY, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 4
  store i64 %100, i64* %102, align 8
  br label %103

103:                                              ; preds = %99, %91
  br label %223

104:                                              ; preds = %3
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 4
  br i1 %108, label %109, label %221

109:                                              ; preds = %104
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %112, 8
  br i1 %113, label %114, label %150

114:                                              ; preds = %109
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i8**, i8*** %7, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i32 1
  store i8** %119, i8*** %7, align 8
  br label %125

120:                                              ; preds = %114
  %121 = load i8**, i8*** %7, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 4
  store i8** %122, i8*** %7, align 8
  %123 = load i8**, i8*** %8, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 3
  store i8** %124, i8*** %8, align 8
  br label %125

125:                                              ; preds = %120, %117
  br label %126

126:                                              ; preds = %130, %125
  %127 = load i8**, i8*** %7, align 8
  %128 = load i8**, i8*** %9, align 8
  %129 = icmp ult i8** %127, %128
  br i1 %129, label %130, label %147

130:                                              ; preds = %126
  %131 = load i8**, i8*** %7, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i32 1
  store i8** %132, i8*** %7, align 8
  %133 = load i8*, i8** %131, align 8
  %134 = load i8**, i8*** %8, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i32 1
  store i8** %135, i8*** %8, align 8
  store i8* %133, i8** %134, align 8
  %136 = load i8**, i8*** %7, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i32 1
  store i8** %137, i8*** %7, align 8
  %138 = load i8*, i8** %136, align 8
  %139 = load i8**, i8*** %8, align 8
  %140 = getelementptr inbounds i8*, i8** %139, i32 1
  store i8** %140, i8*** %8, align 8
  store i8* %138, i8** %139, align 8
  %141 = load i8**, i8*** %7, align 8
  %142 = load i8*, i8** %141, align 8
  %143 = load i8**, i8*** %8, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i32 1
  store i8** %144, i8*** %8, align 8
  store i8* %142, i8** %143, align 8
  %145 = load i8**, i8*** %7, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i64 2
  store i8** %146, i8*** %7, align 8
  br label %126

147:                                              ; preds = %126
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 3
  store i32 24, i32* %149, align 4
  br label %208

150:                                              ; preds = %109
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %153, 16
  br i1 %154, label %155, label %206

155:                                              ; preds = %150
  %156 = load i32, i32* %6, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load i8**, i8*** %7, align 8
  %160 = getelementptr inbounds i8*, i8** %159, i64 2
  store i8** %160, i8*** %7, align 8
  br label %166

161:                                              ; preds = %155
  %162 = load i8**, i8*** %7, align 8
  %163 = getelementptr inbounds i8*, i8** %162, i64 8
  store i8** %163, i8*** %7, align 8
  %164 = load i8**, i8*** %8, align 8
  %165 = getelementptr inbounds i8*, i8** %164, i64 6
  store i8** %165, i8*** %8, align 8
  br label %166

166:                                              ; preds = %161, %158
  br label %167

167:                                              ; preds = %171, %166
  %168 = load i8**, i8*** %7, align 8
  %169 = load i8**, i8*** %9, align 8
  %170 = icmp ult i8** %168, %169
  br i1 %170, label %171, label %203

171:                                              ; preds = %167
  %172 = load i8**, i8*** %7, align 8
  %173 = getelementptr inbounds i8*, i8** %172, i32 1
  store i8** %173, i8*** %7, align 8
  %174 = load i8*, i8** %172, align 8
  %175 = load i8**, i8*** %8, align 8
  %176 = getelementptr inbounds i8*, i8** %175, i32 1
  store i8** %176, i8*** %8, align 8
  store i8* %174, i8** %175, align 8
  %177 = load i8**, i8*** %7, align 8
  %178 = getelementptr inbounds i8*, i8** %177, i32 1
  store i8** %178, i8*** %7, align 8
  %179 = load i8*, i8** %177, align 8
  %180 = load i8**, i8*** %8, align 8
  %181 = getelementptr inbounds i8*, i8** %180, i32 1
  store i8** %181, i8*** %8, align 8
  store i8* %179, i8** %180, align 8
  %182 = load i8**, i8*** %7, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i32 1
  store i8** %183, i8*** %7, align 8
  %184 = load i8*, i8** %182, align 8
  %185 = load i8**, i8*** %8, align 8
  %186 = getelementptr inbounds i8*, i8** %185, i32 1
  store i8** %186, i8*** %8, align 8
  store i8* %184, i8** %185, align 8
  %187 = load i8**, i8*** %7, align 8
  %188 = getelementptr inbounds i8*, i8** %187, i32 1
  store i8** %188, i8*** %7, align 8
  %189 = load i8*, i8** %187, align 8
  %190 = load i8**, i8*** %8, align 8
  %191 = getelementptr inbounds i8*, i8** %190, i32 1
  store i8** %191, i8*** %8, align 8
  store i8* %189, i8** %190, align 8
  %192 = load i8**, i8*** %7, align 8
  %193 = getelementptr inbounds i8*, i8** %192, i32 1
  store i8** %193, i8*** %7, align 8
  %194 = load i8*, i8** %192, align 8
  %195 = load i8**, i8*** %8, align 8
  %196 = getelementptr inbounds i8*, i8** %195, i32 1
  store i8** %196, i8*** %8, align 8
  store i8* %194, i8** %195, align 8
  %197 = load i8**, i8*** %7, align 8
  %198 = load i8*, i8** %197, align 8
  %199 = load i8**, i8*** %8, align 8
  %200 = getelementptr inbounds i8*, i8** %199, i32 1
  store i8** %200, i8*** %8, align 8
  store i8* %198, i8** %199, align 8
  %201 = load i8**, i8*** %7, align 8
  %202 = getelementptr inbounds i8*, i8** %201, i64 3
  store i8** %202, i8*** %7, align 8
  br label %167

203:                                              ; preds = %167
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 3
  store i32 48, i32* %205, align 4
  br label %207

206:                                              ; preds = %150
  br label %233

207:                                              ; preds = %203
  br label %208

208:                                              ; preds = %207, %147
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 1
  store i32 3, i32* %210, align 4
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 4
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @PNG_COLOR_TYPE_RGB_ALPHA, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %220

216:                                              ; preds = %208
  %217 = load i64, i64* @PNG_COLOR_TYPE_RGB, align 8
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 4
  store i64 %217, i64* %219, align 8
  br label %220

220:                                              ; preds = %216, %208
  br label %222

221:                                              ; preds = %104
  br label %233

222:                                              ; preds = %220
  br label %223

223:                                              ; preds = %222, %103
  %224 = load i8**, i8*** %8, align 8
  %225 = load i8**, i8*** %5, align 8
  %226 = ptrtoint i8** %224 to i64
  %227 = ptrtoint i8** %225 to i64
  %228 = sub i64 %226, %227
  %229 = sdiv exact i64 %228, 8
  %230 = trunc i64 %229 to i32
  %231 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 0
  store i32 %230, i32* %232, align 8
  br label %233

233:                                              ; preds = %223, %221, %206, %89
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
