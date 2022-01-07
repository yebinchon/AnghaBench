; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpenc.c_set_best_codebook.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpenc.c_set_best_codebook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_23__***, %struct.TYPE_17__*, %struct.TYPE_22__*, %struct.TYPE_18__*, %struct.TYPE_21__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_22__ = type { i32, i64, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_21__ = type { i64* }
%struct.TYPE_19__ = type { i8*, i32 }

@restart_best_offset = common dso_local global %struct.TYPE_23__* null, align 8
@NUM_CODEBOOKS = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i8* null, align 8
@path_counter_codebook = common dso_local global i32* null, align 8
@ZERO_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*)* @set_best_codebook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_best_codebook(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_19__*, align 8
  %18 = alloca %struct.TYPE_19__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 5
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  store %struct.TYPE_21__* %23, %struct.TYPE_21__** %3, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  store %struct.TYPE_18__* %26, %struct.TYPE_18__** %4, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %234, %1
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ule i32 %31, %34
  br i1 %35, label %36, label %237

36:                                               ; preds = %30
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** @restart_best_offset, align 8
  store %struct.TYPE_23__* %37, %struct.TYPE_23__** %7, align 8
  %38 = load i32, i32* @NUM_CODEBOOKS, align 4
  %39 = add nsw i32 %38, 1
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %8, align 8
  %42 = alloca %struct.TYPE_19__, i64 %40, align 16
  store i64 %40, i64* %9, align 8
  %43 = call i32 @clear_path_counter(%struct.TYPE_19__* %42)
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %156, %36
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ult i32 %45, %48
  br i1 %49, label %50, label %159

50:                                               ; preds = %44
  %51 = load i8*, i8** @INT_MAX, align 8
  %52 = ptrtoint i8* %51 to i32
  store i32 %52, i32* %13, align 4
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_23__***, %struct.TYPE_23__**** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_23__**, %struct.TYPE_23__*** %55, i64 %57
  %59 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %59, i64 %61
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %62, align 8
  store %struct.TYPE_23__* %63, %struct.TYPE_23__** %6, align 8
  store i32 0, i32* %14, align 4
  br label %64

64:                                               ; preds = %144, %50
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* @NUM_CODEBOOKS, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %147

68:                                               ; preds = %64
  %69 = load i8*, i8** @INT_MAX, align 8
  %70 = ptrtoint i8* %69 to i32
  store i32 %70, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %71

71:                                               ; preds = %140, %68
  %72 = load i32, i32* %16, align 4
  %73 = icmp slt i32 %72, 2
  br i1 %73, label %74, label %143

74:                                               ; preds = %71
  %75 = load i32, i32* %14, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i64 %76
  store %struct.TYPE_19__* %77, %struct.TYPE_19__** %17, align 8
  %78 = load i32, i32* %16, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load i32, i32* @NUM_CODEBOOKS, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i64 %82
  store %struct.TYPE_19__* %83, %struct.TYPE_19__** %18, align 8
  br label %101

84:                                               ; preds = %74
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %86 = load i32, i32* %14, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i64 %87
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %90 = load i32, i32* %14, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i64 %91
  %93 = call i64 @compare_best_offset(%struct.TYPE_23__* %88, %struct.TYPE_23__* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  br label %140

96:                                               ; preds = %84
  %97 = load i32, i32* %14, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i64 %98
  store %struct.TYPE_19__* %99, %struct.TYPE_19__** %18, align 8
  br label %100

100:                                              ; preds = %96
  br label %101

101:                                              ; preds = %100, %80
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %103 = load i32, i32* %5, align 4
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @best_codebook_path_cost(%struct.TYPE_20__* %102, i32 %103, %struct.TYPE_19__* %104, i32 %105)
  store i32 %106, i32* %19, align 4
  %107 = load i32, i32* %19, align 4
  %108 = load i32, i32* %13, align 4
  %109 = icmp ult i32 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %101
  %111 = load i32, i32* %19, align 4
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %14, align 4
  store i32 %112, i32* %10, align 4
  br label %113

113:                                              ; preds = %110, %101
  %114 = load i32, i32* %19, align 4
  %115 = load i32, i32* %15, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %139

117:                                              ; preds = %113
  %118 = load i32, i32* %19, align 4
  store i32 %118, i32* %15, align 4
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %121 = icmp ne %struct.TYPE_19__* %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %125 = call i32 @memcpy(%struct.TYPE_19__* %123, %struct.TYPE_19__* %124, i32 16)
  br label %126

126:                                              ; preds = %122, %117
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = load i32*, i32** @path_counter_codebook, align 8
  %131 = load i32, i32* %14, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @av_strlcat(i8* %129, i32 %134, i32 8)
  %136 = load i32, i32* %19, align 4
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 8
  br label %139

139:                                              ; preds = %126, %113
  br label %140

140:                                              ; preds = %139, %95
  %141 = load i32, i32* %16, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %16, align 4
  br label %71

143:                                              ; preds = %71
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %14, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %14, align 4
  br label %64

147:                                              ; preds = %64
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_23__* %148, %struct.TYPE_23__** %7, align 8
  %149 = load i32, i32* @NUM_CODEBOOKS, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i64 %150
  %152 = load i32, i32* %10, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i64 %153
  %155 = call i32 @memcpy(%struct.TYPE_19__* %151, %struct.TYPE_19__* %154, i32 16)
  br label %156

156:                                              ; preds = %147
  %157 = load i32, i32* %11, align 4
  %158 = add i32 %157, 1
  store i32 %158, i32* %11, align 4
  br label %44

159:                                              ; preds = %44
  %160 = load i32, i32* @NUM_CODEBOOKS, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 16
  %165 = getelementptr inbounds i8, i8* %164, i64 1
  store i8* %165, i8** %12, align 8
  store i32 0, i32* %11, align 4
  br label %166

166:                                              ; preds = %229, %159
  %167 = load i32, i32* %11, align 4
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp ult i32 %167, %170
  br i1 %171, label %172, label %232

172:                                              ; preds = %166
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 3
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %174, align 8
  %176 = load i32, i32* %11, align 4
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = mul i32 %176, %181
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i64 %183
  %185 = load i32, i32* %5, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i64 %186
  store %struct.TYPE_22__* %187, %struct.TYPE_22__** %20, align 8
  %188 = load i8*, i8** %12, align 8
  %189 = getelementptr inbounds i8, i8* %188, i32 1
  store i8* %189, i8** %12, align 8
  %190 = load i8, i8* %188, align 1
  %191 = sext i8 %190 to i32
  %192 = load i32, i32* @ZERO_PATH, align 4
  %193 = sub i32 %191, %192
  store i32 %193, i32* %10, align 4
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_23__***, %struct.TYPE_23__**** %195, align 8
  %197 = load i32, i32* %11, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_23__**, %struct.TYPE_23__*** %196, i64 %198
  %200 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %199, align 8
  %201 = load i32, i32* %5, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %200, i64 %202
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %203, align 8
  %205 = load i32, i32* %10, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %204, i64 %206
  store %struct.TYPE_23__* %207, %struct.TYPE_23__** %6, align 8
  %208 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 2
  store i32 %210, i32* %212, align 8
  %213 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %216, i32 0, i32 0
  %218 = load i64*, i64** %217, align 8
  %219 = load i32, i32* %5, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds i64, i64* %218, i64 %220
  %222 = load i64, i64* %221, align 8
  %223 = add nsw i64 %215, %222
  %224 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %225 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %224, i32 0, i32 1
  store i64 %223, i64* %225, align 8
  %226 = load i32, i32* %10, align 4
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %228 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %227, i32 0, i32 0
  store i32 %226, i32* %228, align 8
  br label %229

229:                                              ; preds = %172
  %230 = load i32, i32* %11, align 4
  %231 = add i32 %230, 1
  store i32 %231, i32* %11, align 4
  br label %166

232:                                              ; preds = %166
  %233 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %233)
  br label %234

234:                                              ; preds = %232
  %235 = load i32, i32* %5, align 4
  %236 = add i32 %235, 1
  store i32 %236, i32* %5, align 4
  br label %30

237:                                              ; preds = %30
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @clear_path_counter(%struct.TYPE_19__*) #2

declare dso_local i64 @compare_best_offset(%struct.TYPE_23__*, %struct.TYPE_23__*) #2

declare dso_local i32 @best_codebook_path_cost(%struct.TYPE_20__*, i32, %struct.TYPE_19__*, i32) #2

declare dso_local i32 @memcpy(%struct.TYPE_19__*, %struct.TYPE_19__*, i32) #2

declare dso_local i32 @av_strlcat(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
