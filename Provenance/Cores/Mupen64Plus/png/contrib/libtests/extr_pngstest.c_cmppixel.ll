; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngstest.c_cmppixel.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngstest.c_cmppixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32*, i64, i64, i64, i32 (%struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_17__*, %struct.TYPE_17__*, i32*)*, i32, i32 (%struct.TYPE_17__*, %struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_17__*, i32)* }
%struct.TYPE_17__ = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"opaque component\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"alpha component\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"transparent component (background)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32, i32, i32, i32)* @cmppixel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmppixel(%struct.TYPE_16__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_17__, align 8
  %15 = alloca %struct.TYPE_17__, align 8
  %16 = alloca %struct.TYPE_17__, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 8
  %24 = load i32 (%struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_17__*, i32)** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 %24(%struct.TYPE_17__* %14, i32 %25)
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 5
  %29 = load i32 (%struct.TYPE_17__*, %struct.TYPE_17__*, i32*)*, i32 (%struct.TYPE_17__*, %struct.TYPE_17__*, i32*)** %28, align 8
  %30 = icmp eq i32 (%struct.TYPE_17__*, %struct.TYPE_17__*, i32*)* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %5
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 7
  %34 = load i32 (%struct.TYPE_17__*, %struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_17__*, %struct.TYPE_17__*, i32)** %33, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = call i32 %34(%struct.TYPE_17__* %15, %struct.TYPE_17__* %14, i32 %37)
  br label %51

39:                                               ; preds = %5
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 7
  %42 = load i32 (%struct.TYPE_17__*, %struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_17__*, %struct.TYPE_17__*, i32)** %41, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = call i32 %42(%struct.TYPE_17__* %16, %struct.TYPE_17__* %14, i32 %45)
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 5
  %49 = load i32 (%struct.TYPE_17__*, %struct.TYPE_17__*, i32*)*, i32 (%struct.TYPE_17__*, %struct.TYPE_17__*, i32*)** %48, align 8
  %50 = call i32 %49(%struct.TYPE_17__* %15, %struct.TYPE_17__* %16, i32* null)
  br label %51

51:                                               ; preds = %39, %31
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 4
  %54 = load i32 (%struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_17__*, i32)** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 %54(%struct.TYPE_17__* %16, i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %58, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %51
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %64, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %70, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %76, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 1, i32* %6, align 4
  br label %233

81:                                               ; preds = %74, %68, %62, %51
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i32 1, i32* %6, align 4
  br label %233

95:                                               ; preds = %90, %86, %81
  store i8* null, i8** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %97, %99
  %101 = call i32 @abs(i64 %100)
  store i32 %101, i32* %17, align 4
  %102 = load i32, i32* %17, align 4
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 3
  %107 = load i32, i32* %106, align 4
  %108 = icmp sgt i32 %102, %107
  br i1 %108, label %109, label %125

109:                                              ; preds = %95
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %109
  %115 = load i32, i32* %17, align 4
  %116 = sext i32 %115 to i64
  %117 = inttoptr i64 %116 to i8*
  %118 = ptrtoint i8* %117 to i32
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 3
  store i32 %118, i32* %122, align 4
  br label %124

123:                                              ; preds = %109
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  br label %124

124:                                              ; preds = %123, %114
  br label %125

125:                                              ; preds = %124, %95
  %126 = load i8*, i8** %13, align 8
  %127 = icmp eq i8* %126, null
  br i1 %127, label %128, label %142

128:                                              ; preds = %125
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %137, %133
  store i32 1, i32* %6, align 4
  br label %233

142:                                              ; preds = %137, %128, %125
  %143 = load i8*, i8** %13, align 8
  %144 = icmp eq i8* %143, null
  br i1 %144, label %145, label %227

145:                                              ; preds = %142
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = sub nsw i64 %147, %149
  %151 = call i32 @abs(i64 %150)
  store i32 %151, i32* %18, align 4
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = sub nsw i64 %153, %155
  %157 = call i32 @abs(i64 %156)
  store i32 %157, i32* %19, align 4
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = sub nsw i64 %159, %161
  %163 = call i32 @abs(i64 %162)
  store i32 %163, i32* %20, align 4
  %164 = load i32, i32* %18, align 4
  %165 = load i32, i32* %19, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* %20, align 4
  %168 = or i32 %166, %167
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %145
  store i32 1, i32* %6, align 4
  br label %233

171:                                              ; preds = %145
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = icmp sge i64 %173, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %171
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  store i32 2, i32* %21, align 4
  br label %186

179:                                              ; preds = %171
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp sgt i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %179
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  store i32 1, i32* %21, align 4
  br label %185

184:                                              ; preds = %179
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8** %13, align 8
  store i32 0, i32* %21, align 4
  br label %185

185:                                              ; preds = %184, %183
  br label %186

186:                                              ; preds = %185, %178
  %187 = load i32, i32* %18, align 4
  store i32 %187, i32* %12, align 4
  %188 = load i32, i32* %12, align 4
  %189 = load i32, i32* %19, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %186
  %192 = load i32, i32* %19, align 4
  store i32 %192, i32* %12, align 4
  br label %193

193:                                              ; preds = %191, %186
  %194 = load i32, i32* %12, align 4
  %195 = load i32, i32* %20, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %193
  %198 = load i32, i32* %20, align 4
  store i32 %198, i32* %12, align 4
  br label %199

199:                                              ; preds = %197, %193
  %200 = load i32, i32* %12, align 4
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %21, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = icmp sle i32 %200, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %199
  store i32 1, i32* %6, align 4
  br label %233

210:                                              ; preds = %199
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %226

215:                                              ; preds = %210
  %216 = load i32, i32* %12, align 4
  %217 = sext i32 %216 to i64
  %218 = inttoptr i64 %217 to i8*
  %219 = ptrtoint i8* %218 to i32
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %21, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  store i32 %219, i32* %225, align 4
  store i32 1, i32* %6, align 4
  br label %233

226:                                              ; preds = %210
  br label %227

227:                                              ; preds = %226, %142
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %229 = load i32, i32* %10, align 4
  %230 = load i32, i32* %11, align 4
  %231 = load i8*, i8** %13, align 8
  %232 = call i32 @logpixel(%struct.TYPE_16__* %228, i32 %229, i32 %230, %struct.TYPE_17__* %14, %struct.TYPE_17__* %15, %struct.TYPE_17__* %16, i8* %231)
  store i32 %232, i32* %6, align 4
  br label %233

233:                                              ; preds = %227, %215, %209, %170, %141, %94, %80
  %234 = load i32, i32* %6, align 4
  ret i32 %234
}

declare dso_local i32 @abs(i64) #1

declare dso_local i32 @logpixel(%struct.TYPE_16__*, i32, i32, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
