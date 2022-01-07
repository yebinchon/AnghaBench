; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/gregbook/extr_readpng2.c_readpng2_info_callback.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/gregbook/extr_readpng2.c_readpng2_info_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 (...)*, i32, i32, i64, i8*, i8* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"readpng2 error:  main struct not recoverable in info_callback.\0A\00", align 1
@PNG_COLOR_TYPE_GRAY = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_PALETTE = common dso_local global i32 0, align 4
@PNG_INFO_tRNS = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_GRAY_ALPHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @readpng2_info_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @readpng2_info_callback(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.TYPE_6__* @png_get_progressive_ptr(i32 %12)
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %5, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = icmp eq %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 @fflush(i32 %19)
  br label %228

21:                                               ; preds = %2
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @png_get_IHDR(i32 %22, i32 %23, i64* %8, i64* %9, i32* %7, i32* %6, i32* null, i32* null, i32* null)
  %25 = load i64, i64* %8, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 10
  store i8* %26, i8** %28, align 8
  %29 = load i64, i64* %9, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 9
  store i8* %30, i8** %32, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 8
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %142

37:                                               ; preds = %21
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i64 @png_get_bKGD(i32 %38, i32 %39, %struct.TYPE_5__** %11)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %141

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, 16
  br i1 %44, label %45, label %64

45:                                               ; preds = %42
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %48, 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  br label %140

64:                                               ; preds = %42
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @PNG_COLOR_TYPE_GRAY, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %114

68:                                               ; preds = %64
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 8
  br i1 %70, label %71, label %114

71:                                               ; preds = %68
  %72 = load i32, i32* %7, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %87

74:                                               ; preds = %71
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 255, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  store i32 %80, i32* %84, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  store i32 %80, i32* %86, align 8
  br label %113

87:                                               ; preds = %71
  %88 = load i32, i32* %7, align 4
  %89 = icmp eq i32 %88, 2
  br i1 %89, label %90, label %101

90:                                               ; preds = %87
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 85, %93
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  store i32 %94, i32* %98, align 4
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  store i32 %94, i32* %100, align 8
  br label %112

101:                                              ; preds = %87
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 17, %104
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  store i32 %105, i32* %109, align 4
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  store i32 %105, i32* %111, align 8
  br label %112

112:                                              ; preds = %101, %90
  br label %113

113:                                              ; preds = %112, %74
  br label %139

114:                                              ; preds = %68, %64
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = inttoptr i64 %118 to i8*
  %120 = ptrtoint i8* %119 to i32
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = inttoptr i64 %126 to i8*
  %128 = ptrtoint i8* %127 to i32
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = inttoptr i64 %134 to i8*
  %136 = ptrtoint i8* %135 to i32
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 8
  br label %139

139:                                              ; preds = %114, %113
  br label %140

140:                                              ; preds = %139, %45
  br label %141

141:                                              ; preds = %140, %37
  br label %142

142:                                              ; preds = %141, %21
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* @PNG_COLOR_TYPE_PALETTE, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load i32, i32* %3, align 4
  %148 = call i32 @png_set_expand(i32 %147)
  br label %149

149:                                              ; preds = %146, %142
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* @PNG_COLOR_TYPE_GRAY, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %149
  %154 = load i32, i32* %7, align 4
  %155 = icmp slt i32 %154, 8
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i32, i32* %3, align 4
  %158 = call i32 @png_set_expand(i32 %157)
  br label %159

159:                                              ; preds = %156, %153, %149
  %160 = load i32, i32* %3, align 4
  %161 = load i32, i32* %4, align 4
  %162 = load i32, i32* @PNG_INFO_tRNS, align 4
  %163 = call i64 @png_get_valid(i32 %160, i32 %161, i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %159
  %166 = load i32, i32* %3, align 4
  %167 = call i32 @png_set_expand(i32 %166)
  br label %168

168:                                              ; preds = %165, %159
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* @PNG_COLOR_TYPE_GRAY, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %176, label %172

172:                                              ; preds = %168
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* @PNG_COLOR_TYPE_GRAY_ALPHA, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %172, %168
  %177 = load i32, i32* %3, align 4
  %178 = call i32 @png_set_gray_to_rgb(i32 %177)
  br label %179

179:                                              ; preds = %176, %172
  %180 = load i32, i32* %3, align 4
  %181 = load i32, i32* %4, align 4
  %182 = call i64 @png_get_gAMA_fixed(i32 %180, i32 %181, i32* %10)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %195

184:                                              ; preds = %179
  %185 = load i32, i32* %3, align 4
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = mul nsw i32 100000, %188
  %190 = sitofp i32 %189 to double
  %191 = fadd double %190, 5.000000e-01
  %192 = fptosi double %191 to i32
  %193 = load i32, i32* %10, align 4
  %194 = call i32 @png_set_gamma_fixed(i32 %185, i32 %192, i32 %193)
  br label %205

195:                                              ; preds = %179
  %196 = load i32, i32* %3, align 4
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = mul nsw i32 100000, %199
  %201 = sitofp i32 %200 to double
  %202 = fadd double %201, 5.000000e-01
  %203 = fptosi double %202 to i32
  %204 = call i32 @png_set_gamma_fixed(i32 %196, i32 %203, i32 45455)
  br label %205

205:                                              ; preds = %195, %184
  %206 = load i32, i32* %3, align 4
  %207 = call i32 @png_set_interlace_handling(i32 %206)
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 7
  store i32 %207, i32* %209, align 4
  %210 = load i32, i32* %3, align 4
  %211 = load i32, i32* %4, align 4
  %212 = call i32 @png_read_update_info(i32 %210, i32 %211)
  %213 = load i32, i32* %3, align 4
  %214 = load i32, i32* %4, align 4
  %215 = call i64 @png_get_rowbytes(i32 %213, i32 %214)
  %216 = trunc i64 %215 to i32
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 4
  store i32 %216, i32* %218, align 8
  %219 = load i32, i32* %3, align 4
  %220 = load i32, i32* %4, align 4
  %221 = call i32 @png_get_channels(i32 %219, i32 %220)
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 6
  store i32 %221, i32* %223, align 8
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 5
  %226 = load i32 (...)*, i32 (...)** %225, align 8
  %227 = call i32 (...) %226()
  br label %228

228:                                              ; preds = %205, %16
  ret void
}

declare dso_local %struct.TYPE_6__* @png_get_progressive_ptr(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @png_get_IHDR(i32, i32, i64*, i64*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @png_get_bKGD(i32, i32, %struct.TYPE_5__**) #1

declare dso_local i32 @png_set_expand(i32) #1

declare dso_local i64 @png_get_valid(i32, i32, i32) #1

declare dso_local i32 @png_set_gray_to_rgb(i32) #1

declare dso_local i64 @png_get_gAMA_fixed(i32, i32, i32*) #1

declare dso_local i32 @png_set_gamma_fixed(i32, i32, i32) #1

declare dso_local i32 @png_set_interlace_handling(i32) #1

declare dso_local i32 @png_read_update_info(i32, i32) #1

declare dso_local i64 @png_get_rowbytes(i32, i32) #1

declare dso_local i32 @png_get_channels(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
